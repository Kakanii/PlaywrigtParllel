package stepdefinition;

import org.apache.log4j.Logger;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;

import com.opencsv.CSVReader;
import com.opencsv.CSVWriter;
import org.apache.poi.ss.usermodel.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import io.cucumber.java.en.When;
import utility.Base;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import java.io.FileWriter;
import java.io.FileReader;


public class BulkInvite extends Base 
{
	public Miscellaneous mis = new Miscellaneous();
	
	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(BulkInvite.class);
	
	private String getDynamicDirectoryName() {
		String downloadDir = System.getProperty("user.dir") + "/target/File-Downloads/";
		File fileDownloadDir = new File(downloadDir);
		File[] listOfFiles = fileDownloadDir.listFiles();
		String dynamicDirectoryName = null;
		for (File file : listOfFiles) {
			if (file.isDirectory()) {
				dynamicDirectoryName = file.getName();
				break;
			}
		}
		return dynamicDirectoryName;
	}

	@When("Click on Download Supplier Bulk Invite template")
	public void click_on_Download_Supplier_Bulk_Invite_template() 
	{
		String original = ec.getObjects("download_bulk_invite_template");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Click on Download Supplier Bulk Invite template" + "\n");
		System.out.println("Click on Download Supplier Bulk Invite template" + "\n");
	}

	@When("Add Supplier information in csv file")
	public void add_Supplier_information_in_csv_file() throws Exception 
	{
		String csvFile = "D:\\TrustYourSupplier\\tys-automation\\target\\File-Downloads\\bc488495-9acf-4e4e-85d4-1d802f90e316\\invitesuppliers.csv";
		try
		{
			CSVReader csvReader = new CSVReader(new FileReader(new File(csvFile)));
			List<String[]> allData = csvReader.readAll();
			String supEmail = "zreadincgy@maildrop.cc";
			String businessName = "ZreadincgyInc";
			String legalName = "ZreadincgyInc";
			String overRide = "Y";
			allData.get(1)[0] = overRide.trim();
			allData.get(1)[1] = supEmail.trim();
			allData.get(1)[4] = businessName.trim();
			allData.get(1)[5] = legalName.trim();
			allData.get(1)[9] = " ";
			allData.get(1)[10] = " ";
			allData.get(1)[11] = " ";
			allData.get(1)[12] = " ";
			allData.get(1)[13] = " ";
			allData.get(1)[14] = " ";
			
			CSVWriter csvWriter = new CSVWriter(new FileWriter(new File(csvFile)));
			csvWriter.writeAll(allData);	
			csvWriter.flush();
			csvReader.close();
			csvWriter.close();
		}catch(Exception e)
		{
			System.out.println("Exception" +e.getMessage()+ "\n");
		}	
		
		logger.info("Add Supplier information in csv file" + "\n");
		System.out.println("Add Supplier information in csv file" + "\n");
		
	}

	@When("Upload bulk upload csv file")
	public void upload_bulk_upload_csv_file() 
	{		
		String csvFile = "D:\\TrustYourSupplier\\tys-automation\\target\\File-Downloads\\bc488495-9acf-4e4e-85d4-1d802f90e316\\invitesuppliers.csv";
		
		String original = ec.getObjects("upload_supplier_bulk_invite_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Upload bulk upload csv file" + "\n");
		System.out.println("Upload bulk upload csv file" + "\n");
		
		String original1 = ec.getObjects("upload_csv_file");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).sendKeys(csvFile);
		
		logger.info("Upload bulk upload csv file" + "\n");
		System.out.println("Upload bulk upload csv file" + "\n");
	}

	@When("Add Supplier information in the excel file")
	public void add_Supplier_information_in_excel_file(List<List<String>> dataTable) {
    try {
        // Dynamic file path
        String dynamicDirectoryName = getDynamicDirectoryName();
        String excelFile = System.getProperty("user.dir") + "/target/File-Downloads/" + dynamicDirectoryName + "/invitesuppliers.xlsx";

        FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
        XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
        XSSFSheet sheet = workbook.getSheetAt(0);

            // Clear the sheet except the header row
			int lastRowNum = sheet.getLastRowNum();
			for (int i = 1; i <= lastRowNum; i++) {
				Row row = sheet.getRow(i);
				if (row != null) {
					sheet.removeRow(row);
				}
						}
            // Write data from the feature file starting from row 1
            int newRowNum = 0;
            for (List<String> data : dataTable) {
                Row row = sheet.createRow(++newRowNum);
                for (int i = 0; i < data.size(); i++) {
                    Cell cell = row.createCell(i);
                    cell.setCellValue(data.get(i));
                }
            }

        // Write updated data back to Excel
        fileInputStream.close();
        FileOutputStream fileOutputStream = new FileOutputStream(new File(excelFile));
        workbook.write(fileOutputStream);
        fileOutputStream.close();
        workbook.close();

        logger.info("Supplier information added to Excel file");
        System.out.println("Supplier information added to Excel file");
    } catch (Exception e) {
        logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
        e.printStackTrace();
    }
	}

}
