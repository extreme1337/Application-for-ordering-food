<?php
$connection = new mysqli("localhost","root","","SalesWeb");
$st_check=$connection->prepare("SELECT id,name,price,qty,mobile FROM temp_order "
        . "INNER JOIN items ON items.id=temp_order.itemid WHERE mobile=?");
$st_check->bind_param("s", $_GET["mobile"]);
$st_check->execute();
$rs = $st_check->get_result();
$arr = array();
while($row = $rs->fetch_assoc()){
    array_push($arr, $row);
}

echo json_encode($arr);




