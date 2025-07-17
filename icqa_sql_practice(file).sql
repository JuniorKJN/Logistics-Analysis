SELECT *
FROM inventory.`icqa_sql_practice(inventory)`;

SELECT *
FROM inventory.`icqa_sql_practice(inventory)` invent
INNER JOIN `inventory`.`icqa_sql_practice(locations)` loc
  ON invent.location_id = loc.location_id;
  
  
SELECT loc.location_id AS `Location_ID`, loc.location_name AS `Location Name`, SUM(quantity) AS `Total Quantity`
FROM inventory.`icqa_sql_practice(inventory)` invent
INNER JOIN `inventory`.`icqa_sql_practice(locations)` loc
  ON invent.location_id = loc.location_id
  GROUP BY 1,2
  ORDER BY 3 DESC;
  
SELECT defect_type AS `Defect Type`, COUNT(item_id) AS `Number of Defect Items`
FROM inventory.`icqa_sql_practice(defects)`
GROUP BY 1
ORDER BY 2 DESC;

SELECT defect_type AS `Defect Type`, COUNT(item_id) AS `Number of Defect Items`
FROM inventory.`icqa_sql_practice(defects)`
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3;

SELECT loc.location_id AS `Location_ID`, loc.location_name AS `Location Name`, COUNT(def.item_id) AS `Number of Defect Items`
FROM inventory.`icqa_sql_practice(inventory)` invent
INNER JOIN `inventory`.`icqa_sql_practice(locations)` loc ON invent.location_id = loc.location_id
INNER JOIN `inventory`.`icqa_sql_practice(defects)` def ON invent.item_id = def.item_id
  GROUP BY 1,2
  ORDER BY 3 DESC;
  