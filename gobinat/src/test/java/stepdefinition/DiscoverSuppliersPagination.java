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

public class DiscoverSuppliersPagination extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(DiscoverSuppliersPagination.class);
	
	
	@Then("Click on Discover Suppliers Tab")
	public void click_on_Discover_Suppliers_Tab() throws Throwable
	{		
		driver.findElement(By.xpath(ec.getObjects("discover"))).click();
		System.out.println("Click on Discover Suppliers Tab\"+\"\n");
		logger.info("Click on Discover Suppliers Tab"+"\n"); 
		
		Thread.sleep(3000);
	}
	
	@Then("Show Prev button on Discover Suppliers page {string}")
	public void show_Prev_button_on_Discover_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("prevarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].scrollIntoView();", Element);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Prev button visible on Discover Suppliers page"+" "+string+"\n");
		System.out.println("Prev button visible on Discover Suppliers page"+" "+string+"\n");
	}
	
	@Then("Prev button disabled on Discover Suppliers page {string}")
	public void prev_button_disabled_on_Discover_Suppliers_page(String string) throws Throwable
	{
		Thread.sleep(3000);
		String original = ec.getObjects("prevarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);

		WebElement button = driver.findElement(By.xpath(original));
		String classes = button.getAttribute("class");
		boolean isDisabled = classes.contains("bx--btn--disabled");
		assertTrue(isDisabled, string);
		logger.info("Prev button disabled on Discover Suppliers page"+" "+string+"\n");
		System.out.println("Prev button disabled on Discover Suppliers page"+" "+string+"\n");
	}
	
	@Then("Show Next button on Discover Suppliers page {string}")
	public void show_Next_button_on_Discover_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("nextarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Next button visible on DiscoverMy Suppliers page"+" "+string+"\n");
		System.out.println("Next button visible on Discover Suppliers page"+" "+string+"\n");
	}
	
	@Then("Next button enabled on Discover Suppliers page {string}")
	public void next_button_enabled_on_Discover_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("nextarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button enabled on Discover Suppliers page"+" "+string+"\n");
		System.out.println("Next button enabled on Discover Suppliers page"+" "+string+"\n");
	}
	
	@Then("Click on Next button on Discover Suppliers page")
	public void click_on_Next_button_on_Discover_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("nextarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Next button on Discover Suppliers page"+"\n");
		System.out.println("Clicked on Next button on Discover Suppliers page"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Prev button enabled on Discover Suppliers page {string}")
	public void prev_button_enabled_on_Discover_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("prevarrowenabled");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Prev button enabled on Discover Suppliers page"+" "+string+"\n");
		System.out.println("Prev button enabled on Discover Suppliers page"+" "+string+"\n");
	}
	
	
	@Then("Click on Prev button on Discover Suppliers page")
	public void click_on_Prev_button_on_Discover_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("prevarrowenabled");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		Thread.sleep(5000);
		logger.info("Clicked on Prev button on Discover Suppliers page"+"\n");
		System.out.println("Clicked on Prev button on Discover Suppliers page"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Change row per page to twenty")
	public void change_row_per_page_to_twenty() throws Throwable
	{
		Thread.sleep(3000);
		Select select20 = new Select(driver.findElement(By.xpath(ec.getObjects("downarrow_new"))));
		select20.selectByVisibleText("20");
		
		logger.info("Selected Rows per page 20 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 20 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to forty")
	public void change_row_per_page_to_forty() throws Throwable
	{
		
		Select select40 = new Select(driver.findElement(By.xpath(ec.getObjects("downarrow_new"))));
		select40.selectByVisibleText("40");
		
		logger.info("Selected Rows per page 40 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 40 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to sixty")
	public void change_row_per_page_to_sixty() throws Throwable
	{
		
		Select select60 = new Select(driver.findElement(By.xpath(ec.getObjects("downarrow_new"))));
		select60.selectByVisibleText("60");
		
		logger.info("Selected Rows per page 60 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 60 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to eighty")
	public void change_row_per_page_to_eighty() throws Throwable
	{
		
		Select select80 = new Select(driver.findElement(By.xpath(ec.getObjects("downarrow_new"))));
		select80.selectByVisibleText("80");
		
		logger.info("Selected Rows per page 80 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 80 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to hundred")
	public void change_row_per_page_to_hundred() throws Throwable
	{
		
		Select select100 = new Select(driver.findElement(By.xpath(ec.getObjects("downarrow_new"))));
		select100.selectByVisibleText("100");
		
		logger.info("Selected Rows per page 100 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 100 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to twenty in manage user page")
	public void change_row_per_page_to_twenty_in_manage_user_page() throws Throwable
	{
		String original = ec.getObjects("downarrow_manageuser");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		// System.out.println("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		
		String original1 = ec.getObjects("select20");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 20 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 20 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}
	
	@Then("Change row per page to fifty")
	public void change_row_per_page_to_fifty() throws Throwable
	{
		String original = ec.getObjects("downarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		// System.out.println("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		
		String original1 = ec.getObjects("select50");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}

	@Then("Change row per page to fifty in manage users")
	public void change_row_per_page_to_fifty_in_manage_users() throws Throwable
	{
		String original = ec.getObjects("downarrow_manageuser");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		// System.out.println("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		
		String original1 = ec.getObjects("select50");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
	}
	
	@Then("Change row per page to fifty on Notifications")
    public void change_row_per_page_to_fifty_on_notifications() throws Throwable {
        String original = ec.getObjects("downarrow");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);

		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		
		//driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		// System.out.println("Clicked on Rows per page 10 on Discover Suppliers page"+"\n");
		
		String original1 = ec.getObjects("notifications_select50");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		System.out.println("Selected Rows per page 50 on Discover Suppliers page"+"\n");
		
		Thread.sleep(3000);
    }

	
	
	
	 
}
