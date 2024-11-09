package stepdefinition;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import java.util.regex.*;

import java.awt.Robot;
import java.awt.event.KeyEvent;
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
import java.util.concurrent.ThreadLocalRandom;

public class BulkUpload extends DriverEngine {
    public Miscellaneous mis = new Miscellaneous();
    public static ElementControl ec = new ElementControl();
    public static String Emailidsup;
    public static String Australiancn;
    public static String legalBusinessName;
    public static File file;
    Logger logger = Logger.getLogger(BulkUpload.class);


    private void createTemplatesFolder() {
        //FOR JENKINS RUN
        String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";

        //for local run
        // String templatesFolderPath = System.getProperty("user.dir") + "/" + "templates";

        File templatesFolder = new File(templatesFolderPath);
        if (!templatesFolder.exists()) {
            templatesFolder.mkdirs();
            System.out.println("Created templates folder: " + templatesFolderPath);

        }
    }

    private void cleanTemplatesFolder() {
        //for jenkins run
        String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
        //for windows
        // String templatesFolderPath = System.getProperty("user.dir")  + "/templates";

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

        //for jenkins
        String destFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + sourceFile.getName();
        
        //for local
        // String destFilePath = System.getProperty("user.dir")  + "/" + "templates" + "/" + sourceFile.getName();


        File destFile = new File(destFilePath);
        if (!sourceFile.renameTo(destFile)) {
            throw new Exception("Failed to move file to templates folder.");
        }
        System.out.println("Moved file to templates folder: " + destFile.getAbsolutePath());

    }

	@Then("Add Supplier data information in the Excel file")
	public void add_Supplier_data_information_in_excel_file() {
		try { 
            
            cleanTemplatesFolder();

            createTemplatesFolder();
            // cleanTemplatesFolder();

			String excelFilePath = findExcelFileForValid();
            if (excelFilePath == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }
            System.out.println("Found Excel file at: " + excelFilePath);


            moveFileToTemplatesFolder(excelFilePath);
            // Update the excelFilePath after moving the file to templates folder
            //jenkins Run
            excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            
            //for local run
            // excelFilePath = System.getProperty("user.dir") + "/" + "templates" + "/" + "invitesuppliers.xlsx";

            
            System.out.println("Found Excel file after moving to templates folder :  " + excelFilePath);


			FileInputStream fileInputStream = new FileInputStream(new File(excelFilePath));
			XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
			XSSFSheet sheet = workbook.getSheetAt(0);
	
			// Update Excel data
			Row row = sheet.getRow(1);
			Cell cell;
	
			// Override
			String overRide = "Y";
			cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(overRide);
	
			// Supplier Email
			String supEmail = getRandomEmail();
			cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supEmail);
	
			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);
	
			// Business Name
			String businessName = getRandomString(12);
			cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(businessName);
	
			// Legal Name
			String legalName = getRandomString(12);
			cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(legalName);
	
			// Tax Country
			String taxCountry = "United States of America";
			cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(taxCountry);
	
			// Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);

            //SLYN-31213 Added new col Invitedbyemail
            String Invitedbyemail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
	
			// Write updated data back to Excel
			fileInputStream.close();
			FileOutputStream fileOutputStream = new FileOutputStream(new File(excelFilePath));
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
	


	// Method to generate a random email address
	private String getRandomEmail() {
		String allowedChars = "abcdefghijklmnopqrstuvwxyz";
		StringBuilder email = new StringBuilder();
		Random rnd = new Random();
		for (int i = 0; i < 10; i++) {
			email.append(allowedChars.charAt(rnd.nextInt(allowedChars.length())));
		}
		email.append("@maildrop.cc");
		return email.toString();
}

	// Method to generate a random string of given length
	private String getRandomString(int length) 
	{
	String allowedChars = "abcdefghijklmnopqrstuvwxyz";
	StringBuilder str = new StringBuilder();
	Random rnd = new Random();
	for (int i = 0; i < length; i++) 
	{
		str.append(allowedChars.charAt(rnd.nextInt(allowedChars.length())));
	}
	return str.toString();
	}

