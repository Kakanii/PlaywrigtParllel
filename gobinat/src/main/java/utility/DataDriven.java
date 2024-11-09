package utility;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.util.NumberToTextConverter;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;

public class DataDriven extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	@SuppressWarnings({ "resource", "deprecation" })
	public ArrayList<String> verifyCompanyNameExists(String ColumnName) throws Throwable {
		ArrayList<String> RequiredTestData = new ArrayList<String>();
		FileInputStream ExcelFile = new FileInputStream(
				"/tys-automation/testdata/Suppliers Data/Supplier Data.xlsx");

		XSSFWorkbook testData = new XSSFWorkbook(ExcelFile);

		int companycount = driver.findElements(By.xpath(ec.getObjects("CH_CompanyNameColumn_variable"))).size();

		int sheets = testData.getNumberOfSheets();

		for (int j = 0; j < sheets; j++) {
			XSSFSheet sheet = testData.getSheetAt(j); // Selected the sheet
			if (testData.getSheetName(j).equalsIgnoreCase("Suppliers - CH")) {

				Iterator<Row> row = sheet.iterator();

				Row firstRow = row.next(); // focus is on 1st row
				Iterator<Cell> cell = firstRow.cellIterator();
				int k = 0;
				int column = 0;

				while (cell.hasNext()) // checking if selected cell of the row has another cell next to it
				{
					Cell value = cell.next(); // shifts focus to 1st cell of selected row
					if (value.getStringCellValue().contentEquals(ColumnName)) {
						column = k; // declaring the column which has the desired data
					}
					k++;
				}
				while (row.hasNext()) // checking if selected cell of the selected column has next row
				{
					Row baseData = row.next(); // traversing through the cells of desired column

					boolean validate = false;
					boolean tempValidate = true;

					int i = 1;
					while (i <= companycount) {
						String CompanyNameVariableXpath = "//div[@class='col-12']//div[@class='row'][" +i+ "]//div[contains(@class,'col-4')]";
						String CompanyName = driver.findElement(By.xpath(CompanyNameVariableXpath)).getText().trim();

						if (!baseData.getCell(column).getStringCellValue().trim().equalsIgnoreCase(CompanyName)) {
							validate = true;
						} else {
							tempValidate = false;
							break;
						}

						i++;
					}
					if (validate && tempValidate) {
						Iterator<Cell> desiredCell = baseData.cellIterator();
						while (desiredCell.hasNext()) {
							Cell desiredCellvalue = desiredCell.next();
							if (desiredCellvalue.getCellTypeEnum() == CellType.STRING) {
								RequiredTestData.add(desiredCellvalue.getStringCellValue());
							} else {
								RequiredTestData
										.add(NumberToTextConverter.toText(desiredCellvalue.getNumericCellValue())); // NumberToTextConvertor will convert numeric values to string
							}
						}

						break;
					}
				}

			}
		}

		return RequiredTestData;
	}
	
	//----------------------------------------------------------------------------------------
	
	@SuppressWarnings({ "resource", "deprecation" })
	public ArrayList<String> deleteCompanyName(String ColumnName) throws Throwable {
		ArrayList<String> DeleteRequiredTestData = new ArrayList<String>();
		FileInputStream ExcelFile = new FileInputStream(
				"/tys-automation/testdata/Suppliers Data/Supplier Data.xlsx");

		XSSFWorkbook testData = new XSSFWorkbook(ExcelFile);

		int companycount = driver.findElements(By.xpath(ec.getObjects("CH_CompanyNameColumn_variable"))).size();

		int sheets = testData.getNumberOfSheets();

		for (int j = 0; j < sheets; j++) {
			XSSFSheet sheet = testData.getSheetAt(j); 
			if (testData.getSheetName(j).equalsIgnoreCase("Delete Supplier - CH")) {

				Iterator<Row> row = sheet.iterator();

				Row firstRow = row.next(); 
				Iterator<Cell> cell = firstRow.cellIterator();
				int k = 0;
				int column = 0;

				while (cell.hasNext())
				{
					Cell value = cell.next(); 
					if (value.getStringCellValue().contentEquals(ColumnName)) {
						column = k; 
					}
					k++;
				}
				while (row.hasNext())
				{
					Row baseData = row.next();

					boolean validate = false;
					boolean tempValidate = true;

					int i = 1;
					while (i <= companycount) {
						String CompanyNameVariableXpath = "//div[@class='col-12']//div[@class='row'][" +i+ "]//div[contains(@class,'col-4')]";
						String CompanyName = driver.findElement(By.xpath(CompanyNameVariableXpath)).getText().trim();

						if (!baseData.getCell(column).getStringCellValue().trim().equalsIgnoreCase(CompanyName)) {
							validate = true;
						} else {
							tempValidate = false;
							break;
						}

						i++;
					}
					if (validate && tempValidate) {
						Iterator<Cell> desiredCell = baseData.cellIterator();
						while (desiredCell.hasNext()) {
							Cell desiredCellvalue = desiredCell.next();
							if (desiredCellvalue.getCellTypeEnum() == CellType.STRING) {
								DeleteRequiredTestData.add(desiredCellvalue.getStringCellValue());
							} else {
								DeleteRequiredTestData
										.add(NumberToTextConverter.toText(desiredCellvalue.getNumericCellValue())); 
							}
						}

						break;
					}
				}

			}
		}

		return DeleteRequiredTestData;
	}
	//------------------------------------------------------------------------------------
	public static int sheetsCount;
	public static int n;
	public static XSSFWorkbook workBook;
	public static String SheetName;
	public static FileInputStream ExcelFile;
	
	public static ArrayList<String> SheetNames = new ArrayList<String>();
	
	public static void readData(int i) throws IOException {
	File listofFiles[] = folder.listFiles();
	
	
	ExcelFile = new FileInputStream(listofFiles[0].toString());

	workBook = new XSSFWorkbook(ExcelFile);
	
	sheetsCount = workBook.getNumberOfSheets();
	
	for(n = i; n < sheetsCount;)
	{
		SheetName = workBook.getSheetName(n);
		SheetNames.add(SheetName);
		System.out.println(SheetName);
		break;
	}
	n++;
	
	ExcelFile.close();
}
	
}
