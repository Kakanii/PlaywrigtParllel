package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
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
import utility.WaitClass;
import java.sql.Timestamp;
import java.util.List;
import java.util.Random;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;
import org.testng.asserts.Assertion;



public class bankaccount extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	Actions action = new Actions(driver);
	Logger logger = Logger.getLogger(bankaccount.class);
	public String bankkey;
	public String bankcode;

	@Then("Click on Bank Account Nav link")
	public void click_on_Bank_Account_Nav_link() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("banknavlink");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Bank Account tab on Dashboard" + "\n");
		System.out.println("Click on Bank Account on Dashboard " + "\n");
		Thread.sleep(3000);
	}

	@Then("Show title on Bank Account page {string}")
	public void show_title_on_Bank_Account_page(String string) throws Throwable {
		String original = ec.getObjects("bankaccountinfotitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("bankaccountinfotitle"))).isDisplayed(), string);
		logger.info("Title  " + " " + string + " " + " showing on Bank Account page" + "\n");
		System.out.println("Title  " + " " + string + " " + " showing on Bank Account page" + "\n");
	}

	@Then("Show Add a company account button on Bank account page {string}")
	public void show_Add_a_company_account_button_on_Bank_account_page(String string) throws Throwable {
		String original = ec.getObjects("addacompanyaccountbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add Company Account button:- " + " " + string + " " + "\n");
		System.out.println("Add Company Account button:- " + " " + string + " " + "\n");
	}

	@Then("Click on the Add a company account button")
	public void click_on_the_Add_a_company_account_button() throws Throwable {
		String original = ec.getObjects("addacompanyaccountbtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Add a company account button" + "\n");
		System.out.println("Click on Add a company account button" + "\n");
	}

	@Then("Show title on Bank Account {string}")
	public void show_title_on_Bank_Account(String string) throws Throwable {
		String original = ec.getObjects("Bankaccount_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title  " + " " + string + " " + " showing on bank Account" + "\n");
		System.out.println("Title  " + " " + string + " " + " showing on Bank Account" + "\n");
	}

	@Then("Select Country as {string}")
	public void select_Country_as(String string) throws Throwable {
		String original = ec.getObjects("countryselect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("countryselect"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Click on Save button on Add Company Account Modal")
	public void click_on_Save_button_on_Add_Company_Account_Modal() throws Throwable {
		String original = ec.getObjects("savebtncompanyaccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button on Add Company Account Modal" + "\n");
		System.out.println("Clicked on Save button on Add Company Account Modal" + "\n");
		Thread.sleep(6000);
	}

	@Then("Show error message for Bank Account Label {string}")
	public void show_error_message_for_Bank_Account_Label(String string) throws Throwable {
		String original = ec.getObjects("embankaccountlabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Bank Account Label " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at Bank Account Label  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Account Holder Name {string}")
	public void show_error_message_for_Account_Holder_Name(String string) throws Throwable {
		String original = ec.getObjects("emaccountholdername");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Account Holder Name  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at  Account Holder Name   " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Name {string}")
	public void show_error_message_for_Bank_Name(String string) throws Throwable {
		String original = ec.getObjects("embankname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at bank name  " + " " + string + " " + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at  bank Name   " + " " + string + " " + " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Branch Name {string}")
	public void show_error_message_for_Bank_Branch_Name(String string) throws Throwable {
		String original = ec.getObjects("embankbranhname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Bank branch name  " + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at  Bank branch Name   " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Address {string}")
	public void show_error_message_for_Bank_Address(String string) throws Throwable {
		String original = ec.getObjects("emaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Bank address " + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at  Bank address  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Contact Name {string}")
	public void show_error_message_for_Bank_Contact_Name(String string) throws Throwable {
		String original = ec.getObjects("embankcontactname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at   Bank Contact Name " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at   Bank Contact Name  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Contact Number {string}")
	public void show_error_message_for_Bank_Contact_Number(String string) throws Throwable {
		String original = ec.getObjects("embankcontactnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Bank Contact Number " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at  Bank Contact Number  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Account Number {string}")
	public void show_error_message_for_Bank_Account_Number(String string) throws Throwable {
		String original = ec.getObjects("embankaccountnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Bank Account Number " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at  Bank Account Number  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Routing Number {string}")
	public void show_error_message_for_Bank_Routing_Number(String string) throws Throwable {
		// USA
		String original = ec.getObjects("em_usbankroutingnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Bank Routing Number " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at  Bank Routing Number  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Swift Code {string}")
	public void show_error_message_for_Bank_Swift_Code(String string) throws Throwable {
		String original = ec.getObjects("embankswiftcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Bank Swift Code " + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at  Bank Swift Code " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Attach a file {string}")
	public void show_error_message_for_Attach_a_file(String string) throws Throwable {
		String original = ec.getObjects("emattachfile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  Attach a file " + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at Attach a file  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Key {string}")
	public void show_error_message_for_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("embankrountingnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at  Bank Key " + " " + string + " " + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at  Bank Key  " + " " + string + " " + " on Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Account Label {string}")
	public void show_mouseover_text_for_Bank_Account_Label(String string) throws Throwable {
		String original = ec.getObjects("ttbankaccountlabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Account Label on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip forBank Account Labele on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Account Holder Name {string}")
	public void show_mouseover_text_for_Account_Holder_Name(String string) throws Throwable {
		String original = ec.getObjects("ttaccountholdername");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Account Holder Name on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Account Holder Name on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Name {string}")
	public void show_mouseover_text_for_Bank_Name(String string) throws Throwable {
		String original = ec.getObjects("ttbankname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Name on  Add Company Account Modal" + "\n");
		System.out
				.println(" " + " " + string + " " + " is a tooltip for Bank Name on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Branch Name {string}")
	public void show_mouseover_text_for_Bank_Branch_Name(String string) throws Throwable {
		String original = ec.getObjects("ttbankbranchname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Branch Namel on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Branch Name on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Payment Terms {string}")
	public void show_mouseover_text_for_Payment_Terms(String string) throws Throwable {
		String original = ec.getObjects("ttpaymentterms");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Payment Terms on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip forPayment Terms  on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Purchase Order Email {string}")
	public void show_mouseover_text_for_Purchase_Order_Email(String string) throws Throwable {
		String original = ec.getObjects("ttpurchaseorderemail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(
				" " + string + " " + " is a tooltip for Purchase Order Email  on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Purchase Order Email on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Country {string}")
	public void show_mouseover_text_for_Bank_Country(String string) throws Throwable {
		String original = ec.getObjects("ttcountry");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Country on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Country on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Address {string}")
	public void show_mouseover_text_for_Bank_Address(String string) throws Throwable {
		String original = ec.getObjects("ttbankaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Address on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Address on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Address1 {string}")
	public void show_mouseover_text_for_Bank_Address1(String string) throws Throwable {
		String original = ec.getObjects("ttbankaddress1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Address2 on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Address2 on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Address2 {string}")
	public void show_mouseover_text_for_Bank_Address2(String string) throws Throwable {
		String original = ec.getObjects("ttbankaddress2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Address2 on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Address2 on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank City {string}")
	public void show_mouseover_text_for_Bank_City(String string) throws Throwable {
		String original = ec.getObjects("ttbankcity");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip forBank City on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank City  on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank State {string}")
	public void show_mouseover_text_for_Bank_State(String string) throws Throwable {
		String original = ec.getObjects("ttstate");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for  Bank State on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for  Bank State  on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Zip Code {string}")
	public void show_mouseover_text_for_Bank_Zip_Code(String string) throws Throwable {
		String original = ec.getObjects("ttzipcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Zip Code on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Zip Code on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank PO Box {string}")
	public void show_mouseover_text_for_Bank_PO_Box(String string) throws Throwable {
		String original = ec.getObjects("ttpobox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank PO Box on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank PO Box on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank PO Box Zip Code {string}")
	public void show_mouseover_text_for_Bank_PO_Box_Zip_Code(String string) throws Throwable {
		String original = ec.getObjects("ttpoboxzipcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Account Label on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip forBank Account Labele on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Contact Name {string}")
	public void show_mouseover_text_for_Bank_Contact_Name(String string) throws Throwable {
		String original = ec.getObjects("ttbankcontactname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank PO Box Zip Code on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank PO Box Zip Code on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Contact Number {string}")
	public void show_mouseover_text_for_Bank_Contact_Number(String string) throws Throwable {
		String original = ec.getObjects("ttbankcontactnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Contact Number on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank Contact Number on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Contact Email Address {string}")
	public void show_mouseover_text_for_Bank_Contact_Email_Address(String string) throws Throwable {
		String original = ec.getObjects("ttbankcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Contact Email Address on  Add Company Account Modal"
				+ "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank Contact Email Address on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Account Number {string}")
	public void show_mouseover_text_for_Bank_Account_Number(String string) throws Throwable {
		String original = ec.getObjects("ttbankaccountnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Account Number on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank Account Number on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Routing Number {string}")
	public void show_mouseover_text_for_Bank_Routing_Number(String string) throws Throwable {
		String original = ec.getObjects("ttbankroutingnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Routing Number on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank Routing Number on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Currency {string}")
	public void show_mouseover_text_for_Currency(String string) throws Throwable {
		String original = ec.getObjects("ttcurrency");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Currency on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " " + " is a tooltip fo Currency on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Swift Code {string}")
	public void show_mouseover_text_for_Bank_Swift_Code(String string) throws Throwable {
		String original = ec.getObjects("ttbankswiftcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Swift Code on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Swift Code on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Evidence Type {string}")
	public void show_mouseover_text_for_Evidence_Type(String string) throws Throwable {
		String original = ec.getObjects("ttevidencetype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for  Evidence Type on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for  Evidence Type on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Accounts Receivable Contact Name {string}")
	public void show_mouseover_text_for_Accounts_Receivable_Contact_Name(String string) throws Throwable {
		String original = ec.getObjects("ttaccreceivablecontactname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " "
				+ " is a tooltip for Accounts Receivable Contact Name on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Accounts Receivable Contact Name on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Accounts Receivable Contact Number {string}")
	public void show_mouseover_text_for_Accounts_Receivable_Contact_Number(String string) throws Throwable {
		String original = ec.getObjects("ttaccountreceivablecontactnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " "
				+ " is a tooltip for Accounts Receivable Contact Number on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Accounts Receivable Contact Number on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Accounts Receivable Contact Email {string}")
	public void show_mouseover_text_for_Accounts_Receivable_Contact_Email(String string) throws Throwable {
		String original = ec.getObjects("ttaccountreceivablecontactemail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " "
				+ " is a tooltip for  Accounts Receivable Contact Email on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for  Accounts Receivable Contact Email on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Postal Code {string}")
	public void show_mouseover_text_for_Bank_Postal_Code(String string) throws Throwable {
		String original = ec.getObjects("ttbankpostalcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Postal Code on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Postal Code on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank PO Box Postal Code {string}")
	public void show_mouseover_text_for_Bank_PO_Box_Postal_Code(String string) throws Throwable {
		String original = ec.getObjects("ttbankpoboxpostalcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(
				" " + string + " " + " is a tooltip for Bank PO Box Postal Code on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank PO Box Postal Code on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Key {string}")
	public void show_mouseover_text_for_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("ttbankkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Key on  Add Company Account Modal" + "\n");
		System.out
				.println(" " + " " + string + " " + " is a tooltip for Bank Key on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for IBAN {string}")
	public void show_mouseover_text_for_IBAN(String string) throws Throwable {
		String original = ec.getObjects("ttiban");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for IBAN on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " " + " is a tooltip for IBAN on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Province {string}")
	public void show_mouseover_text_for_Bank_Province(String string) throws Throwable {
		String original = ec.getObjects("ttprovince");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for  Bank Province on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for  Bank Province on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Key Canada {string}")
	public void show_mouseover_text_for_Bank_Key_Canada(String string) throws Throwable {
		String original = ec.getObjects("ttbankkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for  Bank Key Canada  on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for  Bank Key Canada  on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Address3 {string}")
	public void show_mouseover_text_for_Bank_Address3(String string) throws Throwable {
		String original = ec.getObjects("ttaddress3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Address3 on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Address3 on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Key France {string}")
	public void show_mouseover_text_for_Bank_Key_France(String string) throws Throwable {
		String original = ec.getObjects("ttbankkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Key Franceon  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Key France on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank Control Key {string}")
	public void show_mouseover_text_for_Bank_Control_Key(String string) throws Throwable {
		String original = ec.getObjects("ttbankcontrolkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Control Key on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank Control Key on  Add Company Account Modal" + "\n");
	}

	@Then("Show mouseover text for Bank City France {string}")
	public void show_mouseover_text_for_Bank_City_France(String string) throws Throwable {
		String original = ec.getObjects("ttbankcity");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank City France on  Add Company Account Modal" + "\n");
		System.out.println(
				" " + " " + string + " " + " is a tooltip for Bank City France on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Account Label {string}")
	public void enter_value_for_Bank_Account_Label(String string) throws Throwable {
		String original = ec.getObjects("bankAccountLabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bankAccountLabel"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Account Holder Name {string}")
	public void enter_value_for_Account_Holder_Name(String string) throws Throwable {
		String original = ec.getObjects("bankAccountHolderName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("bankAccountHolderName"))).clear();
		driver.findElement(By.xpath(ec.getObjects("bankAccountHolderName"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Name {string}")
	public void enter_value_for_Bank_Name(String string) throws Throwable {
		String original = ec.getObjects("bankName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		 driver.findElement(By.xpath(ec.getObjects("bankName"))).sendKeys(Keys.CONTROL + "a");
		 driver.findElement(By.xpath(ec.getObjects("bankName"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("bankName"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on   Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Branch Name {string}")
	public void enter_value_for_Bank_Branch_Name(String string) throws Throwable {
		String original = ec.getObjects("bankBranchName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("bankBranchName"))).clear();
		driver.findElement(By.xpath(ec.getObjects("bankBranchName"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Address {string}")
	public void enter_value_for_Address(String string) throws Throwable {
		String original = ec.getObjects("street1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("street1"))).clear();

		driver.findElement(By.xpath(ec.getObjects("street1"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Company Account Modal" + "\n");
	}

	@Then("Enter value for City {string}")
	public void enter_value_for_City(String string) throws Throwable {
		String original = ec.getObjects("city");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("city"))).clear();
		driver.findElement(By.xpath(ec.getObjects("city"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Company Account Modal" + "\n");
	}

	@Then("Select option for State {string}")
	public void select_option_for_State(String string) throws Throwable {
		String original = ec.getObjects("stateselect");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(formatXPATH)));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + " from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + " from the drop down list" + "\n");
	}

	@Then("Enter value for Postal Code {string}")
	public void enter_value_for_Postal_Code(String string) throws Throwable {
		String original = ec.getObjects("postalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("postalCode"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Company Account Modal" + "\n");
	}
	
	@Then("Enter value for Factory Company Postal Code {string}")
	public void enter_value_for_Factory_Company_Postal_Code(String string) throws Throwable {
		String original = ec.getObjects("factoryCompanyPostalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on  Add Factory Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Factory Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Contact Name {string}")
	public void enter_value_for_Bank_Contact_Name(String string) throws Throwable {
		String original = ec.getObjects("bankContactName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("bankContactName"))).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(ec.getObjects("bankContactName"))).sendKeys(Keys.DELETE);

		driver.findElement(By.xpath(ec.getObjects("bankContactName"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Contact Number {string}")
	public void enter_value_for_Bank_Contact_Number(String string) throws Throwable {
		String original = ec.getObjects("bankContactNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bankContactNumber"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + " on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Select the Body the Bank Account")
	public void select_the_Body_the_Bank_Account() {

		String original = ec.getObjects("bodyBankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bodyBankAccount"))).click();
		// logger.info("Enter valid text " + " " + string + " on Add Company Account
		// Modal" + "\n");
		System.out.println("Click on the delete" + "\n");

	}

	@Then("Click on the Preferred Bank check box")
	public void click_on_the_Preferred_Bank_check_box() {

		String original = ec.getObjects("preferredBank");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("preferredBank"))).click();

	}

	@Then("Click on the Confirm in Preferred")
	public void click_on_the_Confirm_in_Preferred() {

		String original = ec.getObjects("confirmPreferredBankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("confirmPreferredBankAccount"))).click();

	}

	@Then("Click on the Delete button")
	public void click_on_the_Delete_button() {

		String original = ec.getObjects("deleteBankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("deleteBankAccount"))).click();
		// driver.findElement(By.xpath(("//*[name()='svg'][@aria-label='Delete Bank
		// Account'])[1]"))).click();
		logger.info("Enter valid text " + " " + toString() + "on on Add Company Account Modal" + "\n");
		System.out.println("Click on the delete" + "\n");
		// driver.findElement(By.xpath("(//button[normalize-space()='Delete'])[1]))"));
		// System.out.println("deleted bank account" + "\n");

	}


	@Then("Click on the Update Account button")
	public void click_on_the_Update_Account_button() {

		String original = ec.getObjects("UpdateBankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("UpdateBankAccount"))).click();
		// driver.findElement(By.xpath(("//*[name()='svg'][@aria-label='Delete Bank
		// Account'])[1]"))).click();
		logger.info("Enter valid text " + " " + toString() + "on on Add Company Account Modal" + "\n");
		System.out.println("Click on the Update bank Account" + "\n");
		// driver.findElement(By.xpath("(//button[normalize-space()='Delete'])[1]))"));
		// System.out.println("deleted bank account" + "\n");

	}
	@Then("Click on the Remove Prefered bank account button")
	public void click_on_the_Remove_Prefered_bank_account_button() {

		String original = ec.getObjects("RemovePreferredbankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("RemovePreferredbankAccount"))).click();
		// logger.info("Enter valid text " + " " + string + "on on Add Company Account
		// Modal" + "\n");
		System.out.println("Click on the delete" + "\n");

	}
	
	@When("Enter the IBAN evidence for Albania")
	public void enter_the_IBAN_evidence_for_Albania() 
	{
		String original = ec.getObjects("iban_albania_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("iban_albania_code"))).clear();
		driver.findElement(By.xpath(ec.getObjects("iban_albania_code"))).sendKeys("Not provided the evidence");
		logger.info("Enter IBAN Code in text area" + "\n");
		System.out.println("Enter IBAN Code in text area" + "\n");
	}
	
	@When("Enter the IBAN evidence for Austria")
	public void enter_the_IBAN_evidence_for_Austria() {
		String original = ec.getObjects("Austria_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("Austria_code"))).clear();
		//driver.findElement(By.xpath(ec.getObjects("Austria_code"))).click();
		driver.findElement(By.xpath(ec.getObjects("Austria_code"))).sendKeys("Not provided the evidence");
		logger.info("Enter IBAN Code in text area" + "\n");
		System.out.println("Enter IBAN Code in text area" + "\n");
	}
	
	@When("Enter the IBAN evidence for Switzerland")
	public void enter_the_IBAN_evidence_for_Switzerland() 
	{
		String original = ec.getObjects("iban_Switzerland_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("iban_Switzerland_code"))).clear();
		driver.findElement(By.xpath(ec.getObjects("iban_Switzerland_code"))).sendKeys("Not provided the evidence");
		logger.info("Enter IBAN Code in text area" + "\n");
		System.out.println("Enter IBAN Code in text area" + "\n");
	}
	
	@Then("Enter value for Bank Number {string}")
	public void enter_value_for_Bank_Number(String string) throws Throwable {
		Thread.sleep(5000);
		String original = ec.getObjects("bankNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String generatedString = RandomStringUtils.randomAlphanumeric(12);
		System.out.println(generatedString);
		String accountnumber = RandomStringUtils.randomAlphanumeric(12);
		WebElement ra = driver.findElement(By.xpath(ec.getObjects("bankNumber")));
		driver.findElement(By.xpath(ec.getObjects("bankNumber"))).clear();
		Thread.sleep(5000);
		driver.findElement(By.xpath(ec.getObjects("bankNumber"))).sendKeys(string);
		
				
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on  Add Company Account Modal" + "\n");
		String val = ra.getAttribute("value");
	      System.out.println("Entered text is: " + val);
	}

	@Then("Enter value for Bank Account Number {string}")
	public void enter_value_for_Bank_Account_Number(String string) throws Throwable {
		Thread.sleep(5000);
		String original = ec.getObjects("bankAccountNumber1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String generatedString = RandomStringUtils.randomAlphanumeric(12);
		System.out.println(generatedString);
		String accountnumber = RandomStringUtils.randomAlphanumeric(12);
		WebElement ra = driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1")));
		driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1"))).clear();
		Thread.sleep(5000);
		driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1"))).sendKeys(string);
		
				
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on  Add Company Account Modal" + "\n");
		String val = ra.getAttribute("value");
	      System.out.println("Entered text is: " + val);
	}

	@Then("Enter value for Bank Routing Number {string}")
	public void enter_value_for_Bank_Routing_Number(String string) throws Throwable {
		// USA
		String original = ec.getObjects("bankRoutingNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		// String generatedString = RandomStringUtils.randomNumeric(9);
		String generatedString = RandomStringUtils.randomNumeric(10);
		System.out.println(generatedString);
		String bankRoutingNumber = RandomStringUtils.randomNumeric(10);
		driver.findElement(By.xpath(ec.getObjects("bankRoutingNumber"))).clear();
		driver.findElement(By.xpath(ec.getObjects("bankRoutingNumber"))).sendKeys(bankRoutingNumber);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on  Add Company Account Modal" + "\n");

	}
	
	@Then("Select {string} in {string} dropdown under Factoring Company Address")
	public void select_in_dropdown_under_Factoring_Company_Address(String Option, String Label) throws Exception 
	{
		String original = ec.getObjects("fac_bank_country_select1")+Label+ec.getObjects("fac_bank_country_select2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
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

	@Then("Enter value for Bank Swift Code {string}")
	public void enter_value_for_Bank_Swift_Code(String string) throws Throwable {
		String original = ec.getObjects("bankSwiftCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("bankSwiftCode"))).clear();
		driver.findElement(By.xpath(ec.getObjects("bankSwiftCode"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on Add Company Account Modal" + "\n");
	}

	@Then("Select option for Evidence Type {string}")
	public void select_option_for_Evidence_Type(String string) throws Throwable {
		String original = ec.getObjects("evidencetypeselect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("evidencetypeselect"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Upload the file for Attach a file")
	public void upload_the_file_for_Attach_a_file() throws Throwable {
		String original = ec.getObjects("uploadfile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("uploadfile"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("uploadfile")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");
	}

	@Then("Select the Suggested address radio button")
	public void select_the_Suggested_address_radio_button() throws Throwable {
		String original = ec.getObjects("suggestedAddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement suggestedadd = driver.findElement(By.xpath(ec.getObjects("suggestedAddress")));
		suggestedadd.click();

		logger.info("Selected radio button of Suggested Addresss" + "\n");
		System.out.println("Selected radio button of Suggested Address" + "\n");
	}

	@Then("Click on Save button on Address Verification")
	public void click_on_Save_button_on_Address_Verification() throws Throwable {
		String original = ec.getObjects("savebtnsuggestedadd");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button on Address Verification" + "\n");
		System.out.println("Clicked on Save button on Address Verification" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click ok button on Successfully bank account Modal")
	public void click_ok_button_on_Successfully_bank_account_Modal() throws Throwable {
		String original = ec.getObjects("okbtnsuccessusa");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on OK button on Successfully bank account Modal" + "\n");
		System.out.println("Clicked on OK button on Successfully bank account Modal" + "\n");
		Thread.sleep(2000);
	}

	@Then("Enter value for Bank Key {string}")
	public void enter_value_for_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("abaRoutingNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("abaRoutingNumber"))).clear();
		driver.findElement(By.xpath(ec.getObjects("abaRoutingNumber"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for IBAN {string}")
	public void enter_value_for_IBAN(String string) throws Throwable {
		String original = ec.getObjects("ibanNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("ibanNumber"))).clear();
		driver.findElement(By.xpath(ec.getObjects("ibanNumber"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on Add Company Account Modal" + "\n");
		
	}

	@Then("Click on Save button on Canada Add Company Account Modal")
	public void click_on_Save_button_on_Canada_Add_Company_Account_Modal() throws Throwable {
		String original = ec.getObjects("savebtncanadacompanyaccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button on Canada Add Company Account Modal" + "\n");
		System.out.println("Clicked on Save button on Canada Add Company Account Modal" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click ok button on Successfully Germany bank account Modal")
	public void click_ok_button_on_Successfully_Germany_bank_account_Modal() throws Throwable {
		String original = ec.getObjects("okbtnsuccessgermany");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on OK button on Successfully Germany bank account Modal" + "\n");
		System.out.println("Clicked on OK button on Successfully Germany bank account Modal" + "\n");
		Thread.sleep(2000);
	}

	@Then("Enter value for Bank Control Key {string}")
	public void enter_value_for_Bank_Control_Key(String string) throws Throwable {
		String original = ec.getObjects("bankControlKey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bankControlKey"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "for Bank Control Key" + "\n");
		System.out.println("Enter valid text" + " " + string + "for Bank Control Key" + "\n");
	}

	@Then("Show created Bank account on Account list {string}")
	public void show_created_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirm");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created Bank account on Account list" + "\n");
		System.out.println("Showed created Bank account on Account list" + "\n");
	}

	@Then("Click on {string} Bank Account Holder name")
	public void click_on_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirm");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "  Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + " Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click on Delete button on Update Bank Account Modal")
	public void click_on_Delete_button_on_Update_Bank_Account_Modal() throws Throwable {
		String original = ec.getObjects("deletebtnonupdatebankaccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Delete button on Update Contact modal" + "\n");
		System.out.println("Clicked on Delete button on Update Contact modal" + "\n");
		Thread.sleep(8000);
	}

	@Then("Show created USA Bank account on Account list {string}")
	public void show_created_USA_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmusa");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created USA Bank account on Account list" + "\n");
		System.out.println("Showed created USA Bank account on Account list" + "\n");
	}

	@Then("Click on USA {string} Bank Account Holder name")
	public void click_on_USA_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmusa");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + " Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + "Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("Show created Germany Bank account on Account list {string}")
	public void show_created_Germany_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmgermany");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created Germany Bank account on Account list " + "\n");
		System.out.println("Showed created Germany Bank account on Account list " + "\n");
	}

	@Then("Click on Germany {string} Bank Account Holder name")
	public void click_on_Germany_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmgermany");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + "Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("Show created Canada Bank account on Account list {string}")
	public void show_created_Canada_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmcanada");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created Canada Bank account on Account list" + "\n");
		System.out.println("Showed created Canada Bank account on Account list" + "\n");
	}

	@Then("Click on Canada {string} Bank Account Holder name")
	public void click_on_Canada_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmcanada");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "  Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + " Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("Show created France Bank account on Account list {string}")
	public void show_created_France_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmfrance");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created France Bank account on Account list " + "\n");
		System.out.println("Showed created France Bank account on Account list " + "\n");
	}

	@Then("Click on France {string} Bank Account Holder name")
	public void click_on_France_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmfrance");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "  Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + "  Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("show error {string} at Account Holder Name")
	public void show_error_at_Account_Holder_Name(String string) throws Throwable {
		String original = ec.getObjects("invalidaccountholdername");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + "at Account Holder Name" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "at Account Holder Name" + "\n");
	}

	@Then("show error {string} at Bank Contact Number")
	public void show_error_at_Bank_Contact_Number(String string) throws Throwable {
		String original = ec.getObjects("invalidbankcontactnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + " at Bank Contact Number" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "  at Bank Contact Number" + "\n");
	}

	@Then("show error {string} at Bank Account Number")
	public void show_error_at_Bank_Account_Number(String string) throws Throwable {
		String original = ec.getObjects("invalidbankaccountnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + " at Bank Account Number" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "at Bank Account Number" + "\n");
	}

	@Then("show error {string} at Bank Routing Number")
	public void show_error_at_Bank_Routing_Number(String string) throws Throwable {
		String original = ec.getObjects("invalidroutingnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + " at Bank Routing Number" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + " at Bank Routing Number" + "\n");
	}

	@Then("show error {string} at Bank Swift Code")
	public void show_error_at_Bank_Swift_Code(String string) throws Throwable {
		String original = ec.getObjects("invalidswiftcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + " at Bank Swift Code" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "  at Bank Swift Code" + "\n");
	}

	@Then("show error {string} at Bank Key")
	public void show_error_at_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("invalidbankkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + "  at Bank Key" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "  at Bank Key" + "\n");
	}

	@Then("show error {string} at IBAN")
	public void show_error_at_IBAN(String string) throws Throwable {
		String original = ec.getObjects("invalidiban");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + "at IBAN" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "at IBAN" + "\n");
	}

	@Then("Enter value for Postal code {string}")
	public void enter_value_for_Postal_code(String string) throws Throwable {
		String original = ec.getObjects("postalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("postalCode"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "for Postal code" + "\n");
		System.out.println("Enter valid text" + " " + string + "for Postal code" + "\n");
	}

	@Then("Select option for Province {string}")
	public void select_option_for_Province(String string) throws Throwable {
		String original = ec.getObjects("provinceselect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("provinceselect"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "for Province" + "\n");
		System.out.println("selected" + " " + string + " " + "for Province" + "\n");
	}

	@Then("Should have the IBAN label as {string}")
	public void should_have_the_IBAN_label_as(String string) throws Throwable {
		String original = ec.getObjects("IBAN_francelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("IBAN_francelabel"))).getText().contains(string));
		logger.info("Should have the IBAN label" + "\n");
		System.out.println("SShould have the IBAN label" + "\n");
	}

	@Then("Show error message for IBAN label {string}")
	public void show_error_message_for_IBAN_label(String string) throws Throwable {
		String original = ec.getObjects("emibamlabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at IBAN Label " + " " + string + " " + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at IBAN Label  " + " " + string + " " + " on Add Company Account Modal" + "\n");
	}

	@Then("Should have the Control key as {string}")
	public void should_have_the_Control_key_as(String string) throws Throwable {
		String original = ec.getObjects("bankcontrolkey_francelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(
				driver.findElement(By.xpath(ec.getObjects("bankcontrolkey_francelabel"))).getText().contains(string));
		logger.info("Showing" + " " + string + " " + "label on Company account for France supplier" + "\n");
		System.out.println(
				"Showing" + " " + string + " " + "label on basic profile page for France for france supplier" + "\n");
	}

	@Then("Show error message for Control Key {string}")
	public void show_error_message_for_Control_Key(String string) throws Throwable {
		String original = ec.getObjects("emcontrolkeylabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Control Key  " + " " + string + " " + "\n");
		System.out.println("Show an error message at Control Key  " + " " + string + " " + "\n");
	}

	@Then("show error {string} at Control Key")
	public void show_error_at_Control_Key(String string) throws Throwable {
		String original = ec.getObjects("emcontrolkeylabel_factoring");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + "  at Control Key" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "  at Control Key" + "\n");
	}

	@Then("Show mouseover text for Control Key {string}")
	public void show_mouseover_text_for_Control_Key(String string) throws Throwable {
		String original = ec.getObjects("ttcontrolkeylabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Control Key" + "\n");
		System.out.println(" " + " " + string + " " + " is a tooltip for Control Key" + "\n");
	}

	@Then("Should have the Bank key label as {string}")
	public void should_have_the_Bank_key_label_as(String string) throws Throwable {
		String original = ec.getObjects("bankkey_francelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("bankkey_francelabel"))).getText().contains(string));
		logger.info("Showing" + " " + string + " " + "label on the Bank key " + "\n");
		System.out.println("Showing" + " " + string + " " + "label on the Bank key " + "\n");
	}

	@Then("Should have the Bank Account Number label as {string}")
	public void should_have_the_Bank_Account_Number_label_as(String string) throws Throwable {
		String original = ec.getObjects("bankaccountnum_francelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(
				driver.findElement(By.xpath(ec.getObjects("bankaccountnum_francelabel"))).getText().contains(string));
		logger.info("Showing" + " " + string + " " + "label on the Bank Account Number label" + "\n");
		System.out.println("Showing" + " " + string + " " + "label on the Bank Account Number label" + "\n");
	}

	@Then("Should have the Bank Swift Code label as {string}")
	public void should_have_the_Bank_Swift_Code_label_as(String string) throws Throwable {
		String original = ec.getObjects("bankswiftcode_francelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("bankswiftcode_francelabel"))).getText().contains(string));
		logger.info("Showing" + " " + string + " " + "label on the Bank Swift Code" + "\n");
		System.out.println("Showing" + " " + string + " " + "label on the Bank Swift Code" + "\n");
	}

	@Then("Select Factoring Company Account from the Drop down")
	public void select_Factoring_Company_Account_from_the_Drop_down() throws Throwable {
		String original = ec.getObjects("factoringcompanyaccountoption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Selected Factoring Company Account from the Drop down" + "\n");
		System.out.println("Selected Factoring Company Account from the Drop down" + "\n");
	}

	@Then("Click on the radio button of Factoring Company Account")
	public void click_on_the_radio_button_of_Factoring_Company_Account() throws Throwable {
		String original = ec.getObjects("addfactoring_radio");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the radio button of Factoring Company Account" + "\n");
		System.out.println("Clicked on the radio button of Factoring Company Account" + "\n");
	}

	@Then("Show error message for Control Key in Add Factoring account modal {string}")
	public void show_error_message_for_Control_Key_in_Add_Factoring_account_modal(String string) throws Throwable {
		String original = ec.getObjects("embankcontrolkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showed error message for Control Key in Add Factoring account modal" + "\n");
		System.out.println("Showed error message for Control Key in Add Factoring account modal" + "\n");
	}

	@Then("Show error message for Bank Key in Add Factoring Company {string}")
	public void show_error_message_for_Bank_Key_in_Add_Factoring_Company(String string) throws Throwable {
		String original = ec.getObjects("embankkey_factoring");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showed error message for Bank Key in Add Factoring Company " + "\n");
		System.out.println("Showed error message for Bank Key in Add Factoring Company " + "\n");
	}

	@Then("Show error message for Bank Account Number in Add Factoring Company Account {string}")
	public void show_error_message_for_Bank_Account_Number_in_Add_Factoring_Company_Account(String string)
			throws Throwable {
		String original = ec.getObjects("embankaccountnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showed error message for Bank Account Number in Add Factoring Company Account " + "\n");
		System.out.println("Showed error message for Bank Account Number in Add Factoring Company Account " + "\n");
	}

	@Then("Enter value for Factoring Company Name {string}")
	public void enter_value_for_Factoring_Company_Name(String string) throws Throwable {
		String original = ec.getObjects("factoringcompanynameLabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("factoringcompanynameLabel"))).sendKeys(string);
		logger.info("Entered value for Factoring Company Name" + "\n");
		System.out.println("Entered value for Factoring Company Name" + "\n");
	}

	@Then("Select state {string} in state dropdown in Factoring Company Account")
	public void select_state_in_dropdown_Factoring_Company_Account(String Option) {

		String original = ec.getObjects("factorycompanystate");
		String formatXPATH = String.format(original);
		WebDriverWait wait = new WebDriverWait(driver, 70);
		// wait.until(ExpectedConditions.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(original)))));

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

	}

	@Then("Click on the save in Address verification for Factoring Company Account")
	public void click_on_the_save_in_Address_verification_Factoring_Company_Account() {

		String original = ec.getObjects("addressverificatinSave");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("addressverificatinSave"))).click();
	}

	@Then("Select Country as {string} at Factoring Company Address")
	public void select_Country_as_at_Factoring_Company_Address(String string) throws Throwable {
		String original = ec.getObjects("factoringcountryselect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("factoringcountryselect"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Enter value for Address at Factoring Company Address {string}")
	public void enter_value_for_Address_at_Factoring_Company_Address(String string) throws Throwable {
		String original = ec.getObjects("factoringaddressLabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("factoringaddressLabel"))).sendKeys(string);
		logger.info("Entered value for Address at Factoring Company Address" + "\n");
		System.out.println("Entered value for Address at Factoring Company Address" + "\n");
	}

	@Then("Enter value for City at Factoring Company Address {string}")
	public void enter_value_for_City_at_Factoring_Company_Address(String string) throws Throwable {
		String original = ec.getObjects("factoringcityLabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("factoringcityLabel"))).sendKeys(string);
		logger.info("Enter value for City at Factoring Company Address" + "\n");
		System.out.println("Enter value for City at Factoring Company Address" + "\n");
	}

	@Then("Enter value for Postal code at Factoring Company Address {string}")
	public void enter_value_for_Postal_code_at_Factoring_Company_Address(String string) throws Throwable {
		String original = ec.getObjects("factoringpostalcodeLabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("factoringpostalcodeLabel"))).sendKeys(string);
		logger.info("Entered value for Postal code at Factoring Company Address " + "\n");
		System.out.println("Entered value for Postal code at Factoring Company Address " + "\n");
	}

	@Then("Show error message for Bank Swift code {string}")
	public void show_error_message_for_Bank_Swift_code(String string) {
		// USA
		String original = ec.getObjects("em_usbankswiftcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Bank Swift code " + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at Bank Swift code " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for IBAN {string}")
	public void show_error_message_for_IBAN(String string) {

		// Germany
		String original = ec.getObjects("em_usIBAN");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at IBAN " + " " + string + " " + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at IBAN " + " " + string + " " + " on Add Company Account Modal" + "\n");
	}

	@Then("Show error message for Bank Control Key {string}")
	public void show_error_message_for_Bank_Control_Key(String string) {

		// france
		String original = ec.getObjects("embankcontrolkey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Bank Control Key" + " " + string + " " + " on Add Company Account Modal"
				+ "\n");
		System.out.println("Show an error message at Bank Control Key" + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Show created Brazil Bank account on Account list {string}")
	public void show_created_Brazil_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmbrazil");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created Bank account on Account list" + "\n");
		System.out.println("Showed created Bank account on Account list" + "\n");
	}

	@Then("Click on Brazil {string} Bank Account Holder name")
	public void click_on_Brazil_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmbrazil");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "  Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + "  Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("Show mouseover text for Bank Account Number India {string}")
	public void show_mouseover_text_for_Bank_Account_Number_India(String string) throws Throwable {
		String original = ec.getObjects("ttbankaccountnumberIndia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, string);
		logger.info(" " + string + " " + " is a tooltip for Bank Account Number on  Add Company Account Modal" + "\n");
		System.out.println(" " + " " + string + " "
				+ " is a tooltip for Bank Account Number on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for Bank Account Number India {string}")
	public void enter_value_for_Bank_Account_Number_India(String string) throws Throwable {
		String original = ec.getObjects("bankaccountbrazil");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bankaccountbrazil"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on  Add Company Account Modal" + "\n");
	}

	@Then("Show created India Bank account on Account list {string}")
	public void show_created_India_Bank_account_on_Account_list(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmindia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed created Bank account on Account list" + "\n");
		System.out.println("Showed created Bank account on Account list" + "\n");
	}

	@Then("Click on India {string} Bank Account Holder name")
	public void click_on_India_Bank_Account_Holder_name(String string) throws Throwable {
		String original = ec.getObjects("bankaccountconfirmindia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on" + string + "  Bank Account Holder name" + "\n");
		System.out.println("Clicked on" + string + "  Bank Account Holder name" + "\n");
		Thread.sleep(2000);
	}

	@Then("show error {string} at Bank Account Number India")
	public void show_error_at_Bank_Account_Number_India(String string) throws Throwable {
		String original = ec.getObjects("invalidbankaccountnumberIndia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message " + " " + string + " " + " at Bank Account Number" + "\n");
		System.out.println("Show an error message  " + " " + string + " " + "at Bank Account Number" + "\n");
	}

	@Then("Click on Save button on Account Modal")
	public void click_on_Save_button_on_Account_Modal() throws Throwable {
		String original = ec.getObjects("savebtncompanyaccountcheck");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button on Add Company Account Modal" + "\n");
		System.out.println("Clicked on Save button on Add Company Account Modal" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click on ellipsis for {string}")
	public void click_on_ellipsis_for(String BankAccountLabel) {
		String original = ec.getObjects("label_var") + BankAccountLabel + ec.getObjects("bankCard_ellipsis_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on ellipsis for " + BankAccountLabel + "\n");
		System.out.println("Clicked on ellipsis for " + BankAccountLabel + "\n");

	}

	@Then("Click {string} button for {string} bank card")
	public void click_button_for_bank_card(String Option, String BankAccountLabel) {

		String original = ec.getObjects("label_var") + BankAccountLabel + ec.getObjects("bankCard_ellipsis_option_var2")
				+ Option + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + Option + " for " + BankAccountLabel + "\n");
		System.out.println("Clicked on " + Option + " for " + BankAccountLabel + "\n");
	}

	@Then("Enter {string} in Choose a Buyer Dropdown")
	public void enter_something_in_choose_a_buyer_dropdown(String string) throws Throwable {
		String original = ec.getObjects("choose_buyer_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("choose_buyer_dropdown"))).click();
		String original1 = ec.getObjects("choose_buyer");
		String formatXPATH1 = String.format(original1);

		Thread.sleep(3000);

		// action.sendKeys(driver.findElement(By.xpath(formatXPATH1)),
		// string).build().perform();

		action.sendKeys(Keys.ENTER).build().perform();

		logger.info("Entered " + " " + string
				+ "Please choose the buyer that you would like to associate this bank account with." + "\n");
		System.out.println("Entered" + " " + string
				+ "Please choose the buyer that you would like to associate this bank account with." + "\n");
	}

	@Then("Show toast message {string} in bank account page")
	public void show_toast_message_something_in_bank_account_page(String string) throws Throwable {
		String original = ec.getObjects("banktoast_msg1") + string + ec.getObjects("banktoast_msg2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Toast message " + " " + string + " " + " is Displayed" + "\n");
		System.out.println("Toast message  " + " " + string + " " + " is Displayed" + "\n");
	}

	@Then("Click on buyer link")
	public void click_on_buyer_link() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("buyerlink");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Bank Account associated buyer" + "\n");
		System.out.println("Clicked on Bank Account associated buyer " + "\n");
	}

	@Then("Show {string} associated with the bank account")
	public void show_something_associated_with_the_bank_account(String string) throws Throwable {
		String original = ec.getObjects("buyer_associated");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("buyer_associated"))).isDisplayed(), string);
		logger.info("Associated Buyer" + " " + string + " " + " is Displayed" + "\n");
		System.out.println("Associated Buyer" + " " + string + " " + " is Displayed" + "\n");
	}

	@Then("Click Remove button")
	public void click_remove_button() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("remove_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Bank Account associated buyer" + "\n");
		System.out.println("Clicked on Bank Account associated buyer " + "\n");
	}

	@Then("Click Prefered Bank checkbox")
	public void click_prefered_bank_checkbox() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("prefered_bank_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Bank Account associated buyer" + "\n");
		System.out.println("Clicked on Bank Account associated buyer " + "\n");
	}

	@Then("Verify {string} reading pane visibility")
	public void verify_reading_pane_visibility(String ReadingPaneHead) {
		String original = ec.getObjects("BA_expanded_readingPane_var1") + ReadingPaneHead + ec.getObjects("label_var2");
		// String formatXPATH = String.format(original);

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Verified isibility of '" + ReadingPaneHead + "' reading pane" + "\n");
		System.out.println("Verified isibility of '" + ReadingPaneHead + "' reading pane" + "\n");
	}

	@Then("Collapse {string} reading pane")
	public void collapse_reading_pane(String ReadingPaneHead) {

		String original = ec.getObjects("BA_expanded_readingPane_var1") + ReadingPaneHead
				+ ec.getObjects("BA_readingPane_collapseBtn_var2");
		// String formatXPATH = String.format(original);

		WaitClass.clickableWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on '" + ReadingPaneHead + "' collapse button" + "\n");
		System.out.println("Clicked on '" + ReadingPaneHead + "' collapse button" + "\n");

	}

	@Then("Verify {string} reading pane is collapsed")
	public void verify_reading_pane_is_collapsed(String ReadingPaneHead) {

		String original = ec.getObjects("BA_collapsed_readingPane_var1") + ReadingPaneHead
				+ ec.getObjects("label_var2");
		// String formatXPATH = String.format(original);

		WaitClass.clickableWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on '" + ReadingPaneHead + "' collapse button" + "\n");
		System.out.println("Clicked on '" + ReadingPaneHead + "' collapse button" + "\n");

	}

	@Then("Verify {string} label under {string} section")
	public void verify_label_under_section(String Label, String ReadingPaneHead) {

		String original = ec.getObjects("label_var") + ReadingPaneHead + ec.getObjects("mysupplier_userstatus_var2")
				+ Label + "'][1]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElements(By.xpath(formatXPATH)).size() > 0);

		logger.info("Verified visibility of '" + Label + "' label under " + ReadingPaneHead + "\n");
		System.out.println("Verified visibility of '" + Label + "' label under " + ReadingPaneHead + "\n");

	}

	@Then("Verify {string} input field visibility under {string} section")
	public void verify_input_field_visibility_under_section(String Label, String ReadingPaneHead) {

		String original = ec.getObjects("label_var") + ReadingPaneHead + ec.getObjects("mysupplier_userstatus_var2")
				+ Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified visibility of '" + Label + "' input field under " + ReadingPaneHead + "\n");
		System.out.println("Verified visibility of '" + Label + "' input field under " + ReadingPaneHead + "\n");

	}

	@Then("Verify {string} dropdown visibility under {string} section")
	public void verify_dropdown_visibility_under_section(String Label, String ReadingPaneHead) {

		String original = ec.getObjects("label_var") + ReadingPaneHead + ec.getObjects("mysupplier_userstatus_var2")
				+ Label + ec.getObjects("dropdown_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified visibility of '" + Label + "' dropdown under " + ReadingPaneHead + "\n");
		System.out.println("Verified visibility of '" + Label + "' dropdown under " + ReadingPaneHead + "\n");

	}

	@Then("Verify {string} dropdown status under {string} section")
	public void verify_dropdown_status_under_section(String Label, String ReadingPaneHead) {

		String original = ec.getObjects("label_var") + ReadingPaneHead + ec.getObjects("mysupplier_userstatus_var2")
				+ Label + ec.getObjects("dropdown_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified '" + Label + "' dropdown is clickable under " + ReadingPaneHead + "\n");
		System.out.println("Verified '" + Label + "' dropdown is clickable under " + ReadingPaneHead + "\n");
	}

	@Then("Verify {string} input field status under {string} section")
	public void verify_input_field_status_under_section(String Label, String ReadingPaneHead) {

		String original = ec.getObjects("label_var") + ReadingPaneHead + ec.getObjects("mysupplier_userstatus_var2")
				+ Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified '" + Label + "' input field is clickable under " + ReadingPaneHead + "\n");
		System.out.println("Verified '" + Label + "' input field is clickable under " + ReadingPaneHead + "\n");

	}

	@Then("Verify {string} tooltip {string} in add bank account page")
	public void verify_tooltip_in_add_bank_account_page(String Label, String TTdescription) throws InterruptedException {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_tooltips_icon_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		//WaitClass.webDriverWait(formatXPATH);
		
		//Wait.until(ExpectedConditions.elementToBeClickable(formatXPATH));
		Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("password_tooltip"))).getText().contains(TTdescription));

		logger.info("Verified '" + Label + "' tooltip: " + TTdescription + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + TTdescription + "\n");

	}

	@Then("Verify no error message is displayed under {string} field under {string} section")
	public void verify_no_error_message_is_displayed_under_field_under_section(String Label, String SubCat) {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_validationError_type1_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElements(By.xpath(formatXPATH)).size() == 0);

		logger.info("Verified no error is visible under " + Label + "\n");
		System.out.println("Verified no error is visible under " + Label + "\n");
	}

	@Then("Show error message {string} under {string} field Value under {string} section")
	public void show_error_message_under_field_Value_under_section(String Error, String Label, String SubCat) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_validationError_type2_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(Error));

		logger.info("Verified '" + Error + "' error is showing under " + Label + "\n");
		System.out.println("Verified '" + Error + "' error is showing under " + Label + "\n");

	}

	@Then("Show error message {string} under {string} field under {string} section")
	public void show_error_message_under_field_under_section(String Error, String Label, String SubCat) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_validationError_type1_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(Error));

		logger.info("Verified '" + Error + "' error is showing under " + Label + "\n");
		System.out.println("Verified '" + Error + "' error is showing under " + Label + "\n");

	}

	@Then("Show error message {string} under Account Evidence field")
	public void show_error_message_under_Account_Evidence_field(String Error) {

		String original = ec.getObjects("BA_EvidenceType_ValidationError");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(Error));

		logger.info("Verified '" + Error + "' error is showing under Account Evidence" + "\n");
		System.out.println("Verified '" + Error + "' error is showing under Account Evidence" + "\n");

	}

	@Then("Verify no error message is displayed under {string} field Value under {string} section")
	public void verify_no_error_message_is_displayed_under_field_Value_under_section(String Label, String SubCat) {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_validationError_type2_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElements(By.xpath(formatXPATH)).size() == 0);

		logger.info("Verified no error is visible under " + Label + "\n");
		System.out.println("Verified no error is visible under " + Label + "\n");

	}

	@Then("Click Delete button for {string} bank card")
	public void click_Delete_button_for_bank_card(String BankAccountLabel) {

		String original = ec.getObjects("label_var") + BankAccountLabel + ec.getObjects("BA_card_delete_btn_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on delete icon on the Bank Account card" + "\n");
		System.out.println("Clicked on delete icon on the Bank Account card" + "\n");
	}

	@Then("Click Edit button for {string} bank card")
	public void click_Edit_button_for_bank_card(String BankAccountLabel) {

		String original = ec.getObjects("label_var") + BankAccountLabel + ec.getObjects("BA_card_edit_btn_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on edit icon on the Bank Account card" + "\n");
		System.out.println("Clicked on edit icon on the Bank Account card" + "\n");

	}

	@Then("Click Preferred Bank check box on {string} card")
	public void click_Preferred_Bank_check_box_on_card(String AccountHolderName) {

		String original = ec.getObjects("label_var") + AccountHolderName + ec.getObjects("BA_PrefBank_checkBox_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Preferred bank check box" + "\n");
		System.out.println("Clicked on Preferred bank check box" + "\n");

	}

	@Then("Verify Preferred Bank check box on {string} card is selected")
	public void verify_Preferred_Bank_check_box_on_card_is_selected(String AccountHolderName) {

		String original = ec.getObjects("label_var") + AccountHolderName + ec.getObjects("BA_PrefBank_checkBox_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Verified Preferred bank check box is SELECTED" + "\n");
		System.out.println("Verified Preferred bank check box is SELECTED" + "\n");

	}

	@Then("Verify Preferred Bank check box on {string} card is unselected")
	public void verify_Preferred_Bank_check_box_on_card_is_unselected(String AccountHolderName) {

		String original = ec.getObjects("label_var") + AccountHolderName + ec.getObjects("BA_PrefBank_checkBox_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Verified Preferred bank check box is UNSELECTED" + "\n");
		System.out.println("Verified Preferred bank check box is UNSELECTED" + "\n");
	}

	@When("Click on Edit Bank Account button")
	public void click_on_Edit_Bank_Account_button() {
		
		String original = ec.getObjects("bankEdit_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("bankEdit_button"))).click();
		
		logger.info( "Clicked on " + "Edit" + " button" + "\n");
		System.out.println("Clicked on the Edit" + "\n");
		
	}

	
//	@Then("Click on link this Account button")
//	public void Click_on_link_this_Account_button() {
//	
//	String original = ec.getObjects("banklink_button");
//	String formatXPATH = String.format(original);
//
//	WaitClass.webDriverWait(formatXPATH);
//
//	driver.findElement(By.xpath(ec.getObjects("banklink_button"))).click();
//	
//	logger.info( "Clicked on " + "link" + " this account button" + "\n");
//	System.out.println("Clicked on the link this account" + "\n");
//	
//}

	@Then("Click on link this Account button")
	public void Click_on_link_this_Account_button() throws InterruptedException {
		Thread.sleep(6000);
		//String original = ec.getObjects("banklink_button");
	
		//String formatXPATH = String.format(original);
		//WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("banklink_button"))).click();
		System.out.println("Clicked on the link drodown" + "\n");

		Thread.sleep(3000);
		driver.findElement(By.xpath(ec.getObjects("select_buyerfrdro"))).click();
		System.out.println("Clicked on the buyer from  dd " + "\n");

		Thread.sleep(3000);
		
		driver.findElement(By.xpath(ec.getObjects("link_Buyer"))).click();
		Thread.sleep(3000);
			
		logger.info( "Clicked on " + "link" + " this account button" + "\n");
		System.out.println("Clicked on the link this account" + "\n");
	}
	
	@Then("Click on back page arrow")
	public void Click_on_back_page_arrow() throws InterruptedException {
		Thread.sleep(6000);
		
		
		driver.findElement(By.xpath(ec.getObjects("Back_Page"))).click();
		System.out.println("Clicked on the back page arrow" + "\n");
			
		
	}
	@Then("Click on unlink account")
	public void Click_on_unlink_account() throws InterruptedException {
		Thread.sleep(6000);
		
		
		driver.findElement(By.xpath(ec.getObjects("Linkthis_acc"))).click();
		System.out.println("Clicked on the linkthisacc" + "\n");
		// click on unlink
		Thread.sleep(6000);
				
		driver.findElement(By.xpath(ec.getObjects("unlink_button"))).click();
		System.out.println("Clicked on the unlink" + "\n");
		// click on save button
		Thread.sleep(6000);
		
		driver.findElement(By.xpath(ec.getObjects("Savebtt"))).click();
		System.out.println("Clicked on the save btt" + "\n");
}
	//sanity scenarios
	@Then("Click on Save button on factory Address Verification")
	public void click_on_Save_button_on_factory_Address_Verification() throws Throwable {
		String original = ec.getObjects("factory_save_address");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button on Address Verification" + "\n");
		System.out.println("Clicked on Save button on Address Verification" + "\n");
		Thread.sleep(2000);
	}
	
	@Then("Enter value for Bank Key filed")
	public void enter_value_for_Bank_Key_filed() throws Throwable{
		String original = ec.getObjects("abaRoutingNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(String.valueOf(random.nextInt(100000000)));
		Thread.sleep(2000);
		logger.info("Entered : " + "'" + bankkey + "'" + " in bankkey field" + "\n");
		System.out.println("Entered : " + "'" + bankkey + "'" + " in bankkey field" + "\n");
	}
	@Then("Click the Delete button")

	public void click_the_Delete_button() {
	String original = ec.getObjects("RemovePreferredBankAccount");
	String formatXPATH = String.format(original);
    WaitClass.webDriverWait(formatXPATH);
	driver.findElement(By.xpath(ec.getObjects("RemovePreferredBankAccount"))).click();

	// driver.findElement(By.xpath(("//*[name()='svg'][@aria-label='Delete Bank

	// Account'])[1]"))).click();

	logger.info("Enter valid text " + " " + toString() + "on on Add Company Account Modal" + "\n");

	System.out.println("Click on the delete" + "\n");

	// driver.findElement(By.xpath("(//button[normalize-space()='Delete'])[1]))"));

	// System.out.println("deleted bank account" + "\n");


	}
	@Then("Enter value for Bank Code\\/Number filed")
	public void enter_value_for_Bank_Code_Number_filed() throws InterruptedException {
		String original = ec.getObjects("BankCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(String.valueOf(random.nextInt(100000000)));
		Thread.sleep(2000);
		logger.info("Entered : " + "'" + bankcode + "'" + " in bankcodenumber field" + "\n");
		System.out.println("Entered : " + "'" + bankcode + "'" + " in bankcodenumber field" + "\n");
	}
}



