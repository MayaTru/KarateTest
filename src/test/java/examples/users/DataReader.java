package examples.users;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.json.simple.JSONObject;

import com.google.gson.Gson;

public class DataReader {
	
	public static String getData() throws IOException {
		FileInputStream fis = new FileInputStream("C://JarsForTestAut//TestDataAddAddress.xlsx");
		XSSFWorkbook workbook = new XSSFWorkbook(fis);
		Object data[][] = null;
		JSONObject jsonCon = new JSONObject();
		List<Object> rows = new ArrayList<>();
		int sheetcount = workbook.getNumberOfSheets();
		for (int i=0;i<sheetcount;i++) {
			if(workbook.getSheetAt(i).getSheetName().equalsIgnoreCase("Sheet1")) {
				XSSFSheet sheet = workbook.getSheetAt(i);
				Iterator<Row> iterator = sheet.iterator();
				while (iterator.hasNext()) {
					Row currentRow = iterator.next();
	                Iterator<Cell> cellIterator = currentRow.iterator();
	                JSONObject rowObject = new JSONObject();
	                while (cellIterator.hasNext()) {
	                    Cell currentCell = cellIterator.next();
	                    String t1 = currentCell.getCellType().toString();
	                    if(t1.equalsIgnoreCase("STRING")) { 
	                    	rowObject.put(sheet.getRow(0).getCell(currentCell.getColumnIndex()).getStringCellValue(),
		                            currentCell.getStringCellValue());
						}
	                    if(t1.equalsIgnoreCase("NUMERIC")) { 
	                    	rowObject.put(sheet.getRow(0).getCell(currentCell.getColumnIndex()).getStringCellValue(),
		                            currentCell.getNumericCellValue());
						}
	                }
	                rows.add(rowObject);
				}
			}
		}
		Gson gson = new Gson();
        String json = gson.toJson(rows);
		return json;
	}
}
