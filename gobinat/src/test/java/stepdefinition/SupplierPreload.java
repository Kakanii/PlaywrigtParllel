package stepdefinition;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.apache.commons.compress.archivers.zip.ZipFile;
import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.apache.commons.compress.archivers.zip.ZipArchiveEntry;
import org.apache.commons.compress.archivers.zip.ZipArchiveInputStream;
import org.openqa.selenium.io.Zip;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import java.io.*;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import java.awt.Robot;
import java.util.zip.ZipInputStream;
import java.util.zip.ZipEntry;
import java.awt.event.KeyEvent;
import org.testng.Assert;
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

public class SupplierPreload extends DriverEngine {
    public static ElementControl ec = new ElementControl();
    Logger logger = Logger.getLogger(SupplierPreload.class);

    @Then("Click on Supplier Preload Tab")
    public void supplier_preload_upload_tab() {
        try {
            String supplierPreloadTabXPath = ec.getObjects("supplier_preload_tab");
            WebDriverWait wait = new WebDriverWait(driver, 10);
            wait.until(ExpectedConditions.elementToBeClickable(By.xpath(supplierPreloadTabXPath)));
            driver.findElement(By.xpath(supplierPreloadTabXPath)).click();
            System.out.println("Clicked on supplier preload tab");
            logger.info("Clicked on supplier preload tab");
        } catch (Exception e) {
            System.out.println("Unable to click on supplier preload tab: " + e.getMessage());
            logger.error("Unable to click on supplier preload tab: " + e.getMessage());
            e.printStackTrace();
        }
    }




    private void unzipPreloadTemplateFile(String zipFilePath, String destinationFolder) {
        try {
            logger.info("Unzipping preload template file: " + zipFilePath);
            System.out.println("Unzipping preload template file: " + zipFilePath);
    
            File destinationDir = new File(destinationFolder);
            // Create destination folder if it doesn't exist
            if (!destinationDir.exists()) {
                destinationDir.mkdirs();
            }
    
            // Open the zip file
            try (ZipFile zipFile = new ZipFile(zipFilePath)) {
                Enumeration<? extends ZipEntry> entries = zipFile.getEntries();
    
                while (entries.hasMoreElements()) {
                    ZipEntry entry = entries.nextElement();
                    File entryDestination = new File(destinationDir, entry.getName());
    
                    // Create parent directories if they don't exist
                    if (entry.isDirectory()) {
                        entryDestination.mkdirs();
                    } else {
                        // Ensure parent directory exists for file entry
                        File parent = entryDestination.getParentFile();
                        if (parent != null && !parent.exists()) {
                            parent.mkdirs();
                        }
    
                        // Extract file
                        try (InputStream is = zipFile.getInputStream((ZipArchiveEntry) entry);
                             OutputStream os = new FileOutputStream(entryDestination)) {
                            byte[] buffer = new byte[1024];
                            int bytesRead;
                            while ((bytesRead = is.read(buffer)) != -1) {
                                os.write(buffer, 0, bytesRead);
                            }
                        }
                    }
                    System.out.println("Extracted: " + entryDestination.getAbsolutePath());
                }
            }
    
            logger.info("Unzipping completed successfully");
        } catch (IOException e) {
            logger.error("Error occurred while unzipping preload template file: " + e.getMessage());
            e.printStackTrace();
        }
    }

