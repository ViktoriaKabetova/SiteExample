<?php
$name = htmlspecialchars($_POST["name"]);
$email = htmlspecialchars($_POST["email"]);
$message = htmlspecialchars($_POST["message"]);

$address = "kabetovavika@mail.ru";
$sub = "��������� � ����� gidroliz.by";

$mes = "��������� � ����� gidroliz.by\n
        ��� �����������: $name \n
        ����� ����������� �����: $email \n
        ����� ���������:\n $message";

$from  = "From: $name <$email> \r\n Reply-To: $email \r\n";
mail($address, $sub, $mes, $from);
?>