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
$sub = "��������� � ����� gidroliz.by";

$mes = "��������� � ����� gidroliz.by\n
        ������������ ������\n
        ���: $name \n
        ���: $sex \n
        �������: $age \n
        ���������� �������: $phone \n
        ����� ����������� �����: $email \n
        ���������� � ������������� ������������� ��������\n
        �������� ��������: $name_medicine \n
        ����� �����: $serial_number \n
        ���������� � ������������� �������/���������� ������������� �������������� ��������:\n
        $adverse_reaction_information \n
        �������� ������ �������� �������/���������� ������������� �������������� ��������:\n
        $adverse_reaction_incident";

$from  = "From: $name <$email> \r\n Reply-To: $email \r\n";
mail($address, $sub, $mes, $from);
?>