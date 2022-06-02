package group.example;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/hello-servlet")
public class HelloServlet extends HttpServlet {
    private final String filename = "D:/work/Example/FromExample";
    private String[] data = new String[13];

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

    // Функция формирования Excel-книги
    public XSSFWorkbook makeExcelbook (String[] data) {

        XSSFWorkbook book = new XSSFWorkbook();
        XSSFSheet sheet = book.createSheet("DataSheet");
        XSSFRow row = sheet.createRow(0);

        for (int i=0; i<13; i++) {
            XSSFCell cell = row.createCell(i);
            cell.setCellValue(data[i]);
        }

        return book;
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        this.doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        /*
        response.setContentType("text/html");
         */
        request.setCharacterEncoding("UTF-8");
        // Получение данных из формы
        data = getData(request);

        /*
        PrintWriter printer = response.getWriter();
        printer.println("<html><body>");
        printer.println("<h4>");
        // Вывод результата на экран для просмотра
        for (String field : data) printer.println(field + "\n");
        printer.println("</h4>");
        printer.println("</body></html>");
        printer.close();
        */

        // Формирование Excel-книги
        XSSFWorkbook book = makeExcelbook(data);

        /* Запись в текстовый файл для проверки
        FileWriter writer = new FileWriter(filename+".txt", true);
        for (String field : data) writer.write(field + ";\n");
        writer.close();
         */

        FileOutputStream fileout = new FileOutputStream(filename+".xlsx", true);
        // Запись книги в Excel-файл
        book.write(fileout);
        fileout.close();
    }

    public void destroy() {
    }
}
