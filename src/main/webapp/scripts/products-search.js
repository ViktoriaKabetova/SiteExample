class Product {
    constructor(id, name, link) {
        this.id = id
        this.text = name
        this.link = link
    }
}

const products = [
    new Product(1, 'Спирт этиловый', '../catalog/category_ethanol.html'),
    new Product(2, 'Средства дезинфицирующие', '../catalog/category_disinfectants.html'),
    new Product(3, 'Антисептические растворы', '../catalog/category_antiseptic.html'),
    new Product(4, 'Двуокись углерода', '../catalog/category_carbon_dioxide.html'),
    new Product(5, 'Автомобильная химия', '../catalog/category_auto_chemicals.html'),
    new Product(6, 'Бытовая химия', '../catalog/category_household_chemicals.html'),
    new Product(7, 'Средства для розжига', '../catalog/category_means_for_ignition.html'),
    new Product(8, 'Сорбент лигниновый', '../catalog/category_lignin.html'),
    new Product(9, 'Средства защиты растений', '../catalog/category_means_for_plant_protection.html'),
    new Product(10, 'Ветеринарные препараты', '../catalog/category_veterinary_drugs.html'),
    new Product(11, 'Кормовые белки', '../catalog/category_feed_proteins.html'),
    new Product(12, 'Биотопливо', '../catalog/category_biofuel.html')
];

$(document).ready(function () {
    console.log('ready!');
    $('.select2-element').select2({
        placeholder: 'Выберите категорию',
        data: products
    });
});

var openSelected = function () {
    window.location = $('.select2-element').select2('data')[0].link
}