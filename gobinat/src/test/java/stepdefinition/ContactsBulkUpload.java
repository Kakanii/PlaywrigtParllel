package stepdefinition;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import java.awt.Robot;
import java.awt.event.KeyEvent;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import java.util.regex.*;

import com.opencsv.CSVReader;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import org.apache.log4j.Logger;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;

import java.util.NoSuchElementException;
import java.util.Random;

public class ContactsBulkUpload extends DriverEngine {
    public Miscellaneous mis = new Miscellaneous();
    public static ElementControl ec = new ElementControl();
    public static String Emailidsup;
    public static String Australiancn;
    public static String legalBusinessName;
    public static File file;
    Logger logger = Logger.getLogger(ContactsBulkUpload.class);


    private void createTemplatesFolder() {
        String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
        File templatesFolder = new File(templatesFolderPath);
        if (!templatesFolder.exists()) {
            templatesFolder.mkdirs();
            System.out.println("Created templates folder: " + templatesFolderPath);

        }
    }

    private void cleanTemplatesFolder() {
        String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
        File templatesFolder = new File(templatesFolderPath);
        if (templatesFolder.exists()) {
            for (File file : templatesFolder.listFiles()) {
                if (!file.isDirectory()) {
                    file.delete();
                    System.out.println("Deleted file: " + file.getName());

                }
            }
        }
    }

    private void moveFileToTemplatesFolder(String sourceFilePath) throws Exception {
        File sourceFile = new File(sourceFilePath);
        String destFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + sourceFile.getName();
        File destFile = new File(destFilePath);
        if (!sourceFile.renameTo(destFile)) {
            throw new Exception("Failed to move file to templates folder.");
        }
        System.out.println("Moved file to templates folder: " + destFile.getAbsolutePath());

    }


    private String findContactTemplateFile() {
        String[] directories = {
                System.getProperty("user.dir"),
                System.getProperty("user.dir") + File.separator + "templates" , System.getProperty("user.home") + "/Downloads"};
        // DebugHelper.printFilesInDirectory(directories);

        String[] filesToSearch = {"Relationship_Manager_Role_Bulk_Upload_Template.csv"};
    
        for (String directory : directories) {
            System.out.println("Searching for contact template file in directory: " + directory);
            for (String fileToSearch : filesToSearch) {
                String filePath = directory + File.separator + fileToSearch;
                System.out.println("Checking for file: " + filePath);
                File file = new File(filePath);
                if (file.exists() && !file.isDirectory()) {
                    System.out.println("Contact template file found: " + filePath);
                    return filePath;
                }
            }
        }
    
        System.out.println("Contact template file not found.");
        return null;
    }

   