    @Then("Add Supplier data information in the Excel file for the supplier preload")
    public void add_Supplier_preload_data_information_in_excel_file() {
        try {
            String templatesFolderPath = System.getProperty("user.dir") + "/templates";
            cleanTemplatesFolder(templatesFolderPath);
            createTemplatesFolder(templatesFolderPath);

            String zipFilePath = findSupplierPreloadTemplateZipFile();
            if (zipFilePath == null) {
                throw new FileNotFoundException("Preload template file not found Add.");
            }
            logger.info("Found preload template file at: " + zipFilePath);
            System.out.println("Found preload template file at: " + zipFilePath);

            moveFileToTemplatesFolder(zipFilePath, templatesFolderPath);
            zipFilePath = templatesFolderPath + "/preloadtemplate.zip";

            unzipPreloadTemplateFile(zipFilePath, templatesFolderPath);

             
            // Write data to identity.csv
            String[] data = {"Y", "PreInc", "United States of America", "97-7164512"};
            String identityCSVFilePath = templatesFolderPath + "/identity.csv";
            writeDataToCSV(identityCSVFilePath, data);


            logger.info("Supplier information added to Excel file");
            System.out.println("Supplier information added to Excel file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
            e.printStackTrace();
        }
    }


    @Then("Add Supplier data information in the Excel file for the supplier preload with invalid business name")
    public void add_Supplier_preload_data_information_with_invalid_business_excel_file() {
        try {
            String templatesFolderPath = System.getProperty("user.dir") + "/templates";
            cleanTemplatesFolder(templatesFolderPath);
            createTemplatesFolder(templatesFolderPath);

            String zipFilePath = findSupplierPreloadTemplateZipFile();
            if (zipFilePath == null) {
                throw new FileNotFoundException("Preload template file not found Add.");
            }
            logger.info("Found preload template file at: " + zipFilePath);
            System.out.println("Found preload template file at: " + zipFilePath);

            moveFileToTemplatesFolder(zipFilePath, templatesFolderPath);
            zipFilePath = templatesFolderPath + "/preloadtemplate.zip";

            unzipPreloadTemplateFile(zipFilePath, templatesFolderPath);

             
            // Write data to identity.csv
            String[] data = {"Y", "", "United States of America", "97-7164512"};
            String identityCSVFilePath = templatesFolderPath + "/identity.csv";
            writeDataToCSV(identityCSVFilePath, data);


            logger.info("Supplier information added to Excel file");
            System.out.println("Supplier information added to Excel file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
            e.printStackTrace();
        }
    }


    @Then("Add Supplier data information in the Excel file for the supplier preload with invalid tax country")
    public void add_Supplier_preload_data_information_with_invalid_tax_country_excel_file() {
        try {
            String templatesFolderPath = System.getProperty("user.dir") + "/templates";
            cleanTemplatesFolder(templatesFolderPath);
            createTemplatesFolder(templatesFolderPath);

            String zipFilePath = findSupplierPreloadTemplateZipFile();
            if (zipFilePath == null) {
                throw new FileNotFoundException("Preload template file not found Add.");
            }
            logger.info("Found preload template file at: " + zipFilePath);
            System.out.println("Found preload template file at: " + zipFilePath);

            moveFileToTemplatesFolder(zipFilePath, templatesFolderPath);
            zipFilePath = templatesFolderPath + "/preloadtemplate.zip";

            unzipPreloadTemplateFile(zipFilePath, templatesFolderPath);

             
            // Write data to identity.csv
            String[] data = {"Y", "Prelinc", "United Stas of Ama", "97-7164512"};
            String identityCSVFilePath = templatesFolderPath + "/identity.csv";
            writeDataToCSV(identityCSVFilePath, data);


            logger.info("Supplier information added to Excel file");
            System.out.println("Supplier information added to Excel file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
            e.printStackTrace();
        }
    }


    @Then("Add Supplier data information in the Excel file for the supplier preload with invalid tax registration")
    public void add_Supplier_preload_data_information_with_invalid_tax_registration_excel_file() {
        try {
            String templatesFolderPath = System.getProperty("user.dir") + "/templates";
            cleanTemplatesFolder(templatesFolderPath);
            createTemplatesFolder(templatesFolderPath);

            String zipFilePath = findSupplierPreloadTemplateZipFile();
            if (zipFilePath == null) {
                throw new FileNotFoundException("Preload template file not found Add.");
            }
            logger.info("Found preload template file at: " + zipFilePath);
            System.out.println("Found preload template file at: " + zipFilePath);

            moveFileToTemplatesFolder(zipFilePath, templatesFolderPath);
            zipFilePath = templatesFolderPath + "/preloadtemplate.zip";

            unzipPreloadTemplateFile(zipFilePath, templatesFolderPath);

             
            // Write data to identity.csv
            String[] data = {"Y", "Prelinc", "United States of Amarica", ""};
            String identityCSVFilePath = templatesFolderPath + "/identity.csv";
            writeDataToCSV(identityCSVFilePath, data);


            logger.info("Supplier information added to Excel file");
            System.out.println("Supplier information added to Excel file");
        } catch (Exception e) {
            logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
            e.printStackTrace();
        }
    }


    @Then("Upload Supplier Preload file")
public void uploadsupplierpreoladidentityfile() {
    try {
        // Find the Excel file path
        String templatesFolderPath = System.getProperty("user.dir") + "\\templates";
        String identityCSVFilePath = templatesFolderPath + "\\identity.csv";
        System.out.println("Identity CSV file path is: " + identityCSVFilePath);

        File identityCSVFile = new File(identityCSVFilePath);
        if (identityCSVFile.exists()) {
            System.out.println("Identity CSV file exists");
        } else {
            System.out.println("Identity CSV file does not exist");
        }

        // Wait for a few seconds to ensure the file explorer window is opened
        Thread.sleep(5000); // Adjust this wait time as needed
        if (identityCSVFile.exists()) {
            // Your code to upload the file
            // ...
            String uploadButtonXPath = ec.getObjects("uploadCSV");
            WebDriverWait wait = new WebDriverWait(driver, 10);
            WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
            uploadButton.click();

            // Wait for a few seconds to ensure the file explorer window is opened
            Thread.sleep(5000); // Adjust this wait time as needed
        
               WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
               fileInput.sendKeys(identityCSVFilePath);

               // Close the file explorer window
               Robot robot = new Robot();
               robot.keyPress(KeyEvent.VK_ESCAPE);
               robot.keyRelease(KeyEvent.VK_ESCAPE);
               Thread.sleep(5000); // Adjust this wait time as needed

            System.out.println("Uploaded supplier preload supplier file");
        } else {
            System.err.println("Identity CSV file not found at: " + identityCSVFilePath);
        }
    } catch (Exception e) {
        System.err.println("Exception occurred while uploading invite supplier file: " + e.getMessage());
        e.printStackTrace();
    }
}

@Then("Click on supplier preload download logs")
public void downloadSupplierPreloadLogs() throws Throwable {
    Thread.sleep(3000);
    // String original = ec.getObjects("supplierPreloadDownloadLogs");
    String original = "//*[@id=\"supplier-preload__panel\"]/div[3]/div[1]/div[2]/button[1]";

    if (original == null) {
        System.err.println("Error: XPath for supplier preload download logs is null");
        return;
    }

    String formatXPATH = String.format(original);
    if (formatXPATH == null) {
        System.err.println("Error: Formatted XPath for supplier preload download logs is null");
        return;
    }
    System.out.println("formatXPATH for supplierPreloadDownloadLogs" + formatXPATH);

    WebElement Element = driver.findElement(By.xpath(formatXPATH));
    JavascriptExecutor js = (JavascriptExecutor) driver;
    js.executeScript("arguments[0].click();", Element);
    Thread.sleep(2000);
    logger.info("Clicked on supplier preload download logs" + "\n");
    System.out.println("Clicked on supplier preload download logs" + "\n");
}



@Then("Verify the status message of Supplier preload logs is {string}")
public void verify_bulkupload__boolean_status(String expectedStatus) {
    boolean foundStatus = false;
    try {

        movePreloadCsvFileToTemplates();

        // Construct the directory path to search for files
        // String downloadDir = System.getProperty("user.dir") +  File.separator + "templates";

        String downloadDir = System.getProperty("user.dir")  + "/templates";

        logger.info("Download directory: " + downloadDir); // Log download directory
        System.out.println("Download directory: " + downloadDir); // Log download directory

        String regexPattern = ".*_preload_.*\\.csv";
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


private void movePreloadCsvFileToTemplates() {
    try {
        // Define the source file path using the findPreloadCsvFile method
        String sourceFilePath = findPreloadCsvFile();
        if (sourceFilePath == null) {
            System.out.println("Preload CSV file not found in the root directory.");
            return;
        }

        // Define the destination folder path
        // String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";

        String templatesFolderPath = System.getProperty("user.dir")  + "/templates";

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

private String findPreloadCsvFile() {
    //for jenkins run
    // String[] directories = { System.getProperty("user.dir") + "/templates"  };
    String[] directories = { System.getProperty("user.home") + "/Downloads" };

    // String regexPattern = ".*_preload_.*\\.csv";
    String regexPattern = ".*_preload_.*";


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



    private void writeDataToCSV(String filePath, String[] data) {
        try (BufferedWriter writer = new BufferedWriter(new FileWriter(filePath, true))) {
            StringBuilder sb = new StringBuilder();
            for (String value : data) {
                sb.append(value).append(",");
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append("\n");
            writer.write(sb.toString());
            System.out.println("Data has been written to " + filePath);
        } catch (IOException e) {
            System.err.println("Error writing data to CSV: " + e.getMessage());
            e.printStackTrace();
        }
    }
    private void createTemplatesFolder(String templatesFolderPath) {
        File templatesFolder = new File(templatesFolderPath);
        if (!templatesFolder.exists()) {
            templatesFolder.mkdirs();
            logger.info("Created templates folder: " + templatesFolderPath);
            System.out.println("Created templates folder: " + templatesFolderPath);

        }
    }

    private void cleanTemplatesFolder(String templatesFolderPath) {
        File templatesFolder = new File(templatesFolderPath);
        if (templatesFolder.exists()) {
            for (File file : templatesFolder.listFiles()) {
                if (!file.isDirectory()) {
                    file.delete();
                    logger.info("Deleted file: " + file.getName());
                    System.out.println("Deleted file: " + file.getName());

                }
            }
        }
    }

    private void moveFileToTemplatesFolder(String sourceFilePath, String templatesFolderPath) {
        try {
            File sourceFile = new File(sourceFilePath);
            File destFolder = new File(templatesFolderPath);
            File destFile = new File(destFolder, sourceFile.getName());
            if (!sourceFile.renameTo(destFile)) {
                throw new Exception("Failed to move file to templates folder.");
            }
            logger.info("Moved file from: " + sourceFilePath + " to: " + destFile.getAbsolutePath());

            System.out.println("Moved file from: " + sourceFilePath + " to: " + destFile.getAbsolutePath());
        } catch (Exception e) {
            logger.error("Failed to move file to templates folder: " + e.getMessage());

            System.out.println("Failed to move file to templates folder: " + e.getMessage());
            e.printStackTrace();
        }
    }

    private String findSupplierPreloadTemplateZipFile() {
        // String repoDirectory = System.getProperty("user.dir");/
        String repoDirectory = System.getProperty("user.home") + "/Downloads";
        File repoDir = new File(repoDirectory);
        if (repoDir.exists() && repoDir.isDirectory()) {
            System.out.println("Searching for preload template zip file in repository directory: " + repoDirectory);
            String filePath = searchForFile(repoDir, "preloadtemplate.zip");
            if (filePath != null) {
                System.out.println("Preload template file found: " + filePath);
                return filePath;
            }
        }
        System.out.println("Preload template file not found in repository directory: " + repoDirectory);
        return null;
    }
    
    
    private String searchForFile(File directory, String fileName) {
        File[] files = directory.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    String filePath = searchForFile(file, fileName);
                    if (filePath != null) {
                        return filePath;
                    }
                } else if (file.getName().equals(fileName)) {
                    return file.getAbsolutePath();
                }
            }
        }
        return null;
    }
}    



// package stepdefinition;

// import java.io.BufferedReader;
// import java.io.File;
// import java.io.FileInputStream;
// import java.io.FileNotFoundException;
// import java.io.FileOutputStream;
// import java.io.FileReader;
// import java.io.FileWriter;
// import java.io.IOException;

// import org.openqa.selenium.By;
// import org.openqa.selenium.JavascriptExecutor;
// import org.openqa.selenium.WebElement;
// import org.openqa.selenium.support.ui.ExpectedConditions;
// import org.openqa.selenium.support.ui.WebDriverWait;
// import org.testng.Assert;
// import java.util.regex.*;

// import com.opencsv.CSVReader;
// import io.cucumber.java.en.Then;
// import utility.DriverEngine;
// import utility.ElementControl;
// import utility.Miscellaneous;
// import org.apache.log4j.Logger;

// import org.apache.poi.ss.usermodel.Row;
// import org.apache.poi.ss.usermodel.Cell;
// import org.apache.poi.xssf.usermodel.XSSFWorkbook;
// import org.apache.poi.xssf.usermodel.XSSFSheet;
// import java.util.zip.*;

// import java.util.NoSuchElementException;
// import java.util.Random;
// import java.util.zip.ZipFile;

// public class SupplierPreload extends DriverEngine {
//     public Miscellaneous mis = new Miscellaneous();
//     public static ElementControl ec = new ElementControl();
//     public static String Emailidsup;
//     public static String Australiancn;
//     public static String legalBusinessName;
//     public static File file;
//     Logger logger = Logger.getLogger(ContactsBulkUpload.class);

// 	@Then("Click on Supplier Preload Tab")
//     public void supplier_preload_upload_tab() {
//         try {
// 			String contactsbullkuploadtab = ec.getObjects("supplier_preload_tab");
//             // Wait for the confirmation button to be clickable
//             WebDriverWait wait = new WebDriverWait(driver, 10);
//             wait.until(ExpectedConditions.elementToBeClickable(By.xpath(contactsbullkuploadtab)));

//             // Click the confirmation button
//             driver.findElement(By.xpath(contactsbullkuploadtab)).click();
//             System.out.println("Clicked on supplier preload tab");
//         } catch (Exception e) {
//             System.out.println("not able to click on supplier preload tab: " + e.getMessage());
//             e.printStackTrace();
//         }
//     }

//     // private String unzipPreloadTemplateFile(String zipFilePath) {
//     //     try {
//     //         String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
//     //         ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(zipFilePath));
//     //         ZipEntry entry = zipInputStream.getNextEntry();
//     //         while (entry != null) {
//     //             String entryName = entry.getName();
//     //             if (entryName.endsWith(".xlsx")) {
//     //                 File file = new File(templatesFolderPath + File.separator + entryName);
//     //                 FileOutputStream fos = new FileOutputStream(file);
//     //                 byte[] bytes = new byte[1024];
//     //                 int length;
//     //                 while ((length = zipInputStream.read(bytes)) >= 0) {
//     //                     fos.write(bytes, 0, length);
//     //                 }
//     //                 fos.close();
//     //                 zipInputStream.closeEntry();
//     //                 zipInputStream.close();
//     //                 return file.getAbsolutePath();
//     //             }
//     //             zipInputStream.closeEntry();
//     //             entry = zipInputStream.getNextEntry();
//     //         }
//     //         zipInputStream.close();
//     //     } catch (IOException e) {
//     //         e.printStackTrace();
//     //     }
//     //     return null;
//     // }

//     private void unzipPreloadTemplateFile(String zipFilePath, String destinationFolder) {
//         try {
//             System.out.println("Unzipping preload template file: " + zipFilePath);
//             ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(zipFilePath));
//             ZipEntry entry = zipInputStream.getNextEntry();
//             while (entry != null) {
//                 String entryName = entry.getName();
//                 File file = new File(destinationFolder + File.separator + entryName);
//                 FileOutputStream fos = new FileOutputStream(file);
//                 byte[] bytes = new byte[1024];
//                 int length;
//                 while ((length = zipInputStream.read(bytes)) >= 0) {
//                     fos.write(bytes, 0, length);
//                 }
//                 fos.close();
//                 zipInputStream.closeEntry();
//                 entry = zipInputStream.getNextEntry();
//             }
//             zipInputStream.close();
//         } catch (IOException e) {
//             e.printStackTrace();
//             System.err.println("Error occurred while unzipping preload template file.");
//         }
//     }
//     private void printFilesInFolder(String folderPath) {
//         File folder = new File(folderPath);
//         File[] files = folder.listFiles();
//         if (files != null) {
//             for (File file : files) {
//                 System.out.println("File in folder: " + file.getName());
//             }
//         }
//     }
//     private void createTemplatesFolder() {
//         String templatesFolderPath = System.getProperty("user.dir") + "/" + "templates";

//         // String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";

//         File templatesFolder = new File(templatesFolderPath);
//         if (!templatesFolder.exists()) {
//             templatesFolder.mkdirs();
//             System.out.println("Created templates folder: " + templatesFolderPath);

//         }
//     }

//     private void cleanTemplatesFolder() {
//         String templatesFolderPath = System.getProperty("user.dir") + "/" + "templates";

//         // String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
//         File templatesFolder = new File(templatesFolderPath);
//         if (templatesFolder.exists()) {
//             for (File file : templatesFolder.listFiles()) {
//                 if (!file.isDirectory()) {
//                     file.delete();
//                     System.out.println("Deleted file: " + file.getName());

//                 }
//             }
//         }
//     }

//     private void moveFileToTemplatesFolder(String sourceFilePath) {
//         try {
//             File sourceFile = new File(sourceFilePath);
//             String destFilePath = System.getProperty("user.dir") + "/" + "templates" + "/" + sourceFile.getName();
//             // String destFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + sourceFile.getName();

//             File destFile = new File(destFilePath);
//             if (!sourceFile.renameTo(destFile)) {
//                 throw new Exception("Failed to move file to templates folder.");
//             }
//             System.out.println("Moved file from: " + sourceFilePath + " to: " + destFilePath);
//         } catch (Exception e) {
//             System.err.println("Failed to move file to templates folder: " + e.getMessage());
//             e.printStackTrace();
//         }
//     }
    


//     // private String findSupplierPreloadTemplateZipFile() {
//     //     String[] directories = {
//     //             System.getProperty("user.dir"),
//     //             System.getProperty("user.dir") + File.separator + "templates"
//     //     };
//     //     // DebugHelper.printFilesInDirectory(directories);

//     //     String[] filesToSearch = {"preloadtemplate.zip"};
    
//     //     for (String directory : directories) {
//     //         System.out.println("Searching for preload template zip file in directory: " + directory);
//     //         for (String fileToSearch : filesToSearch) {
//     //             String filePath = directory + File.separator + fileToSearch;
//     //             System.out.println("Checking for file: " + filePath);
//     //             File file = new File(filePath);
//     //             if (file.exists() && !file.isDirectory()) {
//     //                 System.out.println("preload template file found: " + filePath);
//     //                 return filePath;
//     //             }
//     //         }
//     //     }
    
//     //     System.out.println("preload template file not found.");
//     //     return null;
//     // }

//     private String findSupplierPreloadTemplateZipFile() {
//         // String[] directories = {System.getProperty("user.dir"), System.getProperty("user.dir") + File.separator + "templates"};

//         String[] directories = {System.getProperty("user.dir"), System.getProperty("user.dir") + "/" + "templates"};

//         String[] filesToSearch = {"preloadtemplate.zip"};
//         for (String directory : directories) {
//             logger.debug("Searching for preload template zip file in directory: " + directory);
//             for (String fileToSearch : filesToSearch) {
//                 String filePath = directory + File.separator + fileToSearch;
//                 logger.debug("Checking for file: " + filePath);
//                 File file = new File(filePath);
//                 if (file.exists() && !file.isDirectory()) {
//                     logger.debug("Preload template file found: " + filePath);
//                     return filePath;
//                 }
//             }
//         }
//         logger.error("Preload template file not found.");
//         return null;
//     }


//     private String extractFilesFromZip(String zipFilePath) {
//         try {
//             String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";
//             ZipInputStream zipInputStream = new ZipInputStream(new FileInputStream(zipFilePath));
//             ZipEntry entry = zipInputStream.getNextEntry();
//             while (entry != null) {
//                 String entryName = entry.getName();
//                 File file = new File(templatesFolderPath + File.separator + entryName);
//                 FileOutputStream fos = new FileOutputStream(file);
//                 byte[] bytes = new byte[1024];
//                 int length;
//                 while ((length = zipInputStream.read(bytes)) >= 0) {
//                     fos.write(bytes, 0, length);
//                 }
//                 fos.close();
//                 zipInputStream.closeEntry();
//                 entry = zipInputStream.getNextEntry();
//             }
//             zipInputStream.close();
            
//             // Print files after unzip
//             printFilesInFolder(templatesFolderPath);
//         } catch (IOException e) {
//             e.printStackTrace();
//             System.err.println("An error occurred while extracting files from the zip.");
//         }
//         return zipFilePath;
//     }
    
//     @Then("Add Supplier data information in the Excel file for the supplier preload")
//     public void add_Supplier_preload_data_information_in_excel_file_in_the_identity_file() {
//         try {
//             String templatesFolderPath = System.getProperty("user.dir") + "/" + "templates";

//             // String templatesFolderPath = System.getProperty("user.dir") + File.separator + "templates";

//             // Print files in templates folder before unzip
//             System.out.println("Files in templates folder before unzip:");
//             printFilesInFolder(templatesFolderPath);

//             cleanTemplatesFolder();
//             createTemplatesFolder();

//             String zipFilePath = findSupplierPreloadTemplateZipFile();
//             if (zipFilePath == null) {
//                 throw new FileNotFoundException("Preload template file not found.");
//             }
//             System.out.println("Found preload template file at: " + zipFilePath);

//             moveFileToTemplatesFolder(zipFilePath);
//             // excelFilePath = System.getProperty("user.dir") + File.separator + "templates" + File.separator + "Relationship_Manager_Role_Bulk_Upload_Template.csv";
//             // System.out.println("Found CSV file after moving to templates folder: " + excelFilePath);
//             unzipPreloadTemplateFile(zipFilePath, templatesFolderPath);

//      // Print files in templates folder after moving zip
//             System.out.println("Files in templates folder after moving zip:");
//             printFilesInFolder(templatesFolderPath);


//             // String excelFilePath = extractFilesFromZip(zipFilePath);
//             // if (excelFilePath == null) {
//             //     throw new FileNotFoundException("Failed to extract identity Excel file.");
//             // }
//             // System.out.println("Extracted identity Excel file: " + excelFilePath);

//             // // Update Excel data
//             // String[] newData = {"Y", "PreInc", "United States of America", "97-7164512"};
//             // updateIdentityExcel(excelFilePath, newData);

//             logger.info("Supplier information added to Excel file");
//             System.out.println("Supplier information added to Excel file");
//         } catch (Exception e) {
//             logger.error("Exception occurred while adding supplier information to Excel file: " + e.getMessage());
//             e.printStackTrace();
//         }
//     }

//     private void updateIdentityExcel(String excelFilePath, String[] newData) {
//         try {
//             FileInputStream fis = new FileInputStream(new File(excelFilePath));
//             XSSFWorkbook workbook = new XSSFWorkbook(fis);
//             XSSFSheet sheet = workbook.getSheetAt(0); // Assuming data is in the first sheet
//             Row row = sheet.getRow(1); // Assuming the data to update is in the second row
//             if (row != null) {
//                 for (int i = 0; i < newData.length; i++) {
//                     Cell cell = row.getCell(i);
//                     if (cell == null) {
//                         cell = row.createCell(i);
//                     }
//                     cell.setCellValue(newData[i]);
//                 }
//             }
//             fis.close();

//             FileOutputStream fos = new FileOutputStream(new File(excelFilePath));
//             workbook.write(fos);
//             fos.close();
//             workbook.close();
//         } catch (IOException e) {
//             e.printStackTrace();
//         }
//     }











//     private void updateCSV(String csvFilePath, String[] newData, int rowNumber) {
//         try (BufferedReader br = new BufferedReader(new FileReader(csvFilePath))) {
//             String line;
//             StringBuilder sb = new StringBuilder();
//             int rowNum = 0;
//             while ((line = br.readLine()) != null) {
//                 if (rowNum == rowNumber) {
//                     line = String.join(",", newData);
//                 }
//                 sb.append(line).append("\n");
//                 rowNum++;
//             }
//             br.close();

//             // Write updated content back to CSV
//             FileWriter writer = new FileWriter(csvFilePath);
//             writer.write(sb.toString());
//             writer.close();
//         } catch (IOException e) {
//             e.printStackTrace();
//         }
//     }

//     private void logCSVContent(String csvFilePath) {
//         try (BufferedReader br = new BufferedReader(new FileReader(csvFilePath))) {
//             String line;
//             System.out.println("Updated CSV content:");
//             while ((line = br.readLine()) != null) {
//                 System.out.println(line);
//             }
//             br.close();
//         } catch (IOException e) {
//             e.printStackTrace();
//         }
//     }



// //     @Then("Upload Buyer contact data file")
// //     public void uploadBuyerContactexcelfile() {
// //        try {
// //            // Find the Excel file path
// //            String excelFilePath = findContactTemplateFile();

// //            if (excelFilePath != null) {
// //                // Click the "Select File" button
// //                String uploadButtonXPath = ec.getObjects("uploadContactfile");
// //                WebDriverWait wait = new WebDriverWait(driver, 10);
// //                WebElement uploadButton = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(uploadButtonXPath)));
// //                uploadButton.click();

// //                // Wait for a few seconds to ensure the file explorer window is opened
// //                Thread.sleep(5000); // Adjust this wait time as needed

// //                // Enter the file path in the file input field
// //                WebElement fileInput = driver.findElement(By.xpath("//input[@type='file']"));
// //                fileInput.sendKeys(excelFilePath);

// //                // Close the file explorer window
// //                // Robot robot = new Robot();
// //                // robot.keyPress(KeyEvent.VK_ESCAPE);
// //                // robot.keyRelease(KeyEvent.VK_ESCAPE);

// //                System.out.println("Uploaded Invite supplier file");
// //            } else {
// //                System.out.println("Uploaded Invite supplier file not found");
// //            }
// //        } catch (Exception e) {
// //            System.err.println("Exception occurred while uploading invite supplier file: " + e.getMessage());
// //            e.printStackTrace();
// //        }
// //    }




// }