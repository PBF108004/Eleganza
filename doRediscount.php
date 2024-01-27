<?php
    require_once("pdo-conncetion.php");

    if(!isset($_POST["main"])) {
        die("請循正常管道進入此頁");
    }

    $id = $_POST["id"];
    $main = $_POST["main"];
    $type = $_POST["type"];
    $amount = $_POST["amount"];
    $num = $_POST["num"];
    $low_consumption = $_POST["low_consumption"];
    $restriction = $_POST["restriction"];
    $start_date = $_POST["start_date"];
    $end_date = $_POST["end_date"];
    $sql = "UPDATE `discount` SET `main`='$main',`type`='$type',`amount`='$amount',`num`='$num',`low_consumption`='$low_consumption',`restriction`='$restriction',`start_date`='$start_date',`end_date`='$end_date' WHERE discount_id = $id";
    $stmt = $db_host($sql);

    echo $stmt;
    exit;
    try {
        $stmt->execute();
    } catch (PDOException $e) {
        echo "預處理陳述式失敗<br>";
        echo "Error: " . $e->getMessage();
        $db_host = null;
        exit;
    }