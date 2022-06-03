package group.example;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "orderServlet", value = "/order-servlet")
public class OrderServlet extends HttpServlet {
    private final String filename = "D:/work/Example/FromExample.xlsx";
    private String[] data = new String[13];
    private int rownum = 0;

    public void init() {
    }

    // Функция получения данных из полей формы
    public String[] getData (HttpServletRequest request) {
        
        data[0] = request.getParameter("date_entry");
        data[1] = request.getParameter("date_delivery");
        data[2] = request.getParameter("product");
        data[3] = request.getParameter("count");
        data[4] = request.getParameter("comment");
        data[5] = request.getParameter("organization");
        data[6] = request.getParameter("object_number");
        data[7] = request.getParameter("phone");
        data[8] = request.getParameter("email");
        data[9] = request.getParameter("area");
        data[10] = request.getParameter("district");
        data[11] = request.getParameter("town");
        data[12] = request.getParameter("address");
        
        return data;
    }

    public void createExcelBook(String[] data, File excelfile) throws IOException {

        XSSFWorkbook book = new XSSFWorkbook();
        XSSFSheet sheet = book.createSheet("DataSheet");
        XSSFRow row = sheet.createRow(0);

        for (int i=0; i<13; i++) {
            XSSFCell cell = row.createCell(i);
            cell.setCellValue(data[i]);
            sheet.autoSizeColumn(i);
        }

        FileOutputStream fileout = new FileOutputStream(excelfile);
        book.write(fileout);
        fileout.close();
    }

    public void writeExcelBook(String[] data, File excelfile) throws IOException {

        FileInputStream fileinput = new FileInputStream(excelfile);
        XSSFWorkbook book = new XSSFWorkbook(fileinput);
        XSSFSheet sheet = book.getSheet("DataSheet");

        rownum = sheet.getLastRowNum();

        if ((rownum > 0) || (sheet.getPhysicalNumberOfRows() > 0)) {
            rownum++;
        }
        fileinput.close();

        XSSFRow row = sheet.createRow(rownum);

        for (int i=0; i<13; i++) {
            XSSFCell cell = row.createCell(i);
            cell.setCellValue(data[i]);
            sheet.autoSizeColumn(i);
        }

        FileOutputStream fileout = new FileOutputStream(excelfile);
        book.write(fileout);
        fileout.close();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Получение данных из формы
        request.setCharacterEncoding("UTF-8");
        data = getData(request);

        File excelfile = new File(filename);

        if (excelfile.exists() && !excelfile.isDirectory()) {
            writeExcelBook(data, excelfile);
        } else {
            createExcelBook(data, excelfile);
        }
        /*
        // Запись в текстовый файл для проверки
        FileWriter writer = new FileWriter("D:/work/Example/FromExample.txt", true);
        for (String field : data) writer.write(field + ";\n");
        writer.close();
        */
        response.setContentType("text/html");
        PrintWriter printer = response.getWriter();
        printer.write("<html><body><h2>Order is send!<h2/></body></html>");
        printer.close();
    }

    public void destroy() {
    }
}
