<?php

$connection = new mysqli("localhost","root","","salesweb");
$st=$connection->prepare("SELECT * FROM items WHERE category=?");
$st->bind_param("s",$_GET["category"]);
$st->execute();
$rs=$st->get_result();
$array= array();
while($row=$rs->fetch_assoc()){
    array_push($array, $row);
}
echo json_encode($array);
