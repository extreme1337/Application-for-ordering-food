<?php

$connection = new mysqli("localhost","root","","SalesWeb");
$st_check=$connection->prepare("SELECT * FROM temp_order WHERE mobile=?");
$st_check->bind_param("s", $_GET["mobile"]);
$st_check->execute();
echo $st_check->error;
$rs=$st_check->get_result();

$st2=$connection->prepare("INSERT INTO bill(mobile) VALUES(?)");
$st2->bind_param("s", $_GET["mobile"]);
$st2->execute();
echo $st2->error;

$st3=$connection->prepare("SELECT max(bill_no) as bno FROM bill WHERE mobile=?");
$st3->bind_param("s", $_GET["mobile"]);
$st3->execute();
echo $st3->error;
$rs3=$st3->get_result();
$row_max=$rs3->fetch_assoc();

while($row = $rs->fetch_assoc()){
    $st2=$connection->prepare("INSERT INTO bill_det (bill_no,itemid,qty) VALUES(?,?,?)");
    $st2->bind_param("iii", $row_max["bno"],$row["itemid"],$row["qty"]);
    $st2->execute();
    echo $st2->error;
}

$st4=$connection->prepare("DELETE FROM temp_order WHERE mobile=?");
$st4->bind_param("s", $row["mobile"]);
$st4->execute();
echo $st4->error;

echo $row_max["bno"];



