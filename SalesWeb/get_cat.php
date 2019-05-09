<?php

$connection = new mysqli("localhost","root","","SalesWeb");
$st_check=$connection->prepare("SELECT DISTINCT category FROM items");
$st_check->execute();
$rs=$st_check->get_result();
$array = array();
while ($row=$rs->fetch_assoc()){
    array_push($array, $row);
}
echo json_encode($array);

