<?php 
// DB credentials.
define('DB_HOST','localhost');
define('DB_USER','root');
define('DB_PASS','');
define('DB_NAME','carrental');
// Establish database connection.
try
{
$dbh = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER, DB_PASS,array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'"));
}
catch (PDOException $e)
{
exit("Error: " . $e->getMessage());
}

if (!function_exists('getVehiclePrices')) {
    function getVehiclePrices(int $vehicleId, int $forDaysAgo): array
    {
        global $dbh;

        // первая цена, которая по дате создания находится раньше, чем $forDaysAgo
        $firstPrice = $dbh
            ->query("
                    SELECT * FROM tblvehiclepricehistory 
                    WHERE 
                        VehicleId='$vehicleId'
                        AND CreatedAt <= DATE_SUB(CURDATE(),INTERVAL $forDaysAgo DAY) 
                    ORDER BY CreatedAt DESC 
                    LIMIT 1
                ")
            ->fetch(PDO::FETCH_OBJ);

        // если такой цены нет в истории, то достаём цену машины
        if (!$firstPrice) {
            $price = $dbh
                ->query("
                    SELECT PricePerDay FROM tblvehicles 
                    WHERE id='$vehicleId'
                    LIMIT 1
                ")
                ->fetch(PDO::FETCH_NUM)[0] ?? 0;

            $firstPrice = new \stdClass();
            $firstPrice->PricePerDay = (int) $price;
        }
        $firstPrice->CreatedAt = (new DateTimeImmutable(date('Y-m-d')))
            ->sub(DateInterval::createFromDateString("$forDaysAgo days"))
            ->format('Y-m-d');

        // достаём цены из истории, входящие в интервал
        $pricesInInterval = (array) $dbh
            ->query("
                SELECT * FROM tblvehiclepricehistory 
                WHERE 
                    CreatedAt > DATE_SUB(CURDATE(),INTERVAL $forDaysAgo DAY) 
                    AND VehicleId='$vehicleId' 
                ORDER BY CreatedAt DESC
            ")
            ->fetchAll(PDO::FETCH_OBJ);

        $pricesInInterval[] = $firstPrice;

        $pricesInIntervalMap = [];
        foreach (array_reverse($pricesInInterval) as $row) {
            $row->PricePerDay = (int) $row->PricePerDay;
            $row->CreatedAt = new \DateTimeImmutable($row->CreatedAt);

            $pricesInIntervalMap[$row->CreatedAt->getTimestamp()] = $row;
        }

        $result = [];
        $resultCount = 0;
        foreach ($pricesInIntervalMap as $timestamp => $priceRow) {
            $nextDayTimestamp = (new DateTimeImmutable())
                ->setTimestamp($timestamp)
                ->add(DateInterval::createFromDateString('1 day'))
                ->getTimestamp();
            $result[] = $priceRow->PricePerDay;
            $resultCount++;

            while (!array_key_exists($nextDayTimestamp, $pricesInIntervalMap) && $resultCount <= $forDaysAgo) {
                $result[] = $priceRow->PricePerDay;
                $resultCount++;
                $nextDayTimestamp = (new DateTimeImmutable())
                    ->setTimestamp($nextDayTimestamp)
                    ->add(DateInterval::createFromDateString('1 day'))
                    ->getTimestamp();
            }
        }

        return $result;
    }
}
?>