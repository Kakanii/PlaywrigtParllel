package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class MySuppliersPagination extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(MySuppliersPagination.class);
	
	@Then("Show Prev button on My Suppliers page {string}")
	public void show_Prev_button_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();", Element);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Prev button visible on My Suppliers page"+" "+string+"\n");
		System.out.println("Prev button visible on My Suppliers page"+" "+string+"\n");
	}
	
	@Then("Show Prev button on Notifications page {string}")
    public void show_prev_button_on_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();", Element);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Prev button visible on Notifications page"+" "+string+"\n");
		System.out.println("Prev button visible on Notifications page"+" "+string+"\n");
    }

	@Then("Prev button disabled on My Suppliers page {string}")
	public void prev_button_disabled_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button disabled on My Suppliers page"+" "+string+"\n");
		System.out.println("Prev button disabled on My Suppliers page"+" "+string+"\n");
		Thread.sleep(5000);
	}

	@Then("Prev button disabled on Notifications page {string}")
    public void prev_button_disabled_on_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("prevbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button disabled on Notifications page"+" "+string+"\n");
		System.out.println("Prev button disabled on Notifications page"+" "+string+"\n");
    }

	
	@Then("Show Next button on My Suppliers page {string}")
	public void show_Next_button_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Next button visible on My Suppliers page"+" "+string+"\n");
		System.out.println("Next button visible on My Suppliers page"+" "+string+"\n");
	}

	@Then("Show Next button on Notifications page {string}")
    public void show_next_button_on_notifications_page_something(String string) throws Throwable {
        String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Next button visible on Notifications page"+" "+string+"\n");
		System.out.println("Next button visible on Notifications page"+" "+string+"\n");
    }
	
	@Then("Next button enabled on My Suppliers page {string}")
	public void next_button_enabled_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button enabled on My Suppliers page"+" "+string+"\n");
		System.out.println("Next button enabled on My Suppliers page"+" "+string+"\n");
		Thread.sleep(3000);
	}

	@Then("Next button enabled on Notifications page {string}")
    public void next_button_enabled_on_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button enabled on Notifications page"+" "+string+"\n");
		System.out.println("Next button enabled on Notifications page"+" "+string+"\n");
    }

	
	@Then("Click on Next button on My Suppliers page")
	public void click_on_Next_button_on_My_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Next button on My Suppliers page"+"\n");
		System.out.println("Clicked on Next button on My Suppliers page"+"\n");
		Thread.sleep(15000);
		
	}

	@Then("Click on Next button on Notifications page")
    public void click_on_next_button_on_notifications_page() throws Throwable {
        String original = ec.getObjects("nextbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Next button on My Suppliers page"+"\n");
		System.out.println("Clicked on Next button on My Suppliers page"+"\n");
		Thread.sleep(3000);
    }

	@Then("Prev button enabled on My Suppliers page {string}")
	public void prev_button_enabled_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("prevenablebtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button enabled on My Suppliers page"+" "+string+"\n");
		System.out.println("Prev button enabled on My Suppliers page"+" "+string+"\n");
	}

	@Then("Prev button enabled on Notifications page {string}")
    public void prev_button_enabled_on_notifications_page_something(String string) throws Throwable {
        
		String original = ec.getObjects("prevenablebtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button enabled on Notifications page"+" "+string+"\n");
		System.out.println("Prev button enabled on Notifications page"+" "+string+"\n");
    }
	
	@Then("Click on Prev button on My Suppliers page")
	public void click_on_Prev_button_on_My_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("prevenablebtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Prev button on My Suppliers page"+"\n");
		System.out.println("Clicked on Prev button on My Suppliers page"+"\n");
		Thread.sleep(15000);
	}

	@Then("Click on Prev button on Notifications page")
    public void click_on_prev_button_on_notifications_page() throws Throwable {
        String original = ec.getObjects("prevenablebtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Prev button on My Suppliers page"+"\n");
		System.out.println("Clicked on Prev button on My Suppliers page"+"\n");
		Thread.sleep(3000);
    }
	
	@Then("Change row per page to two hundred")
	public void change_row_per_page_to_two_hundred() throws Throwable
	{
		String original = ec.getObjects("rowperpage100");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Rows per page 100 on My Suppliers page"+"\n");
		System.out.println("Clicked on Rows per page 100 on My Suppliers page"+"\n");
		
		String original1 = ec.getObjects("select200");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.clickableWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 200 on My Suppliers page"+"\n");
		System.out.println("Selected Rows per page 200 on My Suppliers page"+"\n");
		
		Thread.sleep(3000);
		
	}
	
	@Then("Change row per page to fivehundred")
	public void change_row_per_page_to_fivehundred() throws Throwable
	{
		String original = ec.getObjects("rowperpage100");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Rows per page 100 on My Suppliers page"+"\n");
		System.out.println("Clicked on Rows per page 100 on My Suppliers page"+"\n");
		
		String original1 = ec.getObjects("select500");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 500 on My Suppliers page"+"\n");
		System.out.println("Selected Rows per page 500 on My Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}
	

	@Then("Change row per page to {string}")
    public void change_row_per_page_to_something(String rows) throws Throwable {
		String original = ec.getObjects("rowperpage100");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select rowsPerPage = new Select(driver.findElement(By.xpath(ec.getObjects("rowperpage100"))));
		rowsPerPage.selectByVisibleText(rows);

		logger.info("Selected Rows per page" + rows + "on My Suppliers page"+"\n");
		System.out.println("Selected Rows per page " + rows + " on My Suppliers page"+"\n");
		
		Thread.sleep(3000);
		
	}
	 
}
