<?php

try {
    $method = $_SERVER['REQUEST_METHOD'];

    if ('GET' === $method) {
        require_once dirname(__DIR__) . '/includes/config.php';
        global $dbh;

        $brand = $_GET['brand'] ?? '';
        $fuelType = $_GET['fuelType'] ?? '';

        $whereWasAddedToSql = false;
        $sql = 'SELECT * from tblvehicles ';
        if (!empty($brand)) {
            $whereWasAddedToSql = true;

            $sql .= 'WHERE tblvehicles.VehiclesBrand=:brand ';
        }
        if (!empty($fuelType)) {
            if ($whereWasAddedToSql) {
                $sql .= 'AND tblvehicles.FuelType=:fuelType ';
            } else {
                $sql .= 'WHERE tblvehicles.FuelType=:fuelType ';
            }
        }
        $query = $dbh->prepare($sql);
        if (!empty($brand)) {
            $query->bindParam(':brand',$brand);
        }
        if (!empty($fuelType)) {
            $query->bindParam(':fuelType',$fuelType);
        }

        $query->execute();
        $vehicles = $query->fetchAll(PDO::FETCH_ASSOC);

        if (false === $vehicles) {
            header('Content-Type: application/json', true, 500);
            echo json_encode([]);

            exit(0);
        }

        header('Content-Type: application/json', true, 200);
        echo json_encode(['vehicles' => $vehicles]);

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
