<?php

$connection = new mysqli("localhost","root","","SalesWeb");
$st_check=$connection->prepare("INSERT INTO temp_order VALUES(?,?,?)");
$st_check->bind_param("sii", $_GET["mobile"],$_GET["itemid"],$_GET["qty"]);
$st_check->execute();

