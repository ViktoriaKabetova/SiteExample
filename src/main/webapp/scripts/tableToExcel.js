function _onSubmitForm(e) {}

function ExportExcel() {

document.getElementById("t-date_entry").innerHTML = document.getElementById("date_entry").value;
document.getElementById("t-date_delivery").innerHTML = document.getElementById("date_delivery").value;
document.getElementById("t-product").innerHTML = document.getElementById("product").value;
document.getElementById("t-count").innerHTML = document.getElementById("count").value;
document.getElementById("t-comment").innerHTML = document.getElementById("comment").value;
document.getElementById("t-organization").innerHTML = document.getElementById("organization").value;
document.getElementById("t-object_number").innerHTML = document.getElementById("object_number").value;
document.getElementById("t-phone").innerHTML = document.getElementById("phone").value;
document.getElementById("t-email").innerHTML = document.getElementById("email").value;
document.getElementById("t-area").innerHTML = document.getElementById("area").value;
document.getElementById("t-district").innerHTML = document.getElementById("district").value;
document.getElementById("t-town").innerHTML = document.getElementById("town").value;
document.getElementById("t-address").innerHTML = document.getElementById("address").value;
	
var Data = [ 
  [ document.getElementById("t-date_entry").innerText,
	document.getElementById("t-date_delivery").innerText,
	document.getElementById("t-product").innerText,
	document.getElementById("t-count").innerText,
	document.getElementById("t-comment").innerText,
	document.getElementById("t-organization").innerText,
	document.getElementById("t-object_number").innerText,
	document.getElementById("t-phone").innerText,
	document.getElementById("t-email").innerText,
	document.getElementById("t-area").innerText,
	document.getElementById("t-district").innerText,
	document.getElementById("t-town").innerText,
	document.getElementById("t-address").innerText ],
];
	
	let workbook = XLSX.utils.book_new();
	let worksheet = XLSX.utils.aoa_to_sheet(Data);
	XLSX.utils.book_append_sheet(workbook, worksheet, 'Заявки');
	XLSX.writeFile(workbook, "D:/work/Example/Данные по заявкам.xlsx");
	
	//------------------------------
}