	private String findExcelFile() 
	{
        //for jenkins run
        String[] directories = { System.getProperty("user.dir"),System.getProperty("user.dir") + File.separator + "templates"};

        //for local run
		// Define the base directory paths
	    // String[] baseDirectories = {System.getProperty("user.dir") + "/target/File-Downloads/", System.getProperty("user.home") + "/Downloads"};
	 
	    // Generate a random number for the directory
	    // String randomNumber = generateRandomNumber();
	 
	    for (String baseDirectory : directories) 
	    {
	        // Construct the complete directory path with the dynamic random number
	        // String directoryPath = baseDirectory + randomNumber;
	 
	        // Construct the file path
	        String filePath = baseDirectory + "/invitesuppliers.xlsx";
            // String filePath = baseDirectory + File.separator + "invitesuppliers.xlsx";

	 
	        // Create a File object
	        File file = new File(filePath);
            System.out.println("Checking file path: " + filePath);

	 
	        // Check if the file exists and is not a directory
	        if (file.exists() && !file.isDirectory()) 
	        {
                System.out.println("File found: " + filePath);
	            return filePath;
	        }
          }
        System.out.println("File not found in the specified directories.");

	    return null;
       }   
	


    private String findExcelFileForValid() 
       {

         // Define the directories to check
    String[] directories = {
        System.getProperty("user.dir"),
        System.getProperty("user.dir") + File.separator + "templates"
    };

    // Define the file to search for
    String fileName = "invitesuppliers.xlsx";

    for (String baseDirectory : directories) {
        // Construct the file path
        String filePath = baseDirectory + File.separator + fileName;
        File file = new File(filePath);
        System.out.println("Checking file path: " + filePath);

        // Check if the file exists and is not a directory
        if (file.exists() && !file.isDirectory()) {
            System.out.println("File found: " + filePath);
            return filePath;
        } else {
            // If the file is not found, list the contents of the directory for debugging
            System.out.println("File not found at: " + filePath);
            // printDirectoryContents(baseDirectory);
        }
    }
    System.out.println("File not found in the specified directories.");
    return null;
          
          }   
       
	// Method to generate a random number
	private String generateRandomNumber() {
	    // Generate a random number between 1000 and 9999
	    int randomNum = ThreadLocalRandom.current().nextInt(1000, 10000);
	    return String.valueOf(randomNum);
	}   


    @Then("Click on {string} span button")
    public void click_nextpage_approval(String label) {
        String original = ec.getObjects("span_Txt") + label + "']";
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Clicked on  " + label + " Button" + "\n");
        System.out.println("Clicked on   " + label + " Button  " + "\n");
    }
	

   

