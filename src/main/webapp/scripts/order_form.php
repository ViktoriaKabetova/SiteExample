<?php
    $data = array (
        'date_entry' => htmlspecialchars($_POST["date_entry"]),
        'date_delivery' => htmlspecialchars($_POST["date_delivery"]),
        'product' => htmlspecialchars($_POST["product"]),
        'count' => htmlspecialchars($_POST["count"]),
        'comment' => htmlspecialchars($_POST["comment"]),
        'organization' => htmlspecialchars($_POST["organization"]),
        'object_number' => htmlspecialchars($_POST["object_number"]),
        'phone' => htmlspecialchars($_POST["phone"]),
        'email' => htmlspecialchars($_POST["email"]),
        'area' => htmlspecialchars($_POST["area"]),
        'district' => htmlspecialchars($_POST["district"]),
        'town' => htmlspecialchars($_POST["town"]),
        'address' => htmlspecialchars($_POST["address"])
    );
    
    $fd = fopen("../data/orders.txt", 'a+') or die("не удалось создать файл");
    fwrite($fd, $data);
    fclose($fd);
?>