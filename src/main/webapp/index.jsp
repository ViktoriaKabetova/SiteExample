<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8">
        <title>Бобруйский завод биотехнологий</title>
        <link rel="icon" href="../media/favicon.png" type="image/png">
        <link rel="stylesheet" href="../styles/header_footer_style.css">
        <link rel="stylesheet" href="../styles/navbar_style.css">
        <link rel="stylesheet" href="../styles/main_style.css">
        <link rel="stylesheet" href="../styles/order_form_style.css">

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.0/jquery.min.js"
                integrity="sha256-xNzN2a4ltkB44Mc/Jz3pT4iU1cmeR0FkXs4pru/JxaQ="
                crossorigin="anonymous">
        </script>
        <script type="text/javascript" src="../scripts/products-search.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <header>
            <div class="logo">
                <a href="../pages/index.html">
                    <img src="../media/logo.png" style="height:120px; background-size:cover" alt="Бобруйский завод биотехнологий"/></a>
            </div>
            <div class="legal-information">
                <p>213800, Республика Беларусь, Могилевская область, г. Бобруйск, ул. Чехова, 54</p>
                <p>УНН 700068910, ОКПО 00479190</p>
                <p><b>Отгрузочные реквизиты:</b></p>
                <p>станция Бобруйск Бел. ж/д., код станции 147008, код завода 2958</p>
            </div>
        </header>
        <!-- ------------------------------------------- NAVBAR	----------------------------------------- -->
        <div class="navbar" id="nav">
            <div class="dropdown">
                <input type="button"
                       onclick="window.location.href='../pages/index.html';"
                       class="dropbtn"
                       value="Главная"/>
            </div>
            <div class="dropdown">
                <input type="button"
                       onclick="window.location.href='../pages/catalogue.html';"
                       class="dropbtn"
                       value="Продукция"/>
            </div>
            <div class="dropdown">
                <input type="button"
                       onclick="window.location.href='../pages/about_us.html';"
                       class="dropbtn"
                       value="О нас"/>
                <div class="dropdown-content">
                    <a href="../pages/about_us.html">О предприятии</a>
                    <a href="../pages/history.html">История</a>
                    <a href="../pages/reports.html">Отчетность</a>
                    <a href="../pages/news.html">Новости</a>
                </div>
            </div>
            <div class="dropdown">
                <input type="button"
                       onclick="window.location.href='../pages/contacts.html';"
                       class="dropbtn"
                       value="Контакты"/>
                <div class="dropdown-content">
                    <a href="../pages/contacts.html">Основная информация</a>
                    <a href="../pages/minsk_storage.html">Склад в Минске</a>
                    <a href="../pages/phones.html">Телефоны</a>
                    <a href="../pages/reception_schedule.html">График личного приема</a>
                </div>
            </div>
            <div class="dropdown">
                <input type="button"
                       onclick="window.location.href='../pages/contact_us.html';"
                       class="dropbtn"
                       value="Связаться с нами"/>
                <div class="dropdown-content">
            <a href="../pages/contact_us.html">Отправить сообщение</a>
            <a href="../pages/pharmacovigilance.html">Фармаконадзор</a>
        </div>
        </div>
        <div class="dropdown">
            <input type="button"
                   onclick="window.location.href='../index.jsp';"
                   class="dropbtn"
                   value="Заявка на продукцию"/>
        </div>
            <div class="search">
                <select class="select2-element" id="select2-label-id"></select>
                <input type="image"
                       src="../media/magnifying_glass.png"
                       onclick="openSelected()"
                       class="searchbtn"/>
            </div>
        </div>
        <script>
            window.onscroll = function() {myFunction()};

            var navbar = document.getElementById("nav");
            var sticky = navbar.offsetTop;

            function myFunction() {
                if (window.pageYOffset >= sticky) {
                    navbar.classList.add("sticky")
                } else {
                    navbar.classList.remove("sticky");
                }
            }
        </script>
        <!-- -------------------------------------------- CONTEINER	----------------------------------------- -->
        <div class="container">
            <!-- --------------------------------------------- CONTENT ------------------------------------------ -->
            <div class="content">
                <h1 style="text-align:center">Заявка на продукцию</h1>
                <div class="row-order">
                    <form id="order" action="order-servlet" method="post">
                        <div class="row-order-form">
                            <div class="order-product">
                                <h2>Заказ товара</h2>
                                <div class="row">
                                    <div class="column date1">
                                        <label for="date_entry">Дата заявки</label><br>
                                        <input type="text" id="date_entry" name="date_entry" placeholder="Дата подачи заявки..."><br>
                                    </div>
                                    <div class="column date2">
                                        <label for="date_delivery">Дата отгрузки</label><br>
                                        <input type="text" id="date_delivery" name="date_delivery" placeholder="Дата для получения продукции..."><br>
                                    </div>
                                </div>
                                <label for="product">Товар</label><br>
                                <input type="text" id="product" name="product" placeholder="Наименование товара..."><br>
                                <label for="count">Количество</label><br>
                                <input type="text" id="count" name="count" placeholder="Количество товара..."><br>
                                <label for="comment">Комментарий</label><br>
                                <textarea id="comment" name="comment" placeholder="Комментарий к заказу..."></textarea><br>
                            </div>
                            <div class="order-customer">
                                <h2>Информация о юридическом (физическом) лице</h2>
                                <label for="organization">Название организации (ФИО заказчика)</label><br>
                                <input type="text" id="organization" name="organization" placeholder="Название вашей организации (Полные фамилия, имя и отчество)..."><br>
                                <label for="object_number">Номер объекта (Серия и номер паспорта)</label><br>
                                <input type="text" id="object_number" name="object_number" placeholder="Номер (Серия и номер паспорта) объекта (лица), получающего продукцию..."><br>
                                <label for="phone">Контактный телефон</label><br>
                                <input type="text" id="phone" name="phone" placeholder="Ваш телефон..."><br>
                                <label for="email">Электронная почта</label><br>
                                <input type="text" id="email" name="email" placeholder="Ваш адрес электронной почты..."><br>
                            </div>
                            <div class="order-address">
                                <h2>Адрес поставки</h2>
                                <label for="area">Область</label><br>
                                <input type="text" id="area" name="area" placeholder="Область..."><br>
                                <label for="district">Район</label><br>
                                <input type="text" id="district" name="district" placeholder="Район..."><br>
                                <label for="town">Город</label><br>
                                <input type="text" id="town" name="town" placeholder="Город..."><br>
                                <label for="address">Адрес</label><br>
                                <input type="text" id="address" name="address" placeholder="Адрес..."><br>
                            </div>
                        </div>
                        <div class="answer">
                            <input type="submit" id="send" value="Отправить">
                            <div class="ok_answer" style="display: none">
                                Ваша заявка принята!
                            </div>
                            <div class="err_answer" style="display: none">
                                Ошибка отправки!
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- ----------------------------------------------- FOOTER	----------------------------------------- -->
        <footer>
            <div class="about-us">
                <h2 style="text-align:center">О нас</h2>
                <h3>Производимая продукция</h3>
                <p> Спирт этиловый, бытовая и автомобильная химия, биотопливо, сорбент, двуокись углерода,
                    дезинфицирующие средства, биологические консерванты силоса и кормовые добавки,
                    ветеринарные препараты и биологические средства защиты растений</p>
            </div>
            <div class="custom-links">
                <h2 style="text-align:center">Основные разделы</h2>
                <a href="../pages/index.html">Главная</a><br>
                <a href="../pages/catalogue.html">Продукция</a><br>
                <a href="../pages/about_us.html">О нас</a><br>
                <a href="../pages/history.html">История</a><br>
                <a href="../pages/reports.html">Отчетность</a><br>
                <a href="../pages/news.html">Новости</a><br>
                <a href="../pages/contacts.html">Контакты</a><br>
                <a href="../pages/minsk_storage.html">Склад в Минске</a><br>
                <a href="../pages/phones.html">Телефоны</a><br>
                <a href="../pages/reception_schedule.html">График личного приема</a><br>
                <a href="../pages/contact_us.html">Связаться с нами</a><br>
                <a href="../pages/pharmacovigilance.html">Фармаконадзор</a><br>
                <a href="../index.jsp">Заявка на продукцию</a>
            </div>
            <div class="contact-us">
                <h2 style="text-align:center">Связаться с нами</h2>
                <h3>Адрес</h3>
                <p>213800, Беларусь, Могилевская обл., <br>г. Бобруйск, ул. Чехова, д. 54</p>
                <h3>Телефоны</h3>
                <p>+375 (225) 71-59-38</p>
                <p>+375 (225) 71-60-88</p>
                <h3>Электронная почта</h3>
                <p>gidroliz@mail.ru</p>
            </div>
        </footer>
    </body>
</html>
