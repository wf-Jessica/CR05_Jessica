SELECT `customer`.`customer_ID`, `customer`.`customer_name`, `invoice`.`invoice_total`, `charges`.`charges_costs`
FROM `customer` 
LEFT JOIN `invoice` ON `invoice`.`customer_ID` = `customer`.`customer_ID` 
LEFT JOIN `charges` ON `invoice`.`charges_ID` = `charges`.`charges_ID


SELECT `customer`.`customer_name`,`customer`.`customer_adress`, `carstart`.`carstart_time`, `carend`.`carsend_time`,  `car`.`car_name`
FROM `customer` 
	LEFT JOIN `carstart` ON `carstart`.`customer_ID` = `customer`.`customer_ID` 
	LEFT JOIN `carend` ON `carend`.`customer_ID` = `customer`.`customer_ID` 
	LEFT JOIN `car` ON `carend`.`car_ID` = `car`.`car_ID`;