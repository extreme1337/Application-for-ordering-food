<?php

$connection = new mysqli("localhost","root","","SalesWeb");
$st_check=$connection->prepare("SELECT * FROM users WHERE mobile=?");
$st_check->bind_param("s", $_GET["mobile"]);
$st_check->execute();
$rs=$st_check->get_result();
if($rs->num_rows==0){
    $st = $connection->prepare("INSERT INTO users(mobile,password,name,address) VALUES(?,?,?,?)");
    $st->bind_param("ssss", $_GET["mobile"],$_GET["password"],$_GET["name"],$_GET["address"]);
    $st->execute();
    echo "1";
}else{
    echo "0";
}
