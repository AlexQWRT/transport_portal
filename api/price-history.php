<?php


try {
    $method = $_SERVER['REQUEST_METHOD'];

    if ('GET' === $method) {
        require_once dirname(__DIR__) . '/includes/config.php';
        global $dbh;

        $vehicleId = (string) ($_GET['vehicleId'] ?? '');
        $forDaysAgo = abs((int) ($_GET['forDaysAgo'] ?? 30));

        $sql = 'SELECT id from tblvehicles WHERE id=:vehicleId';
        $query = $dbh->prepare($sql);
        $query->bindParam(':vehicleId', $vehicleId);
        $query->execute();

        $vehicleId = $query->fetch(PDO::FETCH_ASSOC)['id'] ?? null;

        if (!$vehicleId) {
            header('Content-Type: application/json', true, 404);
            echo json_encode([
                'code' => 404,
                'message' => 'Vehicle not found',
            ]);

            exit(0);
        }

        header('Content-Type: application/json', true, 200);
        $date = (new DateTimeImmutable(date('Y-m-d')))
            ->sub(DateInterval::createFromDateString("$forDaysAgo days"));
        $result = [];
        foreach (getVehiclePrices($vehicleId, $forDaysAgo) as $price) {
            $result[] = [
                'date' => $date->format('Y-m-d'),
                'price' => $price,
            ];

            $date = $date->add(DateInterval::createFromDateString('1 day'));
        }

        echo json_encode(['prices' => $result]);

        exit(0);
    }

    header('Content-Type: application/json', true, 404);
    echo json_encode([
        'code' => 404,
        'message' => 'Not found',
    ]);
} catch (\Throwable $e) {
    header('Content-Type: application/json', true, 500);
    echo json_encode([
        'code' => 500,
        'message' => 'Internal server error',
    ]);
}
