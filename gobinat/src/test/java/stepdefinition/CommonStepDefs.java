package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.awt.AWTException;
import java.io.File;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.Random;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import io.cucumber.core.api.Scenario;
import io.cucumber.java.Before;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.Base;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.awt.Robot;

public class CommonStepDefs extends DriverEngine {

	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	public static String Australiancn;
	public static String legalBusinessName;
	public WebDriverWait wait = new WebDriverWait(driver, 120);
	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	@Before
	public void printScenario(Scenario scenario) {

		logger.info("STARTING SCENARIO: " + scenario.getName() + "\n");
		System.out.println(
				"\n" + "===================================================================================" + "\n");
		System.out.println("FEATURE: " + scenario.getId().split("features/")[1]);
		System.out.println("STARTING SCENARIO: " + scenario.getName() + "\n");
		System.out.println("Browser: " + Base.selectBrowser.get(0));
		System.out
				.println("===================================================================================" + "\n");
	}

	@Then("Select {string} in {string} dropdown section")
	public void select_in_dropdown_section(String Option, String string2) throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("statetrtydropdown");
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

		logger.info("Selected " + "'" + Option + "'" + " in " + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + " dropdown" + "\n");
	}

	@Then("Enter Australian Company Number under Tax Details")
	public void enter_Australian_Company_Number_under_Tax_Details() {
		String original = ec.getObjects("AustralianCompanyNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// bankkey = RandomStringUtils.randomNumeric(6);
		Australiancn = RandomStringUtils.randomNumeric(9);
		driver.findElement(By.xpath(original)).sendKeys(Australiancn);

		logger.info("Entered : " + "'" + Australiancn + "'" + " in bankkey field" + "\n");
		System.out.println("Entered : " + "'" + Australiancn + "'" + " in bankkey field" + "\n");
	}

	@Then("Enter {string} supplier email in Email Address field")
	public void enter_supplier_email_in_email_address_field_something(String Country) throws Throwable {

		Thread.sleep(6000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = Country + ec.getObjects("localisation_Supplierusr");
		do {

			driver.findElement(By.xpath(original)).click();
			driver.findElement(By.xpath(original)).sendKeys(Email);
		} while (driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(""));

//			if (driver.findElement(By.xpath(original)).getAttribute("value").toLowerCase() != Email.toLowerCase()) {
//			WebElement toClear = driver.findElement(By.xpath(original));
//			toClear.sendKeys(Keys.CONTROL + "a");
//			toClear.sendKeys(Keys.DELETE);
//			driver.findElement(By.xpath(original)).sendKeys(Email);
//		}

		logger.info("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");

	}

	@Then("Enter {string} supplier email in Email Address")
	public void enter_supplier_email_in_email_address(String Country) throws Throwable {

		Thread.sleep(6000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = Country + ec.getObjects("Germany_Supplier");
		do {

			driver.findElement(By.xpath(original)).click();
			driver.findElement(By.xpath(original)).sendKeys(Email);
		} while (driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(""));

		logger.info("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");
	}

	@Then("Enter {string} supplier email in Email Address field {string}")
	public void enter_supplier_email_in_email_address_field_something(String Country, String emailAddress)
			throws Throwable {

		Thread.sleep(6000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = Country + emailAddress;
		do {
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(original)).sendKeys(Email);
		} while (!driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(Email));

		logger.info("Entered data" + " " + Email + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + " " + "Email Address field" + "\n");

	}

	@Then("Enter timestamp in {string} field {string}")
	public void enter_timestamp_in_field(String Label, String string) throws Throwable {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("inputText_var3");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		mis.addCurrentTime();

		legalBusinessName = mis.getCurrentTime() + string;
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(legalBusinessName);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		logger.info("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
	}

	public void enter_the_Company_Website_in_Website_window() {
		String original = ec.getObjects("basicinfo_website");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String website = "www." + mis.getTimeStamp() + ".com";
		driver.findElement(By.xpath(original)).sendKeys(website);

		logger.info("Entered the Website " + website + " in Website field " + "\n");
		System.out.println("Entered the Website " + website + " in Website field " + "\n");

	}

	/*
	 * ////NEW
	 * 
	 * @Then("Enter timestamp in {string} field {string} Value") public void
	 * enter_timestamp_in_field_Value(String Label, String string) throws Throwable
	 * { String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.clickableWait(formatXPATH);
	 * 
	 * mis.clearText(formatXPATH);
	 * 
	 * Thread.sleep(1000);
	 * 
	 * mis.addCurrentTime();
	 * 
	 * String input = mis.getCurrentTime() + string; do {
	 * driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
	 * }while(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals
	 * ("")); logger.info("Entered " + "'" + string + "'" + " in " + Label +
	 * " field" + "\n"); System.out.println("Entered " + "'" + string + "'" + " in "
	 * + Label + " field" + "\n");
	 * 
	 * }
	 */
	@Then("Enter timestamp in {string} Email field {string}")
	public void enter_timestamp_in_Email_field(String Label, String string) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);

		mis.addCurrentTime();

		String input = mis.getCurrentTime() + string;
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		logger.info("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Enter timestamp in {string} field under {string} {string}")
	public void enter_timestamp_in_field(String Label, String SubCat, String string) throws Throwable {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);

		String input = mis.getTimeStamp() + string;
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		logger.info("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Enter {string} in {string}field")
	public void enter_in_field1(String string, String string2) {

		String original = ec.getObjects("District");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("District");

	}

	@Then("Enter {string} in {string} contact field")
	public void enter_in_contact_field(String InputString, String Label) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("FactoringCompanyAccount_Contact");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.manage().window().maximize();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");

		// driver.findElement(By.xpath(formatXPATH)).click();
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(null));

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Enter {string} in {string} field")
	public void enter_in_field(String InputString, String Label) throws Throwable {

		// driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("anyText_var1") + Label + ec.getObjects("inputTextField_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.manage().window().maximize();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");

		// driver.findElement(By.xpath(formatXPATH)).click();
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(null));

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter {string} in {string} field under {string} section")
	public void enter_in_field_under_section(String InputString, String Lable, String SubCat) {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + SubCat + ec.getObjects("mysupplier_userstatus_var2") + Lable
				+ ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.manage().window().maximize();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");

		// driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		logger.info("Entered " + "'" + InputString + "'" + " in " + Lable + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Lable + " field" + "\n");

	}

	@Then("Enter value {string} in {string} password field")
	public void enter_value_in_password_field(String InputString, String Label) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		// mis.clearText(formatXPATH);

		driver.manage().window().maximize();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");

		// driver.findElement(By.xpath(formatXPATH)).click();
		// driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		do {
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(original)).sendKeys(InputString);
			driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		} while (!driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(InputString));

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter the {string} in {string} field")
	public void enter_the_in_field1(String string, String string2) {
		String original = ec.getObjects("primaryPhone");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("9879879872");

	}

	@Then("Enter the {string} on {string} field")
	public void enter_the_on_field(String string, String string2) {
		String original = ec.getObjects("secondaryPhone");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("9879871872");
	}

	@Then("Enter {string} in {string} filed")
	public void enter_in_filed(String string, String string2) {
		String original = ec.getObjects("EmailID");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("test@test.com");
	}

	/*
	 * ///NEW
	 * 
	 * @Then("Enter {string} in {string} field Value") public void
	 * enter_in_field_Value(String InputString, String Label) {
	 * 
	 * String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.clickableWait(formatXPATH); mis.clearText(formatXPATH);
	 * 
	 * driver.findElement(By.xpath(formatXPATH)).click();
	 * driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
	 * logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field"
	 * + "\n"); System.out.println("Entered " + "'" + InputString + "'" + " in " +
	 * Label + " field" + "\n");
	 * 
	 * }
	 */
	@Then("Enter value {string} in {string} field")
	public void enter_value_in_field(String InputString, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter {string} in Factoring Company Name field under Factoring Company Info")
	public void enter_something_in_factoring_company_name_field_under_factoring_company_info(String InputString)
			throws Throwable {
		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("factoring_company_name");
				String formatXPATH = String.format(original);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);
				driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered " + "'" + InputString + "'" + " in Company Name  field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in Company Name field" + "\n");
	}

	@Then("Select {string} in Country dropdown under Factoring Company Info")
	public void select_something_in_country_dropdown_under_factoring_company_info(String Option) throws Throwable {
		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("factoring_company_country");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

				dropdown.selectByVisibleText(Option);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}

		logger.info("Selected " + "'" + Option + "'" + " in Country dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in Country dropdown" + "\n");
	}

	@Then("Enter {string} in Address 1 field under Factoring Company Info")
	public void enter_something_in_address_1_field_under_factoring_company_info(String InputString) throws Throwable {
		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("factoring_company_address1");
				String formatXPATH = String.format(original);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);
				driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered " + "'" + InputString + "'" + " in Address 1 field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in Address 1 field" + "\n");
	}

	@Then("Enter {string} in City field under Factoring Company Info")
	public void enter_something_in_city_field_under_factoring_company_info(String InputString) throws Throwable {
		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("factoring_company_city");
				String formatXPATH = String.format(original);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);
				driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered " + "'" + InputString + "'" + " in City field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in City field" + "\n");
	}

	@Then("Select {string} in Province dropdown field under Factoring Company Info")
	public void select_something_in_province_dropdown_field_under_factoring_company_info(String Option)
			throws Throwable {
		String original = ec.getObjects("factoring_company_province");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		Thread.sleep(3000);

		logger.info("Selected " + "'" + Option + "'" + " in Province dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in Province dropdown" + "\n");
	}

	@Then("Enter New password in {string} field")
	public void enter_new_password_in_field(String Label) throws Throwable {

		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);

				driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("newpwd"));
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered " + "'" + ec.getObjects("newpwd") + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + ec.getObjects("newpwd") + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter Confirm password in {string} field")
	public void enter_confirm_password_in_field(String Label) throws Throwable {

		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);

				driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("newpwd"));
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered " + "'" + ec.getObjects("newpwd") + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + ec.getObjects("newpwd") + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter {string} in {string} field under {string}")
	public void enter_in_field_under(String InputString, String Label, String SubCat) throws Throwable {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter value for Control Key filed")
	public void enter_value_for_Control_Key_filed() {

		String original = ec.getObjects("ControlKey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Random random = new Random();
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(String.valueOf(random.nextInt(1000000)));
		// Thread.sleep(2000);
		// logger.info("Entered : " + "'" + controlkey + "'" + " in bankkey field" +
		// "\n");
		// System.out.println("Entered : " + "'" + controlkey + "'" + " in bankkey
		// field" + "\n");
	}

	@Then("Enter random EIN number in {string} field under {string}")
	public void enter_EIN_number(String Label, String SubCat) throws Throwable {
		int min = 1;
		int max = 10;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter {string} field under {string} for Albania")
	public void enter_field_under_for_Albania(String string, String string2) throws Throwable {
		String original = ec.getObjects("headLabel_var") + string2 + ec.getObjects("headLabel_var2") + string
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		String random = RandomStringUtils.randomNumeric(8);
		System.out.println("Random Value: ---" + random + "\n");

		String InputString = "ALK" + random + "L";

		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		logger.info("Entered " + "'" + InputString + "'" + " in " + string + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + string + " field" + "\n");
	}

	@Then("Enter phone number {string} in {string} field")
	public void enter_phone_number_in_field(String input, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("phoneNumber_inputtext_var2");
		// String original = ec.getObjects("website_info");
		String formatXPATH = String.format(original);
		// String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		// Thread.sleep(2000);
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));

		logger.info("Entered phone number " + "'" + input + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered phone number " + "'" + input + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Enter the Job Title on the Assign a Contact to Management Team modal")
	public void enter_the_Job_Title_on_the_Assign_a_Contact_to_Management_Team_modal() {

		String original = ec.getObjects("jobTitleManagement");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("jobTitleManagement");
		logger.info("Entered job title " + "\n");
		System.out.println("Entered job title " + "\n");

	}

	@Then("Enter password in {string} field")
	public void enter_password_in(String Label) throws Throwable {

		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				mis.clearText(formatXPATH);
				Thread.sleep(1000);

				driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("pwd"));
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		logger.info("Entered password" + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered password" + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Select {string} in {string} dropdown")
	public void select_in_dropdown(String Option, String Label) throws Throwable {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("dropdown_new_var5");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
			Thread.sleep(3000);
			dropdown.selectByVisibleText(Option);
			Thread.sleep(3000);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}
	@Then("Select {string} from {string} dropdown")
	public void select_from_dropdown(String Option, String Label) throws Throwable {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("dropdown_new_var6");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
			Thread.sleep(3000);
			dropdown.selectByVisibleText(Option);
			Thread.sleep(3000);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}
	@Then("Select {string} at {string} dropdown")
	public void select_at_dropdown(String Option, String Label) throws Throwable {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("dropdown_new_var7");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
			Thread.sleep(3000);
			dropdown.selectByVisibleText(Option);
			Thread.sleep(3000);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}
	@Then("Select {string} when {string} dropdown")
	public void select_when_dropdown(String Option, String Label) throws Throwable {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("dropdown_new_var8");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
			Thread.sleep(3000);
			dropdown.selectByVisibleText(Option);
			Thread.sleep(3000);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}
	@Then("Select {string} in {string} dropdown in Factoring Company Account")
	public void select_in_dropdown_in_Factoring_Company_Account(String Option, String string2) {

		String original = ec.getObjects("dropdownFactoringCompanyAccount");
		String formatXPATH = String.format(original);
		WebDriverWait wait = new WebDriverWait(driver, 70);
		wait.until(ExpectedConditions
				.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

	}

	@Then("Select {string} in state dropdown in Factoring Company Account")
	public void select_in_state_dropdown_in_Factoring_Company_Account(String Option) {

		String original = ec.getObjects("dropdownFactoringCompanyAccount");
		String formatXPATH = String.format(original);
		WebDriverWait wait = new WebDriverWait(driver, 70);
		wait.until(
				ExpectedConditions.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(original)))));

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

	}

	@Then("Select the {string} in {string} dropdown")
	public void select_the_in_dropdown(String Option, String string2) throws InterruptedException {

		String original = ec.getObjects("countryRegion");
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

		logger.info("Selected " + "'" + Option + "'" + " in " + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + " dropdown" + "\n");

	}

	@Then("Enter the {string} in {string}field")
	public void enter_the_in_field(String string, String string2) {
		String original = ec.getObjects("districtLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("District");

	}

	@Then("Click on {string}")
	public void click_on(String string) {
		String original = ec.getObjects("saveLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

	}

	@Then("Click on the Saved locations")
	public void click_on_the_Saved_locations() {
		String original = ec.getObjects("savedLocations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		logger.info(" size : " + driver.findElements(By.xpath(formatXPATH)).size());
		// int totalSaveCounts = driver.findElements(By.xpath(formatXPATH)).size();

		driver.findElement(By.xpath(original)).click();
	}

	@Then("update the duns number")
	public void update_the_duns_number() {
		String original = ec.getObjects("dunsNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("127937987");
		System.out.println("" + "Enterd DUNS number " + "\n");
	}

	@Then("Click on {string} on update location")
	public void click_on_on_update_location(String string) {
		String original = ec.getObjects("updateLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("" + "Click on Update button " + "\n");
	}

	@Then("Click on the Delete button on update location")
	public void click_on_the_Delete_button_on_update_location() throws InterruptedException {

		String original = ec.getObjects("deleteBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click(); // first dleete

		System.out.println("Click on the Delete button");
	}

	@Then("Swtich to active window and click on delete")
	public void swtich_to_active_window_and_click_on_delete() throws InterruptedException, AWTException {

		Thread.sleep(2000);

		String original = ec.getObjects("deleteButton");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

	}

	@Then("Click on the {string}")
	public void click_on_the(String string) {
		String original = ec.getObjects("closeBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
	}

	@Then("Select the location {string} dropdown")
	public void select_the_location_dropdown(String string) throws InterruptedException {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("selectLocation");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		String location = RandomStringUtils.randomNumeric(1);
		dropdown.selectByIndex(1);

	}

	@Then("Click on {string} in Contacts page")
	public void click_on_in_Contacts_page(String string) {
		String original = ec.getObjects("contactSaveLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

	}

	@Then("Click on {string} page")
	public void click_on_page(String string) {

		String original = ec.getObjects("updatedLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

	}

	@Then("Click on the Delete button on update contact")
	public void click_on_the_Delete_button_on_update_contact() {

		String original = ec.getObjects("deleteContactBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
	}

	String Email;

	@Then("Enter email address on contacts page")
	public void enter_email_address_on_contacts_page() {
		String original = ec.getObjects("EmailID");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		String pattern = "yyyyMMddhh";
		SimpleDateFormat simpledateformat = new SimpleDateFormat(pattern);
		String format = simpledateformat.format(date);

		String email = RandomStringUtils.randomAlphanumeric(3);

		Email = email + format + "@mailinator.com";
		timeStamp.add(0, Email);

		// String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
	}

	@Then("Click on the added location model")
	public void click_on_the_added_location_model() {

		String original = ec.getObjects("addedLocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
	}

	@Then("Click on the Remove button")
	public void click_on_the_Remove_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("removeBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		Alert alert = driver.switchTo().alert();
		alert.accept();

	}

	///// NEW
	@Then("Select {string} in {string} dropdown Value")
	public void select_in_dropdown_Value(String Option, String Label) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Label + ec.getObjects("dropdown_new_var4");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		Thread.sleep(3000);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	}

	@Then("Select {string} in {string} dropdown under {string}")
	public void select_in_dropdown_under(String Option, String Label, String SubCat) throws Throwable {

		for (int i = 0; i < 4; i++)
			try {
				String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
						+ ec.getObjects("dropdown_h6_var3");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

				dropdown.selectByVisibleText(Option);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}
		Thread.sleep(2000);
		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	}

	@Then("Select {string} in {string} under {string} section")
	public void select_in_under_section(String Option, String Label, String SubCat) {

		String original = ec.getObjects("label_var") + SubCat + ec.getObjects("underSubCat_label_var2") + Label
				+ ec.getObjects("underSubCat_dropdown_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	}

	@Then("Select value {string} from {string}")
	public void select_supply(String value, String SubCat) {

		String original = ec.getObjects("supplierCat") + SubCat + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(value);

		logger.info("Selected " + "'" + value + "'" + " in " + SubCat + " dropdown" + "\n");
		System.out.println("Selected " + "'" + value + "'" + " in " + SubCat + " dropdown" + "\n");

	}

	@Then("Select text {string} under {string} for Custom Fields")
	public void select_diversity_category(String text, String subcat) throws Throwable {
		String original = ec.getObjects("required1") + subcat + ec.getObjects("custom_fild1");
		String formatXPATH = String.format(original);
		String dropDownText = ec.getObjects("diversity_tooltip1") + text + "')]";


		Actions action = new Actions(driver);
		try {
			WaitClass.clickableWait(formatXPATH);
			driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
			driver.findElement(By.xpath(original)).click();
			driver.findElement(By.xpath(original)).sendKeys(text);
			action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					driver.findElement(By.xpath(original)).sendKeys(text);
					action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		}

		logger.info("Selected the " + text + "under " + subcat + "\n");
		System.out.println("Selected the" + text + " under" + subcat + "\n");
	}

	@Then("Click {string} radio button")
	public void click_radio_button(String Label) throws Throwable {

		Thread.sleep(2000);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("radio_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + Label + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + Label + "'" + " radio button" + "\n");

	}

	@Then("Click on the {string} radio button")
	public void click_on_the_radio_button(String string) throws InterruptedException {
		String original = ec.getObjects("factoringCompanyAccount");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		// logger.info("Clicked on " + factoringCompanyAccount + " radio button" +
		// "\n");
		System.out.println("Clicked on  radio button" + "\n");
	}

	@Then("Show {string} Label")
	public void show_Label(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " in supplier registration" + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " in supplier registration" + "\n");
	}

	@Then("Show {string} label under {string}")
	public void show_label_under(String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Show {string} input text field")
	public void show_input_text_field(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " input text field " + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " input text field " + "\n");

	}
	
	@Then("Shows the Confirm Password input text field")
	public void shows_the_Confirm_Password_input_text_field() 
	{
		String original = ec.getObjects("pwd_config_confirm_pwd");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Confirm Password input text field " + "\n");
		System.out.println("Showing Confirm Password input text field " + "\n");
	}

	/*
	 * ///NEW
	 * 
	 * @Then("Show {string} input text field Value") public void
	 * show_input_text_field_Value(String Label) {
	 * 
	 * String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
	 * 
	 * logger.info("Showing " + "'" + Label + "'" + " input text field " + "\n");
	 * System.out.println("Showing " + "'" + Label + "'" + " input text field " +
	 * "\n");
	 * 
	 * }
	 */
	@Then("Show {string} input text field under {string}")
	public void show_input_text_field_under(String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " input text field under " + SubCat + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " input text field under " + SubCat + "\n");
	}

	@Then("Verify {string} input text field is enabled in Corporate Contact Details")
	public void verify_input_text_field_is_enabled_in_Corporate_Contact_Details(String string) {
		String original = ec.getObjects("Number1_CorpRelations") + string + ec.getObjects("Number2_CorpRelations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Showing Number input text under Corporate Relations " + "\n");
		System.out.println("Showing Number input text under Corporate Relations " + "\n");
	}

	@Then("Show {string} input text field in Corporate Contact Details")
	public void show_input_text_field_in_Corporate_Contact_Details(String string) {
		String original = ec.getObjects("faxNumber_CorpRelations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Fax Number input text under Corporate Relations " + "\n");
		System.out.println("Showing Fax Number input text under Corporate Relations " + "\n");
	}

	@Then("Show {string} input text field in {string}")
	public void show_input_text_field_in(String inputfield, String SubCat) {

		String original = ec.getObjects("firstinputbox") + inputfield + ec.getObjects("lastinpitbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + inputfield + "'" + " input text field in " + SubCat + "\n");
		System.out.println("Showing " + "'" + inputfield + "'" + " input text field in " + SubCat + "\n");
	}

	@Then("Show {string} input text field in Corporate Contact Details section")
	public void show_input_text_field_in_Corporate_Contact_Details_section(String string) {
		String original = ec.getObjects("phonenumber_basicInfo");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		logger.info("Showing the Phonenumber under Contact Details section" + "\n");
		System.out.println("Showing the Phonenumber under Contact Details section" + "\n");
	}

	@Then("Show {string} radio button {string} is displyed under {string}")
	public void show_radio_button_display(String buttonText, String button_nbr, String subCat) {

		String original = ec.getObjects("first_rario") + button_nbr + ec.getObjects("second_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + buttonText + "'" + " radio button under " + subCat + "\n");
		System.out.println("Showing " + "'" + buttonText + "'" + " radio button under " + subCat + "\n");
	}

	@Then("Click on the radio button {string} for {string} in Diversity")
	public void click_radio_button(String buttonText, String button_nbr) {

		String original = ec.getObjects("first_rario") + button_nbr + ec.getObjects("second_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + buttonText + "'" + " radio button under diversity " + "\n");
		System.out.println("Clicked " + "'" + buttonText + "'" + " radio button under Diversity" + "\n");
	}

	@Then("Show {string} button at bottom {string} in basic information page")
	public void show_buttons_display(String button, String location) {

		String original = ec.getObjects("bottomsaveone") + button + ec.getObjects("bottomsavetwo");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + button + "'" + " button at " + location + "\n");
		System.out.println("Showing " + "'" + button + "'" + " button at " + location + "\n");
	}

	@Then("Show {string} button at top {string} in basic information page")
	public void show_top_buttons_display(String button, String location) {

		String original = ec.getObjects("topbasicsaveone") + button + ec.getObjects("topbasicsavetwo");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + button + "'" + " button at " + location + "\n");
		System.out.println("Showing " + "'" + button + "'" + " button at " + location + "\n");
	}

	@Then("Verify website checkbox is visible at {string} section")
	public void verify_website_checkbox_is_visible_at(String subCat) {

		String original = ec.getObjects("website_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing website checkbox at " + subCat + "\n");
		System.out.println("Showing website checkbox" + subCat + "\n");
	}

	@Then("Verify {string} radio button {string} is not selected by default under {string}")
	public void show_radio_button_not_selected(String buttonText, String button_nbr, String subCat) {

		String original = ec.getObjects("first_rario") + button_nbr + ec.getObjects("second_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Showing " + "'" + buttonText + "'" + " radio button is not selected under " + subCat + "\n");
		System.out
				.println("Showing " + "'" + buttonText + "'" + " radio button is not selected under " + subCat + "\n");
	}

	@Then("Verify {string} radio button {string} is selected by default under {string}")
	public void show_radio_button_is_selected(String buttonText, String button_nbr, String subCat) {

		String original = ec.getObjects("first_rario") + button_nbr + ec.getObjects("second_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Showing " + "'" + buttonText + "'" + " radio button is selected under " + subCat + "\n");
		System.out.println("Showing " + "'" + buttonText + "'" + " radio button is selected under " + subCat + "\n");
	}

	@Then("Verify {string} input text field is enabled in {string}")
	public void show_input_text_field_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("firstinputbox") + inputfield + ec.getObjects("lastinpitbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
		System.out.println("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
	}

	@Then("Enter {string} symbol in {string} field")
	public void exSymbol(String inputfield, String SubCat) {

		String original = ec.getObjects("inputfield1") + SubCat + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(inputfield);

		logger.info(" Entered " + inputfield + "under " + SubCat + "\n");
		System.out.println("Entered" + inputfield + " under" + SubCat + "\n");
	}

	@Then("Verify {string} dropdown enabled")
	public void verify_dropdown_enabled(String Label) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("dropdown_new_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " dropdown enabled " + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " dropdown enabled " + "\n");

	}

	/*
	 * ////NEW
	 * 
	 * @Then("Verify {string} dropdown enabled Value") public void
	 * verify_dropdown_enabled_Value(String Label) { String original =
	 * ec.getObjects("label_var") + Label + ec.getObjects("dropdown_new_var4");
	 * String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());
	 * 
	 * logger.info("Verified " + "'" + Label + "'" + " dropdown enabled " + "\n");
	 * System.out.println("Verified " + "'" + Label + "'" + " dropdown enabled " +
	 * "\n"); }
	 */
	@Then("Verify {string} dropdown enabled under {string}")
	public void verify_dropdown_enabled_under(String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("dropdown_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " dropdown enabled under " + SubCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " dropdown enabled under " + SubCat + "\n");

	}

	@Then("Verify {string} input text field enabled")
	public void verify_input_text_field_enabled(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " input text field enabled " + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " input text field enabled " + "\n");
	}

	/*
	 * ///NEW
	 * 
	 * @Then("Verify {string} input text field enabled Value") public void
	 * verify_input_text_field_enabled_Value(String Label) {
	 * 
	 * String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());
	 * 
	 * logger.info("Verified " + "'" + Label + "'" + " input text field enabled " +
	 * "\n"); System.out.println("Verified " + "'" + Label + "'" +
	 * " input text field enabled " + "\n"); }
	 */
	@Then("Verify {string} input text field enabled under {string}")
	public void verify_input_text_field_enabled_under(String Label, String SubCat) {
		String original = ec.getObjects("label_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " input text field enabled " + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " input text field enabled " + "\n");

	}

	@Then("Verify Phone number field enabled {string}")
	public void verify_Phone_number_field_enabled(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("phoneNumber_inputtext_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Phone number flag dropdown is clickable" + "\n");
		System.out.println("Phone number flag dropdown is clickable" + "\n");
	}

	@Then("Verify Phone number flag dropdown enabled")
	public void verify_Phone_number_flag_dropdown_enabled() {

		String original = ec.getObjects("phoneNumber_flag_dropdown");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Phone number flag dropdown is clickable" + "\n");
		System.out.println("Phone number flag dropdown is clickable" + "\n");
	}

	@Then("Show {string} dropdown under {string}")
	public void show_dropdown_under(String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("dropdown_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " dropdown under " + SubCat + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " dropdown under " + SubCat + "\n");

	}

	@Then("Show {string} tooltip {string}")
	public void show_tooltip(String Label, String TTexpected) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("tt_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} tooltip {string} in add contact modal")
	public void show_tooltip_in_add_contact_modal(String Label, String TTdescription) throws InterruptedException {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("header3");
		String original2 = ec.getObjects("password_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(original2);
		WebElement tooltip = driver.findElement(By.xpath(formatXPATH2));
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		WaitClass.clickableWait(formatXPATH2);
		assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(TTdescription));
		// driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + Label + "' tooltip: " + TTdescription + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + TTdescription + "\n");

	}

	@Then("Show tooltip {string} in {string} in basic information")
	public void show_tooltip_diverisity(String Label, String TTdescription) throws InterruptedException {

		String original = ec.getObjects("diversity_tooltip1") + TTdescription + ec.getObjects("diversity_tooltip3");
		String original2 = ec.getObjects("naicsvalue1") + Label + ec.getObjects("naicsvalue2");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(original2);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		WaitClass.clickableWait(formatXPATH2);
		assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(Label));
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + Label + "' tooltip: " + Label + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + Label + "\n");

	}

	@Then("Show {string} tooltip {string} in Registration page")
	public void show_tooltip_in_Registration_page(String Label, String TTexpected) throws Throwable {

		String original = ec.getObjects("label_var") + Label + "']/div";
		String formatXPATH = String.format(original);

		// String original1 = ec.getObjects("label_var") + Label +
		// "']//following::p[4]";
		// String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(2000);
		// WaitClass.webDriverWait(formatXPATH1);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getText().trim();

		assertTrue(TTactual.equals(TTexpected.trim()));

		action.sendKeys(Keys.ESCAPE).build().perform();

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} tooltip {string} after Registration")
	public void show_tooltip_after_Registration(String Label, String TTexpected) throws Throwable {
		String original = ec.getObjects("label_var") + Label + "']/div";
		String formatXPATH = String.format(original);

		// String original1 = ec.getObjects("label_var") + Label + "']//following::p";
		// String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(2000);
		// WaitClass.webDriverWait(formatXPATH1);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getText().trim();

		assertTrue(TTactual.equals(TTexpected.trim()));

		action.sendKeys(Keys.ESCAPE).build().perform();

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} tooltip {string} under {string}")
	public void show_tooltip_under(String Label, String TTexpected, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("tt_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		// assertTrue(TTactual.equalsIgnoreCase(TTexpected));

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} tooltip {string} in {string}")
	public void show_tooltip_in(String Label, String TTexpected, String SubCat) {

		String original = ec.getObjects("firstinputbox") + Label + ec.getObjects("tooltip");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		// assertTrue(TTactual.equalsIgnoreCase(TTexpected));

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");

	}

	@Then("Show {string} tooltip {string} in at {string}")
	public void show_tooltip_in_at(String Label, String TTexpected, String SubCat) {

		String original = ec.getObjects("firstlegalbusiness") + Label + ec.getObjects("Legal_business_tooltop");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		// assertTrue(TTactual.equalsIgnoreCase(TTexpected));

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");

	}

	@Then("Show {string} title")
	public void show_title(String string) {
		String original = ec.getObjects("headLabel_var") + string + ec.getObjects("label_var2");
		;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title " + string + " showing on the page" + "\n");
		System.out.println("Title " + string + " showing on the page" + "\n");
	}

	@Then("Verify {string} is listed in {string} dropdown")
	public void verify_is_listed_in_dropdown(String Option, String Label) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("dropdown_new_var2")
				+ ec.getObjects("option_var2") + Option.trim() + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().equalsIgnoreCase(Option.trim()));

		logger.info("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");
		System.out.println("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");

	}

	/*
	 * ///NEW
	 * 
	 * @Then("Verify {string} is listed in {string} dropdown Value") public void
	 * verify_is_listed_in_dropdown_Value(String Option, String Label) { String
	 * original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("dropdown_new_var4") + ec.getObjects("option_var2") +
	 * Option.trim() + ec.getObjects("label_var2") ; String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.clickableWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().
	 * equalsIgnoreCase(Option.trim()));
	 * 
	 * logger.info("'" + Option + "'" + " is listed in " + Label + " dropdown" +
	 * "\n"); System.out.println("'" + Option + "'" + " is listed in " + Label +
	 * " dropdown" + "\n");
	 * 
	 * }
	 */
	@Then("Verify {string} is listed in {string} dropdown under {string}")
	public void verify_is_listed_in_dropdown_under(String Option, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("dropdown_h6_var3") + ec.getObjects("option_var2") + Option
				+ ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().equalsIgnoreCase(Option.trim()));

		logger.info("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");
		System.out.println("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");

	}

	@Then("Verify {string} listed in {string} dropdown under {string}")
	public void verify_listed_in_dropdown_under(String Option, String Label, String SubCat) {

		String original = ec.getObjects("BusinessType_india") + Option + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().equalsIgnoreCase(Option.trim()));

		logger.info("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");
		System.out.println("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");

	}

	@Then("Verify {string} month is listed under {string} calandar dropdown")
	public void verify_month_calandar(String month, String SubCat) {

		String original = ec.getObjects("select_calandar");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(month);

		logger.info("'" + month + "'" + " is listed in " + SubCat + " dropdown" + "\n");
		System.out.println("'" + month + "'" + " is listed in " + SubCat + " dropdown" + "\n");

	}

	@Then("Select {string} value from Business type dropdown")
	public void select_business_type(String type) {

		String original = ec.getObjects("business_type_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(type);

		logger.info(type + " is selected in dropdown" + "\n");
		System.out.println(type + " is selected in dropdown" + "\n");

	}

	@Then("Select {string} from the {string} dropdown")
	public void select_NIACS(String value, String SubCat) {

		String original = ec.getObjects("select_naics");
		String dropdownValue = ec.getObjects("naicsvalue1") + value + ec.getObjects("naicsvalue2");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(dropdownValue);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.clickableWait(formatXPATH2);
		WebElement element = driver.findElement(By.xpath(formatXPATH2));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click();", element);
		/*
		 * Actions action = new Actions(driver);
		 * action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().
		 * build().perform();
		 */

		logger.info("'" + value + "'" + " is listed in " + SubCat + " dropdown" + "\n");
		System.out.println("'" + value + "'" + " is listed in " + SubCat + " dropdown" + "\n");

	}

	@Then("Select {string} from the dropdown {string} for Stock Exchange")
	public void select_StockExchange(String value, String SubCat) {
		String original = ec.getObjects("additinalDropdown");
		// String original = ec.getObjects("naicsvalue1") + SubCat +
		// ec.getObjects("naicsvalue2");
		String dropdownValue = ec.getObjects("naicsvalue1") + value + ec.getObjects("naicsvalue2");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(dropdownValue);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.clickableWait(formatXPATH2);
		WebElement element = driver.findElement(By.xpath(formatXPATH2));
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("arguments[0].click();", element);
		/*
		 * Actions action = new Actions(driver);
		 * action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().
		 * build().perform();
		 */

		logger.info("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");
		System.out.println("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");

	}

	@Then("Show date calander in {string} label")
	public void show_date_calandar(String label) {

		String original = ec.getObjects("date_calandar");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();

		logger.info("Date calandar is displayed under " + label + "\n");
		System.out.println("Date calandar is displayed under " + label + "\n");

	}

	@Then("click on the calandar icon")
	public void clickOnCalandarIcon() throws InterruptedException {

		String original = ec.getObjects("date_calandar");
		String formatXPATH = String.format(original);

		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		try {
			WaitClass.webDriverWait(formatXPATH);
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			/*
			 * wait.until(
			 * ExpectedConditions.refreshed(ExpectedConditions.visibilityOfElementLocated(By
			 * .xpath(formatXPATH)))); wait.until(
			 * ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.
			 * xpath(formatXPATH))));
			 */
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
		}
		catch(ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}
		logger.info("Date calandar is clicked " + "\n");
		System.out.println("Date calandar is clicked " + "\n");

	}

	@Then("select date {string} from the date")
	public void select_date(String selectedDate) {

		String original = ec.getObjects("select_date");
		String formatXPATH = String.format(original);


		try {
					driver.switchTo().activeElement();
					driver.findElement(By.xpath(formatXPATH)).click();

			}
		 catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			wait.until(
					ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));

					driver.findElement(By.xpath(formatXPATH)).click();

			}


		System.out.println("Selected Date " + selectedDate + "\n");

	}

//	@Then("select date {string} from the date")
//	public void select_date(String selectedDate) {
//
//		String original = ec.getObjects("select_date");
//		String formatXPATH = String.format(original);
//
//		List<WebElement> dateElements = driver.findElements(By.xpath(formatXPATH));
//		try {
//			for (int i = 0; i < dateElements.size(); i++) {
//				String date = driver.findElements(By.xpath(formatXPATH)).get(i).getText();
//				if (date.equalsIgnoreCase(selectedDate)) {
//					WaitClass.webDriverWait(formatXPATH);
//					WaitClass.clickableWait(formatXPATH);
//					driver.findElements(By.xpath(formatXPATH)).get(i).click();
//				} else {
//					System.out.println("Give proper date");
//				}
//			}
//		} catch (StaleElementReferenceException e) {
//			WebDriverWait wait = new WebDriverWait(driver, 120);
//			logger.info("Recovering from StaleElementReferenceException " + "\n");
//			System.out.println("Recovering from StaleElementReferenceException " + "\n");
//			wait.until(
//					ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
//			for (int i = 0; i < dateElements.size(); i++) {
//				String date = driver.findElements(By.xpath(formatXPATH)).get(i).getText();
//				if (date.equalsIgnoreCase(selectedDate)) {
//					driver.findElements(By.xpath(formatXPATH)).get(i).click();
//				} else {
//					System.out.println("Give proper date");
//				}
//			}
//		}
//
//		logger.info("Selected Date " + selectedDate + "\n");
//		System.out.println("Selected Date " + selectedDate + "\n");
//
//	}

	@Then("Show error message {string} under {string} field")
	public void show_error_message_under_field(String error, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}

	@Then("Show error message {string} for {string} field")
	public void show_error_message_for_field(String error, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_var4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}

	@Then("Show error message like {string} under {string} field")
	public void show_error_message_like_field(String error, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_var5") + error
				+ ec.getObjects("error_var6");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}

	@Then("Enter {string} text in the discription text box")
	public void enterTextinDiscription(String text) throws Throwable {

		String original = ec.getObjects("basicinfo_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered text " + text + "in description text field" + "\n");
		System.out.println("Entered text" + text + "in description text field" + "\n");
	}

	@Then("Enter {string} text in Native Language Legal Name field")
	public void enter_text_in_Native_Language_Legal_Name_field(String text) {

		String original = ec.getObjects("NativeLegalName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered text " + text + "in description text field" + "\n");
		System.out.println("Entered text" + text + "in description text field" + "\n");

	}

	@Then("Enter {string} Native Language Business Name")
	public void enter_Native_Language_Business_Name(String text) {
		String original = ec.getObjects("NativeBusinessName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered text " + text + "in description text field" + "\n");
		System.out.println("Entered text" + text + "in description text field" + "\n");

	}

	@Then("Enter company email {string} in email field")
	public void enterTextinEmail(String text) throws Throwable {

		String original = ec.getObjects("basicinfo_companyemail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered text " + text + "in email text field" + "\n");
		System.out.println("Entered text" + text + "in email text field" + "\n");
	}

	@Then("Enter website {string} in website field")
	public void enterwebsite(String text) throws Throwable {

		String original = ec.getObjects("basicinfo_website");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered website " + text + "in website text field" + "\n");
		System.out.println("Entered website" + text + "in website text field" + "\n");
	}

	@Then("click on the radio button {string} in additional information")
	public void clcikOnRadiobutton(String text) throws Throwable {

		String original = ec.getObjects("additional_btn") + text + ec.getObjects("additional_btn2");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("clicked on radio button " + "\n");
		System.out.println("clicked on radio button" + "\n");
	}

	@Then("enter {string} in the field {string}")
	public void enterNoOfEmp(String input, String text) throws Throwable {

		String original = ec.getObjects("firstinputbox") + text + ec.getObjects("lastinpitbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		logger.info("Entered number of employees" + input + "\n");
		System.out.println("Entered number of employees" + input + "\n");
	}

	@Then("Click on Assign {string} button")
	public void clickAssignBtn(String btn) throws Throwable {

		String original = ec.getObjects("assign1") + btn + ec.getObjects("assign2");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}
		}
		logger.info("Clicked on " + btn + "\n");
		System.out.println("Clicked on " + btn + "\n");
	}

	@Then("Click on at {string} button")
	public void clickNextBtn(String btn) throws Throwable {

		String original = ec.getObjects("nextStep");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		/*
		String duplicateID = ec.getObjects("duplicateID");
		try {
			WaitClass.clickableWait(formatXPATH);
			Thread.sleep(5000);
			driver.findElement(By.xpath(formatXPATH)).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(duplicateID)));
			wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
			driver.findElement(By.xpath(formatXPATH)).click();
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(duplicateID)));
					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}

		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
				
			} 
		}
*/
		logger.info("Clicked on " + btn + "\n");
		System.out.println("Clicked on " + btn + "\n");
	}

	@Then("Click on Find ID button")
	public void clickFindID() throws Throwable {

		String original = ec.getObjects("findID");
		String formatXPATH = String.format(original);
		/*
		 * for (int k = 0; k < 4; k++) try {
		 * driver.findElement(By.xpath(formatXPATH)).click(); break; } catch
		 * (StaleElementReferenceException e) { WebDriverWait wait = new
		 * WebDriverWait(driver, 120); wait.until(ExpectedConditions
		 * .refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(
		 * formatXPATH))))); logger.info("Trying to recover from a stale element :" +
		 * e.getMessage() + "\n");
		 * System.out.println("Trying to recover from a stale element :" +
		 * e.getMessage()); }
		 */
		try {
			WaitClass.webDriverWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(
					ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
			WaitClass.webDriverWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
		}
		logger.info("Clicked on Find ID" + "\n");
		System.out.println("Clicked on Find ID" + "\n");
	}

	@Then("Enter number {string} in {string} in corporation details")
	public void enterphonenumber(String number, String inputfield) throws Throwable {

		String original = ec.getObjects("fax_details") + inputfield + ec.getObjects("fax2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(number);

		logger.info("Entered " + number + " input text field" + "\n");
		System.out.println("Entered " + number + "" + "\n");
	}

	/// NEW
	@Then("Show error message {string} under {string} field Value")
	public void show_error_message_under_field_Value(String error, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("Registration_error_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}

	@Then("Show error message {string} under {string} field under {string}")
	public void show_error_message_under_field_under(String error, String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("error_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");

	}

	@Then("Show error message {string} under Currency field under {string}")
	public void show_error_message_under_Currency_field_under(String Error, String SubCat) {

		String original = ec.getObjects("label_var") + "Currency" + ec.getObjects("error_Currency_var2") + Error
				+ ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Error.trim()));

		logger.info("Showing error message " + "'" + Error + "'" + " under Currency field" + "\n");
		System.out.println("Showing error message " + "'" + Error + "'" + " under Currency field" + "\n");

	}

	@Then("Verify no error message is displayed under {string} field")
	public void verify_no_error_message_is_displayed_under_field(String Label) throws InterruptedException {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_var3");
		String formatXPATH = String.format(original);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("No error message is displayed under " + Label + " field" + "\n");
		System.out.println("No error message is displayed under " + Label + " field" + "\n");
	}

	/// NEW
	@Then("Verify no error message is displayed under {string} field Value")
	public void verify_no_error_message_is_displayed_under_field_Value(String Label) throws InterruptedException {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("Registration_error_var3");
		String formatXPATH = String.format(original);

		assertFalse(driver.findElements(By.xpath(formatXPATH)).size() > 0);

		logger.info("No error message is displayed under " + Label + " field" + "\n");
		System.out.println("No error message is displayed under " + Label + " field" + "\n");
	}

	@Then("Verify no error message is displayed under {string} field under {string}")
	public void verify_no_error_message_is_displayed_under_field_under(String Label, String SubCat)
			throws InterruptedException {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("error_h6_var3");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		Thread.sleep(5000);
		Assert.assertEquals(0, driver.findElements(By.xpath(formatXPATH)).size());

		logger.info("No error message is displayed under " + Label + " field" + "\n");
		System.out.println("No error message is displayed under " + Label + " field" + "\n");

	}

	@Then("Show {string} under {string} at field")
	public void show_required(String req, String field) {

		String original = ec.getObjects("required1") + field + ec.getObjects("required2");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(req.trim()));
		logger.info("Error message is displayed under " + field + " field" + "\n");
		System.out.println("Error message is displayed under " + field + " field" + "\n");

	}

	@Then("Show {string} under {string} field in Basic information")
	public void show_required_for_fiscalYear(String req, String field) {

		String original = ec.getObjects("year_req1") + field + ec.getObjects("year_req2") + req
				+ ec.getObjects("year_req3");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(req.trim()));
		logger.info("Error message is displayed under " + field + " field" + "\n");
		System.out.println("Error message is displayed under " + field + " field" + "\n");

	}

	@Then("Show error {string} in {string} at field")
	public void show_required_for_trade(String req, String field) {

		String original = ec.getObjects("trade_req1") + field + ec.getObjects("trade_req2") + req
				+ ec.getObjects("trade3_req3");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(req.trim()));
		logger.info("Error message is displayed under " + field + " field" + "\n");
		System.out.println("Error message is displayed under " + field + " field" + "\n");

	}

	@Then("Verify no data is entered in {string} field")
	public void verify_no_data_is_entered_in_field(String Label) throws Throwable {

		Thread.sleep(2000);

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));

		logger.info("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");
		System.out.println("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");
	}

	/*
	 * ///NEW
	 * 
	 * @Then("Verify no data is entered in {string} field Value") public void
	 * verify_no_data_is_entered_in_field_Value(String Label) throws Throwable {
	 * 
	 * Thread.sleep(2000);
	 * 
	 * String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * // WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").
	 * equals(""));
	 * 
	 * logger.info("Verified no data is enetered in " + "'" + Label + "'" + " field"
	 * + "\n"); System.out.println("Verified no data is enetered in " + "'" + Label
	 * + "'" + " field" + "\n"); }
	 */
	@Then("Verify no data is entered in {string} field under {string}")
	public void verify_no_data_is_entered_in_field_under(String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").isEmpty());
		logger.info("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");
		System.out.println("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");

	}

	@Then("Verify data entered in {string} field is {string}")
	public void verify_data_entered_in_field_is(String Label, String inputValue) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String path = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		System.out.println(path);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(inputValue));

		logger.info("Verified data enetered in " + "'" + Label + "'" + " field is " + "'" + inputValue + "\n");
		System.out.println("Verified data enetered in " + "'" + Label + "'" + " field is " + inputValue + "\n");

	}

	/*
	 * ///NEW
	 * 
	 * @Then("Verify data entered in {string} field is {string} Value") public void
	 * verify_data_entered_in_field_is_Value(String Label, String inputValue) {
	 * 
	 * String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").
	 * equals(inputValue));
	 * 
	 * logger.info("Verified data enetered in " + "'" + Label + "'" + " field is " +
	 * "'" + inputValue + "\n"); System.out.println("Verified data enetered in " +
	 * "'" + Label + "'" + " field is " + inputValue + "\n");
	 * 
	 * }
	 */
	@Then("Verify data entered in {string} field is {string} under {string}")
	public void verify_data_entered_in_field_is_under(String Label, String inputValue, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(inputValue));

		logger.info("Verified data enetered in " + "'" + Label + "'" + " field is " + "'" + inputValue + "\n");
		System.out.println("Verified data enetered in " + "'" + Label + "'" + " field is " + inputValue + "\n");

	}

	@Then("Scroll to view {string} field under {string}")
	public void scroll_to_view_field_under(String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("label_var2");
		String formatXPATHdropdown1 = String.format(original);
		WaitClass.webDriverWait(formatXPATHdropdown1);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATHdropdown1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		logger.info("Scrolled to view " + Label + "\n");
		System.out.println("Scrolled to view " + Label + "\n");

	}

	@Then("Close the modal")
	public void close_the_modal() {

		String original = ec.getObjects("modal_x_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close icon" + "\n");
		System.out.println("Clicked on Close icon" + "\n");
	}

	@Then("Show {string} css dropdown")
	public void show_css_dropdown(String Label) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("css_dropdown_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + Label + " dropdown in Bank Account" + "\n");
		System.out.println("Showing " + Label + " dropdown in Bank Account" + "\n");

	}

	@Then("Verify {string} css dropdown enabled")
	public void verify_css_dropdown_enabled(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("css_dropdown_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info(Label + " dropdown is Enabled" + "\n");
		System.out.println(Label + " dropdown is Enabled" + "\n");
	}

	@Then("Select {string} in {string} css dropdown")
	public void select_in_css_dropdown(String option, String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("css_dropdown_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		// driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.BACK_SPACE);
		String original1 = ec.getObjects("label_var") + Label + ec.getObjects("css_dropdown_var2")
				+ "[2]/div/div[contains(text(),'" + option + "')]";
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("Selected " + "'" + option + "' in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + option + "' in " + Label + " dropdown" + "\n");
	}

	@Then("Select the country curreny from currency dropdown")
	public void select_the_country_curreny_from_currency_dropdown() throws InterruptedException {
		String original = ec.getObjects("countrycurrency");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("US Dollar (USD");
		logger.info("Selected the USA COuntry from the drop down" + "\n");
		System.out.println("Selected the USA Country from the drop down" + "\n");

	}

	@Then("Select {string} in Currency css dropdown")
	public void select_in_Currency_css_dropdown(String string) throws InterruptedException {
		String original = ec.getObjects("CurrencyDrodwn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("label_var") + "Australian Dollar (AUD)"
				+ ec.getObjects("upload_btn_upload_var2");
		String formatXPATH1 = String.format(original1);
		WaitClass.clickableWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys(Keys.ENTER);
		logger.info("Selected the Australian Dollar (AUD) from the drop down" + "\n");
		System.out.println("Selected the Australian Dollar (AUD) from the drop down" + "\n");
	}

	@Then("Scroll to view {string} field")
	public void scroll_to_view_field(String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("label_var2");
		String formatXPATHdropdown1 = String.format(original);
		WaitClass.webDriverWait(formatXPATHdropdown1);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATHdropdown1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		logger.info("Scrolled to view " + Label + "\n");
		System.out.println("Scrolled to view " + Label + "\n");
	}

	@Then("Scroll to the top of the page")
	public void scroll_to_the_top_of_the_page() throws Throwable {

		String original = ec.getObjects("profile_btn");
		String formatXPATHdropdown1 = String.format(original);
		WaitClass.webDriverWait(formatXPATHdropdown1);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATHdropdown1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		Thread.sleep(2000);

		logger.info("Scrolled to the top of the page" + "\n");
		System.out.println("Scrolled to the top of the page" + "\n");
	}

	@Then("Show {string} button in basic information")
	public void show_button_in_basic_information(String Label) {

		String original = ec.getObjects("label_var") + Label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " button in basic information page" + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " button in basic information page" + "\n");
	}

	@Then("Verify Upload {string} button clickable in basic information")
	public void verify_Upload_button_clickable_in_basic_information(String Label) {

		String original = ec.getObjects("label_var") + Label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " button clickable in basic information page" + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button clickable in basic information page" + "\n");

	}

	// This Step def is to verify uploading unaccepted formats
	@Then("Verify Uploading {string} in {string} format")
	public void verify_Uploading_in_format(String Label, String FileFormat) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + "." + FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(formatXPATH));

		// Send key with path
		fileInput.sendKeys(filepath);

		String ViewDoc = ec.getObjects("label_var") + Label + ec.getObjects("viewDoc_var2");

		String formatViewDoc = String.format(ViewDoc);

		List<WebElement> elements = driver.findElements(By.xpath(formatViewDoc));
		assertTrue(elements.size() == 0);

		logger.info(FileFormat + " could not be upoaded at the " + Label + " Document on the Basic information page"
				+ "\n");
		System.out.println(FileFormat + " could not be upoaded at the " + Label
				+ " Document on the Basic information page" + "\n");

	}

	@Then("Upload {string} in {string} format")
	public void upload_in_format(String Label, String FileFormat) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + "." + FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		logger.info("Uploaded " + FileFormat + " at the " + Label + " Document" + "\n");
		System.out.println("Uploaded " + FileFormat + " at the " + Label + " Document" + "\n");

	}

	@Then("Upload {string} under {string}")
	public void upload_under(String FileFormat, String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("upload_btn_upload_var2");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + "." + FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		logger.info("Uploaded " + FileFormat + " at the " + Label + " Document" + "\n");
		System.out.println("Uploaded " + FileFormat + " at the " + Label + " Document" + "\n");

	}

	@Then("Upload {string} document under Upload Document")
	public void upload_document_under_upload_document(String FileFormat) throws Exception {

		String original = ec.getObjects("bankdocupload");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String workingDir = System.getProperty("user.dir");
		// String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat
		// + "." + FileFormat.toLowerCase();

		WebElement fileInput = driver.findElement(By.xpath(original));
		// Send key with path
		fileInput.click();
		logger.info("Clicked on Upload Document button" + "\n");
		System.out.println("Clicked on Upload Document button" + "\n");

		String filepath = System.getProperty("user.dir") + File.separator + "testdata" + File.separator
				+ "fileextension" + File.separator + "samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		System.out.println("File Path:---" + filepath);

		// copying File path to Clipboard
		StringSelection str = new StringSelection(filepath);
		// Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();
		// clipboard.setContents(str, null);
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(str, null);

		Robot rb = new Robot();
		// press Contol+V for pasting
		rb.delay(500);

		// pressing ctrl+v
		rb.keyPress(KeyEvent.VK_CONTROL);
		rb.keyPress(KeyEvent.VK_V);
		rb.keyRelease(KeyEvent.VK_V);
		// releasing ctrl+v
		rb.keyRelease(KeyEvent.VK_CONTROL);
		// pressing enter
		rb.keyPress(KeyEvent.VK_ENTER);
		// releasing enter
		rb.keyRelease(KeyEvent.VK_ENTER);

		Thread.sleep(3000);

		// sendKeys(filepath);

		logger.info("Uploaded " + FileFormat + " at the Upload Document" + "\n");
		System.out.println("Uploaded " + FileFormat + " at the Upload Document" + "\n");

	}

	@Then("Enter {string} in Expiry Date field")
	public void enter_in_Expiry_Date_field(String string) {

		String original = ec.getObjects("expiertDate");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("expiertDate"))).sendKeys(string);

	}

	@Then("Click on the Confirm button.")
	public void click_on_the_Confirm_button() {
		String original = ec.getObjects("uploadConfirmBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("uploadConfirmBtn"))).click();
	}

	@Then("Click {string} button.")
	public void click_on_cancel_button() {
		String original = ec.getObjects("cancelUpload");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("uploadConfirmBtn"))).click();
	}

	@Then("Enter the Phone number on Corporate Contact Details")
	public void enter_the_Phone_number_on_Corporate_Contact_Details() {
		String original = ec.getObjects("phoneNumberCorporate");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("phoneNumberCorporate"))).sendKeys("9490491534");

	}

	@Then("Enter the Notes")
	public void Enter_the_Notes() {

		String original = ec.getObjects("Approval_description");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("Approval_description"))).sendKeys("01/01/2000");

	}

	@Then("Click on the Save and Continue button")
	public void click_on_the_Save_and_Continue_button() {
		String original = ec.getObjects("saveAndContinueBtn");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(ec.getObjects("saveAndContinueBtn"))).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			WaitClass.staleElementClickWait(formatXPATH);
			driver.findElement(By.xpath(ec.getObjects("saveAndContinueBtn"))).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");

			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(ec.getObjects("saveAndContinueBtn"))).click();
		}

	}

	@Then("Click Save and Continue button one on basic information")
	public void click_on_Save_and_Continue_button1() {
		String original = ec.getObjects("saveAndContinueBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");
		driver.findElement(By.xpath(formatXPATH)).click();

	}

	@Then("Click on Corporaion NO radio button")
	public void click_on_no_radio() {
		String original = ec.getObjects("CorpNoBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

	}

	@Then("Enter Company Email address on Corporate Contact Details")
	public void enter_Company_Email_address_on_Corporate_Contact_Details() {
		String original = ec.getObjects("companyEmail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		String pattern = "yyyyMMddhh";
		SimpleDateFormat simpledateformat = new SimpleDateFormat(pattern);
		String format = simpledateformat.format(date);

		String email = RandomStringUtils.randomAlphanumeric(3);

		Email = email + format + "@mailinator.com";
		timeStamp.add(0, Email);

		// String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Company Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Company Email Address field" + "\n");

	}

	@Then("Upload {string} file {string} under {string}")
	public void upload_file_under(String FileFormat, String testFile, String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("upload_btn_upload_var2");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/" + testFile + "." + FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		logger.info("Uploaded " + testFile + " at the " + Label + " Document" + "\n");
		System.out.println("Uploaded " + testFile + " at the " + Label + " Document" + "\n");
	}

	@Then("Show attached document under {string} {string}")
	public void show_attached_document_under(String Label, String file) {
		String ViewDoc = ec.getObjects("label_var") + Label + ec.getObjects("viewDoc_var2");

		String formatViewDoc = String.format(ViewDoc);

		WaitClass.webDriverWait(formatViewDoc);

		assertTrue(driver.findElement(By.xpath(formatViewDoc)).isDisplayed());

		logger.info("Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");
		System.out.println(
				"Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");

	}

	@Then("Show attached document {string} {string}")
	public void show_attached_document(String Label, String file) {
		String ViewDoc = ec.getObjects("FirstValue") + Label + ec.getObjects("Value2");

		String formatViewDoc = String.format(ViewDoc);

		WaitClass.webDriverWait(formatViewDoc);

		assertTrue(driver.findElement(By.xpath(formatViewDoc)).isDisplayed());

		logger.info("Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");
		System.out.println(
				"Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");
	}

	@Then("Upload {string} document bigger than {int} MB in {string} format under {string}")
	public void upload_document_bigger_than_MB_in_format_under(String Label, Integer int1, String FileFormat,
			String SubCat) throws Throwable {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("upload_btn_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects(original))).click();

		String original1 = ec.getObjects("label_var") + Label + ec.getObjects("upload_btn_upload_var2");

		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + int1 + "MB+."
				+ FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(formatXPATH1));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(2000);

		logger.info(
				"Uploaded " + FileFormat + " file at the " + Label + " document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded " + FileFormat + " file at the " + Label + "  document on the Basic information page" + "\n");

	}

	@Then("Verify {string} from the email and copy the verification code")
	public void verify_from_the_email_and_copy_the_verification_code(String string) throws Throwable {

		Thread.sleep(4000);
		driver.switchTo().frame("html_msg_body");
		// Thread.sleep(3000);
		// driver.switchTo().frame(0);
		WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("registration_verificationCode")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		String VC = String.valueOf(js.executeScript("return document.querySelector('h3').innerText"));

		String Code = VC.substring(string.length());

		driver.switchTo().parentFrame();
		driver.switchTo().defaultContent();
		VerificationCode.add(0, Code);

		logger.info("Retrieved Verification Code: " + "'" + VerificationCode.get(0) + "'" + "\n");
		System.out.println("Retrieved Verification Code: " + "'" + VerificationCode.get(0) + "'" + "\n");
	}

	@Then("Enter verification code in TYS registration tab")
	public void enter_verification_code_in_TYS_registration_tab() throws Throwable {

		String original = ec.getObjects("CH_invite_VCode_inputbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		do {
			driver.findElement(By.xpath(original)).sendKeys(VerificationCode.get(0));

		} while (driver.findElement(By.xpath(original)).getAttribute("value").equals(""));

		logger.info("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
		System.out.println("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");

	}

	@Then("Show uploaded document {string} under {string} field under {string}")
	public void show_uploaded_document_under_field_under(String File, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("viewDoc_var2");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(File));

		logger.info("Showing " + File + " uploaded as " + Label + " in basic information page" + "\n");
		System.out.println("Showing " + File + " uploaded as " + Label + " in basic information page" + "\n");
	}

	@Then("Verify set password page in supplier registration")
	public void verify_set_password_page_in_supplier_registration() {
		String original = ec.getObjects("registration_password_label");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing set Password page" + "\n");
		System.out.println("Showing set Password page" + "\n");

	}

	@Then("Click TYS Buyer admin Terms & Conditions checkbox")
	public void click_TYS_Buyer_admin_Terms_Conditions_checkbox() {
		driver.manage().window().maximize();
		String original = ec.getObjects("Tnc_Buyer_admin_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on TYS Buyer admin Terms & Conditions checkbox" + "\n");
		System.out.println("Clicked on TYS Buyer admin Terms & Conditions checkbox" + "\n");
	}

	@Then("Click TYS Terms & Conditions checkbox")
	public void click_TYS_Terms_Conditions_checkbox() throws InterruptedException {
		driver.manage().window().maximize();
		String original = ec.getObjects("TnC_TYS_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		// WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on TYS Terms & Conditions checkbox" + "\n");
		System.out.println("Clicked on TYS Terms & Conditions checkbox" + "\n");
	}

	@Then("Click I do not have website checkbox")
	public void click_I_do_not_have_website_checkbox() {
		String original = ec.getObjects("TYS_website");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on TYS website checkbox" + "\n");
		System.out.println("Clicked on TYS website checkbox" + "\n");
	}

	@Then("Click Buyer Terms & Conditions checkbox")
	public void click_Buyer_Terms_Conditions_checkbox() {
		String original = ec.getObjects("TnC_Buyer_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Buyer Terms & Conditions checkbox" + "\n");
		System.out.println("Clicked on Buyer Terms & Conditions checkbox" + "\n");
	}

	@Then("Click same as above checkbox")
	public void click_same_as_above_checkbox() {

		String original = ec.getObjects("register_sameasabove_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on same as above checkbox" + "\n");
		System.out.println("Clicked on same as above checkbox" + "\n");
	}

	@Then("Click accept IBM registration checkbox")
	public void click_accept_IBM_registration_checkbox() {

		String original = ec.getObjects("register_accept_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked accept IBM registration checkbox" + "\n");
		System.out.println("Clicked accept IBM registration checkbox" + "\n");
	}

	@Then("Show TYS Terms & Conditions link text")
	public void show_TYS_Terms_Conditions_link_text() {

		String original = ec.getObjects("TnC_TYS_link");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing TYS Terms & Conditions link text" + "\n");
		System.out.println("Showing TYS Terms & Conditions link text" + "\n");
	}

	@Then("Show Buyer Terms & Conditions link text")
	public void show_Buyer_Terms_Conditions_link_text() {
		String original = ec.getObjects("TnC_Buyer_link");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Buyer Terms & Conditions link text" + "\n");
		System.out.println("Showing Buyer Terms & Conditions link text" + "\n");
	}

	@Then("Show TYS Terms & Conditions checkbox")
	public void show_TYS_Terms_Conditions_checkbox() {
		String original = ec.getObjects("TnC_TYS_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing TYS Terms & Conditions checkbox" + "\n");
		System.out.println("Showing TYS Terms & Conditions checkbox" + "\n");
	}

	@Then("Show Buyer Terms & Conditions checkbox")
	public void show_Buyer_Terms_Conditions_checkbox() {
		String original = ec.getObjects("TnC_Buyer_checkbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Buyer Terms & Conditions checkbox" + "\n");
		System.out.println("Showing Buyer Terms & Conditions checkbox" + "\n");
	}

	@Then("Verify {string} is listed in Currency dropdown")
	public void verify_is_listed_in_Currency_dropdown(String string) throws Throwable {
		String original = ec.getObjects("brazilLoc_currency_picker");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		action.sendKeys(driver.findElement(By.xpath(formatXPATH)), string).build().perform();

		action.sendKeys(Keys.ENTER).build().perform();

		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("brazilLoc_currencyBRL_option"))).getText()
				.equalsIgnoreCase(string));

		action.sendKeys(Keys.BACK_SPACE).build().perform();

		logger.info(string + " is listed in Currency droppdown in Add Bank account modal" + "\n");
		System.out.println(string + " is listed in Currency droppdown in Add Bank account modal" + "\n");

	}

	@Then("Verify phone number {string} is entered in accepted format {string}")
	public void verify_phone_number_is_entered_in_accepted_format(String Label, String AcceptedInput) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("phoneNumber_inputtext_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equalsIgnoreCase(AcceptedInput));

		logger.info("Verified phone number entered in " + "'" + Label + "'" + " is in accepted format" + "\n");
		System.out.println("Verified phone number entered in " + "'" + Label + "'" + " is in accepted format" + "\n");
	}

	@Then("Verify {string} is entered in accepted format {string}")
	public void verify_is_entered_in_accepted_format(String Label, String AcceptedInput) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equalsIgnoreCase(AcceptedInput));

		logger.info("Verified data entered in " + "'" + Label + "'" + " is in accepted format" + "\n");
		System.out.println("Verified data entered in " + "'" + Label + "'" + " is in accepted format" + "\n");
	}

	@Then("Verify India flag in Phone Number")
	public void verify_India_flag_in_Phone_Number() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Country" + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Country" + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify India flag in Fax Number")
	public void verify_India_flag_in_Fax_Number() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Country" + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Country" + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@When("Enter Permanent Account Number (PAN) for India under Tax Details")
	public void Enter_Permanent_Account_Number_for_India_under_Tax_Details() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("India_PAN_num");
		String JoinNowLink = String.format(original);

		Random random = new Random();

		driver.findElement(By.xpath(JoinNowLink)).sendKeys("AAAPL" + random.nextInt(10000) + "C");

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@When("Enter Permanent Account Number \\(PAN) for India under Tax Details")
	public void enter_Permanent_Account_Number_PAN_for_India_under_Tax_Details() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("India_PAN_num");
		String JoinNowLink = String.format(original);

		Random random = new Random();

		driver.findElement(By.xpath(JoinNowLink)).sendKeys("AAAPL" + random.nextInt(10000) + "C");

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@Then("Verify {string} flag in {string} field {string}")
	public void verify_flag_in_field(String Country, String Label, String shortCountry) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("phone_flag_var2") + shortCountry + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + Label + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + Label + "'" + " field" + "\n");

	}

	@Then("Verify {string} flag in Phone Number field")
	public void verify_flag_in_Phone_Number_field(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_albania_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify Brazil flag in Phone Number field")
	public void verify_Brazil_flag_in_Phone_Number_field() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_brazil_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Phone Number")
	public void verify_flag_in_Phone_Number(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Fax Number field")
	public void verify_flag_in_Fax_Number_field(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_albania_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}

	@Then("Verify Brazil flag in Fax Number field")
	public void verify_Brazil_flag_in_Fax_Number_field() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_brazil_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Brazil flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println("Brazil flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Fax Number")
	public void verify_flag_in_Fax_Number(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}

	@Then("Show Company Account card with {string}")
	public void show_Company_Account_card_with(String string) {

		String original = ec.getObjects("label_var") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Company Account card with " + string + "\n");
		System.out.println("Showing Company Account card with " + string + "\n");

	}

	@Then("Click on Company Account card with {string}")
	public void click_on_Company_Account_card_with(String string) throws InterruptedException {

		String original = ec.getObjects("label_var") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Click on Company Account card with " + string + "\n");
		System.out.println("Click on Company Account card  with " + string + "\n");

	}

	@Then("Show Factoring Company Account card with {string}")
	public void show_Factoring_Company_Account_card_with(String string) {

		String original = ec.getObjects("label_var") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Company Account card with " + string + "\n");
		System.out.println("Showing Company Account card with " + string + "\n");

	}

	@Then("Click on Factoring Company Account card with {string}")
	public void click_Factoring_on_Company_Account_card_with(String string) throws InterruptedException {

		String original = ec.getObjects("label_var") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Click on Company Account card with " + string + "\n");
		System.out.println("Click on Company Account card  with " + string + "\n");

	}

	@Then("Close TYS tab")
	public void close_TYS_tab() throws InterruptedException {
		driver.switchTo().defaultContent();
		Thread.sleep(2000);
		driver.close();
		Thread.sleep(1000);
		driver.switchTo().window(Base.handlesList.get(0));
		// switchToTab(driver,"1");

		logger.info("\n" + "Closed TYS tab" + "\n");
		System.out.println("\n" + "Closed TYS tab" + "\n");
	}

	public static void switchToTab(WebDriver driver, String tabNum) {
		driver.findElement(By.cssSelector("body")).sendKeys(Keys.LEFT_CONTROL + tabNum);
	}

	@Then("Verify Tax Country {string} is Pre populated with country")
	public void verify_Tax_Country_is_Pre_populated_with_country(String Country) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + "Tax Country/Region" + ec.getObjects("inputText_var2");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(Country));

		logger.info("Showing " + Country + " in the Tax country field" + "\n");
		System.out.println("Showing " + Country + " in the Tax country field" + "\n");

	}

	@Then("Enter {string} Supplier name and click Enter at supplier search")
	public void enter_Supplier_name_and_click_Enter_at_supplier_search(String country) throws Throwable {
		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
		String original = ec.getObjects("suppliersearch");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Suppliername = country + "supplier" + mis.getTimeStamp();

		// String Suppliername = timeStamp.get(0) + " ";

		System.out.println("Suppliername " + Suppliername + "\n");

		Thread.sleep(8000);
		driver.findElement(By.xpath(original)).sendKeys(Suppliername);

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
		logger.info("Entered Supplier name and click Enter at supplier search" + "\n");
		System.out.println("Entered Supplier name and click Enter at supplier search" + "\n");
	}

	@Then("Show {string} Dropdown")
	public void show_Dropdown_(String string) {

		String original = ec.getObjects("label_var") + string + ec.getObjects("dropdown_new_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + string + "'" + " dropdown in supplier registration" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " dropdown in supplier registration" + "\n");

	}

	/*
	 * ///NEW
	 * 
	 * @Then("Show {string} Dropdown Value") public void show_Dropdown_Value(String
	 * string) {
	 * 
	 * String original = ec.getObjects("label_var") + string +
	 * ec.getObjects("dropdown_new_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
	 * 
	 * logger.info("Showing " + "'" + string + "'" +
	 * " dropdown in supplier registration" + "\n"); System.out.println("Showing " +
	 * "'" + string + "'" + " dropdown in supplier registration" + "\n");
	 * 
	 * }
	 */
	@Then("Enter {string} Supplier Company name on Invite Supplier window")
	public void enter_Supplier_Company_name_on_Invite_Supplier_window(String country) throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		mis.addTimeStamp();
		String companyName = country + mis.getTimeStamp();

		driver.findElement(By.xpath(original)).sendKeys(companyName);

		logger.info("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
	}

	@Then("Enter {string} Supplier Contact email address on Invite Supplier modal")
	public void enter_Supplier_Contact_email_address_on_Invite_Supplier_modal(String country) throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.addTimeStamp();

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter {string} Supplier Confirm Contact email address on Invite Supplier modal")
	public void enter_Supplier_Confirm_Contact_email_address_on_Invite_Supplier_modal(String country) throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("Verify Email received in {string} supplier Inbox with subject {string}")
	public void verify_email_received_in_supplier_inbox_with_subject(String country, String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		action.click(driver.findElement(By.xpath(original))).sendKeys(Keys.ENTER).build().perform();
		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		// String SubjectLine = ec.getObjects("CH_variable_subjectLine");

		String EmailformatXPATH = String.format(SubjectLine);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			System.out.println("\n" + "Entered For loop" + EmailformatXPATH + "\n");
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				System.out.println("\n" + "Entered If Block" + "\n");
				isDisplayed = true;
				break;
			} else {
				System.out.println("\n" + "Entered Else Block" + "\n");
				driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
				System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
				Thread.sleep(2000);
			}
		}

		assertTrue(isDisplayed);

		// WaitClass.clickableWait(EmailformatXPATH);

		// assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}
	/*
	 * @Then("Verify email received in supplier inbox with subject {string}") public
	 * void verify_email_received_in_supplier_inbox_with_subject(String subject)
	 * throws Throwable {
	 * 
	 * driver.get(ec.getObjects("mailurl")); Thread.sleep(2000);
	 * 
	 * String original = ec.getObjects("mailinator_searchbox");
	 * 
	 * if (driver.findElements(By.xpath(original)).size() == 0) {
	 * driver.navigate().refresh(); } WaitClass.webDriverWait(original);
	 * 
	 * String Email = timeStamp.get(0) + "@mailinator.com";
	 * driver.findElement(By.xpath(original)).sendKeys(Email);
	 * logger.info("Entered " + Email + " in mailinator search box" + "\n");
	 * System.out.println("Entered " + Email + " in mailinator search box" + "\n");
	 * 
	 * driver.findElement(By.xpath(ec.getObjects("mailinator_gobtn"))).click();
	 * Thread.sleep(1000); //
	 * driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
	 * 
	 * Thread.sleep(2000);
	 * 
	 * ArrayList<WebElement> GotIt = new ArrayList<WebElement>(
	 * driver.findElements(By.xpath(ec.getObjects("mailinator_cookies_btn")))); if
	 * (GotIt.size() > 0) { action.click(driver.findElement(By.xpath(ec.getObjects(
	 * "mailinator_cookies_btn")))); } else {
	 * System.out.println("Got It button not found"); } Thread.sleep(2000);
	 * 
	 * String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject +
	 * "')]";
	 * 
	 * String EmailformatXPATH = String.format(SubjectLine);
	 * 
	 * WaitClass.webDriverWait(EmailformatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(
	 * subject));
	 * 
	 * logger.info("Showing email subject " + "'" + subject + "'" + "\n");
	 * System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	 * 
	 * }
	 */

	@Then("^Verify Email received in \"([^\"]*)\" supplier Inbox with subject \"([^\"]*)\" supplier \"([^\"]*)\"$")
	public void verify_email_received_in_something_supplier_inbox_with_subject_something_supplier_something(
			String country, String sub1, String sub2) throws Throwable {
		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		action.click(driver.findElement(By.xpath(original))).sendKeys(Keys.ENTER).build().perform();
		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		String subject = sub1 + mis.getTimeStamp() + sub2;

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			System.out.println("\n" + "Entered For loop" + "\n");
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				System.out.println("\n" + "Entered If Block" + "\n");
				isDisplayed = true;
				break;
			} else {
				System.out.println("\n" + "Entered Else Block" + "\n");
				driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
				System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
				Thread.sleep(2000);
			}
		}

		assertTrue(isDisplayed);

		// WaitClass.clickableWait(EmailformatXPATH);

		// assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Click on Join Now Link in the {string} supplier Email")
	public void click_on_Join_Now_Link_in_the_supplier_email(String country) throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("mailinator_joinNow_link");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		do {
			// driver.switchTo().frame(0);
			driver.switchTo().frame("html_msg_body");
			WaitClass.clickableWait(JoinNowLink);
			driver.findElement(By.xpath(JoinNowLink)).click();
			Thread.sleep(3000);

			logger.info("Clicked on Join Now button" + "\n");
			System.out.println("Clicked on Join Now button" + "\n");

			// Using the below if-else because some times driver is switching to new tab
			// automatically
			if (driver.getCurrentUrl().contains("slyncer")) {
				driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
				mis.addHandle(0);
				System.out.println("\n" + "%%%%%%%%%% Driver access is on TYS Registration tab by default" + "\n");

			} else {
				System.out.println("\n" + "%%%%%%%%%% Driver access is on Mailinator tab by default" + "\n");
				driver.switchTo().parentFrame();
				driver.switchTo().defaultContent();
				mis.addHandle(0);
				driver.switchTo().activeElement();

				System.out.println("@@@@@@@@@@@ When Join Now is clicked: " + driver.getCurrentUrl());

				CorpRelationships obj = new CorpRelationships();
				obj.switch_to_something_tab("TYS Registration");

				System.out.println("############When switched to TYS Registration tab: " + driver.getCurrentUrl());
				wait_for_seconds(6);
				System.out.println("$$$$$$$$ TYS Tab after wait time : " + driver.getCurrentUrl());
			}
			// below block in while loop is to handle session timeout and other device
			// logged in (after clicking on Join now link)
			while (driver.getCurrentUrl().contains(".slyncer.com/login")) {
				driver.close();

				System.out.println("\n" + "Closed TYS tab" + "\n");

				Thread.sleep(2000);
				driver.switchTo().window(mis.getHandle(0));

				System.out.println("\n" + "Switched to default tab" + "\n");

			}
			Thread.sleep(3000);
		} while (driver.getWindowHandles().size() == 1);

		Thread.sleep(2000);
		logger.info("\n" + "TYS Registration Page is opened" + "\n");
		System.out.println("\n" + "TYS Registration Page is opened" + "\n");

		Base.handlesList.add(1, driver.getWindowHandle());
	}

	@Then("^Click on the email with subject \"([^\"]*)\" supplier \"([^\"]*)\"$")
	public void click_on_the_email_with_subject_something_supplier_something(String sub1, String sub2)
			throws Throwable {

		String subject = sub1 + mis.getTimeStamp() + sub2;
		String original = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String firstEmailformatXPATH = String.format(original);

		WaitClass.webDriverWait(firstEmailformatXPATH);
		WaitClass.clickableWait(firstEmailformatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		logger.info("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
	}

	@Then("Switch to the new opened tab")
	public void Switch_to_the_new_opened_tab() throws Throwable {
		if (driver.getCurrentUrl().contains("slyncer.com/declineSupplier")) {
			Thread.sleep(2000);
			System.out.println("\n" + "%%%%%%%%%% Driver access is on declineSupplier tab by default" + "\n");
			mis.addHandle(2);
		} else {
			System.out.println("\n" + "%%%%%%%%%% Driver access is on tys registration tab by default" + "\n");

			// mis.addHandle(2);
			// driver.switchTo().activeElement();

			System.out.println("@@@@@@@@@@@ When Clicked in decline: " + driver.getCurrentUrl());

			CorpRelationships obj = new CorpRelationships();
			obj.switch_to_something_tab("Decline registration");

			System.out.println("############When switched to Decline registration: " + driver.getCurrentUrl());
			wait_for_seconds(6);
			System.out.println("$$$$$$$$ TYS Tab after wait time : " + driver.getCurrentUrl());
		}
	}

	@Then("Show {string} link {string}")
	public void Show_link_(String button, String string) throws Throwable {
		// if
		// (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed())
		// {
		// driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// System.out.println("\n" + "Got It button not found" + "\n");
		// }
		Thread.sleep(2000);
		driver.switchTo().frame("html_msg_body");
		Thread.sleep(3000);

		WebElement targetElement = driver.findElement(
				By.xpath(ec.getObjects("multibuyer_joinNow_btn") + button + ec.getObjects("select_option2")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);

		assertTrue(driver
				.findElement(
						By.xpath(ec.getObjects("multibuyer_joinNow_btn") + button + ec.getObjects("select_option2")))
				.isDisplayed(), string);

		logger.info("Showed " + string + " button" + "\n");
		System.out.println("Showed " + string + " button" + "\n");
	}

	@Then("Click on Register Now Link in the {string} supplier Email")
	public void click_on_Register_Now_Link_in_the_supplier_email(String country) throws Throwable {
		// if
		// (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed())
		// {
		// driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// System.out.println("\n" + "Got It button not found" + "\n");
		// }
		Thread.sleep(2000);
		driver.switchTo().frame("html_msg_body");
		Thread.sleep(3000);
		WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("mailinator_registerNow_btn")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);

		WebElement icon = driver.findElement(By.xpath(ec.getObjects("mailinator_registerNow_btn")));

		icon.click();
		Thread.sleep(2000);
		logger.info("Clicked on Register Now button" + "\n");
		System.out.println("Clicked on Register Now button" + "\n");
		driver.switchTo().parentFrame();
		mis.addHandle(0);
	}

	@Then("Close TYS registration tab")
	public void close_TYS_registration_tab() throws Throwable {
		if (driver.getWindowHandle().equalsIgnoreCase(Base.handlesList.get(1))) {

			driver.close();
			// driver.switchTo().window(mis.getHandle(0));
			try {
				driver.switchTo().window(Base.handlesList.get(0));
			} catch (Exception e) {
				Base.ChooseBrowser(Base.selectBrowser.get(0));
			}
		}
		logger.info("\n" + "Closed TYS registration page tab" + "\n");
		System.out.println("\n" + "Closed TYS registration page tab" + "\n");
	}

	@Then("Show Phone Number input text field")
	public void show_Phone_Number_input_text_field() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("indialoc_phoneNumber_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Phone Number field in supplier registration" + "\n");
		System.out.println("Showing Phone Number field in supplier registration" + "\n");

	}

	@Then("Click Continue button in supplier registration page")
	public void click_Continue_button_in_supplier_registration_page() {

		String original = ec.getObjects("indialoc_continue_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Continue button in supplier registration" + "\n");
		System.out.println("Clicked on Continue button in supplier registration" + "\n");

	}

	@Then("Enter Job title on User Account page")
	public void enter_Job_title_on_User_Account_page() throws InterruptedException {

		String original = ec.getObjects("Job_titile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		// String JobTitle = RandomStringUtils.randomAlphanumeric(4);
		// String JobTitle = RandomStringUtils.randomAlphabetic(7);
		driver.findElement(By.xpath(original)).sendKeys("Director");

		logger.info("Entered the title " + "name" + " in Job title  field " + "\n");
		System.out.println("Entered the title " + "name" + " in Job title field " + "\n");

	}

	@Then("Enter the Company Website in Website field")
	public void enter_the_Company_Website_in_Website_field() {

		String original = ec.getObjects("website_info");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String website = RandomStringUtils.randomAlphanumeric(6);

		String websiteField = "https://www." + website + ".com";

		driver.findElement(By.xpath(original)).sendKeys(websiteField);

		logger.info("Entered the Website " + websiteField + " in Website field " + "\n");
		System.out.println("Entered the Website " + websiteField + " in Website field " + "\n");
	}

	@Then("Enter the Company Website in Website field as {string}")
	public void enter_the_Company_Website_in_Website_field_as(String string) {
		String original = ec.getObjects("basicinfo_website");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String website = "www." + string + ".com";
		driver.findElement(By.xpath(original)).sendKeys(website);

		logger.info("Entered the Website " + "'" + website + " on the Basic information page" + "\n");
		System.out.println("Entered the Website " + "'" + website + " on the Basic information page" + "\n");
	}

	@Then("Enter {string} Supplier email address in {string} field")
	public void enter_Supplier_email_address_in_field(String Country, String Label) throws Throwable {

		String original = ec.getObjects("inviterEmail_connectedsuppliers");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);
		mis.addTimeStamp();

		String Email = Country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(Email);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		Thread.sleep(2000);

		logger.info("Entered " + "'" + Email + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + Email + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Verify {int} fields are present under {string} in {string}")
	public void verify_fields_are_present_under_in(Integer count, String SubCat, String page) {

		String original = ec.getObjects("label_var") + SubCat + ec.getObjects("labelcount_h6_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));
		assertTrue(elements.size() == count);

		logger.info("Verified all " + count + " fields present under " + SubCat + "\n");
		System.out.println("Verified all " + count + " fields present under " + SubCat + "\n");
	}

	@Then("Verify count of options is {int} in {string} dropdown under {string}")
	public void verify_count_of_options_is_in_dropdown_under(Integer count, String Label, String SubCat) {
		String original = ec.getObjects("label_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("ddOptionsCount_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));
		assertTrue((elements.size() - 1) == count);

		logger.info("Verified count of options in " + Label + " dropdown is: " + count + "\n");
		System.out.println("Verified count of options in " + Label + " dropdown is: " + count + "\n");
	}

	// Then Enter 9 digit alpha numeric data in "Address Line 1" field
	@Then("Enter {int} digit alpha numeric data in {string} field")
	public void enter_digit_alpha_numeric_data_in_field(Integer stringLeangth, String Label) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String string = "ABCDEFGHIJ1234567890";
		String random = RandomStringUtils.random(stringLeangth, string);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(random);

		logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");

	}

	/*
	 * ///NEW
	 * 
	 * @Then("Enter {int} digit alpha numeric data in {string} field Value") public
	 * void enter_digit_alpha_numeric_data_in_field_Value(Integer stringLeangth,
	 * String Label) { String original = ec.getObjects("label_var") + Label +
	 * ec.getObjects("inputText_var4"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH); String string = "ABCDEFGHIJ1234567890";
	 * String random = RandomStringUtils.random(stringLeangth, string);
	 * mis.clearText(formatXPATH);
	 * driver.findElement(By.xpath(formatXPATH)).sendKeys(random);
	 * 
	 * logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" +
	 * "\n"); System.out.println("Entered " + "'" + random + "'" + " in " + Label +
	 * " field" + "\n");
	 * 
	 * }
	 */
	// Then Enter 9 digit alpha numeric data in "TAX Reference Number" field under
	// "Tax Details"
	@Then("Enter {int} digit alpha numeric data in {string} field under {string}")
	public void enter_digit_alpha_numeric_data_in_field_under(Integer stringLeangth, String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String string = "ABCDEFGHIJ1234567890";
		String random = RandomStringUtils.random(stringLeangth, string);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(random);

		logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");

	}

	// Then Enter 9 digit numeric data in "TAX Reference Number" field under "Tax
	// Details"
	@Then("Enter {int} digit numeric data in {string} field under {string}")
	public void enter_digit_numeric_data_in_field_under(Integer stringLeangth, String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String random = RandomStringUtils.randomNumeric(stringLeangth);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(random);

		logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");

	}

	// Then Enter 2 alphabets followed by 5 numbers in "VAT Registration Number"
	// field under "Tax Details"
	@Then("Enter {int} alphabets followed by {int} numbers in {string} field under {string}")
	public void enter_alphabets_followed_by_numbers_in_field_under(Integer startingLetters, Integer followingNumbers,
			String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String alphabets = RandomStringUtils.randomAlphabetic(startingLetters);
		String numbers = RandomStringUtils.randomNumeric(followingNumbers);

		String input = alphabets + numbers;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}

	// Then Enter "GB" followed by "-" and 5 numbers in "VAT Registration Number"
	// field under "Tax Details"
	@Then("Enter {string} followed by {string} and {int} numbers in {string} field under {string}")
	public void enter_followed_by_and_numbers_in_field_under(String StartString, String Seperator, Integer digitCount,
			String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		String input = StartString + Seperator + RandomStringUtils.randomNumeric(digitCount);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}

	// Then Enter "GB" followed by "-" and 5 alphanumeric characters in "VAT
	// Registration Number" field under "Tax Details"
	@Then("Enter {string} followed by {string} and {int} alphanumeric characters in {string} field under {string}")
	public void enter_followed_by_and_alphanumeric_characters_in_field_under(String StartString, String Seperator,
			Integer digitCount, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		String input = StartString + Seperator + RandomStringUtils.randomAlphanumeric(digitCount).toUpperCase();

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}

	@Then("Enter {string} followed by {int} digit and ends with {string} in {string} field under {string}")
	public void enter_followed_by_digit_and_ends_with_in_field_under(String startvalue, Integer digitCount,
			String endvalue, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		System.out.println("Entered Number: " + digitCount + "\n");

		String input = startvalue + Keys.SPACE + RandomStringUtils.randomNumeric(digitCount) + Keys.SPACE;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		logger.info("Entered Commercial Registration Number: " + input + "\n");
		System.out.println("Entered Commercial Registration Number: " + input + "\n");
	}

	@Then("Show Toast message {string}")
	public void show_Toast_message(String ttDescription) throws Throwable {

		// Thread.sleep(2000);
		String original = ec.getObjects("toastMessage_var1") + ttDescription + ec.getObjects("label_var2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		Thread.sleep(2000);

		logger.info("Showing toast message : " + ttDescription + "\n");
		System.out.println("Showing toast message : " + ttDescription + "\n");
	}

	@Then("Close toast message")
	public void close_toast_message() throws Throwable {
		String original = ec.getObjects("toast_x_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(1000);

		logger.info("Closed the toast message" + "\n");

		System.out.println("Closed the toast message" + "\n");

	}

	@Then("Show the Toast message {string}")
	public void show_the_Toast_message(String tmDescription) throws Throwable {

		// Thread.sleep(2000);
		String original = ec.getObjects("toastMsg_vari1") + tmDescription + ec.getObjects("toastMessage_vari2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		Thread.sleep(2000);

		logger.info("Showing toast message : " + tmDescription + "\n");
		System.out.println("Showing toast message : " + tmDescription + "\n");
	}

	// Then Wait for 3 seconds
	@Then("Wait for {int} seconds")
	public void wait_for_seconds(Integer time) throws Throwable {

		//System.out.println("\n" + "Waiting for " + time + " seconds" + "\n");
		int miliseconds = time * 1000;
		Thread.sleep(miliseconds);
		System.out.println("\n" + "Done Waiting for " + time + " seconds" + "\n");
		// driver.navigate().refresh();
	}

	@Then("Do not show {string} field under {string}")
	public void do_not_show_field_under(String Label, String SubCat) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("upload_btn_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElements(By.xpath(formatXPATH)).size() == 0);

		logger.info("'" + Label + "'" + " button is not available in basic information page" + "\n");
		System.out.println("'" + Label + "'" + " button is not available in basic information page" + "\n");

	}

	@Then("Click on Basic Information Tab")
	public void click_on_Basic_Information_Tab() {

		String original = ec.getObjects("basicinformationnavlink");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		for (int k = 0; k < 4; k++)
			try {
				driver.findElement(By.xpath(formatXPATH)).click();
				break;
			} catch (Exception o) {
				o.toString();
				logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + o.getMessage());
			}

		logger.info("Clicked on Basic Information on Dashboard page" + "\n");
		System.out.println("Clicked on Basic Information on Dashboard page " + "\n");
	}

	@Then("Click on Save button in Basic Info Page")
	public void click_on_Save_button_in_Basic_Info_Page() {

		String original = ec.getObjects("indialocal_basicInfo_savebtn");

		WaitClass.clickableWait(original);

		for (int i = 0; i < 4; i++)
			try {
				driver.findElement(By.xpath(original)).click();
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage());

			}

		logger.info("Clicked on Save btm in basic onformation page" + "\n");
		System.out.println("Clicked on Save btm in basic onformation page" + "\n");

	}

	@Then("Enter value at Goods and Services Taxpayer Identification Number \\\\\\(GSTIN) on Basic information page")
	public void enter_value_at_Goods_and_Services_Taxpayer_Identification_Number_GSTIN_on_Basic_information_page()
			throws Throwable {
		String original = ec.getObjects("indialocal_GSTIN_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf1 = DateTimeFormatter.ofPattern("ss");

		DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("mmss");

		DateTimeFormatter dtf3 = DateTimeFormatter.ofPattern("s");

		DateTimeFormatter dtf4 = DateTimeFormatter.ofPattern("m");
		LocalDateTime now = LocalDateTime.now();

		String GSTIN = dtf1.format(now) + "AAAAA" + dtf2.format(now) + "A" + dtf3.format(now) + "Z" + dtf4.format(now);

		driver.findElement(By.xpath(original)).sendKeys(GSTIN);

		logger.info(
				"Entered value at Goods and Services Taxpayer Identification Number on Basic information page" + "\n");
		System.out.println(
				"Entered value at Goods and Services Taxpayer Identification Number on Basic information page" + "\n");
	}

	@Then("Enter Permanent Account Number input field")
	public void enter_Permanent_Account_Number_input_field() {
		String original = ec.getObjects("indialocal_PAN_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf2 = DateTimeFormatter.ofPattern("mmss");

		LocalDateTime now = LocalDateTime.now();

		String PAN = "AAAAA" + dtf2.format(now) + "A";

		driver.findElement(By.xpath(original)).sendKeys(PAN);
		logger.info("Entered Permanent Account Number input field on Basic information page" + "\n");
		System.out.println("Entered Permanent Account Number input field on Basic information page" + "\n");
	}

	// Then Enter 5 numbers followed by "T" in "Commercial Registration Number"
	// field under "Tax Details"
	@Then("Enter {int} numbers followed by {string} in {string} field under {string}")
	public void enter_followed_by_in_field_under(Integer digitCount, String StartString, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String input = RandomStringUtils.randomNumeric(digitCount) + StartString;

		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");

	}

	@Then("Enter data in {string} field under {string} in Switzerland format ending with {string}")
	public void enter_data_in_field_under_in_Switzerland_format_ending_with(String Label, String SubCat,
			String EndString) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Input = RandomStringUtils.randomAlphabetic(3).toUpperCase() + RandomStringUtils.randomNumeric(3) + "."
				+ RandomStringUtils.randomNumeric(3) + "." + EndString;
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Input);

		String InputValue = driver.findElement(By.xpath(formatXPATH)).getAttribute("value").trim();

		logger.info("Entered " + "'" + InputValue + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputValue + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Enter {int} digits data in {string} field under {string} in Colombia format")
	public void enter_digits_data_in_field_under_in_Colombia_format(Integer int1, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Input = RandomStringUtils.randomNumeric(3) + "." + RandomStringUtils.randomNumeric(3) + "."
				+ RandomStringUtils.randomNumeric(3) + "-3";

		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Input);

		logger.info("Entered " + "'" + Input + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + Input + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Access the {string} email from the Mailinator")
	public void access_the_email_from_the_Mailinator(String country) throws Throwable {
		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");
		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		Thread.sleep(2000);

		String goBtn = ec.getObjects("mailinator_gobtn");
		String goBtnformatXPATH = String.format(goBtn);

		WaitClass.clickableWait(goBtnformatXPATH);

		driver.findElement(By.xpath(goBtn)).click(); // click Go

		logger.info("Could access the email" + "\n");
		System.out.println("Could access the email" + "\n");

	}

	@Then("Click on Login Now button on Supplier connect email")
	public void click_on_Login_Now_button_on_Supplier_connect_email() throws Throwable {

		// if
		// (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed())
		// {
		// driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// System.out.println("Got It button not found");
		// }
		// Thread.sleep(2000);

		// driver.switchTo().frame("msg_body");
		Thread.sleep(3000);
		// driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link"))).click();

		String original = ec.getObjects("mailinator_joinNow_link");
		String JoinNowLink = String.format(original);
		driver.switchTo().frame(0);
		WaitClass.clickableWait(JoinNowLink);
		do {
			driver.findElement(By.xpath(JoinNowLink)).click();
			Thread.sleep(2000);
		} while (driver.getWindowHandles().size() == 1);
		driver.switchTo().parentFrame();
		Thread.sleep(2000);

		String mailinatorHandle = driver.getWindowHandle();

		tabs.add(0, mailinatorHandle);

		logger.info("Clicked on Login Link" + "\n");
		System.out.println("Clicked on Login Link" + "\n");

	}

	@Then("Click on Bookmark button on Supplier connect email")
	public void click_on_Bookmark_button_on_Supplier_connect_email() throws Throwable {
		Thread.sleep(3000);
		driver.switchTo().frame("html_msg_body");

		String original = ec.getObjects("bookmark_tys");
		String bookmarkLink = String.format(original);

		// driver.switchTo().frame(0);
		WaitClass.clickableWait(bookmarkLink);
		do {
			driver.findElement(By.xpath(bookmarkLink)).click();
			Thread.sleep(2000);
		} while (driver.getWindowHandles().size() == 1);
		driver.switchTo().parentFrame();
		Thread.sleep(2000);

		String mailinatorHandle = driver.getWindowHandle();

		tabs.add(0, mailinatorHandle);

		logger.info("Clicked on Bookmark Link" + "\n");
		System.out.println("Clicked on Bookmark Link" + "\n");
	}

	@Then("Login with the {string} supplier created")
	public void login_with_the_supplier_created_and_published_profile(String country) {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		// driver.findElement(By.xpath(original)).sendKeys(Email);

		// String Email = Country + ec.getObjects("localisation_Supplierusr");
		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys(Email);

		if (driver.findElement(By.xpath(original)).getAttribute("value").toLowerCase() != Email.toLowerCase()) {
			WebElement toClear = driver.findElement(By.xpath(original));
			toClear.sendKeys(Keys.CONTROL + "a");
			toClear.sendKeys(Keys.DELETE);
			driver.findElement(By.xpath(original)).sendKeys(Email);
		}

		logger.info("Entered data" + " " + Email + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + " " + "Email Address field" + "\n");
	}

	@Then("Enter data in {string} field under {string} in South Africa format")
	public void enter_data_in_field_under_in_South_Africa_format(String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Input = RandomStringUtils.randomNumeric(4) + "/" + RandomStringUtils.randomNumeric(6) + "/"
				+ RandomStringUtils.randomNumeric(2);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Input);

		logger.info("Entered " + "'" + Input + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + Input + "'" + " in " + Label + " field" + "\n");
	}

	// Then Enter "NL" followed by "" and 9 numbers and end with "B12" in "VAT
	// Registration number" field under "Tax Details"
	@Then("Enter {string} followed by {string} and {int} numbers and end with {string} in {string} field under {string}")
	public void enter_followed_by_and_numbers_and_end_with_in_field_under(String StartString, String Seperator,
			Integer digitCount, String endString, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		String input = StartString + Seperator + RandomStringUtils.randomNumeric(digitCount) + endString;
		;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}

	// Then Enter "GB" followed by "-" and 5 alphanumeric characters and end with
	// "abc" in "VAT Registration Number" field under "Tax Details"
	@Then("Enter {string} followed by {string} and {int} alphanumeric characters and end with {string} in {string} field under {string}")
	public void enter_followed_by_and_alphanumeric_characters_and_end_with_in_field_under(String StartString,
			String Seperator, Integer digitCount, String endString, String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		String input = StartString + Seperator + RandomStringUtils.randomAlphanumeric(digitCount) + endString;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}

	@Then("Show the page title {string}")
	public void show_the_page_title(String string) {
		String original = ec.getObjects("pagetitle") + string + ec.getObjects("selectgroupend");
		;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title " + string + " showing on the page" + "\n");
		System.out.println("Title " + string + " showing on the page" + "\n");
	}

	// //input[@name='passwordResetDays']
	@Then("Verify the value {string} at {string} input field")
	public void verify_the_value_at_input_field(String string, String name) {
		String original = ec.getObjects("inputfield1") + name + ec.getObjects("inputfield_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("Value").contains(string));

		logger.info("Showing tax country as" + " " + string + " " + "on basic profile" + "\n");
		System.out.println("Showing tax country as" + " " + string + " " + "on basic profile" + "\n");
	}

	@Then("Login with same {string} Supplier in Email Address field")
	public void login_with_same_Supplier_in_Email_Address_field(String country) {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		for (int i = 0; i < 4; i++)
			try {
				driver.findElement(By.xpath(original)).sendKeys(Email);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Verify Corporate Phone number flag dropdown enabled")
	public void verify_corporate_phone_number_flag_dropdown_enabled() throws Throwable {

		String original = ec.getObjects("corporate_phonenumber");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Corporate Phone number flag dropdown is clickable" + "\n");

		System.out.println("Corporate Phone number flag dropdown is clickable" + "\n");
	}

	@Then("Show Corporate Phone Number input text field")
	public void show_corporate_phone_number_input_text_field() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("corporate_phonenumber");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Corporate Phone Number field in supplier registration" + "\n");
		System.out.println("Showing Corporate Phone Number field in supplier registration" + "\n");
	}

	@Then("select {string} in Banking Account Type")
	public void select_something_in_banking_account_type(String strArg1) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("denmark_bankaccount_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on denmark bankaccount dropdown" + "\n");
		System.out.println("Clicked on denmark bankaccount dropdown" + "\n");

		String original1 = ec.getObjects("select_option1") + strArg1 + ec.getObjects("select_option2");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected" + strArg1 + "\n");
		System.out.println("Selected" + strArg1 + "\n");

		Thread.sleep(3000);
	}

	@Then("Verify {string} supplier status {string}")
	public void verify_the_status(String Country, String Status) {
		// *[text()='MBsupplier1614893603697']//parent::td//following-sibling::td/span[contains(text(),'Pending
		// Invites')]
		String original = ec.getObjects("label_var") + Country + mis.getTimeStamp() + ec.getObjects("verfiystatus")
				+ Status + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Status  " + " " + Status + " " + " showing on Company name in buyer view" + "\n");
		System.out.println("status  " + " " + Status + " " + " showing on company name in buyer view" + "\n");

	}
		@Then("Click {string} tab")
		public void click_tab(String tab) throws Exception {
			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
			String original = ec.getObjects("sideBar_tabs_var1") + tab + ec.getObjects("inputfield_end");
			String formatXPATH = String.format(original);
			try {
				WaitClass.clickableWait(formatXPATH);
				driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
				driver.findElement(By.xpath(formatXPATH)).click();
			} catch (StaleElementReferenceException e) {
				WaitClass.staleElementClickWait(formatXPATH);
				driver.findElement(By.xpath(formatXPATH)).click();
			}
   /*WaitClass.clickableWait(formatXPATH);
   driver.findElement(By.xpath(formatXPATH)).click();*/
			//driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			logger.info("Clicked on " + tab + " tab" + "\n");
			//System.out.println("Clicked on " + tab + " tab" + "\n");
		}

	@Then("Verify Approval Request header consists  as Supplier Name")
	public void verify_Approval_Request_header_consists_as_Supplier_Name() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_SupplierName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Approval Source")
	public void verify_Approval_Request_header_consists_as_Approval_Source() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_ApprovalSource");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Role Assigned")
	public void verify_Approval_Request_header_consists_as_Role_Assigned() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_RoleAssigned");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Approval Status")
	public void verify_Approval_Request_header_consists_as_Approval_Status() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_ApprovalStatus");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Last Updated")
	public void verify_Approval_Request_header_consists_as_Last_Updated() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_LastUpdated");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Updated By")
	public void verify_Approval_Request_header_consists_as_Updated_By() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_UpdatedBy");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Verify Approval Request header consists as Pending Since")
	public void verify_Approval_Request_header_consists_as_Pending_Since() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("manageapprovals_PendingSince");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}

	@Then("Click On dots button")
	public void click_on_dots_button() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("dotsbutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on  dotsbutton");
		System.out.println("Clicked on dotsbutton");
	}

	@Then("Click On Edit Option")
	public void click_on_edit_option() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("dotsbutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		String original1 = ec.getObjects("editOption");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		Thread.sleep(2000);
		logger.info("Clicked on  edit option");
		System.out.println("Clicked on edit option");

	}

