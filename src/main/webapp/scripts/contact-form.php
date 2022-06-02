<?php
$name = htmlspecialchars($_POST["name"]);
$email = htmlspecialchars($_POST["email"]);
$message = htmlspecialchars($_POST["message"]);

$address = "kabetovavika@mail.ru";
$sub = "Сообщение с сайта gidroliz.by";

$mes = "Сообщение с сайта gidroliz.by\n
        Имя отправителя: $name \n
        Адрес электронной почты: $email \n
        Текст сообщения:\n $message";

$from  = "From: $name <$email> \r\n Reply-To: $email \r\n";
mail($address, $sub, $mes, $from);
?>