    @Then("Verify the status message is {string}")
    public void verify_bulkupload_status(String str) {
        try {
            // Create an object of filereader
            FileReader filereader = new FileReader(file);
            // Create csvReader object
            CSVReader csvReader = new CSVReader(filereader);
            String[] nextRecord;
            // Read data line by line
            while ((nextRecord = csvReader.readNext()) != null) {
                for (String cell : nextRecord) {
                    System.out.print(cell + "\t");
                }
                System.out.println();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Then("Click on download logs")
    public void downloadLogs() throws Throwable {
        Thread.sleep(3000);
        String original = ec.getObjects("downloadLogs");
        String formatXPATH = String.format(original);
        WebElement Element = driver.findElement(By.xpath(original));
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();", Element);
        Thread.sleep(2000);
        logger.info("Clicked on download logs" + "\n");
        System.out.println("Clicked on download logs" + "\n");
    }

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


    private String findPreloadCsvFile() {
        String[] directories = {
                System.getProperty("user.dir")  };

        String regexPattern = ".*_preload_.*\\.csv";

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

    


    private void movePreloadCsvFileToTemplates() {
        try {
            // Define the source file path using the findPreloadCsvFile method
            String sourceFilePath = findPreloadCsvFile();
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




	@Then("Verify the status messageof bulk upload is {string}")
    public void verify_bulkupload__boolean_status(String expectedStatus) {
        boolean foundStatus = false;
		try {

            movePreloadCsvFileToTemplates();

			// Construct the directory path to search for files - for jenkins run
			String downloadDir = System.getProperty("user.dir") +  File.separator + "templates";

            //for windoes
            // String downloadDir = System.getProperty("user.home") + "/Downloads";

            logger.info("Download directory: " + downloadDir); // Log download directory
            System.out.println("Download directory: " + downloadDir); // Log download directory

			String regexPattern = ".*_preload_.*\\.csv"; //jenkins run

			// String regexPattern = ".*_preload_.*"; //local
            Pattern pattern = Pattern.compile(regexPattern);
	
			File[] listOfFiles = new File(downloadDir).listFiles();
	
			// Check if any CSV file with "preload" in its name is found
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

    
    @Then("Confirmed the override button")
    public void confirmOverride() {
    try {
        String overrideConfirmationXPath = ec.getObjects("override_confirmation");
        // Check if the confirmation popup is present
        if (isConfirmationPopupPresent(overrideConfirmationXPath)) {
            // Wait for the confirmation button to be clickable
            WebDriverWait wait = new WebDriverWait(driver, 10);
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(overrideConfirmationXPath)));

            // Click the confirmation button
            driver.findElement(By.xpath(overrideConfirmationXPath)).click();
            System.out.println("Clicked on confirmation popup button");
        } else {
            // If confirmation popup is not present, print a message
            System.out.println("Confirmation popup is not present.");
        }
    } catch (Exception e) {
        System.out.println("Error while confirming override: " + e.getMessage());
        e.printStackTrace();
    }
}

// Method to check if confirmation popup is present
    private boolean isConfirmationPopupPresent(String xpath) {
    try {
        // Check if the element corresponding to the xpath is present
        return driver.findElement(By.xpath(xpath)).isDisplayed();
    } catch (NoSuchElementException e) {
        // If element is not found, return false
        return false;
    }
}



	@Then("Upload Invite supplier csv file")
	public void upload_under() {
    try {
        // Wait for the upload button to be clickable
        String uploadButtonXPath = ec.getObjects("uploadCSV");
        WebDriverWait wait = new WebDriverWait(driver, 10);
        wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));

        // Click the "Select File" button
        driver.findElement(By.xpath(uploadButtonXPath)).click();
        
        // Wait for a few seconds to ensure the file explorer window is opened and the file is downloaded
        Thread.sleep(5000); // Adjust this wait time as needed
        
        // Get the directory path where the file is downloaded
        String downloadDir = System.getProperty("user.dir") + "/target/File-Downloads/";
        logger.info("Download directory: " + downloadDir);
        System.out.println("Download directory: " + downloadDir);

        // Get the list of files in the download directory
        File fileDownloadDir = new File(downloadDir);
        File[] listOfFiles = fileDownloadDir.listFiles();

        // Find the directory with the dynamic name
        String dynamicDirectoryName = null;
        for (File file : listOfFiles) {
            if (file.isDirectory()) {
                dynamicDirectoryName = file.getName();
                break;
            }
        }

        // Check if the dynamic directory name is found
        if (dynamicDirectoryName != null) {
            // Construct the full path of the file
            String filePath = downloadDir + dynamicDirectoryName + "/invitesuppliers.xlsx";
            File file = new File(filePath);

            // Check if the file exists
            if (file.exists()) {
                // Enter the file path in the file input field
                driver.findElement(By.xpath("//input[@type='file']")).sendKeys(file.getAbsolutePath());
                
                logger.info("Uploaded Invite supplier csv file");
                System.out.println("Uploaded Invite supplier csv file");
                 // Close the file explorer window
				 Robot robot = new Robot();
				 robot.keyPress(KeyEvent.VK_ESCAPE);
				 robot.keyRelease(KeyEvent.VK_ESCAPE);
            } else {
                logger.error("Invitesuppliers file not found in the download directory");
                System.out.println("Invitesuppliers file not found in the download directory");
            }
        } else {
            logger.error("Dynamic directory not found in the download directory");
            System.out.println("Dynamic directory not found in the download directory");
        }
    } catch (Exception e) {
        logger.error("Exception occurred while uploading invite supplier file: " + e.getMessage());
        e.printStackTrace();
    }
}

	@Then("Upload Invite supplier excel file")
 	public void uploadInviteSupplierCsvFile() {
        try {
            //for lcal run
            // String templatesFolderPath = System.getProperty("user.dir") + "\\templates";
            // String identityCSVFilePath = templatesFolderPath + "\\invitesuppliers.xlsx";
            // System.out.println("Identity CSV file path is: " + identityCSVFilePath);
    
            // File identityCSVFile = new File(identityCSVFilePath);
            // if (identityCSVFile.exists()) {
            //     System.out.println("Identity CSV file exists");
            // } else {
            //     System.out.println("Identity CSV file does not exist");
            // }
    
            // // Wait for a few seconds to ensure the file explorer window is opened
            // Thread.sleep(5000); // Adjust this wait time as needed
            // if (identityCSVFile.exists()) {
            //     // Your code to upload the file
            //     // ...
            //     String uploadButtonXPath = ec.getObjects("uploadCSV");
            //     WebDriverWait wait = new WebDriverWait(driver, 10);
            //     WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
            //     uploadButton.click();
    
            //     // Wait for a few seconds to ensure the file explorer window is opened
            //     Thread.sleep(5000); // Adjust this wait time as needed
            
            //        WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
            //        fileInput.sendKeys(identityCSVFilePath);
    
            //        // Close the file explorer window
            //        Robot robot = new Robot();
            //        robot.keyPress(KeyEvent.VK_ESCAPE);
            //        robot.keyRelease(KeyEvent.VK_ESCAPE);
            //        Thread.sleep(5000); // Adjust this wait time as needed
    
            //     System.out.println("Uploaded supplier preload supplier file");
            
            // FOR JENKINS RUN
            // // Find the Excel file path
            String excelFilePath = findExcelFile();

            if (excelFilePath != null) {
                // Click the "Select File" button
                String uploadButtonXPath = ec.getObjects("uploadCSV");
                WebDriverWait wait = new WebDriverWait(driver, 10);
                WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
                uploadButton.click();

                // Wait for a few seconds to ensure the file explorer window is opened
                Thread.sleep(5000); // Adjust this wait time as needed

                // Enter the file path in the file input field
                WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
                fileInput.sendKeys(excelFilePath);

                // Close the file explorer window- comment for jenkins
                // Robot robot = new Robot();
                // robot.keyPress(KeyEvent.VK_ESCAPE);
                // robot.keyRelease(KeyEvent.VK_ESCAPE);
                // Thread.sleep(5000); // Adjust this wait time as needed
 

                System.out.println("Uploaded Invite supplier CSV file");
            } else {
                System.out.println("Invitesuppliers file not found");
            }
        } catch (Exception e) {
            System.err.println("Exception occurred while uploading invite supplier file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    


    @Then("Delete the csv file")
    public void deletecsvfile() {
        file.delete();
        if(file.delete()) {
            logger.info("CSV file deleted" + "\n");
            System.out.println("CSV file deleted" + "\n");
        } else {
            logger.info("File does not exist" + "\n");
            System.out.println("File does not exist" + "\n");
        }
    }


    @Then("Click Upload button")
    public void click_button() throws Throwable {
        Thread.sleep(3000);
        String original = ec.getObjects("uploadButton");
        String formatXPATH = String.format(original);
        WebElement Element = driver.findElement(By.xpath(original));
        JavascriptExecutor js = (JavascriptExecutor) driver;
        js.executeScript("arguments[0].click();", Element);
        Thread.sleep(2000);
        logger.info("Clicked on upload button" + "\n");
        System.out.println("Clicked on upload button" + "\n");
    }

    @Then("Add Supplier information in the csv file for missing supplier email")
    public void add_Supplier_information_in_excel_file_for_missing_supplier_email() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);



            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = "";
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(12);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 			// Legal Name
             String legalName = getRandomString(12);
             cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(legalName);
             // Tax Country
             String taxCountry = "United States of America";
             cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(taxCountry);

             // Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
            
			// Internal Resource Email
			String Invitedbyemail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
    
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
    

    @Then("Add Supplier information in the csv file for missing first name")
    public void add_Supplier_information_in_excel_file_for_first_name() {
        try {
            cleanTemplatesFolder();
            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = "";
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(12);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             			// Legal Name
			String legalName = getRandomString(12);
			cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(legalName);

             // Tax Country
             String taxCountry = "United States of America";
             cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(taxCountry);

             // Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
            // Internal Resource Email
			String Invitedbyemail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
    
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
    
    
    @Then("Add Supplier information in the csv file for missing last name")
    public void add_Supplier_information_in_excel_file_for_last_name() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = "";
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(12);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             			// Legal Name
			String legalName = getRandomString(12);
			cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(legalName);

             // Tax Country
             String taxCountry = "United States of America";
             cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(taxCountry);

             // Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
    
            	// Internal Resource Email
			String Invitedbyemail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);

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
    
    @Then("Add Supplier information in the csv file for missing business name")
    public void add_Supplier_information_in_excel_file_for_business_name() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = "";
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             			// Legal Name
			String legalName = getRandomString(12);
			cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(legalName);
            
             // Tax Country
             String taxCountry = "United States of America";
             cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(taxCountry);

             // Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
            	// Internal Resource Email
			String Invitedbyemail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
    
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
    
    @Then("Add Supplier information in the csv file for missing taxCountry name")
    public void add_Supplier_information_in_excel_file_for_tax_name() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(8);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             // legal name
             String legalString =getRandomString(6);
             cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(legalString);


            // Tax Country
			String taxCountry = "";
			cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(taxCountry);
             // Preferred Language
			String preferredLanguage = "en-US";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
            	// Internal Resource Email
			String Invitedbyemail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
    
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
    

    @Then("Add Supplier information in the csv file for missing preferredlanguage name")
    public void add_Supplier_information_in_excel_file_for_laguage_name() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(8);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             // legal name
             String legalString =getRandomString(6);
             cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(legalString);


            // Tax Country
			String taxCountry = "United States of America";
			cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(taxCountry);
             // Preferred Language
			String preferredLanguage = "";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
    
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
    

    
    @Then("Add Supplier information in the csv file for missing invitebyemail name")
    public void add_Supplier_information_in_excel_file_for_actualinvite_name() {
        try {
            cleanTemplatesFolder();

            createTemplatesFolder();
            // Dynamic file path
			String excelFile = findExcelFile();
            if (excelFile == null) {
                throw new FileNotFoundException("invitesuppliers.xlsx file not found.");
            }

            System.out.println("Found Excel file at: " + excelFile);


            moveFileToTemplatesFolder(excelFile);
            // Update the excelFilePath after moving the file to templates folder
            excelFile = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "invitesuppliers.xlsx";
            System.out.println("Found Excel file after moving to templates folder :  " + excelFile);


            FileInputStream fileInputStream = new FileInputStream(new File(excelFile));
            XSSFWorkbook workbook = new XSSFWorkbook(fileInputStream);
            XSSFSheet sheet = workbook.getSheetAt(0);
    
            // Update Excel data
            Row row = sheet.getRow(1);
            Cell cell;
    
            // Override
            String overRide = "Y";
            cell = row.getCell(0, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(overRide);
    
            // Supplier Email
            String supEmail = getRandomEmail();;
            cell = row.getCell(1, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
            cell.setCellValue(supEmail);

			// First Name
			String firstName = getRandomString(8);
			cell = row.getCell(2, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(firstName);
	
			// Last Name
			String lastName = getRandomString(8);
			cell = row.getCell(3, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(lastName);

            // Business Name
             String businessName = getRandomString(8);
             cell = row.getCell(4, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(businessName);
 
             // legal name
             String legalString =getRandomString(6);
             cell = row.getCell(5, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
             cell.setCellValue(legalString);


            // Tax Country
			String taxCountry = "United States of America";
			cell = row.getCell(6, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(taxCountry);
             // Preferred Language
			String preferredLanguage = "";
			cell = row.getCell(7, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(preferredLanguage);
	
			// Questionnaire Groups
			String questionnaireGroups = "COCanadaBusinessandTax";
			cell = row.getCell(8, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(questionnaireGroups);
	
			// Internal Resource Email
			String internalResourceEmail = getRandomEmail();
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(internalResourceEmail);
	
			// SRM
			String srm = getRandomString(6);
			cell = row.getCell(10, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srm);
	
			// SRM Email
			String srmEmail = getRandomEmail();
			cell = row.getCell(11, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(srmEmail);
	
			// Note
			String note = getRandomString(15);
			cell = row.getCell(12, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(note);
	
			// Buyer System Details
			String buyerSystemDetails = "";
			cell = row.getCell(13, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(buyerSystemDetails);
	
			// Supplier Liaisons
			String supplierLiaisons = "";
			cell = row.getCell(14, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(supplierLiaisons);
	
                  // Internal Resource Email
			String Invitedbyemail = "";
			cell = row.getCell(9, Row.MissingCellPolicy.CREATE_NULL_AS_BLANK);
			cell.setCellValue(Invitedbyemail);
    
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