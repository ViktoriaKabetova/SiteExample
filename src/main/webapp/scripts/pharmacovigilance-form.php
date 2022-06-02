<?php
$name = htmlspecialchars($_POST["name"]);
$sex = htmlspecialchars($_POST["sex"]);
$age = htmlspecialchars($_POST["age"]);
$phone = htmlspecialchars($_POST["phone"]);
$email = htmlspecialchars($_POST["email"]);

$name_medicine = htmlspecialchars($_POST["name_medicine"]);
$serial_number = htmlspecialchars($_POST["serial_number"]);
$adverse_reaction_information = htmlspecialchars($_POST["adverse_reaction_information"]);
$adverse_reaction_incident = htmlspecialchars($_POST["adverse_reaction_incident"]);

$address = "kabetovavika@mail.ru";
$sub = "Сообщение с сайта gidroliz.by";

$mes = "Сообщение с сайта gidroliz.by\n
        Персональные данные\n
        ФИО: $name \n
        Пол: $sex \n
        Возраст: $age \n
        Контактный телефон: $phone \n
        Адрес электронной почты: $email \n
        Информация о подозреваемом лекарственном средстве\n
        Торговое название: $name_medicine \n
        Номер серии: $serial_number \n
        Информация о нежелательной реакции/отсутствии эффективности лекарственного средства:\n
        $adverse_reaction_information \n
        Описание случая побочной реакции/отсутствия эффективности лекарственного средства:\n
        $adverse_reaction_incident";

$from  = "From: $name <$email> \r\n Reply-To: $email \r\n";
mail($address, $sub, $mes, $from);
?>