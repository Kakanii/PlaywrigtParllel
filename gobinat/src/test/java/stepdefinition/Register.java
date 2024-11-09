package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class Register extends DriverEngine
{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();
	
	@When("Enter {string} on Invite Supplier modal")
	public void enter_on_Invite_Supplier_modal(String string) 
	{
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Supplier Company Name" + "\n");
		System.out.println("Entered Supplier Company Name" + "\n");
	}

	@Then("Enter First Name {string} on Invite Supplier window")
	public void enter_First_Name_on_Invite_Supplier_window(String string) 
	{
		String original = ec.getObjects("contactfirstname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Contact First Name" + "\n");
		System.out.println("Entered Contact First Name" + "\n");
	}

	@Then("Enter Last Name {string} on Invite Supplier window")
	public void enter_Last_Name_on_Invite_Supplier_window(String string) 
	{
		String original = ec.getObjects("contactlastname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Contact Last Name" + "\n");
		System.out.println("Entered Contact Last Name" + "\n");
	}

	@Then("Enter Email Address {string} on Invite Supplier window from maildrop")
	public void enter_Email_Address_on_Invite_Supplier_window_from_maildrop(String string) 
	{
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Contact Email Address" + "\n");
		System.out.println("Entered Contact Email Address" + "\n");
	}

	@Then("Enter Confirm Email Address {string} on Invite Supplier window from maildrop")
	public void enter_Confirm_Email_Address_on_Invite_Supplier_window_from_maildrop(String string) 
	{
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Contact Confirm Email Address" + "\n");
		System.out.println("Entered Contact Confirm Email Address" + "\n");
	}
	
	@Then("Click on Join Now Link in the supplier Email from maildrop")
	public void click_on_Join_Now_Link_in_the_supplier_Email_from_maildrop() throws Exception 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("RegisterTYS_btn");
		String JoinNowLink = String.format(original);
		
		driver.switchTo().frame(0);
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();
		Thread.sleep(5000);

		logger.info("Clicked on Join Now button" + "\n");
		System.out.println("Clicked on Join Now button" + "\n");
	}
	
	@Then("Enter Legal Business Name {string} field {string}")
	public void enter_Legal_Business_Name_field(String string, String string2) throws Exception 
	{
		String original = ec.getObjects("label_var") + string2 + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		logger.info("Entered " + "'" + string + "'" + " in " + string2 + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + string2 + " field" + "\n");
	}

	@Then("Enter the Company Website {string} in Website field")
	public void enter_the_Company_Website_in_Website_field(String string) 
	{
		String original = ec.getObjects("website_info");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered the Website " + string + " in Website field " + "\n");
		System.out.println("Entered the Website " + string + " in Website field " + "\n");
	}

	@Then("Enter AddressOne {string} in {string} field after {string} supplier registration")
	public void enter_AddressOne_in_field_after_supplier_registration(String inputData, String Lable, String country) 
	{
		String original = ec.getObjects("label_var") + Lable + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "#### Current URL: " + driver.getCurrentUrl() + "\n");

			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n"); 
		}
	}

	@Then("Enter AddressTwo {string} in {string} field after {string} supplier registration")
	public void enter_AddressTwo_in_field_after_supplier_registration(String inputData, String Lable, String country) 
	{
		String original = ec.getObjects("label_var") + Lable + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "#### Current URL: " + driver.getCurrentUrl() + "\n");			

			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		}
	}

	@Then("Enter City {string} in {string} field after {string} supplier registration")
	public void enter_City_in_field_after_supplier_registration(String inputData, String Lable, String country)
	{
		String original = ec.getObjects("label_var") + Lable + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "#### Current URL: " + driver.getCurrentUrl() + "\n");			

			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		}
	}

	@Then("Enter Zip Code {string} in {string} field after {string} supplier registration")
	public void enter_Zip_Code_in_field_after_supplier_registration(String inputData, String Lable, String country) 
	{
		String original = ec.getObjects("label_var") + Lable + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "#### Current URL: " + driver.getCurrentUrl() + "\n");

			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		}
	}

	@Then("Select State {string} in {string} dropdown")
	public void select_State_in_dropdown(String Option, String Label) throws Exception
	{
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Label + ec.getObjects("dropdown_new_var2");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}
		Thread.sleep(3000);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}

	@When("Click on I will do it later button")
	public void click_on_I_will_do_it_later_button() throws Exception 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("iwill_do_it_btn");
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);

		logger.info("Clicked on I will do it later button" + "\n");
		System.out.println("Clicked on I will do it later button" + "\n");
	}
	
	@Then("Verify received an email {string}in supplier maildrop Inbox with subject {string}")
	public void verify_received_an_email_in_supplier_maildrop_Inbox_with_subject(String Email, String subject) throws Exception 
	{
		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("maildrop_input");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.findElement(By.xpath(ec.getObjects("veiwMailBox_btn"))).click();
		Thread.sleep(3000);

		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

}