//	@Then("Click On {string} Option {string}")
//	public void click_on_edit_option(String option, String AccountHolder) throws Throwable {
//		String original = ec.getObjects("label_var") + AccountHolder + ec.getObjects("bankCard_ellipsis_var2");
//		String formatXPATH = String.format(original);

//		WaitClass.clickableWait(formatXPATH);

//		driver.findElement(By.xpath(formatXPATH)).click();

//		String original1 = ec.getObjects("label_var") + AccountHolder + ec.getObjects("bankCard_ellipsis_var2") + ec.getObjects("bankCard_ellipsis_option_var3") + option + "']";
//		String formatXPATH1 = String.format(original1);
//
//		WaitClass.clickableWait(formatXPATH1);
//
//		driver.findElement(By.xpath(formatXPATH1)).click();
//
//		logger.info("Clicked on  edit option");
//		System.out.println("Clicked on edit option");
//
//	}

	@Then("Click on {string} secondary button on the modal")
	public void click_on_secondary_button_on_the_modal(String button) {

		String original = ec.getObjects("secondarybutton") + button + ec.getObjects("secondarybutton1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on TYS Terms & Conditions checkbox" + "\n");
		System.out.println("Clicked on TYS Terms & Conditions checkbox" + "\n");
	}

	// Then Click on "Confirm Return to Supplier" primary button on the modal
	@Then("Click on {string} primary button on the modal")
	public void click_on_primary_button_on_the_modal(String button) {

		String original = ec.getObjects("primarybutton") + button + ec.getObjects("secondarybutton1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on primary button on the modal" + "\n");
		System.out.println("Clicked on primary button on the modal" + "\n");
	}

	// Then Click on "Resend" primary button on the new modal
	@Then("Click on {string} primary button on the new modal")
	public void click_on_primary_button_on_the_new_modal(String button) {

		String original = ec.getObjects("reinvitesupplier") + button + ec.getObjects("secondarybutton1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on primary button on the new modal" + "\n");
		System.out.println("Clicked on primary button on the new modal" + "\n");
	}

	@Then("Enter same {string} Supplier Company name on Invite Supplier window")
	public void enter_same_Supplier_Company_name_on_Invite_Supplier_window(String string) {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String companyName = string + mis.getTimeStamp();

		driver.findElement(By.xpath(original)).sendKeys(companyName);

		logger.info("Entered same data " + "'" + companyName + "'" + " Company name field" + "\n");
		System.out.println("Entered same data " + "'" + companyName + "'" + " Company name field" + "\n");
	}

	@Then("Enter same {string} Supplier Contact email address on Invite Supplier modal")
	public void enter_same_Supplier_Contact_email_address_on_Invite_Supplier_modal(String string) {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = string + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered same data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered same data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter same {string} Supplier Confirm Contact email address on Invite Supplier modal")
	public void enter_same_Supplier_Confirm_Contact_email_address_on_Invite_Supplier_modal(String string) {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = string + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered same data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered same data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("Click on {string} button in the {string} supplier Email")
	public void click_on_Join_Now_button_in_the_supplier_email(String button, String country) throws Throwable {
		// if
		// (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed())
		// {
		// driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// System.out.println("\n" + "Got It button not found" + "\n");
		// }
		Thread.sleep(2000);
		driver.switchTo().frame("html_msg_body");
		Thread.sleep(3000);
		WebElement targetElement = driver.findElement(
				By.xpath(ec.getObjects("multibuyer_joinNow_btn") + button + ec.getObjects("select_option2")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);

		String original = ec.getObjects("multibuyer_joinNow_btn") + button + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		// js.executeScript(
		// "return document.querySelector('table.email-container table:nth-child(1)
		// tbody:nth-child(1) tr:nth-child(1) td:nth-child(1) >
		// a:nth-child(1)').click()");

		// WebElement icon =
		// driver.findElement(By.xpath(ec.getObjects("multibuyer_joinNow_btn")+ button +
		// ec.getObjects("select_option2")));
		// ArrayList<WebElement> btn = new ArrayList<WebElement>(
		// driver.findElements(By.xpath(ec.getObjects("multibuyer_joinNow_btn")+ button
		// + ec.getObjects("select_option2"))));
		// if (btn.size() > 0) {
		// action.click(driver.findElement(By.xpath(ec.getObjects("multibuyer_joinNow_btn")+
		// button + ec.getObjects("select_option2"))));
		// Actions ob = new Actions(driver);
		// ob.moveToElement(icon);
		// ob.click(icon).build().perform();
		// } else {
		// System.out.println("Join now button not found");
		// }
		Thread.sleep(2000);
		logger.info("Clicked on " + button + " button" + "\n");
		System.out.println("Clicked on " + button + " button" + "\n");
		driver.switchTo().parentFrame();
		mis.addHandle(0);
		// if (driver.getWindowHandles().size() == 1) {
		// action.click(driver.findElement(By.xpath(ec.getObjects("multibuyer_joinNow_btn")+
		// button + ec.getObjects("select_option2")))).build().perform();
		// System.out.println("\n" + "Did not click on Join Now button. Entered If
		// statement" + "\n");
		// driver.switchTo().parentFrame();
		// }
	}

	// In Buyer page
	@Then("Verify {string} status is {string}")
	public void verify_status_is(String Buyer, String Status) {
		String original = ec.getObjects("label_var") + Buyer + ec.getObjects("mysupplier_userstatus_var2") + Status
				+ "'][1]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Status  " + " " + Status + " " + " showing on Company name in buyer view" + "\n");
		System.out.println("status  " + " " + Status + " " + " showing on company name in buyer view" + "\n");

	}

	@Then("Show the Contact First and last name {string} is present {string}")
	public void show_the_Contact_First_and_last_name_is_present(String value, String bool) throws Throwable {
		System.out.println("Showed Contact First and last name on reading panel" + "\n");
		String original = ec.getObjects("contains_label_var") + value + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), bool);
		logger.info("Showed Contact First and last name on reading panel" + "\n");
		System.out.println("Showed Contact First and last name on reading panel" + "\n");
	}

	@Then("Show the Supplier Contact email address of {string} is present {string}")
	public void show_the_Supplier_Contact_email_address_of_is_present(String value, String bool) throws Throwable {

		String Email = value + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		String original = ec.getObjects("contains_label_var") + Email.toLowerCase() + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), bool);
		logger.info("Showed the Supplier Contact email address on reading panel" + "\n");
		System.out.println("Showed the Supplier Contact email address on reading panel" + "\n");
	}

	@Then("Enter notes on the return to supplier modal")
	public void enter_notes_on_the_return_to_supplier_modal() {
		String original = ec.getObjects("Notes_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys("Demo123");

		logger.info("Entered notes on the return to supplier modal" + "\n");
		System.out.println("Entered notes on the return to supplier modal" + "\n");
	}

	@Then("upload the file at the Attach a file button on the return to supplier modal")
	public void upload_the_file_at_the_Attach_a_file_button_on_the_return_to_supplier_modal() throws Throwable {
		String original = ec.getObjects("fileattach_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("fileattach_onboardingsupplier"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("fileattach_onboardingsupplier")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");

	}

	@Then("Enter a Reason for Return on the return to supplier modal")
	public void enter_a_Reason_for_Return_on_the_return_to_supplier_modal() {

		String original = ec.getObjects("ReasonforReturn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys("Reason for Return");

		logger.info("Entered a Reason for Return on the return to supplier modal" + "\n");
		System.out.println("Entered a Reason for Return on the return to supplier modal" + "\n");
	}

	@Then("Enter a Reason For Undo Return on the return to supplier modal")
	public void enter_a_Reason_For_Undo_Return_on_the_return_to_supplier_modal() throws InterruptedException {

		String original = ec.getObjects("reasonForUndoReturn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys("Reason for Return");

		logger.info("Enter a Reason For Undo Return on the return to supplier modal" + "\n");
		System.out.println("Enter a Reason For Undo Return on the return to supplier modal" + "\n");
	}

	@Then("Click on Confirm Undo Return to Supplier button")
	public void click_on_Confirm_Undo_Return_to_Supplier_button() throws InterruptedException {

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(2000);
		// String original = ec.getObjects("ConfirmUndoReturnToSupplierBtn");
		// String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);

		// driver.findElement(By.xpath(original)).click();
		logger.info("Click on Confirm Undo Return to Supplier button" + "\n");
		System.out.println("Click on Confirm Undo Return to Supplier button" + "\n");

	}

	@Then("Click on Close icon on the reading panel")
	public void Click_on_close_icon_on_the_reading_panel() {

		String original = ec.getObjects("cancelicon_readingpanel");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Close icon on the reading panel" + "\n");
		System.out.println("Clicked on Close icon on the reading panel" + "\n");
	}

	@Then("Click on the {string} record")
	public void click_on_the_record(String string) {

		String original = ec.getObjects("discover_searchresult") + string + "')]";
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on record" + "\n");
		System.out.println("Clicked on record" + "\n");
	}

	@Then("Click on the {string} supplier record displayed")
	public void click_on_the_supplier_record_displayed(String string) {
		String Suppliername = string + "supplier" + mis.getTimeStamp();
		// //strong[contains(text(),'USAsupplier1618260105447')]
		String original = ec.getObjects("BeginQuestionnaire_button") + Suppliername + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the supplier record displayed" + "\n");
		System.out.println("Clicked on the supplier record displayed" + "\n");
	}

	@Then("Click on the {string} supplier record displayed in supplier")
	public void click_on_the_supplier_record_displayed_in_supplier(String string) {
		String Suppliername = string + "supplier" + mis.getTimeStamp();
		// //span[contains(text(),'USAsupplier1618260105447')]
		String original = ec.getObjects("buyeragentsvg1") + Suppliername + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the supplier record displayed in supplier" + "\n");
		System.out.println("Clicked on the supplier record displayed in supplier" + "\n");
	}

	@Then("Click on the search button in Discover suppliers")
	public void click_on_the_search_button_in_Discover_suppliers() {
		String original = ec.getObjects("discover_searchbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("discover_searchbtn"))).click();
		logger.info("Clicked on the search button in Discover suppliers" + "\n");
		System.out.println("Clicked on the search button in Discover suppliers" + "\n");
	}

	@Then("Enter {string} Supplier Contact email address on Discover Connect with modal")
	public void enter_Supplier_Contact_email_address_on_Discover_Connect_with_modal(String country) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter {string} Supplier Confirm Contact email address on Discover Connect with modal")
	public void enter_Supplier_Confirm_Contact_email_address_on_Discover_Connect_with_modal(String country)
			throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	// Then Enter "10000000" in "Revenue Last Year" field for "2020"
	@Then("Enter {string} in {string} field for {string}")
	public void enter_in_field_for(String input, String AmountType, String Year) {
		String original = ec.getObjects("contains_label_var") + AmountType + ec.getObjects("financial_amounts_var2")
				+ Year + ec.getObjects("financial_amounts_var3");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		mis.clearText(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(input);

		logger.info("Entered data " + "'" + input + "'" + " in " + AmountType + " field for the year" + "\n");
		System.out.println("Entered data " + "'" + input + "'" + " in " + AmountType + " field for the year" + "\n");

	}

	@Then("Click {string} button on Basic Information")
	public void click_button_on_Basic_Information(String string) {
		String original = ec.getObjects("save_and_continue_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Save and Continue button" + "\n");
		System.out.println("Clicked on Save and Continue button" + "\n");
	}

	@Then("Click {string} button {int}")
	public void click_button(String buttontext, Integer index) throws InterruptedException {
		// entering new account number

		// String original = ec.getObjects("bankAccountNumber");
		// String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);

		String generatedString = RandomStringUtils.randomAlphanumeric(9);
		System.out.println(generatedString);
		String accountnumber = RandomStringUtils.randomAlphanumeric(9);
		// driver.findElement(By.xpath(ec.getObjects("bankAccountNumber"))).clear();
		// Thread.sleep(3000);
		// driver.findElement(By.xpath(ec.getObjects("bankAccountNumber"))).sendKeys(accountnumber);
		String original = ec.getObjects("any_button_contains_var1") + buttontext + "')][position()=" + index + "]";
		String formatXPATH = String.format(original);

		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("\n" + "Got " + e.getMessage());
			System.out.println("\n" + "Got " + e.getMessage());

			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));

			// driver.findElement(By.xpath(original)).click();

			action.click(driver.findElement(
					By.xpath(ec.getObjects("any_button_contains_var1") + buttontext + "')][position()=" + index + "]")))
					.build().perform();
		}

		logger.info("Clicked on " + "'" + buttontext + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + buttontext + "'" + " button" + "\n");
	}

	@Then("Click on the save in Address verification")
	public void click_on_the_save_in_Address_verification() {

		String original = ec.getObjects("saveAddressVerification");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("saveAddressVerification"))).click();
	}

	@Then("Click on Not now button")
	public void click_on_Not_now_button() throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("notNowBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("notNowBtn"))).click();
	}

	@Then("Show {string} from Actions options {string}")
	public void show_from_Actions_options(String value, String bool) throws Throwable {

		String original = ec.getObjects("actionbutton_onboardsupplier") + value + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), bool);
		logger.info("Showed Contact First and last name on reading panel" + "\n");
		System.out.println("Showed Contact First and last name on reading panel" + "\n");
	}

	@Then("Click on {string} on Alert")
	public void click_on_on_Alert(String string) {

		driver.switchTo().alert().accept();
		System.out.println("\n" + "Acccepted the alert" + "\n");
	}

	@Then("click on more options button")
	public void click_on_more_options_button() {

		String original = ec.getObjects("bank_moreoptions");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on more options" + "\n");
		System.out.println("Clicked on more options" + "\n");
	}

	@Then("Click On Edit Button")
	public void click_On_Edit_Button() {

		String original = ec.getObjects("bankedit_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on edit button" + "\n");
		System.out.println("Clicked on edit button" + "\n");
	}

	@Then("Verify Email received in {string} Buyer Inbox with subject {string}")

	public void verify_email_received_in_something_buyer_inbox_with_subject_something(String string1, String subject)
			throws Throwable {
		driver.get(ec.getObjects("mailurl"));

		Thread.sleep(2000);
		String original = ec.getObjects("mailinator_searchbox");
		if (driver.findElements(By.xpath(original)).size() == 0) {

			driver.navigate().refresh();

		}

		WaitClass.clickableWait(original);
		// String Email = country + "buyer" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(string1);
		logger.info("Entered buyer email address in mailinator search box" + "\n");

		System.out.println("Entered buyer email address in mailinator search box" + "\n");

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.clickableWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

	@Then("Enter same {string} email in Email Address field")
	public void enter_same_something_email_in_email_address_field(String country) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("email");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Thread.sleep(1000);

		// String Email = country + "supplier" + mis.getTimeStamp() + "@maildrop.cc";
		String email = country + "supplier".trim().replaceAll("\\s", "");
		// String email = country + "supplier" .trim().replaceAll("\\s", "");

		Email = email + "@maildrop.cc";

		driver.findElement(By.xpath(formatXPATH)).sendKeys(Email);

		Thread.sleep(2000);

		logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");

		System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");

	}

	@Then("Enter {string} Supplier Company name on Invite Supplier modal")

	public void enter_Supplier_Company_name_on_Invite_Supplier_modal(String country) throws Throwable {

		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		mis.addTimeStamp();

		String companyName = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		discovercompanyname.add(0, companyName);

		driver.findElement(By.xpath(original)).sendKeys(companyName);
		logger.info("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");

		System.out.println("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");

	}

	@Then("Search the supplier company name from discover")

	public void search_the_supplier_company_name_from_discover() throws Throwable {

		String original = ec.getObjects("discover_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(discovercompanyname.get(0));

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered data " + "'" + discovercompanyname.get(0) + "'" + " in discover search field" + "\n");

		System.out.println("Entered data " + "'" + discovercompanyname.get(0) + "'" + " discover search field" + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter supplier email address in login page")

	public void enter_supplier_email_address_in_login_page() throws Throwable {
		String original = ec.getObjects("email");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebElement toClear = driver.findElement(By.xpath(original));

		toClear.sendKeys(Keys.CONTROL + "a");

		toClear.sendKeys(Keys.DELETE);

		driver.findElement(By.xpath(original)).sendKeys(discovercompanyname.get(0));

		logger.info("Entered data" + "'" + discovercompanyname.get(0) + "'" + "Email Address field" + "\n");

		System.out.println("Entered data" + "'" + discovercompanyname.get(0) + "'" + "Email Address field" + "\n");
	}

	@Then("Search the supplier company name from my suppliers page")

	public void search_the_supplier_company_name_from_my_suppliers_page() throws Throwable {

		String original = ec.getObjects("discover_search");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(discovercompanyname.get(0));

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered data " + "'" + discovercompanyname.get(0) + "'" + " in search field" + "\n");

		System.out.println("Entered data " + "'" + discovercompanyname.get(0) + "'" + " in search field" + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter data of last year {string} in {string} field")
	public void enter_data_of_last_year_in_field(String name, String Label) throws Throwable {
		// //h6[text()='Revenue Last
		// Year']//following-sibling::div//div//input[contains(@name,'revenue')]
		String original = ec.getObjects("lastyear") + Label + ec.getObjects("lastyear1") + name
				+ ec.getObjects("select_option2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("1");

		// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered data of " + "'" + Label + "'" + " in field" + "\n");

		System.out.println("Entered data of " + "'" + Label + "'" + " in field" + "\n");

	}

	@Then("Enter Date of Expiry")
	public void enter_Date_of_Expiry() {

		String original = ec.getObjects("docmanager_expirydate");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("10/10/2030");
		logger.info("Entered date of expity in Add document model" + "\n");
		System.out.println("Entered date of expity in Add document model" + "\n");
	}

	@Then("Clear {string} field")
	public void clear_field(String Label) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		System.out.println("\n" + "Cleared " + Label + "field" + "\n");

	}

	@Then("Clear {string} field under {string}")
	public void clear_field_under(String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		System.out.println("\n" + "Cleared " + Label + " field" + "\n");
	}

	@Then("Verify {string} downloaded File")
	public void verify_downloaded_File(String string) throws Throwable {
		System.out.println("Folder name: " + folder.getName() + "\n");
		Thread.sleep(5000);

		System.out.println("File Name: " + folder.list()[0] + "\n");

		File listofFilePath[] = Base.folder.listFiles();
		System.out.println("File Path: " + listofFilePath[0] + "\n");

		String FileName = string + "supplier" + mis.getTimeStamp() + "-Questionnaires.xlsx";
		System.out.println("\n" + FileName + "\n");
		assertTrue(folder.list()[0].equals(FileName));

		logger.info("File is downloaded: " + folder.list()[0] + "\n");
		System.out.println("File is downloaded: " + folder.list()[0] + "\n");

	}

	@Then("Click {string} button if found {int}")
	public void click_button_if_found(String buttontext, Integer index) {

		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);

		String original = ec.getObjects("any_button_contains_var1") + buttontext + "')][position()=" + index + "]";
		String formatXPATH = String.format(original);

		driver.switchTo().activeElement();
		if (driver.findElements(By.xpath(formatXPATH)).size() > 0) {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on " + "'" + buttontext + "'" + " button" + "\n");
			System.out.println("Clicked on " + "'" + buttontext + "'" + " button" + "\n");
		} else {
			System.out.println("'" + buttontext + "'" + " button is not found");
		}

	}

	@Then("Click on the {string} button")
	public void click_on_the_button(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_button") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	}

	@Then("Click on {string} button on panel")
	public void click_on_button_on_panel(String strArg1) throws Throwable {

		String original = ec.getObjects("any_button_var1") + strArg1 + "')]";
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}
		}

		logger.info("Clicked on button on panel" + "\n");
		System.out.println("Clicked on button on panel" + "\n");
	}

	@Then("Click on {string} Tab on panel")
	public void click_on_tab_on_panel(String strArg1) throws Throwable {

		String original = ec.getObjects("label_var") + strArg1 + "']";
		String formatXPATH = String.format(original);

		String original1 = ec.getObjects("ALLtab_Approverequest");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);
		do {
			driver.findElement(By.xpath(original)).click();

			Thread.sleep(5000);
		} while (driver.findElements(By.xpath(formatXPATH1)).size() == 0);

		WaitClass.clickableWait(formatXPATH1);

		logger.info("\n" + "Clicked on " + strArg1 + " tab on panel" + "\n");
		System.out.println("\n" + "Clicked on " + strArg1 + " tab on panel" + "\n");
	}

	@Then("Click on {string} Tab on reading panel")
	public void click_on_tab_on_reading_panel(String strArg1) throws Throwable {

		String original = ec.getObjects("label_var") + strArg1 + "']";
		String formatXPATH = String.format(original);

		// String original1 = ec.getObjects("ALLtab_Approverequest");
		// String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);
		do {
			driver.findElement(By.xpath(original)).click();

			Thread.sleep(5000);
		} while (driver.findElements(By.xpath(formatXPATH)).size() == 0);

		WaitClass.clickableWait(formatXPATH);

		logger.info("\n" + "Clicked on " + strArg1 + " tab on reading panel" + "\n");
		System.out.println("\n" + "Clicked on " + strArg1 + " tab on reading panel" + "\n");
	}

	@Then("Refresh the page")
	public void refresh_the_page() throws Throwable {

		Thread.sleep(3000);

		driver.navigate().refresh();

		logger.info("Refreshed the page" + "\n");
		System.out.println("Refreshed the page" + "\n");
	}

	@Then("Enter {string} in Date Established field")
	public void enter_in_Date_Established_field(String Date) throws Throwable {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("basicinfo_dateestablished");
		String formatXPATH = String.format(original);

		int day, month, year;
		// dateEstablished dateEstablished = new dateEstablished();
		GregorianCalendar cdate = new GregorianCalendar();

		day = cdate.get(Calendar.DAY_OF_MONTH);
		month = cdate.get(Calendar.MONTH);
		year = cdate.get(Calendar.YEAR);
		String today = month + "/" + day + "/" + year;
		Thread.sleep(2000);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath("basicinfo_dateestablished")).sendKeys(today);

		System.out.println(today);

		logger.info("Entered " + Date + " in Date of Establishment" + "\n");
		System.out.println("Entered " + Date + " in Date of Establishment" + "\n");

	}

	@Then("Select the date in Date Established field")
	public void select_the_date_in_Date_Established_field() throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(2000);

		// String original = ec.getObjects("basicinfo_dateEstablished");
		// String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		// driver.findElement(By.xpath("//*[@id=\"dateEstablished-single-date-picker\"]/div/div")).click();
		// Thread.sleep(3000);
		// driver.findElement(By.xpath("prevMonth")).click();

		Thread.sleep(3000);
		// driver.findElement(By.xpath("datePicker")).click();

		logger.info("Entered  in Date of Establishment" + "\n");
		System.out.println("Entered in Date of Establishment" + "\n");

	}

	@Then("Verify data entered in {string} field for {int} is {string}")
	public void verify_data_entered_in_field_for_is(String Type, Integer year, String Value) {

		String original = ec.getObjects("contains_label_var") + Type + ec.getObjects("financial_amounts_var2") + year
				+ ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(Value));

		logger.info(
				"Verified data enetered in " + "'" + Type + "'" + " for " + year + " field is " + "'" + Value + "\n");
		System.out.println(
				"Verified data enetered in " + "'" + Type + "'" + " for " + year + " field is " + Value + "\n");

	}

	@Then("Press Tab key on keyboard {int}")
	public void press_Tab_key_on_keyboard(Integer repeatCount) {

		for (int i = 1; i <= repeatCount; i++) {
			action.sendKeys(Keys.TAB).build().perform();
		}

		System.out.println("\n" + "Clicked on Tab Key" + "\n");

	}

	@Then("Press Enter key on keyboard {int}")
	public void press_Enter_key_on_keyboard(Integer repeatCount) {

		for (int i = 1; i <= repeatCount; i++) {
			action.sendKeys(Keys.ENTER).build().perform();
		}

		System.out.println("\n" + "Clicked on Enter Key" + "\n");
	}

	@Then("Deselect all QGs from the Questinnaire Group")
	public void deselect_all_QGs_from_the_Questinnaire_Group() {

		String original = ec.getObjects("inviteSupplier_QG_multiple");
		String formatXPATH = String.format(original);

		String closeQGbutton = "(" + ec.getObjects("inviteSupplier_QG_multiple") + ")[1]";
		String formatXPATH1 = String.format(closeQGbutton);

		if (driver.findElements(By.xpath(formatXPATH)).size() > 1) {
			System.out.println("\n" + "@@@@@@: QG close button is visible" + "\n");
			driver.findElement(By.xpath(formatXPATH1)).click();

			System.out.println("\n" + "Deselected all QGs in invite supplier model" + "\n");
		} else {
			System.out.println("\n" + "Default QG is missing in invite supplier model" + "\n");
		}
	}

	@Then("Select Yes for the assigning different questionnaires")
	public void Select_Yes_for_the_assigning_different_questionnaires() {

		String original = ec.getObjects("yesatinvitesupplier");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Selected Yes for the assigning different questionnaires" + "\n");
		logger.info("\n" + "Selected Yes for the assigning different questionnaires" + "\n");
	}

	@Then("Click on {string} at the {string} questionaire")
	public void Click_on_at_then_questionaire(String button, String questionnaire) throws Throwable {
		String original = ec.getObjects("open_label1") + questionnaire + ec.getObjects("common6") + button
				+ ec.getObjects("GLEIF_Name2");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on button at the questionnaire invite supplier" + "\n");
		logger.info("\n" + "Clicked on button at the questionnaire invite supplier" + "\n");
	}

	@Then("click on {string} for question {string} in question {string}")
	public void Click_on_radioBtn_questionaire(String button, String questionnaire, String question) throws Throwable {
		String original = ec.getObjects("quest1") + question + ec.getObjects("quest2") + button
				+ ec.getObjects("quest3");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}
		}
		System.out.println("\n" + "Clicked on " + button + "button at question " + questionnaire + "\n");
		logger.info("\n" + "Clicked on " + button + " button at question " + questionnaire + "\n");
	}

	@Then("Click on button Publish for questionare")
	public void Click_on_publish_quest() throws Throwable {
		String original = ec.getObjects("publish_quest");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on publish button at question " + "\n");
		logger.info("\n" + "Clicked on publish button at question " + "\n");
	}

	@Then("Click on next button on invite supplier questionaire page")
	public void Click_on_next_button_on_invite_supplier_questionaire_page() throws Throwable {
		String original = ec.getObjects("invitesuppliernextbtnquestionniare");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on next button on invite supplier questionaire page" + "\n");
		logger.info("\n" + "Clicked on next button on invite supplier questionaire page" + "\n");
	}