    private void updateCSV(String csvFilePath, String[] newData, int rowNumber) {
        try (BufferedReader br = new BufferedReader(new FileReader(csvFilePath))) {
            String line;
            StringBuilder sb = new StringBuilder();
            int rowNum = 0;
            while ((line = br.readLine()) != null) {
                if (rowNum == rowNumber) {
                    line = String.join(",", newData);
                }
                sb.append(line).append("\n");
                rowNum++;
            }
            br.close();

            // Write updated content back to CSV
            FileWriter writer = new FileWriter(csvFilePath);
            writer.write(sb.toString());
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void logCSVContent(String csvFilePath) {
        try (BufferedReader br = new BufferedReader(new FileReader(csvFilePath))) {
            String line;
            System.out.println("Updated CSV content:");
            while ((line = br.readLine()) != null) {
                System.out.println(line);
            }
            br.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


	@Then("Click on Contacts Bulk Upload Tab")
    public void contacts_bulk_upload_tab() {
        try {
			String contactsbullkuploadtab = ec.getObjects("contacts_bulk_upload");
            // Wait for the confirmation button to be clickable
            WebDriverWait wait = new WebDriverWait(driver, 10);
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(contactsbullkuploadtab)));

            // Click the confirmation button
            driver.findElement(By.xpath(contactsbullkuploadtab)).click();
            System.out.println("Clicked on contacts bulk upload tab");
        } catch (Exception e) {
            System.out.println("not able to click on contacts bulk upload tab: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Upload Buyer contact data file")
    public void uploadBuyerContactexcelfile() {
       try {

          //for lcal run
        //   String templatesFolderPath = System.getProperty("user.dir") + "\\templates";
        //   String identityCSVFilePath = templatesFolderPath + "\\Relationship_Manager_Role_Bulk_Upload_Template.csv";
        //   System.out.println("Identity CSV file path is: " + identityCSVFilePath);
  
        //   File identityCSVFile = new File(identityCSVFilePath);
        //   if (identityCSVFile.exists()) {
        //       System.out.println("Identity CSV file exists");
        //   } else {
        //       System.out.println("Identity CSV file does not exist");
        //   }
  
        //   // Wait for a few seconds to ensure the file explorer window is opened
        //   Thread.sleep(5000); // Adjust this wait time as needed
        //   if (identityCSVFile.exists()) {
        //       // Your code to upload the file
        //       // ...
        //       String uploadButtonXPath = ec.getObjects("uploadContactfile");
        //       WebDriverWait wait = new WebDriverWait(driver, 10);
        //       WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
        //       uploadButton.click();
  
        //       // Wait for a few seconds to ensure the file explorer window is opened
        //       Thread.sleep(5000); // Adjust this wait time as needed
          
        //          WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
        //          fileInput.sendKeys(identityCSVFilePath);
  
        //          // Close the file explorer window
        //          Robot robot = new Robot();
        //          robot.keyPress(KeyEvent.VK_ESCAPE);
        //          robot.keyRelease(KeyEvent.VK_ESCAPE);
        //          Thread.sleep(5000); // Adjust this wait time as needed
  
        //       System.out.println("Uploaded supplier preload supplier file");
          
              //for jenkins Run
           // Find the Excel file path
           String excelFilePath = findContactTemplateFile();

           if (excelFilePath != null) {
               // Click the "Select File" button
               String uploadButtonXPath = ec.getObjects("uploadContactfile");
               WebDriverWait wait = new WebDriverWait(driver, 10);
               WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
               uploadButton.click();

               // Wait for a few seconds to ensure the file explorer window is opened
               Thread.sleep(5000); // Adjust this wait time as needed

               // Enter the file path in the file input field
               WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
               fileInput.sendKeys(excelFilePath);

               // Close the file explorer window
               // Robot robot = new Robot();
               // robot.keyPress(KeyEvent.VK_ESCAPE);
               // robot.keyRelease(KeyEvent.VK_ESCAPE);

               System.out.println("Uploaded Invite supplier file");
           } else {
               System.out.println("Uploaded Invite supplier file not found");
           }
       } catch (Exception e) {
           System.err.println("Exception occurred while uploading invite supplier file: " + e.getMessage());
           e.printStackTrace();
       }
   }


    @Then("Click confirm contact template Upload button")
    public void click_contact_upload_template_button() throws Throwable {
        Thread.sleep(3000);
        // driver.findElement(By.xpath("//div[@id='contacts-data__panel']//div[1]//div[2]//button[1]")).click();
        String original = ec.getObjects("confirm_button");
        String formatXPATH = String.format(original);
        WebElement Element = driver.findElement(By.xpath(original));
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();", Element);
        Thread.sleep(2000);
        logger.info("Clicked on confirm button" + "\n");
        System.out.println("Clicked on confrim button" + "\n");
    }

    
    @Then("Click on download CBU logs")
    public void downloadCBULogs() throws Throwable {
        Thread.sleep(3000);
        String original = ec.getObjects("downloadCBULogs");
        String formatXPATH = String.format(original);
        System.out.println("formatXPATH for downloadJobLogs" + formatXPATH);

        WebElement Element = driver.findElement(By.xpath(formatXPATH));
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();", Element);
        Thread.sleep(2000);
        logger.info("Clicked on download logs" + "\n");
        System.out.println("Clicked on download logs" + "\n");
    }

    private String findCBUCsvFile() {
        String[] directories = { System.getProperty("user.dir") , System.getProperty("user.dir") + File.separator + "templates" , System.getProperty("user.home") + "/Downloads" };

        String regexPattern =  ".*?@.*?_relationship_managers_.*?\\.csv";
        for (String directory : directories) {
            File dir = new File(directory);
            if (dir.exists()) {
                System.out.println("Searching for CSV files in directory: " + directory);
                // File[] files = dir.listFiles((dir1, name) -> name.matches(regexPattern));
                File[] files = dir.listFiles((dir1, name) -> {
                    System.out.println("Checking file: " + name);
                    return name.matches(regexPattern);
                });
                if (files != null && files.length > 0) {
                    System.out.println("Found CSV file: " + files[0].getAbsolutePath());
                    return files[0].getAbsolutePath();
                }
            }
        }
        System.out.println("CSV file not found.");

        return null;
    }

    private void moveCBUFileToTemplates() {
        try {
            // Define the source file path using the findPreloadCsvFile method
            String sourceFilePath = findCBUCsvFile();
            if (sourceFilePath == null) {
                System.out.println("Preload CSV file not found in the root directory.");
                return;
            }

            // Define the destination folder path
            String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
            File templatesFolder = new File(templatesFolderPath);
            if (!templatesFolder.exists()) {
                templatesFolder.mkdirs();
            }

            String sourceFileName = new File(sourceFilePath).getName();


            // Define the destination file path
            String destFilePath = templatesFolderPath + File.separator + sourceFileName;
            File destFile = new File(destFilePath);

            // Move the file
            if (new File(sourceFilePath).renameTo(destFile)) {
                System.out.println("Preload CSV file moved to the templates folder.");
                System.out.println("Destination file path: " + destFilePath);
            } else {
                System.out.println("Failed to move the preload CSV file to the templates folder.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

        
    @Then("Verify the status message of uploaded contact bulk upload file is {string}")
    public void verify_bulkupload_contact_boolean_status(String expectedStatus) {
        boolean foundStatus = false;
		try {

            moveCBUFileToTemplates();

			// Construct the directory path to search for files - Jenkins run
			String downloadDir = System.getProperty("user.dir") +  File.separator + "templates";
            //local run
			// String downloadDir =System.getProperty("user.home") + "/Downloads";

            logger.info("Download directory: " + downloadDir); // Log download directory
            System.out.println("Download directory: " + downloadDir); // Log download directory

			String regexPattern = ".*?@.*?_relationship_managers_.*?\\.csv";
			Pattern pattern = Pattern.compile(regexPattern);
	
			File[] listOfFiles = new File(downloadDir).listFiles();
	
			// Check if any CSV file with "preload" in its names found
			if (listOfFiles != null) {
				for (File file : listOfFiles) {
					if (file.isFile()) {
						Matcher matcher = pattern.matcher(file.getName());
	
						if (matcher.matches()) {
							// Process the file
							if (processCSVFile(file, expectedStatus)) {
								foundStatus = true;
								break; // Exit loop if status is found
							}
						}
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
		if (foundStatus) {
			System.out.println("Status message '" + expectedStatus + "' found in the CSV file.");
		} else {
			System.out.println("Status message '" + expectedStatus + "' not found in any CSV file.");
		}
		Assert.assertTrue(foundStatus, "Status message '" + expectedStatus + "' not found in any CSV file.");
	}
    // Method to process the CSV file and check for the expected status
    private boolean processCSVFile(File file, String expectedStatus) {
        try (FileReader fileReader = new FileReader(file);
             CSVReader csvReader = new CSVReader(fileReader)) {

            String[] nextRecord;
            // Read data line by line
            while ((nextRecord = csvReader.readNext()) != null) {
                // Check if the expected status is present in any cell of the current row
                for (String cell : nextRecord) {
					// logger.info("Cell content: " + cell); // Log cell content
					System.out.println("Cell content: " + cell);
                    if (cell.contains(expectedStatus)) {
                        return true;
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }


    @Then("Add Buyers data information in the Excel file for the contacts bulk upload")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"HfR9OnnyU pvt ltd", "United States of America", "Supplier Relationship Manager", "jimmy@mailinator.com"};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with missing supplier name")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template_missing_supplier_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"", "United States of America", "Supplier Relationship Manager", "jimmy@mailinator.com"};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with missing tax country")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template_missing_tax_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"HfR9OnnyU pvt ltd", "", "Supplier Relationship Manager", "jimmy@mailinator.com"};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with missing relationship manager role")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template_missing_rmr_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"HfR9OnnyU pvt ltd", "United States of America", "", "jimmy@mailinator.com"};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with missing user email")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template_missing_user_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"HfR9OnnyU pvt ltd", "United States of America", "Supplier Relationship Manager", ""};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    
    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with missing all columns name")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_template_missing_all_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"", "", "", ""};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log the updated content of the CSV file
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Buyers data information in the Excel file for the contacts bulk upload with wrong tax country name")
    public void add_Supplier_data_information_in_excel_file_in_buyers_contact_wrong_template() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();

            String excelFilePath = findContactTemplateFile();
            if (excelFilePath == null) {
                throw new FileNotFoundException("Contact template file not found.");
            }
            System.out.println("Found contact template file at: " + excelFilePath);

            moveFileToTemplatesFolder(excelFilePath);
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
            System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);

            // Update CSV data
            String[] newData = {"HfR9OnnyU pvt ltd", "United States", "Supplier Relationship Manager", "jimmy@mailinator.com"};
            int rowNumber = 1; // Assuming the data to be updated is in the second row
            updateCSV(excelFilePath, newData, rowNumber);

            // Log updated content of the CSV 
            logCSVContent(excelFilePath);

            logger.info("Supplier information added to CSV file");
            System.out.println("Supplier information added to CSV file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to CSV file: " + e.getMessage());
            e.printStackTrace();
        }
    }

}