package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.io.File;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class MyBuyers extends DriverEngine
{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(MyBuyers.class);
	
	@Then("My Buyers Tab Clickable On Dashboard page")
	public void my_Buyers_Tab_Clickable_On_Dashboard_page() throws Throwable
	{
		String original = ec.getObjects("buyers_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		

		logger.info("Clicked on my Buyers tab on Dashboard page" + "\n");
		System.out.println("Clicked on My Buyers tab on Dashboard page" + "\n");
	}
	
	@Then("Show Buyer Company Name on My Buyers page {string}")
	public void show_Buyer_Company_Name_on_My_Buyers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mybuyers_companyname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String companyname=driver.findElement(By.xpath(original)).getText();
		System.out.println(companyname);
		
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Company Name " +" "+ string + " "+  "in My buyers Tab"+"\n");
    	System.out.println("Shows Company Name " +" "+ string + " "+ "in My buyers Tab"+"\n");	
	}
	
	@Then("Show Buyer Company Status on My Buyers page {string}")
	public void show_Buyer_Company_Status_on_My_Buyers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mybuyers_companystatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String companystatus=driver.findElement(By.xpath(original)).getText();
		System.out.println(companystatus);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Company Status " +" "+ string + " "+  "in My buyers Tab "+"\n");
    	System.out.println("Shows Company Status  " +" "+ string + " "+  "in My Buyers Tab"+"\n");
	}
	
	@Then("Click on Documents Button")
    public void click_on_documents_button() throws Throwable {
		Thread.sleep(2000);
        String original = ec.getObjects("DocumentsButton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Documents button");
    	System.out.println("Clicked on Documents button");
		
	}
	
	@Then("Verify Document label is {string}")
    public void verify_document_label_is(String label) throws Throwable {
        String original = ec.getObjects("document_label1") + label + ec.getObjects("document_label2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),label);
    	logger.info("Shows Document label " +" "+ label + " "+  "in Documents Tab"+"\n");
    	System.out.println("Shows Document label " +" "+ label + " "+ "in Documents Tab"+"\n");	
	}
	
	@Then("Select {string} filter")
    public void select_something_filter(String string) throws Throwable {
        String original = ec.getObjects("source_filter");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Source filter on Documents page"+"\n");
		System.out.println("Clicked on Source filter on Documents page"+"\n");
		
		String original1 = ec.getObjects("source1") + string +  ec.getObjects("source2");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected" + string + "on Documents page"+"\n");
		System.out.println("Selected" + string + "on Documents page"+"\n");
		
		String original2 = ec.getObjects("apply_button");		
		String formatXPATH2 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH2);
		
		driver.findElement(By.xpath(original2)).click();
		logger.info("Clicked on Apply Button"+"\n");
		System.out.println("Clicked on Apply Button"+"\n");

		Thread.sleep(3000);
    }

	@Then("add label as {string}")
    public void add_label_as(String string) throws Throwable {
        String original = ec.getObjects("label_name");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Entered " + " " + string + "as label name" + "\n");
		System.out.println("Enter valid text" + " " + string + "as label name" + "\n");
	}


	
	@Then("clear all the filters")
    public void clear_all_the_filters() throws Throwable {
		
		String original = ec.getObjects("clearall_filters");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);

		logger.info("cleared all filters"+"\n");
		System.out.println("cleared all filters"+"\n");
	}
	
	
	@Then("Select update or replace Document for {string}")
	public void select_update_or_replace_Document_for(String string) throws Throwable  {
   
        String original = ec.getObjects("update_label1") + string +  ec.getObjects("update_label2") ;		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);


		String original1 = ec.getObjects("updateorreplace_button");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();


		logger.info("Clicked on Update or Replace Button"+"\n");
		System.out.println("Clicked on Update or Replace Button"+"\n");
	}
	
	@Then("Verify Source is {string}")
	public void verify_Source_is(String string) {
	String original = ec.getObjects("document_source1") + string + ec.getObjects("document_source2");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
	logger.info("Shows Document source " +" "+ string + " "+  "in Documents Tab"+"\n");
	System.out.println("Shows Document source " +" "+ string + " "+ "in Documents Tab"+"\n");	
}

@Then("^Verify the file download as \"([^\"]*)\"$")
    public void verify_the_file_download_as_something(String string) throws Throwable {
        
		String Path = System.getProperty("user.dir");
        File getLatestFile = getLatestFilefromDir(Path+"/target/File-Downloads/");
		File newpath = getLatestFilefromDir(Path+"/target/File-Downloads/" + getLatestFile.getName() + "/");
	    String fileName = newpath.getName();
	    assertTrue(fileName.equals(string), "Downloaded file name is not matching with expected file name");
		logger.info("Downloaded " +" "+ string + " "+  "File"+"\n");
	System.out.println("Downloaded " +" "+ string + " "+  "File"+"\n");	
    }
	private File getLatestFilefromDir(String dirPath){
	    File dir = new File(dirPath);
	    File[] files = dir.listFiles();
	    if (files == null || files.length == 0) {
	        return null;
	    }
		File lastModifiedFile = files[0];
	    for (int i = 1; i < files.length; i++) {
	       if (lastModifiedFile.lastModified() < files[i].lastModified()) {
	           lastModifiedFile = files[i];
	       }
	    }
	    return lastModifiedFile;

   }


@Then("Show Prev button on Approval Requests Page {string}")
public void show_Prev_button_on_Approval_Requests_Page(String string) {
    String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();", Element);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Prev button visible on Approval Requests page"+" "+string+"\n");
		System.out.println("Prev button visible on Approval Requests page"+" "+string+"\n");
}

@Then("Prev button disabled on Approval Requests Page {string}")
public void prev_button_disabled_on_Approval_Requests_Page(String string) throws InterruptedException {
    String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button disabled on Approval Requests page"+" "+string+"\n");
		System.out.println("Prev button disabled on Approval Requests page"+" "+string+"\n");
		Thread.sleep(5000);
}

@Then("Show Next button on Approval Requests page {string}")
public void show_Next_button_on_Approval_Requests_page(String string) {
	String original = ec.getObjects("nextbtn");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Next button visible on My Suppliers page"+" "+string+"\n");
	System.out.println("Next button visible on My Suppliers page"+" "+string+"\n");
}

@Then("Next button enabled on Approval Requests page {string}")
public void next_button_enabled_on_Approval_Requests_page(String string) throws InterruptedException {
    String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button enabled on My Suppliers page"+" "+string+"\n");
		System.out.println("Next button enabled on My Suppliers page"+" "+string+"\n");
		Thread.sleep(3000);
}

@Then("Click on Next button on Approval Requests page")
public void click_on_Next_button_on_Approval_Requests_page() throws InterruptedException {
    String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		
		logger.info("Clicked on Next button on My Suppliers page"+"\n");
		System.out.println("Clicked on Next button on My Suppliers page"+"\n");
		Thread.sleep(3000);
}

@Then("Prev button enabled on Approval Requests page {string}")
public void prev_button_enabled_on_Approval_Requests_page(String string) {
    String original = ec.getObjects("prevenablebtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button enabled on My Suppliers page"+" "+string+"\n");
		System.out.println("Prev button enabled on My Suppliers page"+" "+string+"\n");
}

@Then("Click on Prev button on Approval Requests page")
public void click_on_Prev_button_on_Approval_Requests_page() throws InterruptedException {
	String original = ec.getObjects("prevenablebtn");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
	logger.info("Clicked on Prev button on My Suppliers page"+"\n");
	System.out.println("Clicked on Prev button on My Suppliers page"+"\n");
	Thread.sleep(15000);
}

}