//////////////////////////////////////////////////////////////////////////
	/*
	 * Below step defs are only temp fixes to work in UAT:
	 * 
	 * @Then("Click on the Supplier record in the supplier page NEW")
	 * 
	 * @Then("Click on {string} Tab on panel UAT")
	 */
	/*
	 * @Then("Click on the {string} Supplier record in the supplier page NEW")
	 * public void click_on_the_Supplier_record_in_the_supplier_page_NEW(String
	 * Country) throws Throwable {
	 * 
	 * String companyName = Country + "supplier" + mis.getTimeStamp(); String
	 * original = ec.getObjects("label_var") + companyName + "']"; String
	 * formatXPATH = String.format(original);
	 * 
	 * WaitClass.clickableWait(formatXPATH); do {
	 * driver.findElement(By.xpath(original)).click();
	 * }while(driver.findElements(By.xpath(ec.getObjects("mysupplierusersdropdown"))
	 * ).size() > 0); Thread.sleep(2000);
	 * logger.info("Clicked on the Supplier Company name in the supplier page" +
	 * "\n"); System.out.
	 * println("Clicked on the Supplier Company name in the supplier page" + "\n");
	 * }
	 * 
	 * @Then("Click on {string} Tab on panel NEW") public void
	 * click_on_Tab_on_panel_NEW(String string) { String original =
	 * ec.getObjects("label_var") + string + "']"; String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.clickableWait(formatXPATH);
	 * 
	 * driver.findElement(By.xpath(original)).click();
	 * 
	 * logger.info("Clicked on tab on panel" + "\n");
	 * System.out.println("Clicked on tab on panel" + "\n");
	 * 
	 * }
	 */
	@Then("Show {string} link")
	public void show_link(String linkText) {
		String original = ec.getObjects("link_var1") + linkText + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + linkText + "'" + " Link in supplier registration" + "\n");
		System.out.println("Showing " + "'" + linkText + "'" + " Link in supplier registration");

	}

	@Then("Show {string} link enabled")
	public void show_link_enabled(String linkText) {

		String original = ec.getObjects("link_var1") + linkText + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + linkText + "'" + " Link is enabled in supplier registration" + "\n");
		System.out.println("Verified " + "'" + linkText + "'" + " Link is enabled in supplier registration" + "\n");
	}

	@Then("^verify the status as \"([^\"]*)\" buyer$")
	public void verify_the_status_as_something_buyer(String string) throws Throwable {
		String original = ec.getObjects("buyerstatus1") + string + "')]";
		// String original = ec.getObjects("mysupplier_userstatus_readyforreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");
		logger.info("Status  " + " " + string + " " + " showing on Company name in buyer view" + "\n");
		System.out.println("status  " + " " + string + " " + " showing on company name in buyer view" + "\n");
	}

	@Then("Enter {string} Supplier name and click Enter at discover supplier search")
	public void enter_Supplier_name_and_click_Enter_at_discover_supplier_search(String country) throws Throwable {

		String original = ec.getObjects("discoversuppliersearch");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Suppliername = country + "supplier" + mis.getTimeStamp();

		// String Suppliername = timeStamp.get(0) + " ";

		System.out.println("Suppliername " + Suppliername + "\n");

		driver.findElement(By.xpath(original)).sendKeys(Suppliername);

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);
		logger.info("Entered Supplier " + Suppliername + " and click Enter at discover supplier search" + "\n");
		System.out.println("Entered Supplier " + Suppliername + " and click Enter at discover supplier search" + "\n");
	}

	@Then("Click on {string} record")
	public void click_on_record(String string) throws Throwable {
		String original = ec.getObjects("buyeragentsvg1") + string + ec.getObjects("document_source2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + " record" + "\n");
		System.out.println("Clicked on" + string + " record" + "\n");
		Thread.sleep(2000);
	}

	@Then("Verify search results message {string}")
	public void verify_search_results_message(String string) throws Exception {
		String original = ec.getObjects("searchcodes_exists");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing  " + " " + string + " " + " on UNSPSC page" + "\n");
		System.out.println("Showing  " + " " + string + " " + " on UNSPSC page" + "\n");
		Thread.sleep(2000);
	}

	@Then("Wait for {int} seconds until {string} is {string}")
	public void wait_for_seconds_until_is(Integer time, String label, String expectedCondition) {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		WebDriverWait wait = new WebDriverWait(driver, time);
		if (expectedCondition.equalsIgnoreCase("Visible")) {
			System.out.println("\n" + "@@@@@ Waiting for the visibility of " + label);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//p[text()='" + label + "']")));
		} else if (expectedCondition.equalsIgnoreCase("Clickable")) {
			System.out.println("\n" + "@@@@@ Waiting for the clickablity of " + label);
			wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//p[text()='" + label + "']")));
		}
	}

	@Then("Enter {string} Supplier Company name on Invite GLEIF Supplier window")
	public void enter_Supplier_Company_name_on_Invite_GLEIF_Supplier_window(String companyName) throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(companyName);
		logger.info("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" Supplier Contact email address on Invite GLEIF Supplier modal$")
	public void enter_something_supplier_contact_email_address_on_invite_GLEIF_supplier_modal(String country)
			throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.addTimeStamp();
		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" Supplier Confirm Contact email address on Invite GLEIF Supplier modal$")
	public void enter_something_supplier_confirm_contact_email_address_on_invite_GLEIF_supplier_modal(String string)
			throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		String Email = string + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered same data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered same data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("^Click on select button$")
	public void click_on_select_button() throws Throwable {
		String original = ec.getObjects("GLEIF_select");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on select" + "\n");
		System.out.println("Clicked on select" + "\n");

	}

	@Then("^Enter  \"([^\"]*)\" field in the \"([^\"]*)\"$")
	public void enter_something_field_in_the_something(String Label, String string) throws Throwable {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);

		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		logger.info("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
	}

	@Then("Show Social {string} Icon")
	public void show_Social_Icon(String string) {

		String original = ec.getObjects("common1") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Icon " + "'" + string + "'" + " in supplier registration" + "\n");
		System.out.println("Showing Icon " + "'" + string + "'" + " in supplier registration" + "\n");
	}

	@Then("Click Social {string} Icon")
	public void Click_Social_Icon(String string) {

		String original = ec.getObjects("common1") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Icon " + "'" + string + "'" + " in supplier registration" + "\n");
		System.out.println("Clicked Icon " + "'" + string + "'" + " in supplier registration" + "\n");
	}

	@Then("Click on close button on modal")
	public void Click_on_close_button_on_modal() {

		String original = ec.getObjects("closeicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Icon " + "'" + "Close" + "'" + " in modal" + "\n");
		System.out.println("Clicked Icon in modal" + "\n");
	}

	@Then("Click on save button on modal")
	public void Click_on_save_button_on_modal() {

		String original = ec.getObjects("saveicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Icon in modal" + "\n");
		System.out.println("Clicked Icon in modal" + "\n");
	}

	@Then("Show {string} Title")
	public void show_Title(String string) {
		String original = ec.getObjects("common2") + string + ec.getObjects("label_var2");
		;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title " + string + " showing on the page" + "\n");
		System.out.println("Title " + string + " showing on the page" + "\n");
	}

	@Then("Select {string} checkbox for question {int}")
	public void select_checkbox_for_question(String option, Integer questionNumber) throws Throwable {
		String original = ec.getObjects("label_var") + questionNumber + ec.getObjects("search_select_checkbox_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		System.out.println("\n" + "Clicked on input search box for question" + questionNumber + "\n");

		driver.findElement(By.xpath(formatXPATH)).sendKeys(option);

		System.out.println("\n" + "Typed option " + option + "\n");

		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);
		action.sendKeys(Keys.ENTER);

		Thread.sleep(5000);

		System.out.println("\n" + "Selected " + option + " for question " + questionNumber + "\n");
	}

	// This step is used to enter data of specific length
	// Then Enter "Alpha Numeric" data between 4 to 18 in "Account Number" field
	// under "Bank Account Information"
	@Then("Enter {string} data between {int} to {int} in {string} field under {string}")
	public void enter_data_between_to_in_field_under(String dataType, Integer minRange, Integer maxRange, String Label,
			String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		String InputString = null;
		String string = null;
		int Length = mis.getRandomInRange(minRange, maxRange);

		if (dataType.equalsIgnoreCase("numeric")) {
			string = "0123456789";
		} else if (dataType.equalsIgnoreCase("alpha numeric")) {
			string = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		}
		InputString = RandomStringUtils.random(Length, string);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}

	@Then("Show {string} contact on the contact component")
	public void show_contact_on_the_contact_component(String string) {
		String original = ec.getObjects("BeginQuestionnaire_button") + string + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showed contact on the contact component" + "\n");
		System.out.println("Showed contact on the contact component" + "\n");
	}

	@Then("Click {string} icon on the contact component")
	public void click_icon_on_the_contact_component(String string) {
		String original = ec.getObjects("Nexticcon_contact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked icon on the contact component" + "\n");
		System.out.println("Clicked icon on the contact component" + "\n");

	}

	@Then("Click on {string} page on the contact component")
	public void click_on_page_on_the_contact_component(String string) {
		String original = ec.getObjects("datapage_contact") + string + ec.getObjects("secondarybutton1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked  page on the contact component" + "\n");
		System.out.println("Clicked  page on the contact component" + "\n");
	}

	@Then("Select {string} from the Sort by drop down")
	public void select_from_the_Sort_by_drop_down(String string) {
		String original = ec.getObjects("contactdpdpwn_readingpanel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("dropdwonvalue_contact") + string + ec.getObjects("select_option2");
		;
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selected the " + string + "  from the Sort by drop down" + "\n");
		System.out.println("Selected the" + string + "  from the Sort by drop down" + "\n");
	}

	@Then("Login again with new {string} supplier if session timed out")
	public void login_again_with_new_supplier_if_session_timed_out(String country) throws Throwable {

		String currentURL = driver.getCurrentUrl();

		if (currentURL.contains("login")) {
			System.out.println("\n" + "#### Current URL: " + currentURL + "\n");

			LoginPage LP = new LoginPage();

			login_with_same_Supplier_in_Email_Address_field(country);

			LP.click_on_Continue_button_on_Login_page();

			LP.enter_data_in_Password_field();

			LP.click_on_sign_in_button_on_login();

		}
	}

	@Then("Implicitly wait for {long} seconds")
	public void implicitly_wait_for_seconds(Long seconds) {

		driver.manage().timeouts().implicitlyWait(seconds, TimeUnit.SECONDS);

	}

	@Then("Enter {string} in {string} field after {string} supplier registration")
	public void enter_in_field_after_supplier_registration(String inputData, String Lable, String country)
			throws Throwable {

		String original = ec.getObjects("contains_label_var") + Lable + ec.getObjects("inputText_var3");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
			mis.clearText(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			//System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "Element not found " + "\n");
			driver.navigate().refresh();
			driver.manage().timeouts().implicitlyWait(50, TimeUnit.SECONDS);
			driver.findElement(By.xpath(formatXPATH)).sendKeys(inputData);

			logger.info("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
			//System.out.println("Entered " + "'" + inputData + "'" + " in " + Lable + " field" + "\n");
		}

	}

	@Then("Show {string} Label after {string} supplier registration")
	public void show_Label_after_supplier_registration(String Lable, String country) throws Throwable {

		String original = ec.getObjects("label_var") + Lable + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		} catch (NoSuchElementException e) {
			System.out.println("\n" + "#### Current URL: " + driver.getCurrentUrl() + "\n");

			LoginPage LP = new LoginPage();

			login_with_same_Supplier_in_Email_Address_field(country);

			LP.click_on_Continue_button_on_Login_page();

			LP.enter_data_in_Password_field();

			LP.click_on_sign_in_button_on_login();

			WaitClass.webDriverWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		}

		logger.info("Showing label " + "'" + Lable + "'" + " in supplier registration" + "\n");
		System.out.println("Showing label " + "'" + Lable + "'" + " in supplier registration" + "\n");

	}

	@Then("Close popup")
	public void close_popup() throws Throwable {
		String original = ec.getObjects("close_popup");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);
		logger.info("Clicked on close button" + "\n");
		System.out.println("Clicked on close button" + "\n");
	}

	@Then("Click yes radio button in QG Group")
	public void click_yes_radio_button_in_qg_group() throws Throwable {
		String original = ec.getObjects("QG_Yesradiobutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);
		logger.info("Clicked on close button" + "\n");
		System.out.println("Clicked on close button" + "\n");
	}

	@Then("Click No radio button for {string}")
	public void click_no_radio_button_for_something(String strArg1) throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("noPublic_radiobutton1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");
	}

	@Then("Click No radio button for CorpRelations")
	public void click_no_radio_button_for_CorpRelations() {

		String original = ec.getObjects("corp_relations_no");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");
	}

	@Then("Click Yes radio button for CorpRelations")
	public void click_yes_radio_button_for_CorpRelations() {

		String original = ec.getObjects("corp_relations_yes");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");
	}

	@Then("Enter existing Supplier Contact email address on Invite Supplier modal {string}")
	public void enter_existing_Supplier_Contact_email_address_on_Invite_Supplier_modal(String Email) {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter existing Supplier Confirm Contact email address on Invite Supplier modal {string}")
	public void enter_existing_Supplier_Confirm_Contact_email_address_on_Invite_Supplier_modal(String Email) {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("Verify Email received in supplier {string} Inbox with subject {string}")
	public void verify_Email_received_in_supplier_Inbox_with_subject(String Email, String subject) {
		do {
			driver.get(ec.getObjects("mailurl"));
		} while (driver.getCurrentUrl().contains("slyncer"));

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			System.out.println("\n" + "Entered For loop" + "\n");
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				System.out.println("\n" + "Entered If Block" + "\n");
				isDisplayed = true;
				break;
			} else {
				System.out.println("\n" + "Entered Else Block" + "\n");
				driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
				System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
			}
		}

		assertTrue(isDisplayed);

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

	@Then("Verify green tick icon on {string} tab {string}")
	public void verify_green_tick_icon_on_tab(String tab, String status) {
		/*
		 * driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS); String
		 * original1 = ec.getObjects("sideBar_tabs_var1") + tab +
		 * ec.getObjects("inputfield_end"); String formatXPATH1 =
		 * String.format(original1);
		 * 
		 * WaitClass.clickableWait(formatXPATH1);
		 */

		String original = ec.getObjects("sideBar_tabs_var1") + tab + ec.getObjects("profile_greenTick_icon_var2");
		String formatXPATH = String.format(original);

		String original1 = ec.getObjects("sideBar_tabs_var1") + tab + ec.getObjects("profile_greenTick_icon_var2")
				+ "[@style='fill: green;']";
		String formatXPATH1 = String.format(original1);

		Boolean stat = driver.findElement(By.xpath(formatXPATH)).getAttribute("style").equalsIgnoreCase("fill: green;");
		String visibility = stat.toString();

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOf(driver.findElement(By.xpath(formatXPATH1))));

		assertEquals(visibility, status);

		logger.info("Showing green tick icon on " + "'" + tab + "'" + " tab" + "\n");
		System.out.println("Showing green tick icon on " + "'" + tab + "'" + " tab" + "\n");

	}

	@Then("Verify {int} Email received in supplier {string} Inbox with subject {string}")
	public void verify_Email_received_in_supplier_Inbox_with_subject(Integer emailCount, String prefix,
			String subject) {

		driver.get(ec.getObjects("mailurl"));

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		String Email = prefix + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			System.out.println("\n" + "Entered For loop" + "\n");
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() >= emailCount) {
				System.out.println("\n" + "Entered If Block" + "\n");
				isDisplayed = true;
				break;
			} else {
				System.out.println("\n" + "Entered Else Block" + "\n");
				driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
				System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
			}
		}

		assertTrue(isDisplayed);

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Click on email number {int} with subject {string}")
	public void click_on_email_number_with_subject(Integer index, String subject) {

		String Index = "[" + index + "]";
		String original = ec.getObjects("CH_variable_subjectLine") + subject + "')]" + Index;
		String firstEmailformatXPATH = String.format(original);

		WaitClass.webDriverWait(firstEmailformatXPATH);
		WaitClass.clickableWait(firstEmailformatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		logger.info("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
	}

	@Then("Verify the status of {string} Supplier Company name as {string}")
	public void verify_the_status_of_Supplier_Company_name_as(String prefix, String status) {

		String companyName = prefix + mis.getTimeStamp();
		String original = ec.getObjects("contains_label_var") + companyName + ec.getObjects("connectedSup_status_var2")
				+ "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");

		logger.info("Verified status of company " + companyName + " is : " + status + "\n");
		System.out.println("Verified status of company " + companyName + " is : " + status + "\n");

	}

	@Then("Select My Account under Profile")
	public void select_My_Account_under_Profile() {
		String ProfileBtn = ec.getObjects("profile_btn");
		String formatXPATH = String.format(ProfileBtn);

		String signoutBtn = ec.getObjects("signout");
		String formatXPATH1 = String.format(signoutBtn);

		WaitClass.clickableWait(formatXPATH);

		do {
			driver.findElement(By.xpath(ec.getObjects("profile_btn"))).click();
		} while (!driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		logger.info("\n" + "Clicked on Profile button" + "\n");
		System.out.println("\n" + "Clicked on Profile button" + "\n");
	}

	@Then("Click on Join Now Link in the CR invitation Email")
	public void click_on_Join_Now_Link_in_the_CR_invitation_Email() throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("mailinator_joinNow_link");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		do {
			driver.switchTo().frame(0);
			WaitClass.clickableWait(JoinNowLink);
			driver.findElement(By.xpath(JoinNowLink)).click();
			Thread.sleep(3000);

			logger.info("Clicked on Join Now button" + "\n");
			System.out.println("Clicked on Join Now button" + "\n");

			// Using the below if-else because some times driver is switching to new tab
			// automatically
			if (driver.getCurrentUrl().contains("slyncer")) {
				driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
				mis.addHandle(0);
				System.out.println("\n" + "%%%%%%%%%% Driver access is on TYS Registration tab by default" + "\n");

			} else {
				System.out.println("\n" + "%%%%%%%%%% Driver access is on Mailinator tab by default" + "\n");
				driver.switchTo().parentFrame();
				driver.switchTo().defaultContent();
				mis.addHandle(0);
				driver.switchTo().activeElement();

				System.out.println("@@@@@@@@@@@ When Join Now is clicked: " + driver.getCurrentUrl());

				CorpRelationships obj = new CorpRelationships();
				obj.switch_to_something_tab("TYS Registration");

				System.out.println("############When switched to TYS Registration tab: " + driver.getCurrentUrl());
				Thread.sleep(6000);
				System.out.println("$$$$$$$$ TYS Tab after wait time : " + driver.getCurrentUrl());
			}
			// below block in while loop is to handle session timeout and other device
			// logged in (after clicking on Join now link)
			while (driver.getCurrentUrl().contains(".slyncer.com/login")) {
				driver.close();

				System.out.println("\n" + "Closed TYS tab" + "\n");

				Thread.sleep(2000);
				driver.switchTo().window(mis.getHandle(0));

				System.out.println("\n" + "Switched to default tab" + "\n");

			}
			Thread.sleep(3000);
		} while (driver.getWindowHandles().size() == 1);

		Thread.sleep(2000);
		logger.info("\n" + "TYS Registration Page is opened" + "\n");
		System.out.println("\n" + "TYS Registration Page is opened" + "\n");

		Base.handlesList.add(1, driver.getWindowHandle());

	}

	@When("Enter same {string} suplier email in Email Address field")
	public void enter_same_suplier_email_in_Email_Address_field(String prefix) {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = prefix + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in email address field" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in email address field" + "\n");
	}

	@Then("^verify \"([^\"]*)\" Supplier status as \"([^\"]*)\" in connected suppliers page$")
	public void verify_something_supplier_status_as_something_in_connected_suppliers_page(String Country, String status)
			throws Throwable {

		String original = ec.getObjects("connected_supplier_rfr_status1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing status as " + "'" + status + "'" + "in connected suppliers page" + "\n");
		System.out.println("Showing  status as " + "'" + status + "'" + "in connected suppliers page" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" Supplier Email in discover searchbox$")
	public void enter_something_supplier_email_in_discover_searchbox(String country) throws Throwable {
		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.addTimeStamp();

		String Suppliername = country + mis.getTimeStamp().substring(0, 8);

		// String Suppliername = timeStamp.get(0) + " ";

		System.out.println("Suppliername " + Suppliername + "\n");

		Thread.sleep(8000);
		driver.findElement(By.xpath(original)).sendKeys(Suppliername);

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
		logger.info("Entered Supplier name and click Enter at discover supplier search" + "\n");
		System.out.println("Entered Supplier name and click Enter at discover supplier search" + "\n");

	}

	@Then("^Show \"([^\"]*)\" Supplier in Discover page$")
	public void show_something_supplier_in_discover_page(String country) throws Throwable {

		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.addTimeStamp();

		String Suppliername = country + mis.getTimeStamp();

		String original1 = ec.getObjects("discoversupplier1") + Suppliername + ec.getObjects("discoversupplier2");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		assertTrue(driver.findElement(By.xpath(formatXPATH1)).getText().trim().contains(Suppliername));

		logger.info("Showing Supplier" + "'" + Suppliername + "'" + " under Discover Supplier" + "\n");
		System.out.println("Showing Supplier " + "'" + Suppliername + "'" + " under Discover Supplier" + "\n");
	}

	@Then("^Click on the \"([^\"]*)\" Supplier Email in discover searchbox$")
	public void click_on_the_something_supplier_email_in_discover_searchbox(String strArg1) throws Throwable {
		String original = ec.getObjects("discover_result");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Discover result" + "\n");
		System.out.println("Clicked on Discover result" + "\n");
	}

	@Then("Click on the Manage and Assign Questionnaires")
	public void click_on_the_Manage_and_Assign_Questionnaires() throws InterruptedException {

		Thread.sleep(3000);
		String original = ec.getObjects("ManageAssignQuestionnaires");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the Manage/Assign Questionnaires" + "\n");
		System.out.println("Click on the Manage/Assign Questionnaires" + "\n");
	}

	@Then("Click on the {string} Add button")
	public void click_on_the_Add_button(String string) throws InterruptedException {
		String original = ec.getObjects("ImportExportComplianceIBM_Add");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Click on the Import Export Compliance - IBM Add button" + "\n");
		System.out.println("Click on the Import Export Compliance - IBM Add button" + "\n");
	}

	@Then("Click on the Update button")
	public void click_on_the_Update_button() throws InterruptedException {
		String original = ec.getObjects("updateBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Click on the Update button" + "\n");
		System.out.println("Click on the Update button" + "\n");
	}

	@Then("Click on Clear All")
	public void click_on_Clear_All() {
		String original = ec.getObjects("discover_clearfilter");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Clear all filters" + "\n");
		System.out.println("Clicked on Clear all filters" + "\n");
	}

	@Then("Click on Select All on the modal")
	public void click_on_Select_All_on_the_modal() {
		String original = ec.getObjects("select_All");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Select All on the modal");
		System.out.println("Clicked on Select All on the modal");

	}

	@Then("Close menu")
	public void close_menu() {
		String original = ec.getObjects("svg_close_menu");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Closed menu");
		System.out.println("Closed menu");
	}

	public boolean isDisplayed(String xpath) {
		try {
			System.out.println(xpath + " finding element");
			return driver.findElement(By.xpath(xpath)).isDisplayed();
		} catch (NoSuchElementException e) {
			System.out.println(xpath + "No such element");
			return false;
		}
	}

	@Then("Click on first record1 of the Search")
	public void click_on_first_record1_of_the_Search() {
		String original = ec.getObjects("inviteqa1_supplier");
		String formatXPATHdropdo = String.format(original);

		WaitClass.webDriverWait(formatXPATHdropdo);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on inviteqa supplier");
		System.out.println("Clicked on inviteaa supplier");

	}

	@Then("Scroll Down the page record of the Search")
	public void scroll_down_the_page_record_of_the_Search() throws Throwable {

		String original = ec.getObjects("inviteqa_supplier");
		String formatXPATHdropdo = String.format(original);

		WaitClass.webDriverWait(formatXPATHdropdo);

		// driver.findElement(By.xpath(original)).click();

		WebElement targetElement = driver.findElement(By.xpath(formatXPATHdropdo));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		targetElement.click();
		logger.info("Scrolled to view " + "bank account details" + "\n");
		System.out.println("Scrolled to view " + "bank account details" + "\n");
	}

	@Then("Scroll Down the opened popup and close")
	public void scroll_down_the_page_opened_popup_and_close() throws Throwable {

		String original = ec.getObjects("maskacc_num");
		String formatXPATH = String.format(original);
		// div[@class='col-6']//p//p//span[contains(text(),'X51U3NEALEX')]//*[name()='svg']

		WaitClass.webDriverWait(formatXPATH);

		WebElement targetElement = driver.findElement(By.xpath(formatXPATH));
		// Thread.sleep(5000);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		targetElement.click();

		// driver.findElement(By.xpath(formatXPATH)).click();
		System.out.println("Scrolled to view " + "masked symbol " + "\n");
		Thread.sleep(5000);

		/// to get the text from the account number////

		String originall = ec.getObjects("accountno_text");
		String formatXPATHd = String.format(originall);
		WaitClass.webDriverWait(formatXPATHd);
		WebElement linkee = driver.findElement(By.xpath(formatXPATH));
		System.out.println(linkee.getText());
		String aelement = linkee.getText();
		// System.out.println(e.getAttribute("")));
		// String aelement = e.getText();
		System.out.println("Print the account number from modl" + aelement);

		/// Close the account details modal ////

		Thread.sleep(5000);
		String originalclose = ec.getObjects("closedpopcutton");
		String formatXPATHclos = String.format(originalclose);
		WaitClass.webDriverWait(formatXPATHclos);
		driver.findElement(By.xpath(originalclose)).click();
		logger.info("Closed modal bank popup");
		System.out.println("Closed modal bank popup");

	}

	@Then("Enter same Supplier Contact email address on Invite Supplier modal for new buyer")
	public void enter_Supplier_Contact_email_address_on_Invite_Supplier_modal_for_new_buyer() throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String Emailid = country + "supplier" + mis.getTimeStamp() +
		// "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Emailidsup);

		logger.info("Entered data " + "'" + Emailidsup + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Emailidsup + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter same Supplier Confirm Contact email address on Invite Supplier modal for new buyer")
	public void enter_same_Supplier_Confirm_Contact_email_address_on_Invite_Supplier_modal_for_new_buyer()
			throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Emailidsup);

		logger.info("Entered data " + "'" + Emailidsup + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered data " + "'" + Emailidsup + "'" + " in Confirm email address" + "\n");
	}

	@Then("Enter existing Supplier Email in Email Address field")
	public void enter_existing_supplier_email_in_email_address_field_something() throws Throwable {

		Thread.sleep(6000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = Emailidsup;
		do {

			driver.findElement(By.xpath(original)).click();
			driver.findElement(By.xpath(original)).sendKeys(Email);
		} while (driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(""));

//			if (driver.findElement(By.xpath(original)).getAttribute("value").toLowerCase() != Email.toLowerCase()) {
//			WebElement toClear = driver.findElement(By.xpath(original));
//			toClear.sendKeys(Keys.CONTROL + "a");
//			toClear.sendKeys(Keys.DELETE);
//			driver.findElement(By.xpath(original)).sendKeys(Email);
//		}

		logger.info("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");

	}

	@Then("Click on Join Now Link in the {string} supplier Email Multibuyer")
	public void click_on_Join_Now_Link_in_the_supplier_email_Multibuyer(String country) throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("mailinator_joinNow_link");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now

		// driver.switchTo().frame(0);
		driver.switchTo().frame("html_msg_body");
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();
		Thread.sleep(3000);

		logger.info("Clicked on Join Now button" + "\n");
		System.out.println("Clicked on Join Now button" + "\n");

		// Using the below if-else because some times driver is switching to new tab
		// automatically
		if (driver.getCurrentUrl().contains("slyncer")) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			mis.addHandle(0);
			System.out.println("\n" + "%%%%%%%%%% Driver access is on TYS Registration tab by default" + "\n");

		} else {
			System.out.println("\n" + "%%%%%%%%%% Driver access is on Mailinator tab by default" + "\n");
			driver.switchTo().parentFrame();
			driver.switchTo().defaultContent();
			mis.addHandle(0);
			driver.switchTo().activeElement();

			System.out.println("@@@@@@@@@@@ When Join Now is clicked: " + driver.getCurrentUrl());

			CorpRelationships obj = new CorpRelationships();
			obj.switch_to_something_tab("TYS Registration");

			System.out.println("############When switched to TYS Registration tab: " + driver.getCurrentUrl());
			wait_for_seconds(6);
			System.out.println("$$$$$$$$ TYS Tab after wait time : " + driver.getCurrentUrl());
		}

	}

	@Then("Enter custom fields for onboard")
	public void Enter_Custom_Fields_for_Onboard() throws Throwable {

		Thread.sleep(6000);

		String original = ec.getObjects("CustomSuppliercategory");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByIndex(1);

		String original1 = ec.getObjects("Customcomodityfamily");
		String formatXPATH1 = String.format(original1);
		WaitClass.clickableWait(formatXPATH1);
		driver.findElement(By.xpath(formatXPATH1)).click();
		String original11 = ec.getObjects("Customcomodityfamily_val");
		String formatXPATH11 = String.format(original11);
		WaitClass.clickableWait(formatXPATH11);
		driver.findElement(By.xpath(formatXPATH11)).click();

		String original2 = ec.getObjects("CustomIBMRegion");
		String formatXPATH2 = String.format(original2);
		WaitClass.clickableWait(formatXPATH2);
		driver.findElement(By.xpath(formatXPATH2)).click();
		String original22 = ec.getObjects("CustomIBMRegion_val");
		String formatXPATH22 = String.format(original22);
		WaitClass.clickableWait(formatXPATH22);
		driver.findElement(By.xpath(formatXPATH22)).click();

		String original3 = ec.getObjects("CustomIBMMarket");
		String formatXPATH3 = String.format(original3);
		WaitClass.clickableWait(formatXPATH3);
		driver.findElement(By.xpath(formatXPATH3)).click();
		String original33 = ec.getObjects("CustomIBMMarket_val");
		String formatXPATH33 = String.format(original33);
		WaitClass.clickableWait(formatXPATH33);
		driver.findElement(By.xpath(formatXPATH33)).click();

		String original4 = ec.getObjects("CustomIBMCountry");
		String formatXPATH4 = String.format(original4);
		WaitClass.clickableWait(formatXPATH4);
		driver.findElement(By.xpath(formatXPATH4)).click();

		String original44 = ec.getObjects("CustomIBMCountry_val");
		String formatXPATH44 = String.format(original44);
		WaitClass.clickableWait(formatXPATH44);
		driver.findElement(By.xpath(formatXPATH44)).click();

		String original5 = ec.getObjects("CustomPIFNo");
		String formatXPATH5 = String.format(original5);

		WaitClass.webDriverWait(formatXPATH5);

		driver.findElement(By.xpath(formatXPATH5)).click();

		String original6 = ec.getObjects("Customsavechanges");
		String formatXPATH6 = String.format(original6);

		WaitClass.webDriverWait(formatXPATH6);

		driver.findElement(By.xpath(formatXPATH6)).click();

		logger.info("Select mandatory custom data" + "\n");
		System.out.println("Select mandatory custom data" + "\n");

	}

	@Then("Show {string} label in {string}")
	public void show_label_in(String Label, String SubCat) {

		String original = ec.getObjects("firstlabel") + Label + ec.getObjects("secondlabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Show {string} button is displayed for {string} tab")
	public void show_custom_btn(String btn, String SubCat) {

		String original = ec.getObjects("custom_fld_btn1") + btn + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing button " + "'" + btn + "'" + " under " + SubCat + "\n");
		System.out.println("Showing button " + "'" + btn + "'" + " under " + SubCat + "\n");

	}

	@Then("Show input field {string} dropdown under {string}")
	public void show_inputfield(String Label, String SubCat) {

		String original = ec.getObjects("input_field") + Label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Show {string} label in at {string}")
	public void show_label_in_at(String Label, String SubCat) {

		String original = ec.getObjects("contains_label_var") + Label + ec.getObjects("topbasicsavetwo");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	// UK localization
	@Then("Click on the radio button {string} for {string} in VAT registration")
	public void clcikOnRadiobutton_vat(String text, String number) throws Throwable {

		String original = ec.getObjects("first_rario") + number + ec.getObjects("second_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + text + "'" + " in VAT registration " + "\n");
		System.out.println("Clicked " + "'" + text + "'" + " in VAT registration" + "\n");
	}

	@Then("Enter reason {string} under {string} text box for VAT")
	public void enterTextreason(String text, String label) throws Throwable {

		String original = ec.getObjects("p_input1") + label + ec.getObjects("p_VAT_Reason");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered text " + text + "in description text field" + "\n");
		System.out.println("Entered text" + text + "in description text field" + "\n");
	}

	@Then("Enter random EU VAT number {string} in {string} field under {string}")
	public void enter_RandomVAT(String GB, String Label, String page) throws Throwable {
		int min = 1;
		int max = 10;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}
		str = GB + str;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");

	}

	@Then("Enter random company registration number in {string} field under {string}")
	public void enter_RandomRegiNumber(String Label, String page) throws Throwable {
		int min = 1;
		int max = 10;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");

	}

	@Then("Enter random Tax Identification Number in {string} field under {string}")
	public void Enter_random_Tax_Identification_Number_in(String Label, String page) throws Throwable {
		int min = 1;
		int max = 14;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");

	}

	@Then("Enter random Commercial registration number in {string} field under {string}")
	public void Enter_random_Commercial_registration_number_in(String Label, String page) throws Throwable {
		int min = 1;
		int max = 13;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");

	}

	@Then("Enter random VAT number {string} in {string} field under {string}")
	public void Enter_random_VAT_number(String DE, String Label, String page) throws Throwable {
		int min = 1;
		int max = 10;
		int InputString = 5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for (int i = min; i <= max; i++) {
			InputString = random.nextInt(max - min) + min;
			str = str + Integer.toString(InputString);
		}
		str = DE + str;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " + "in" + page + "\n");

	}

	@Then("Click on Not a suitable match")
	public void clickSuitablematch() throws Throwable {

		String original = ec.getObjects("not_suitable_match");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(formatXPATH)).click();
		} catch (StaleElementReferenceException e) {
			wait.until(
					ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(formatXPATH)).click();
		}
		logger.info("Clicked on Not Suitable Match" + "\n");
		System.out.println("Clicked on Not Suitable Match" + "\n");
	}

	@Then("Show {string} label under {string} field")
	public void show_label_under_field(String Label, String SubCat) {

		String original = ec.getObjects("p_input1") + Label + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Show label {string} under {string}")
	public void show_label(String Label, String SubCat) {

		String original = ec.getObjects("diversity_text") + Label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Show text field {string} under {string}")
	public void show_text_field(String Label, String SubCat) {

		String original = ec.getObjects("diversity_text") + Label + ec.getObjects("bankInput");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}

	@Then("Enter {string} in {string} field under {string} for Bank Details")
	public void enter_text_in_field(String text, String Label, String SubCat) {

		String original = ec.getObjects("diversity_text") + Label + ec.getObjects("bankInput");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered " + "'" + text + "'" + " under " + Label + "\n");
		System.out.println("Entered " + "'" + text + "'" + " under " + Label + "\n");

	}

	@Then("Enter {string} in Bank Desciption")
	public void enter_text_in_bankDescription(String text) {

		String original = ec.getObjects("Bank_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered " + "'" + text + " under Bank Desciption " + "\n");
		System.out.println("Entered " + text + " underBank Desciption" + "\n");

	}

	@Then("Select {string} in {string} dropdown in bank account")
	public void select_bank_dropdown(String text, String Lable) {

		String original = ec.getObjects("Bank_name_dropdown");
		String formatXPATH = String.format(original);
		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(text);

		logger.info("Selected " + "'" + text + " under " + Lable + "\n");
		System.out.println("Selected " + text + " under " + Lable + "\n");

	}

	@Then("Click {string} button for {string} add bank card")
	public void delete_bankCard(String text, String Lable) {

		String original = ec.getObjects("input_field") + text + "']//parent::button";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked " + "'" + text + " under " + Lable + "\n");
		System.out.println("Clicked " + text + " under " + Lable + "\n");

	}

	@Then("Click on Join Now Link in the {string} supplier Email from maildrop")
	public void click_on_Join_Now_Link_in_the_supplier_email_maildrop(String country) throws Throwable {

		String original = ec.getObjects("RegisterTYS_btn");
		String JoinNowLink = String.format(original);
		String original2 = ec.getObjects("joinnow");
		String JoinNowLink2 = String.format(original2);
		wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
		//driver.switchTo().frame(0);
			if (driver.findElement(By.xpath(JoinNowLink)).getText().contains("Register")) {
				System.out.println("on if" + "\n");
				// Using do-while loop in case driver fails to click on Join Now
				//wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
				// driver.switchTo().frame(0);
				// driver.switchTo().frame("html_msg_body");
				driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
				driver.findElement(By.xpath(JoinNowLink)).click();
			} else if (driver.findElement(By.xpath(JoinNowLink)).getText().contains("JOIN")) {
				// Using do-while loop in case driver fails to click on Join Now
				System.out.println("on else if" + "\n");
				//wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
				// driver.switchTo().frame(0);
				// driver.switchTo().frame("html_msg_body");
				driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
				driver.findElement(By.xpath(JoinNowLink)).click();
			}

		logger.info("Clicked on Join Now button" + "\n");
		System.out.println("Clicked on Join Now button" + "\n");
	}

	@Then("Verify {string} from the email and copy the verification code from maildrop")
	public void verify_from_the_email_and_copy_the_verification_code_maildrop(String string) throws Throwable {

		Thread.sleep(4000);
		// driver.switchTo().frame("html_msg_body");
		// Thread.sleep(3000);
		wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
		WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("registration_verificationCode")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		String VC = String.valueOf(js.executeScript("return document.querySelector('h3').innerText"));

		String Code = VC.substring(string.length());

		driver.switchTo().parentFrame();
		driver.switchTo().defaultContent();
		VerificationCode.add(0, Code);
		// driver.findElement(By.tagName("body")).sendKeys(Keys.CONTROL+"w");
		logger.info("Retrieved Verification Code: " + "'" + VerificationCode.get(0) + "'" + "\n");
		System.out.println("Retrieved Verification Code: " + "'" + VerificationCode.get(0) + "'" + "\n");
	}

	@Then("Verify {string} input field enabled for {string}")
	public void input_text_field_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("input_field") + inputfield + ec.getObjects("register_input_field2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
		System.out.println("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
	}


	@Then("Verify verification code is enable")
	public void verification_code_enable() throws Throwable {

		String original = ec.getObjects("CH_invite_VCode_inputbox");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified  Verification Code field enabled " + "\n");
		System.out.println("Verified  Verification Code field enabled " + "\n");

	}

	@Then("Verify the page title description {string} under registration")
	public void remainder_description(String description) {

		String original = ec.getObjects("tnc_checkbox_var1") + description + ec.getObjects("btn2");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(description));

		logger.info("Showing " + description + "\n");
		System.out.println("Showing " + description + "\n");

	}

	@Then("Verify {string} input field enabled for at {string}")
	public void input_text_field_enabled_for(String inputfield, String SubCat) {

		String original = ec.getObjects("label_registration") + inputfield + ec.getObjects("register_input_field2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
		System.out.println("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
	}

	@Then("Verify {string} input field enabled at for {string}")
	public void input_text_field_enabled_at_for(String inputfield, String SubCat) {

		String original = ec.getObjects("label_registration") + inputfield + ec.getObjects("label_input_email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
		System.out.println("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
	}

	@Then("Show {string} field Tooltip as {string}")
	public void show_tooltip_as(String Label, String TTexpected) throws InterruptedException {

		String original = ec.getObjects("diversity_text") + Label + "']//div";
		String formatXPATH = String.format(original);
		String tooltip = ec.getObjects("link_var1") + TTexpected + "']";
		String formatTooltip = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		// assertTrue(TTactual.equalsIgnoreCase(TTexpected));

		assertTrue(TTexpected.contains(driver.findElement(By.xpath(formatTooltip)).getText().trim()));
		Thread.sleep(2000);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + " in " + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + " in " + "\n");

	}

	@Then("Select Yes in {string}")
	public void select_Yes_in(String Label) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("intermediaryBankAccount");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("intermediaryBankAccount_value");
		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + Label + "'" + "Diversity Category" + "\n");
		System.out.println("Clicked on " + "'" + Label + "'" + "Diversity Category" + "\n");
	}

	// multi buyer
	@Then("Click on Link {string} supplier Email from maildrop")
	public void click_on_Connect_Now_Link_in_the_supplier_email_maildrop(String country) throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("Connect_Now_btn");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		Thread.sleep(5000);
		driver.switchTo().frame(0);
		// driver.switchTo().frame("html_msg_body");
		Thread.sleep(5000);
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();


		logger.info("Clicked on Connect Now button" + "\n");
		System.out.println("Clicked on Connect Now button" + "\n");
	}

	@When("Click on {string} buyer button")
	public void clicok_On_Buyer(String Buyer) {
		String original = ec.getObjects("label_var") + Buyer + ec.getObjects("buyer_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on button " + Buyer + "\n");
		System.out.println("Clicked on button" + Buyer + "\n");

	}

	@Then("Click accept buyer terms checkbox")
	public void click_accept_buyer_checkbox() {

		String original = ec.getObjects("accept_buyer_terms");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked accept buyer checkbox" + "\n");
		System.out.println("Clicked accept buyer checkbox" + "\n");
	}

	@Then("Enter the Notes under the accepth buyer Notes Box")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("accept_buyer_notes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Accept");

		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}

	@Then("Click on Accept button for buyer")
	public void click_on_accept_button_buyer() {
		String original = ec.getObjects("accept_buyer_btn");
		String formatXPATH = String.format(original);
		driver.manage().window().maximize();
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("accept_buyer_btn"))).click();

		System.out.println("Clicked on accept button" + "\n");
		logger.info("Clicked on accept button" + "\n");
	}

	@Then("Click on Close icon for buyer")
	public void click_on_close_icon_buyer() {
		String original = ec.getObjects("close_buyer_btn");
		String formatXPATH = String.format(original);
		driver.manage().window().maximize();
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		System.out.println("Clicked on close icon" + "\n");
		logger.info("Clicked on close icon" + "\n");
	}

	@Then("Click on link {string} from maildrop")
	public void click_on_Connect_Now_Link_discover(String country) throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("Connect_Now_btn_from_discover");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now

		driver.switchTo().frame(0);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();
		Thread.sleep(3000);

		logger.info("Clicked on Connect Now button" + "\n");
		System.out.println("Clicked on Connect Now button" + "\n");
	}

	@Then("Click on link REGISTER AND CONNECT NOW from maildrop")
	public void click_on_Register_and_Connect_Now_Link_discover() throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("register_and_connect_now");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now

		driver.switchTo().frame(0);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();
		Thread.sleep(3000);

		logger.info("Clicked on REGISTER AND CONNECT NOW button" + "\n");
		System.out.println("Clicked on REGISTER AND CONNECT NOW button" + "\n");
	}

	@When("Enter VAT Registration Number for Albania under Tax Details")
	public void enter_VAT_Registration_Number_for_Albania_under_Tax_Details() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("albania_vat_reg_num");
		String JoinNowLink = String.format(original);

		Random random = new Random();

		driver.findElement(By.xpath(JoinNowLink)).sendKeys("AKL" + random.nextInt(100000000) + "L");

		logger.info("Entered VAT Registration number on Basic Information page" + "\n");
		System.out.println("Entered VAT Registration number on Basic Information page" + "\n");
	}

	@When("Enter Tax Identification Number for Brazil under Tax Details")
	public void enter_Tax_Identification_Number_for_Brazil_under_Tax_Details() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("brazil_tax_identification_num");
		String JoinNowLink = String.format(original);

		Random random = new Random();

		int taxNum = random.nextInt(1000000000);

		int taxNum1 = random.nextInt(100000);

		driver.findElement(By.xpath(JoinNowLink)).sendKeys(String.valueOf(taxNum) + taxNum1);

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@When("Enter Tax Registration Number for Albania under Tax Details")
	public void enter_Tax_Registration_Number_for_Albania_under_Tax_Details() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("Switzerland_Tax_reg_num");
		String JoinNowLink = String.format(original);

		Random random = new Random();

		driver.findElement(By.xpath(JoinNowLink))
				.sendKeys("CHE" + random.nextInt(1000) + "." + random.nextInt(1000) + "." + random.nextInt(1000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@Then("Verify {string} flag in Primary Phone field")
	public void verify_flag_in_Primary_Phone_field(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_albania_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify Brazil flag in Primary Phone field")
	public void verify_Brazil_flag_in_Primary_Phone_field() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_brazil_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Primary Phone")
	public void verify_flag_in_Primary_Phone(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Secondary Phone field")
	public void verify_flag_in_Secondary_Phone_field(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_albania_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify Brazil flag in Secondary Phone field")
	public void verify_Brazil_flag_in_Secondary_Phone_field() {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_brazil_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Brazil flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag in Secondary Phone")
	public void verify_flag_in_Secondary_Phone(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

//diversity
	@Then("Select {string} as {string} from diversity dropdown")
	public void select_role(String label, String subcat) {

		String original = ec.getObjects("diversity_text") + subcat + ec.getObjects("diversity_dropdown3");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(label);
		String original2 = ec.getObjects("input_field") + label + ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + label + " as " + subcat + "\n");
		System.out.println("Selected " + label + " as " + subcat + "\n");
	}

	@Then("Verify diversity category selected is {string}")
	public void verify_diversity_category(String diversity_cat) {
		String original = ec.getObjects("diversity_text") + diversity_cat + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(diversity_cat));

		logger.info("Diversity category selected is  " + " " + diversity_cat + " " + " showing " + "\n");
		System.out.println("Diversity category selected is  " + " " + diversity_cat + " " + " showing " + "\n");

	}

	@Then("Enter {string} in EU VAT Registration Number field")
	public void Enter_in_EU_VAT_Registration_Number_field(String EUVAT) {
		String original = ec.getObjects("primaryPhone");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(EUVAT);
	}
	// supplier state transition

	@Then("Scroll to {string} element for next page")
	public void scrollto_sysytemUpdated(String Label) {
		String original = ec.getObjects("select_perpage");
		String formatXPATH = String.format(original);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		logger.info("Scrolled to element " + Label + " field" + "\n");
		System.out.println("Scrolled to element " + Label + " field" + "\n");

	}

	// weekly-sanity
	@Then("Enter value for Zip code {string}")
	public void enterzipcode(String zipcode) {
		String original = ec.getObjects("usa_zipcode");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(zipcode);
		logger.info("Entered zipcode " + zipcode + "\n");
		System.out.println("Entered zipcodet " + zipcode + "\n");

	}
	@Then("Enter {string} in {string} field in add contact")
	public void enter_in_addfield(String InputString, String Label) throws Throwable {

		// driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("remainder_dropdown1") + Label + ec.getObjects("inputTextField_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.manage().window().maximize();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,-500)");

		// driver.findElement(By.xpath(formatXPATH)).click();
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(null));

		logger.info("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + InputString + "'" + " in " + Label + " field" + "\n");

	}
}