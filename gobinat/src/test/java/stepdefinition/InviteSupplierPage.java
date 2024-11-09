package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.*;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
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
import utility.Role;
import utility.User;
import utility.UserUtils;
import utility.WaitClass;

public class InviteSupplierPage extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();
	public static CommonStepDefs stepDefs = new CommonStepDefs();
	public static String companyname = "test";
	public String default_QG;
	public List<String> questionnaires = new ArrayList<String>();
	public static String Email;
	public static String UnEmail;
	public String sameCompanyName;
	boolean isQGDefaultSelect = false;
	boolean inAnotherQG = false;
	boolean anotherQGSelected = true;
	public static List<User> users;
	public String newRoleName="test";
	public static String questName;
	public Map<String, String> inforSupplier = new HashMap<String, String>();
	public Map<String, String> QGoups = new HashMap<String, String>();
//	public Map<String, String> roles = new HashMap<String, String>();
	public List<String> RelationshipManageRole = new ArrayList<String>();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(InviteSupplierPage.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	Actions action = new Actions(driver);

	@Then("Switch to the new window")
	public void switch_to_the_new_window() throws Throwable {
		driver.switchTo().activeElement();
		Thread.sleep(500);
		logger.info("Switch to the new window" + "\n");
		System.out.println("Switch to the new window " + "\n");
	}

	@Then("Click on Invite Supplier button")
	public void click_on_Invite_Supplier_button() throws Throwable {

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();

		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);

		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

		// String original = ec.getObjects("invitesupplier");
		// String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);

		// driver.findElement(By.xpath("invitesupplier")).click();
		logger.info("Click on Invite Supplier button on My Suppliers" + "\n");
		System.out.println("Click on Invite Supplier button on My Suppliers " + "\n");
		// Thread.sleep(6000);
	}

	@Then("Click on Close button on Invite Supplier window")
	public void click_on_Close_button_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("invitesuppliercancelbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Close button on Invite Supplier window" + "\n");
		System.out.println("Click on Close button on Invite Supplier window " + "\n");
	}

	@Then("Switch to the parent window")
	public void switch_to_the_parent_window() throws Throwable {
		driver.switchTo().defaultContent();
		logger.info("Switch to the parent window" + "\n");
		System.out.println("Switch to the parent window " + "\n");
	}

	@Then("Show Close button on Invite Supplier window {string}")
	public void show_Close_button_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliercancelbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Close button " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Show Close button " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Close button clickable on Invite Supplier window {string}")
	public void close_button_clickable_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliercancelbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Cancel button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Cancel button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Show the title on My Suppliers page {string}")
	public void show_the_title_on_My_Suppliers_page(String string) throws Throwable {
		String original = ec.getObjects("mysuppliers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show title on My Supplier " + " " + string + " " + " on My Suppliers page" + "\n");
		System.out.println("Show title on My Supplier " + " " + string + " " + " on My Suppliers page" + "\n");
	}

	@Then("Show Close icon on Invite Supplier window {string}")
	public void show_Close_icon_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Close icon " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Show Close icon " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Show Close icon clickable on Invite Supplier window {string}")
	public void show_Close_icon_clickable_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Close icon clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Close icon clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Click on Close icon on Invite Supplier window")
	public void click_on_Close_icon_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("invitesuppliercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Close icon on Invite Supplier window" + "\n");
		System.out.println("Click on Close icon on Invite Supplier window " + "\n");
	}

	@Then("Show Next button on Invite Supplier window {string}")
	public void show_Next_button_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliernextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Next button " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Show Next button " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Show Next button clickable on Invite Supplier window {string}")
	public void show_Next_button_clickable_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliernextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Next button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Click on Next button on Invite Supplier window")
	public void click_on_Next_button_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("invitesuppliernextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Next button on Invite Supplier window" + "\n");
		System.out.println("\"Click on Next button on Invite Supplier window " + "\n");
	}

	@Then("Click on Next button on Custom Fileds window")
	public void click_on_Next_button_on_Custom_Fileds_window() throws InterruptedException {

		String original = ec.getObjects("customFieldsNextBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on Next button on Custom Fileds window" + "\n");
		System.out.println("\"Click on Next button on Custom Fileds window " + "\n");

	}

	@Then("Click on the Skip")
	public void click_on_the_Skip() throws InterruptedException {
		String original = ec.getObjects("skipBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on the Skip button" + "\n");
		System.out.println("\"Click on the Skip button" + "\n");
	}

	@Then("Click on Next button on PreInvite Assessment window")
	public void click_on_Next_button_on_PreInvite_Assessment_window() throws InterruptedException {

		String original = ec.getObjects("preInviteAssessment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on Next button on PreInvite Assessment window" + "\n");
		System.out.println("\"Click on Next button on PreInvite Assessment window " + "\n");
	}

	@Then("Click on Next button on Assign Questionnaires window")
	public void click_on_Next_button_on_Assign_Questionnaires_window() throws InterruptedException {
		String original = ec.getObjects("assignQuestionnairesBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Next button on Assign Questionnaires window" + "\n");
		System.out.println("\"Click on Next button on Assign Questionnaires window " + "\n");

	}

	@Then("Click on the Click here on Questionnaire page")
	public void click_on_the_Click_here_on_Questionnaire_page() throws InterruptedException {

		JavascriptExecutor j = (JavascriptExecutor) driver;
		j.executeScript("window.scrollBy(0,500)");
		String original = ec.getObjects("clickHere");
		String formatXPATH = String.format(original);

		// JavascriptExecutor jse = (JavascriptExecutor)driver;
		// jse.executeScript("arguments[0].click();", original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		// driver.findElement(By.linkText(original)).click();
		logger.info("Click on Click here on Questionnaire page window" + "\n");
		System.out.println("\"Click on Click here on Questionnaire page window " + "\n");
	}

	@Then("Click on Assign button on Assign Questionnaires window")
	public void click_on_Assign_button_on_Assign_Questionnaires_window() throws InterruptedException {
		String original = ec.getObjects("assignBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Assign button on Assign Questionnaires window" + "\n");
		System.out.println("\"Click on Assign button on Assign Questionnaires  window " + "\n");

	}

	@Then("Click on the Confirm on Confirmation Needed")
	public void click_on_the_Confirm_on_Confirmation_Needed() throws InterruptedException {

		String original = ec.getObjects("confirmationNeededBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Confirm button on Confirmation needed Page" + "\n");
		System.out.println("\"Click on Confirm button on Confirmation needed Page " + "\n");

	}

	@When("Click on the Yes radio under {string}")
	public void click_on_the_Yes_radio_under(String string) throws InterruptedException {

		String original = ec.getObjects("questionnairesRadiBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on Yes Radio button on Invite Supplier window" + "\n");
		System.out.println("Click on Yes Radio button on Invite Supplier window " + "\n");

	}

	@Then("Click on the Clear All Link on Assign Questionnaires window")
	public void click_on_the_Clear_All_Link_on_Assign_Questionnaires_window() {
		driver.findElement(By.xpath(ec.getObjects("clearAll_btn"))).click();

		String original = ec.getObjects("selectAutomationDropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
	}

	@Then("Select the {string} in Dropdown")
	public void select_the_in_Dropdown(String string) throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		driver.findElement(By
				.xpath("//*[@id='inviteSupplierForm']/div[3]/div/div[2]/div/div/div[2]/div/div/div/div[1]/div/span[2]"))
				.click();

		String original = ec.getObjects("selectAutomationDropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		questName = string;
		driver.findElement(By.xpath(original)).sendKeys(string);

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();

		builder.sendKeys(Keys.ENTER).build().perform();

		logger.info("Select the dropdown" + "\n");
		System.out.println("Select the dropdown " + "\n");

	}

	@Then("Verify the Next button clickable on Invite Supplier Default Questionnaire window {string}")
	public void verify_the_Next_button_clickable_on_Invite_Supplier_Default_Questionnaire_window(String string) {
		String original = ec.getObjects("invitesupplierquestionnairenextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("invitesupplierquestionnairenextbtn"))).isEnabled(),
				string);
		logger.info("Next Tab visible " + " " + string + " " + " on Invite Supplier window page" + "\n");
		System.out.println("Next Tab visible " + " " + string + " " + " on Invite Supplier window page" + "\n");
	}

	@Then("Show an error message at Supplier Company name field {string}")
	public void show_an_error_message_at_Supplier_Company_name_field(String string) throws Throwable {
		String original = ec.getObjects("suppliercompanynameerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Supplier Company name field " + " " + string + " "
				+ " on Invite Supplier window" + "\n");
		System.out.println("Show an error message at Supplier Company name field " + " " + string + " "
				+ " on Invite Supplier window" + "\n");
	}

	@Then("Click on the Supplier Company Name text box")
	public void click_on_the_Supplier_Company_Name_text_box() {

		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the Supplier Company Name text box " + "\n");
		System.out.println("Clicked on the Supplier Company Name text box " + "\n");

	}

	public void enter_the_Supplier_Company_Name() throws InterruptedException {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("kiran");
		Thread.sleep(5000);
		logger.info("Show an Supplier Company name field " + "\n");
		System.out.println("how an Supplier Company name field " + "\n");

	}

	@Then("Click on the enter")
	public void click_on_the_enter() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.ENTER).build().perform();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,500)", "");

	}

	@Then("Verify the {string} button is {string}")
	public void verify_the_button_is_enabled(String nameBtn, String expCondition) throws InterruptedException {
		String original = ec.getObjects("discover_button") + nameBtn + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertEquals(driver.findElement(By.xpath(original)).isEnabled(), "enabled".equals(expCondition) ? true : false);

		logger.info(nameBtn + " button is enabled" + "\n");
		System.out.println(nameBtn + " button is enabled" + "\n");

	}

	@Then("Wait {int} seconds")
	public void wait_seconds(Integer time) throws InterruptedException {
		System.out.println("\n" + "Waiting for " + time + " seconds" + "\n");
		int miliseconds = time * 1000;
		Thread.sleep(miliseconds);
		System.out.println("\n" + "Done Waiting for " + time + " seconds" + "\n");
	}

	@Then("Click on the IgnoreAndProceed button")
	public void click_on_the_Proceed_button() throws InterruptedException {
		String original = ec.getObjects("Ignorethesearchsuggestions");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Next button on Invite Supplier window" + "\n");
		System.out.println("\"Click on Next button on Invite Supplier window " + "\n");

	}

	@Then("Show an error message at {string} field {string}")
	public void show_an_error_message_at_field(String nameField, String messErr) throws Throwable {
		String original = ec.getObjects("div_cont_txt_quoMarks") + nameField + ec.getObjects("required_errMess");
		String formatXPATH = String.format(original);
		boolean isElementDisplay = false;

		if (stepDefs.isDisplayed(formatXPATH)) {
			WaitClass.webDriverWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(messErr));

			logger.info("Showing " + messErr + " error message " + " at " + nameField + " field" + "\n");
			System.out.println("Showing " + messErr + " error message " + " at " + nameField + " field" + "\n");
		} else {
			assertTrue(isElementDisplay);
			logger.info("Don't see " + messErr + " error message " + " below " + nameField + " field" + "\n");
			System.out.println("Don't see " + messErr + " error message " + " below " + nameField + " field" + "\n");
		}
	}

	@Then("Show {string} error message at {string} field")
	public void show_error_message_at_field(String messErr, String nameField) throws Throwable {
		String original = ec.getObjects("label_Txt") + nameField + ec.getObjects("sibling_li");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(messErr));
		logger.info("Showing " + messErr + " error message " + " at " + nameField + " field on Invite Supplier window"
				+ "\n");
		System.out.println("Showing " + messErr + " error message " + " at " + nameField
				+ " field on Invite Supplier window" + "\n");
	}

	@Then("Enter Supplier Company Name on Invite Supplier modal")
	public void enter_Supplier_Company_Name_on_Invite_Supplier_modal() throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

//		String generatedString = RandomStringUtils.randomAlphanumeric(6);
//		System.out.println(generatedString);

		// long time = date.getTime();

		// String Company = Long.toString(time);

		companyname = RandomStringUtils.randomAlphanumeric(9) + " pvt ltd";
		timeStamp.add(0, companyname);

		driver.findElement(By.xpath(original)).sendKeys(companyname);

		logger.info("Entered : " + "'" + companyname + "'" + " in Company Name field" + "\n");
		System.out.println("Entered : " + "'" + companyname + "'" + " in Company Name field" + "\n");
	}

	@Then("Enter Supplier Company Name on Invite Supplier window {string}")
	public void enter_Supplier_Company_Name_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " in Company Name field" + "\n");
		System.out.println("Entered : " + "'" + string + "'" + " in Company Name field" + "\n");
	}

	@Then("Enter Contact Email Address on Invite Supplier window")
	public void enter_Contact_Email_Address_on_Invite_Supplier_window() {

		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String email = companyname.trim().replaceAll("\\s", "");
		// Email = email + "@mailinator.com";
		Email = email + "@maildrop.cc";
		// String email = RandomStringUtils.randomAlphanumeric(3);

		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Supplier Email data in Email Address field")
	public void enter_Supplier_Email_data_in_Email_Address_field() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		// logger.info("Entered data" + " " + ec.getObjects("Email") + " " + "Email
		// Address field" + "\n");
		// System.out.println("Entered data" + " " + ec.getObjects("Email") + " " +
		// "Email Address field" + "\n");
		logger.info("Entered data" + " " + Email + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + "Email Address field" + "\n");
	}

	@Then("Enter Confirm Contact Email Address on Invite Supplier window")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_window() {

		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String email = companyname.trim().replaceAll("\\s", "");
		// Email = email + "@mailinator.com";
		Email = email + "@maildrop.cc";
		/*
		 * Date date = new Date(); String pattern = "yyyyMMddhh"; SimpleDateFormat
		 * simpledateformat = new SimpleDateFormat(pattern); String format =
		 * simpledateformat.format(date);
		 */

		// String email = RandomStringUtils.randomAlphanumeric(3);

		/*
		 * String Email = email + format + "@mailinator.com"; timeStamp.add(0, Email);
		 */
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Contact Email Address on Invite Supplier window {string}")
	public void enter_Contact_Email_Address_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

	}

	@Then("Enter Contact Email Address on Invite Supplier modal")
	public void enter_Contact_Email_Address_on_Invite_Supplier_modal() throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
	}

	@Then("Enter Confirm Contact Email Address on Invite Supplier modal")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_modal() throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Confirm Contact Email Address on Invite Supplier window {string}")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);
	}

	@Then("Enter Contact First Name on Invite Supplier window {string}")
	public void enter_Contact_First_Name_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("contactfirstname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter Contact First Name on Invite Supplier window" + "\n");
		System.out.println("Enter Contact First Name on Invite Supplier window" + "\n");

	}

	@Then("Enter Contact Last Name on Invite Supplier window {string}")
	public void enter_Contact_Last_Name_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("contactlastname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);
	}

	@Then("Show a message on Invite Suppliers Default Questionnaire window {string}")
	public void show_a_message_on_Invite_Suppliers_Default_Questionnaire_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierdefaultquestionnairemsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String msg = driver.findElement(By.xpath(original)).getText();

		if (msg.contains(
				"These are your default questionnaires that will be assigned to IncTest. Would you like to assign different questionnaires?"))
			;
		{
			logger.info("Show a message Invite Suppliers Default Questionnaire page " + " " + string + " "
					+ " on Invite Suppliers Default Questionnaire window" + "\n");
			System.out.println("Show a message Invite Suppliers Default Questionnaire page " + " " + string + " "
					+ " on Invite Suppliers Default Questionnaire window" + "\n");
		}

		Thread.sleep(12000);

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ENTER).build().perform();
	}

	@Then("Click on Next button on Invite Supplier Confirmation window")
	public void click_on_Next_button_on_Invite_Supplier_Confirmation_window() throws Throwable {
		String original = ec.getObjects("invitesupplierenextbtnconfirm");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);
	}

	/*
	 * @Then("Click on Send Invite button on Invite Supplier Confirmation window")
	 * public void
	 * click_on_Send_Invite_button_on_Invite_Supplier_Confirmation_window() throws
	 * Throwable { String original = ec.getObjects("invitesuppliersendinvitebtn");
	 * String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * driver.findElement(By.xpath(original)).click();
	 * 
	 * driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS); WebDriverWait
	 * wait = new WebDriverWait(driver,120);
	 * wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.
	 * getObjects("modal_x_button"))));
	 * 
	 * //Thread.sleep(6000); }
	 */

	@Then("Open email service provider app")
	public void open_email_service_provider_app() throws Throwable {
		driver.get(ec.getObjects("mailinatorurl"));
		Thread.sleep(2000);
	}

	@Then("Enter email address in Input field {string}")
	public void enter_email_address_in_Input_field(String string) throws Throwable {
		String original = ec.getObjects("viewpublicinxbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);
	}

	@Then("Click on Enter Key in email input field")
	public void click_on_Enter_Key_in_email_input_field() throws Throwable {
		String original = ec.getObjects("viewpublicinxbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(3000);
	}

	@Then("Verify the Email Subject in Inbox {string}")
	public void verify_the_Email_Subject_in_Inbox(String string) throws Throwable {
		String origina1 = ec.getObjects("subject");
		String formatXPAT1 = String.format(origina1);

		WaitClass.webDriverWait(formatXPAT1);

		assertTrue(driver.findElement(By.xpath(origina1)).getText().contains(string));
	}

	@Then("Close the browser")
	public void close_the_browser() throws Throwable {
		driver.quit();
	}

	@Then("Show Back button on Invite Supplier window {string}")
	public void show_Back_button_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierbackbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Thread.sleep(3000);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Back button visible " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Back button visible " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Back button clickable on Invite Supplier window {string}")
	public void back_button_clickable_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierbackbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Back button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Back button clickable " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Show Back button on Invite Supplier preview window {string}")
	public void show_Back_button_on_Invite_Supplier_preview_window(String string) throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("invitesupplierpreviewbackbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Back button visible " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Back button visible " + " " + string + " " + " on Invite Supplier window" + "\n");

	}

	@Then("Back button clickable on Invite Supplier preview window {string}")
	public void back_button_clickable_on_Invite_Supplier_preview_window(String string) throws InterruptedException {

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ENTER).build().perform();

		/*
		 * String original = ec.getObjects("invitesupplierpreviewbackbtn"); String
		 * formatXPATH = String.format(original);
		 * 
		 * WaitClass.webDriverWait(formatXPATH);
		 * 
		 * assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		 * logger.info("Back button clickable "+ " "+ string
		 * +" "+" on Invite Supplier window"+"\n");
		 * System.out.println("Back button clickable "+ " "+ string
		 * +" "+" on Invite Supplier window"+"\n");
		 */

	}

	@Then("Click on Back button on Invite Supplier window")
	public void click_on_Back_button_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("invitesupplierbackbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Back button on Invite Supplier window" + "\n");
		System.out.println("Click on Back button on Invite Supplier window" + "\n");
	}

	@Then("Show the title on Invite Supplier window {string}")
	public void show_the_title_on_Invite_Supplier_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliertitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Shows the title " + " " + string + " " + " on Invite Supplier window" + "\n");
		System.out.println("Shows the title " + " " + string + " " + " on Invite Supplier window" + "\n");
	}

	@Then("Show Next button on Invite Supplier Default Questionnaire window {string}")
	public void show_Next_button_on_Invite_Supplier_Default_Questionnaire_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierquestionnairenextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Shows the Next button " + " " + string + " " + " on Invite Supplier Questionnaire window" + "\n");
		System.out.println(
				"Shows the Next button " + " " + string + " " + " on Invite Supplier Questionnaire window" + "\n");
	}

	@Then("Next button clickable on Invite Supplier Default Questionnaire window {string}")
	public void next_button_clickable_on_Invite_Supplier_Default_Questionnaire_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierquestionnairenextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next button clickable " + " " + string + " " + " on Invite Supplier Questionnaire window" + "\n");
		System.out.println(
				"Next button clickable " + " " + string + " " + " on Invite Supplier Questionnaire window" + "\n");
	}

	@Then("Click on Next button clickable on Invite Supplier Default Questionnaire window {string}")
	public void click_on_Next_button_clickable_on_Invite_Supplier_Default_Questionnaire_window(String string)
			throws Throwable {
		String original = ec.getObjects("invitesupplierquestionnairenextbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Next button on Invite Supplier Questionnaire window" + "\n");
		System.out.println("Click on Next button on Invite Supplier Questionnaire window" + "\n");
	}

	@Then("Click on the Send Invite button on Invite Supplier window")
	public void click_on_the_Send_Invite_button_on_Invite_Supplier_window() throws Throwable {

		String original = ec.getObjects("invitesuppliersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("modal_x_button"))));
		Thread.sleep(6000);

	}

	@Then("Show toast message on Invite Suppliers window")
	public void show_toast_message_on_Invite_Suppliers_window() throws InterruptedException {
		Thread.sleep(2000);
		driver.findElement(By.xpath("toastmessage")).getText();
		Thread.sleep(2000);

		// driver.findElement(By.className("toast-class-name"));
		// String original = ec.getObjects("toastmessage"); String formatXPATH =
		// String.format(original);

		// WaitClass.webDriverWait(formatXPATH);

		// assertTrue(driver.findElement(By.xpath(original)).getText().contains(toString()))
		// ;
		// logger.info("Shows the message "+ " "+ toString +" "+" on Invite Supplier
		// confirmation window"+"\n");
		System.out.println("Shows the message  " + " " + " on Invite Supplier confirmation window" + "\n");

	}

	@Then("Show the message on Invite Supplier confirmation window {string}")
	public void show_the_message_on_Invite_Supplier_confirmation_window(String string) throws Throwable {
		String original = ec.getObjects("invitesupplierconfmsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows the message " + " " + string + " " + " on Invite Supplier confirmation window" + "\n");
		System.out
				.println("Shows the message  " + " " + string + " " + " on Invite Supplier confirmation window" + "\n");
		Thread.sleep(3000);
	}

	@Then("Show the company name message on Invite Supplier confirmation window {string}")
	public void show_the_company_name_message_on_Invite_Supplier_confirmation_window(String string)
			throws InterruptedException {

		String original = ec.getObjects("invitesuppliercompanynamefmsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		// logger.info("Shows the message "+ " "+ string +" "+" on Invite Supplier
		// confirmation window"+"\n");
		System.out.println("Shows the company name message  " + " " + string + " "
				+ " on Invite Supplier confirmation window" + "\n");

	}

	@Then("Shows Send Invite button on Invite Supplier confirmation window {string}")
	public void shows_Send_Invite_button_on_Invite_Supplier_confirmation_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(
				"Shows Send Invite button " + " " + string + " " + " on Invite Supplier confirmation window" + "\n");
		System.out.println(
				"Shows Send Invite button " + " " + string + " " + " on Invite Supplier confirmation window" + "\n");
	}

	@Then("Send Invite button clickable on Invite Supplier confirmation window {string}")
	public void send_Invite_button_clickable_on_Invite_Supplier_confirmation_window(String string) throws Throwable {
		String original = ec.getObjects("invitesuppliersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Send Invite button clickable " + " " + string + " " + " on Invite Supplier confirmation window"
				+ "\n");
		System.out.println("Send Invite button clickable " + " " + string + " "
				+ " on Invite Supplier confirmation window" + "\n");
	}

	@Then("Select label from the dropdown")
	public void select_label_from_the_dropdown() throws Throwable {
		Thread.sleep(5000);
		String original = ec.getObjects("selectlabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement webElement = driver.findElement(By.xpath(formatXPATH));
		JavascriptExecutor executor = (JavascriptExecutor) driver;
		executor.executeScript("arguments[0].click();", webElement);

		// driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys("PIF");
		Thread.sleep(5000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		Thread.sleep(5000);

		logger.info("Select label from dropdown" + "\n");
		System.out.println("Select label from dropdown" + "\n");
	}

	@Then("Verify received an email in supplier Inbox with subject {string}")
	public void verify_received_an_email_in_supplier_inbox_with_subject(String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.webDriverWait(original);

		// String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.findElement(By.xpath(ec.getObjects("mailinator_gobtn"))).click();
		Thread.sleep(1000);
		// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

		ArrayList<WebElement> GotIt = new ArrayList<WebElement>(
				driver.findElements(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		if (GotIt.size() > 0) {
			action.click(driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		} else {
			System.out.println("Got It button not found");
		}
		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Show {string} as {string} in InviteSupplierPreview")
	public void show_something_as_something_in_invitesupplierpreview(String string1, String string2) throws Throwable {
		String original = ec.getObjects("invitesupplier_Preview") + string2 + ec.getObjects("preview2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string2));

		logger.info("Showing  " + "'" + string2 + "'" + "\n");
		System.out.println("Showing  " + "'" + string2 + "'" + "\n");
	}

	@Then("Enter Supplier Company Name on Invite Supplier modal {string}")
	public void enter_Supplier_Company_Name_on_Invite_Supplier_modal(String CompanyName) {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(CompanyName);

		logger.info("Entered : " + "'" + CompanyName + "'" + " in Company Name field" + "\n");
		System.out.println("Entered : " + "'" + CompanyName + "'" + " in Company Name field" + "\n");
	}

	@Then("Enter Contact Email Address on Invite Supplier modal {string}")
	public void enter_Contact_Email_Address_on_Invite_Supplier_modal(String Email) {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
	}

	@Then("Enter Confirm Contact Email Address on Invite Supplier modal {string}")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_modal(String Email) {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Select {string} in {string} Prefered language dropdown Value")
	public void select_something_in_something_prefered_language_dropdown_value(String Option, String Label)
			throws Throwable {

		String original = ec.getObjects("prefered_label1") + Label + ec.getObjects("prefered_label2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		Thread.sleep(3000);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}

	@Then("Show {string} Label in {string}")
	public void show_something_label_in_something(String srmdetails, String xy) throws Throwable {
		String original = ec.getObjects("SRM_details3") + srmdetails + ec.getObjects("SRM_details2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String abcd = driver.findElement(By.xpath(formatXPATH)).getText();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), srmdetails);
		logger.info("Show" + " " + srmdetails + ":" + abcd + " " + " label on" + xy + "\n");
		System.out.println("Show" + " " + srmdetails + ":" + abcd + " " + " label on" + xy + "\n");
	}

	@Then("Show {string} tooltip {string} under {string} window")
	public void show_something_tooltip_something_under_something_window(String Label, String TTexpected, String SubCat)
			throws Throwable {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("header2") + Label
				+ ec.getObjects("header3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("SRM_tt1") + TTexpected + ec.getObjects("SRM_tt2");
		String formatXPATH1 = String.format(original1);

		String TTactual = driver.findElement(By.xpath(formatXPATH1)).getText();

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Enter {string} under SRM Name field in invite supplier window")
	public void enter_something_under_srm_name_field_in_invite_supplier_window(String string) throws Throwable {
		String original = ec.getObjects("SRM_feild");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " SRM field" + "\n");
		System.out.println("Entered : " + "'" + string + "'" + " SRM field" + "\n");
	}

	@Then("Show an error message at SRM Email Address field {string}")
	public void show_an_error_message_at_srm_email_address_field_something(String string) throws Throwable {
		String original = ec.getObjects("srmerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at SRM Email Address field " + " " + string + " "
				+ " on Invite Supplier window" + "\n");
		System.out.println("Show an error message at SRM Email Address field " + " " + string + " "
				+ " on Invite Supplier window" + "\n");
	}

	@Then("Show {string} description on screen")
	public void show_desciption_on_screen(String noteText) throws Throwable {
		String original = ec.getObjects("sibling_p_h5");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String actTxt = driver.findElement(By.xpath(formatXPATH)).getText().replaceAll("\\s", "");
		String expTxt = noteText.replaceAll("\\s", "");

		System.out.println("Actual description " + actTxt + "\n");
		System.out.println("Expected description " + expTxt + "\n");

		assertTrue(actTxt.contains(expTxt));

		logger.info("Showing description " + noteText + "\n");
		System.out.println("Showing description " + noteText + "\n");
	}

	@Then("Show {string} description below section")
	public void show_description_below_section(String noteText) throws Throwable {
		String original = ec.getObjects("p_below_div");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String actTxt = driver.findElement(By.xpath(formatXPATH)).getText().replaceAll("\\s", "");
		String expTxt = noteText.replaceAll("\\s", "");

		System.out.println("Actual description " + actTxt + "\n");
		System.out.println("Expected description " + expTxt + "\n");

		assertTrue(actTxt.equals(expTxt));

		logger.info("Showing description " + noteText + "\n");
		System.out.println("Showing description " + noteText + "\n");
	}

	@Then("Show {string} text no assigned")
	public void show_text_no_assigned(String noteText) throws Throwable {
		String original = ec.getObjects("p_below_section");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String actTxt = driver.findElement(By.xpath(formatXPATH)).getText().replaceAll("\\s", "");
		String expTxt = noteText.replaceAll("\\s", "");

		System.out.println("Actual description " + actTxt + "\n");
		System.out.println("Expected description " + expTxt + "\n");

		assertTrue(actTxt.equals(expTxt));

		logger.info("Showing description " + noteText + "\n");
		System.out.println("Showing description " + noteText + "\n");
	}

	@Then("Click on any suggestions")
	public void click_on_any_suggestions() throws Throwable {
		String original = ec.getObjects("row_list");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Thread.sleep(2000);

		Actions actions = new Actions(driver);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.ARROW_UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.sendKeys(Keys.UP);
		actions.build().perform();

		// JavascriptExecutor js = (JavascriptExecutor) driver;
		// js.executeScript("window.scrollBy(0,document.body.scrollHeight)");
		// js.executeScript("window.scrollBy(0,-750");
		// js.executeScript("window.scrollBy(0,-750");

		// WebElement element = driver.findElement(By.xpath(formatXPATH));
		// js.executeScript("arguments[0].scrollIntoView();", element);

		// int lastElement = driver.findElements(By.xpath(formatXPATH)).size() - 1;
		// driver.findElements(By.xpath(formatXPATH)).get(lastElement).click();

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on any suggestions " + "\n");
		System.out.println("Clicked on any suggestions " + "\n");
	}

	@Then("Show supplier name entered before on searchbox")
	public void show_supplier_name_entered_before_on_searchbox() {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String nameSuppNow = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		assertTrue(companyname.equals(nameSuppNow));

		logger.info("Showing the supplier name: " + companyname + " entered before on searchbox" + "\n");
		System.out.println("Showing the supplier name: " + companyname + " entered before on searchbox" + "\n");
	}

	@Then("Show {string} panel")
	public void show_panel(String title) {
		String original;
		if (("Preview".equals(title) || ("Supplier Relationship Contacts (Optional)".equals(title)))) {
			original = ec.getObjects("title_panel_h5") + title + ec.getObjects("preview2");
		} else {
			original = ec.getObjects("title_panel") + title + ec.getObjects("preview2");
		}

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info(title + " panel is visible" + "\n");
		System.out.println(title + " panel is visible" + "\n");
	}

//	@Then("Save value of {string} field")
//	public void save_value_of_field(String nameField) {
//		
//		String original = ec.getObjects("div_cont_txt_quoMarks") + nameField + ec.getObjects("input_box");
//
//		String formatXPATH = String.format(original);
//
//		WaitClass.webDriverWait(formatXPATH);
//		inforSupplier.put(nameField, driver.findElement(By.xpath(formatXPATH)).getAttribute("value"));
//
//		logger.info("Saved value of " + nameField + " is " + inforSupplier.get(nameField) + "\n");
//		System.out.println("Saved value of " + nameField + " is " + inforSupplier.get(nameField) + "\n");
//	}

	@Then("Save {string} value for {string} field on page")
	public void save_value_for_field_on_page(String val, String fieldName) {
		inforSupplier.put(fieldName, val);

		logger.info("Saved value of " + fieldName + " is " + inforSupplier.get(fieldName) + "\n");
		System.out.println("Saved value of " + fieldName + " is " + inforSupplier.get(fieldName) + "\n");
	}

	@Then("Save value of {string} field")
	public void save_value_of_the_field(String fieldName) {
		String original;
		if ("System ID".equals(fieldName)) {
			original = ec.getObjects("input_by_placeholder") + fieldName + ec.getObjects("no_round_brackets_end");
		} else {
			original = ec.getObjects("div_cont_txt_quoMarks") + fieldName + ec.getObjects("input_box");
		}

		String formatXPATH = String.format(original);
		String valExp = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		inforSupplier.put(fieldName, valExp);

		logger.info("Saved value of " + fieldName + " is " + inforSupplier.get(fieldName) + "\n");
		System.out.println("Saved value of " + fieldName + " is " + inforSupplier.get(fieldName) + "\n");
	}

//	@Then("Save information new user")
//	public void save_information_new_user() {
//		User user = new User();
//		String firstNameOriginal = ec.getObjects("inviteanewuserfirstname");
//		String lastNameOriginal = ec.getObjects("inviteanewuserlastname");
//		String emailOriginal = ec.getObjects("inviteanewuseremail");
//		String roleOriginal = ec.getObjects("inviteanewuserrole");
//
//		String formatFNXPATH = String.format(firstNameOriginal);
//		String formatLNXPATH = String.format(lastNameOriginal);
//		String formatEmailXPATH = String.format(emailOriginal);
//		String formatRoleXPATH = String.format(roleOriginal);
//
//		String firstName = driver.findElement(By.xpath(formatFNXPATH)).getAttribute("value");
//		String lastName = driver.findElement(By.xpath(formatLNXPATH)).getAttribute("value");
//		String email = driver.findElement(By.xpath(formatEmailXPATH)).getAttribute("value");
//		String role = driver.findElement(By.xpath(formatRoleXPATH)).getAttribute("value");
//
//		String optionRole = ec.getObjects("inviteanewuserrole") + ec.getObjects("option_value") + role
//				+ ec.getObjects("no_round_brackets_end");
//		String roleTxt = driver.findElement(By.xpath(String.format(optionRole))).getText();
//
//		String fullName = firstName + " " + lastName;
//
//		logger.info("User name: " + fullName + "\n");
//		logger.info("User email: " + email + "\n");
//		logger.info("User role: " + role + "\n");
//		System.out.println("User name: " + fullName + "\n");
//		System.out.println("User email: " + email + "\n");
//		System.out.println("User role: " + roleTxt + "\n");
//
//		user.setFirstName(firstName);
//		user.setLastName(lastName);
//		user.setEmail(email);
//		user.setRole(roleTxt);
//		user.setStatus("Pending");
//
//		users.add(user);
//
//		logger.info("Saved a new user" + "\n");
//		System.out.println("Saved a new user" + "\n");
//	}
	/*
	 * @Then("Save value of {string} field dropdown {string}") public void
	 * save_value_of_field_dropdown(String nameField, String typeDrpdwn) { String
	 * original = ec.getObjects("label_contains_txt") + nameField +
	 * ec.getObjects("select_field_dropdwn") + ("new".equals(typeDrpdwn)?
	 * "div//select":"select");
	 * 
	 * String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH); inforSupplier.put(nameField,
	 * driver.findElement(By.xpath(formatXPATH)).getAttribute("value"));
	 * 
	 * logger.info("Saved value of " + nameField + " is " +
	 * inforSupplier.get(nameField) + "\n"); System.out.println("Saved value of " +
	 * nameField + " is " + inforSupplier.get(nameField) + "\n"); }
	 * 
	 * @Then("Save value of {string} field on page") public void
	 * save_value_of_field_on_page(String fieldName) { String original =
	 * ec.getObjects("field_required") + fieldName + ec.getObjects("input_box");
	 * String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH); inforSupplier.put(fieldName,
	 * driver.findElement(By.xpath(formatXPATH)).getAttribute("value"));
	 * 
	 * logger.info("Saved value of " + fieldName + " is " +
	 * inforSupplier.get(fieldName) + "\n"); System.out.println("Saved value of " +
	 * fieldName + " is " + inforSupplier.get(fieldName) + "\n"); }
	 */

	@Then("Show {string} value entered before")
	public void show_value_entered_before(String nameField) {
		String original;
		if ("Supplier Country of Registration".equals(nameField)) {
			original = ec.getObjects("country_Registration");
		} else {

			original = ec.getObjects("div_cont_txt_quoMarks") + nameField + ec.getObjects("input_box");
		}
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String nameSuppNow = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		assertTrue(nameSuppNow.equals(inforSupplier.get(nameField)));

		logger.info(nameField + " is showing value: " + inforSupplier.get(nameField) + " entered before" + "\n");
		System.out.println(nameField + " is showing value: " + inforSupplier.get(nameField) + " entered before" + "\n");
	}

	@Then("Select {string} option in {string} dropdown")
	public void select_option_in_dropdown(String option, String fieldName) throws Exception {
		String dropdown = ec.getObjects("label_contains_txt") + fieldName + ec.getObjects("sub_field_drpdwn_end_invite");
		String formatDropdwnXPATH = String.format(dropdown);

		select_option_in_dropdown_field(option, fieldName, formatDropdwnXPATH);
	}

	@Then("Click {string} option for {string} field")
	public void click_option_for__field(String option, String fieldName) {
		String optionName = ec.getObjects("label_contains_txt") + fieldName + ec.getObjects("div_fl_sb")
				+ ec.getObjects("span_contains_Txt") + option + ec.getObjects("single_mark_end");
		String formatOptXPATH = String.format(optionName);

		driver.findElement(By.xpath(formatOptXPATH)).click();
		inforSupplier.put(fieldName, option);

		logger.info(option + " is clicked for " + fieldName + " field" + "\n");
		System.out.println(option + " is clicked for " + fieldName + " field" + "\n");
	}

	@Then("Click {string} tab on modal")
	public void click_tab_on_modal(String tabName) {
		String optionName = ec.getObjects("span_contains_Txt") + tabName + ec.getObjects("single_mark_end");
		String formatOptXPATH = String.format(optionName);

		driver.findElement(By.xpath(formatOptXPATH)).click();

		logger.info("Cliked on " + tabName + " tab on modal" + "\n");
		System.out.println("Cliked on " + tabName + " tab on modal" + "\n");
	}

	@Then("Get default questionnaire group")
	public void get_default_questionnaire_group() {
		String QG_default = ec.getObjects("QG_default");
		String formatXPATH = String.format(QG_default);

		WaitClass.webDriverWait(formatXPATH);

		default_QG = driver.findElement(By.xpath(formatXPATH)).getText();

		logger.info("Questionnaire Group default is " + default_QG + "\n");
		System.out.println("Questionnaire Group default is " + default_QG + "\n");
	}

	@Then("Show {string} group in blue Questionnaire Groups bar")
	public void show_group_in_blue_Questionnaire_Groups_bar(String group) {
		String original = ec.getObjects("QG_in_AssignQ");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String QG_Actual = driver.findElement(By.xpath(formatXPATH)).getText();

		assertTrue(QG_Actual.contains("default".equals(group) ? default_QG : group));

		logger.info("Showing Questionnaire Group default " + QG_Actual + "\n");
		System.out.println("Showing Questionnaire Group default " + QG_Actual + "\n");
	}

	@Then("Assign Questionnaire to QG")
	public void assign_questionnaire_to_QG() throws Exception {
		String originalQG = ec.getObjects("QG_selected");
		String originQ;
		boolean isQGDefaultSelect = false;
		String AddQuesToDefaultbtns = ec.getObjects("addtodefaults");
		String newQuestionnaire = ec.getObjects("questionnaires_not_added");

		String formatQGXPATH = String.format(originalQG);
		String formatbtnsXPATH = String.format(AddQuesToDefaultbtns);

		for (WebElement element : driver.findElements(By.xpath(formatQGXPATH))) {
			if (default_QG.equals(element.getText())) {
				originQ = ec.getObjects("span_contains_Txt") + default_QG + ec.getObjects("questionnaire");
				String QName = driver.findElement(By.xpath(String.format(originQ))).getText();
				questionnaires.add(QName);
				QGoups.put(default_QG, QName);
				isQGDefaultSelect = true;

				logger.info(default_QG + " is group of this questionnaire: "
						+ driver.findElement(By.xpath(String.format(originQ))).getText() + "\n");
				System.out.println(default_QG + " is group of this questionnaire: "
						+ driver.findElement(By.xpath(String.format(originQ))).getText() + "\n");
				break;
			}
		}
		if (!isQGDefaultSelect) {
			WebElement firstQuestionnaire = driver.findElements(By.xpath(String.format(newQuestionnaire))).get(0);
			WebElement AddBtn = driver.findElements(By.xpath(formatbtnsXPATH)).get(0);
			questionnaires.add(firstQuestionnaire.getText());
			AddBtn.click();
			Thread.sleep(200);

			// get Questionnaire Name
			StringBuffer originalVal = new StringBuffer(questionnaires.get(0));
			String removeLastCharacters = originalVal.reverse().toString().substring(6, originalVal.length());
			StringBuffer actVal = new StringBuffer(removeLastCharacters);
			String exptVal = String.valueOf(actVal.reverse());

			// Click on Questionnaire dropdown to select QG
			String QG_dropdown = ec.getObjects("discover_filter_variable") + exptVal + ec.getObjects("QGs_dropdown");
			String formatQGdropdwnXPATH = String.format(QG_dropdown);
			driver.findElement(By.xpath(formatQGdropdwnXPATH)).click();

			logger.info("Clicked on dropdown" + "\n");
			System.out.println("Clicked on dropdown" + "\n");

			// Click on QG as expected
			String QG_default_option = ec.getObjects("discover_filter_variable") + default_QG
					+ ec.getObjects("discoversupplier2");
			String formatoptionXPATH = String.format(QG_default_option);
			WaitClass.webDriverWait(formatoptionXPATH);
			driver.findElement(By.xpath(formatoptionXPATH)).click();

			logger.info("Clicked on default group in dropdown" + "\n");
			System.out.println("Clicked on default group in dropdown" + "\n");

			// Click on Update button on Manage Questionnaires
			String updatebutton = ec.getObjects("update_btn");
			String formatXPATHupdatebutton = String.format(updatebutton);
			((JavascriptExecutor) driver).executeScript("window.scrollTo(document.body.scrollHeight, 0)");
			WaitClass.webDriverWait(formatXPATHupdatebutton);
			Thread.sleep(200);
			driver.findElement(By.xpath(updatebutton)).click();

			logger.info("Clicked on the Manage Questionnaires" + "\n");
			System.out.println("Clicked on the Manage Questionnaires" + "\n");

			// switch
			driver.switchTo().activeElement();
			Thread.sleep(500);

			// Click on Update button on modal
			String updatebuttononmodal = ec.getObjects("default_qg_updatebutton");
			String formatXPATHupdateonmodal = String.format(updatebuttononmodal);
			WaitClass.webDriverWait(formatXPATHupdateonmodal);
			driver.findElement(By.xpath(updatebuttononmodal)).click();
			Thread.sleep(500);

			logger.info("Clicked on update button on the modal" + "\n");
			System.out.println("Clicked on update button on the modal" + "\n");
		}

	}

	// will remove
	@Then("Show Questionnaires in the group table")
	public void show_Questionnaires_in_the_group_table() {
		String original;
		String formatXPATH;
		WebElement exptQues;
		for (String questionnaire : questionnaires) {
			StringBuffer originalTxt = new StringBuffer(questionnaire);
			String removeLastCharacters = originalTxt.reverse().toString().substring(6, originalTxt.length());
			StringBuffer actTxt = new StringBuffer(removeLastCharacters);
			String exptTxt = String.valueOf(actTxt.reverse());

			original = ec.getObjects("discover_filter_variable") + exptTxt + ec.getObjects("discoversupplier2");
			formatXPATH = String.format(original);

			exptQues = driver.findElement(By.xpath(formatXPATH));
			assertTrue(exptQues.isDisplayed());

			logger.info("Showing questionnaires: " + exptQues.getText() + "\n");
			System.out.println("Showing questionnaires: " + exptQues.getText() + "\n");
		}

	}

	@Then("Show {string} questionnaire in the group table")
	public void show_questionnaire_in_the_group_table(String string) {
		String original = ec.getObjects("discover_filter_variable") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing questionnaires: " + string + "\n");
		System.out.println("Showing questionnaires: " + string + "\n");
	}

	@Then("Show {string} QG and Questionnaire of that QG in the group table")
	public void show_QG_and_Questionnaire_of_that_QG_in_the_group_table(String QGName) {
		String originalQG;
		String formatXPATHQG;

		if (QGName.equals("default")) {
			QGName = default_QG;
		}

		for (String key : QGoups.keySet()) {
			if (QGName.equals(key)) {
				originalQG = ec.getObjects("span_contains_Txt") + key + ec.getObjects("single_mark_end");
				formatXPATHQG = String.format(originalQG);

				assertTrue(driver.findElement(By.xpath(formatXPATHQG)).isDisplayed());

				logger.info("Showing QG: " + key + "\n");
				System.out.println("Showing QG: " + key + "\n");
			}
		}

		StringBuffer originalTxt = new StringBuffer(QGoups.get(QGName));
		String removeLastCharacters = originalTxt.reverse().toString().substring(6, originalTxt.length());
		StringBuffer actTxt = new StringBuffer(removeLastCharacters);
		String exptTxt = String.valueOf(actTxt.reverse());

		String originalQ = ec.getObjects("discover_filter_variable") + exptTxt + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(originalQ);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing questionnaire: " + exptTxt + "\n");
		System.out.println("Showing questionnaire: " + exptTxt + "\n");

	}

	@Then("Show Click here on Assign Questionnaires screen")
	public void show_Click_here_on_Assign_Questionnaires_screen() throws InterruptedException {
		JavascriptExecutor j = (JavascriptExecutor) driver;
		j.executeScript("window.scrollBy(0,500)");
		Thread.sleep(3000);

		String original = ec.getObjects("clickHere");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Click here link is showeing on Assign Questionnaire screen" + "\n");
		System.out.println("Click here link is showeing on Assign Questionnaire screen" + "\n");
	}

	@Then("Enter {string} value in Contact Number field")
	public void enter_value_in_Contact_Number_field(String string) throws Exception {
		String original = ec.getObjects("contactNumberOpt");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered value on the " + string + "\n");
		System.out.println("Entered value on the " + string + "\n");
		Thread.sleep(3000);
	}

	@Then("Enter {string} value on {string} field")
	public void enter_value_on_field(String val, String fieldName) throws Throwable {
		String original = ec.getObjects("div_cont_txt_quoMarks") + fieldName + ec.getObjects("input_box");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(val);

		logger.info("Entered value on the " + fieldName + "\n");
		System.out.println("Entered value on the " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Enter {string} value for {string} field on any screen")
	public void enter_value_for_field_on_any_screen(String val, String fieldName) throws Throwable {

		String original = ec.getObjects("input_by_placeholder") + fieldName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(val);

		logger.info("Entered value on the " + fieldName + "\n");
		System.out.println("Entered value on the " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Click on {string} radio option on {string}")
	public void click_on_radio_option_on(String option, String fieldName) throws Throwable {

		String original = ec.getObjects("span_contains_Txt") + option + ec.getObjects("single_mark_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + option + " raido option on " + fieldName + "\n");
		System.out.println("Clicked on " + option + " raido option on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Enter {string} value in {string} input field")
	public void enter_value_in_input_field(String val, String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + fieldName + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(val);

		logger.info("Entered value in " + fieldName + " input field" + "\n");
		System.out.println("Entered value in " + fieldName + " input field" + "\n");
		Thread.sleep(300);
	}

	@Then("Enter {string} value in {string} textarea field")
	public void enter_value_in_textarea_field(String val, String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + fieldName + ec.getObjects("textarea_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(val);

		logger.info("Entered value in " + fieldName + " textarea field" + "\n");
		System.out.println("Entered value in " + fieldName + " textarea field" + "\n");
		Thread.sleep(300);
	}

	@Then("Click on {string} option in {string} checkbox field")
	public void enter_value_in_checkbox_field(String val, String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + val + ec.getObjects("checkbox_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on option " + val + " in " + fieldName + " checkbox field" + "\n");
		System.out.println("Clicked on option " + val + " in " + fieldName + " checkbox field" + "\n");
		Thread.sleep(300);
	}

	@Then("Select {string} on {string} field")
	public void select_a_date(String date, String fileName) {
		String original = ec.getObjects("date_picker");

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(date);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Selected: " + date + "on " + fileName + "\n");
		System.out.println("Selected: " + "on " + fileName + "\n");
	}

	@Then("Show {string} title row")
	public void show_title_row(String titleName) {
		String original = ec.getObjects("title_row") + titleName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info(titleName + " title row is visible" + "\n");
		System.out.println(titleName + " title row is visible" + "\n");
	}

	@Then("Preview value entered on {string} field has {string} tag")
	public void preview_value_entered_on_field_has_tag(String nameField, String tagName) {
		String original;
		String valAct;
		if ("select no p".equals(tagName)) {
			original = ec.getObjects("label_contains_txt") + nameField + ec.getObjects("select_following_sibling");
		} else if ("select".equals(tagName)) {
			original = ec.getObjects("label_contains_txt") + nameField + ec.getObjects("p_following_sibling");
		} else if ("span".equals(tagName)) {
			original = ec.getObjects("span_contains_Txt") + nameField + ec.getObjects("p_following_sibling");
		} else if ("div no time".equals(tagName)) {
			original = ec.getObjects("p_contains_txt") + nameField + ec.getObjects("div_following_sibling");
		} else if ("div".equals(tagName)) {
			original = ec.getObjects("p_contains_txt") + nameField + ec.getObjects("time_following_sibling");
		} else if ("default QG".equals(nameField)) {
			original = ec.getObjects("p_contains_txt") + default_QG + ec.getObjects("single_mark_end");
		} else {
			original = ec.getObjects("p_cont_txt_quoMarks") + nameField + ec.getObjects("p_quoMarks_fl_sb");
		}
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		if ("select no p".equals(tagName)) {
			valAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		} else {
			valAct = driver.findElement(By.xpath(formatXPATH)).getText();
		}

		System.out.println("valAct: " + valAct.trim());

		if ("default QG".equals(nameField)) {
			System.out.println("nameField is saved before: " + default_QG.trim());
			assertTrue(valAct.trim().contains(default_QG.trim()));
		} else {
			System.out.println("nameField is saved before: " + inforSupplier.get(nameField).toString().trim());
			assertTrue(valAct.trim().contains(inforSupplier.get(nameField).toString().trim()));
		}
	}

	@Then("Verify toast message {string} successfully is shown")
	public void verify_toast_message_successfully_is_shown(String contentMess) throws Throwable {
		String original = ec.getObjects("message_invite_success");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		if(driver.findElement(By.xpath(original)).getText().contains(companyname)) {
			String expectedToast = companyname + " was " + contentMess;
			WaitClass.webDriverWait(formatXPATH);
			logger.info(driver.findElement(By.xpath(original)).getText());
			assertTrue(driver.findElement(By.xpath(original)).getText().contains(expectedToast));

			logger.info("Showing the message: " + expectedToast + " on Invite Supplier window" + "\n");
			System.out.println("Showing the message: " + expectedToast + " on Invite Supplier  window" + "\n");

			Thread.sleep(1000);
		}
		else if(driver.findElement(By.xpath(original)).getText().contains(newRoleName)) {
			String expectedToast = "Saved new User role: " + newRoleName;
			WaitClass.webDriverWait(formatXPATH);
			logger.info(driver.findElement(By.xpath(original)).getText());
			assertTrue(driver.findElement(By.xpath(original)).getText().contains(contentMess));

			logger.info("Showing the message: " + contentMess + " on Invite Supplier window" + "\n");
			System.out.println("Showing the message: " + contentMess + " on Invite Supplier  window" + "\n");

			Thread.sleep(1000);
		}
		else{

			WaitClass.webDriverWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(original)).getText().contains(contentMess));

			logger.info("Showing the message: " + contentMess + " on Invite Supplier window" + "\n");
			System.out.println("Showing the message: " + contentMess + " on Invite Supplier  window" + "\n");

			Thread.sleep(1000);
		}
	}

	@Then("Close the tab")
	public void close_the_tab() throws InterruptedException {
		driver.switchTo().defaultContent();

		logger.info("\n" + "Closed current tab" + "\n");
		System.out.println("\n" + "Closed current tab" + "\n");
	}

	@Then("Click on Invite Supplier button on Connected Suppliers")
	public void click_on_Invite_Supplier_button_on_Connected_Suppliers() throws Throwable {
		String original = ec.getObjects("invite_button");
		String formatXPATH = String.format(original);
		try {
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on Invite Supplier button on Connected Suppliers" + "\n");
		System.out.println("Click on Invite Supplier button on Connected Suppliers " + "\n");
		}
		catch (ElementClickInterceptedException e) {
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
	}

	@Then("Enter value for {string} field")
	public void enter_value_for_field(String fieldName) throws Throwable {
		String original = ec.getObjects("input_by_placeholder") + fieldName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);
		int numbersRandom = ThreadLocalRandom.current().nextInt();
		String val = String.format("%d", numbersRandom).substring(1, 6);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(val);

		logger.info("Enter value for " + fieldName + "\n");
		System.out.println("Enter value for " + fieldName + "\n");
		Thread.sleep(2000);
	}

	@Then("Verify option selected before is kept on {string} field")
	public void verify_radio_option_is_kept_on_field(String fieldName) throws Throwable {
		String original = ec.getObjects("p_cont_txt_quoMarks") + fieldName + ec.getObjects("h6_parent_quoMarks")
				+ ec.getObjects("rdb_checked");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String optAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		System.out.println("Value actual is " + optAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName).toUpperCase(), optAct.toUpperCase());

		logger.info(inforSupplier.get(fieldName) + " raido option still is checked on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " raido option still is checked on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify option selected before is kept on {string} dropdown field")
	public void verify_option_selected_before_is_kept_on_dropdown_field(String fieldName) throws Throwable {
		String original = ec.getObjects("label_var") + fieldName + ec.getObjects("dropdown_new_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String optAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		System.out.println("Value actual is " + optAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName).toLowerCase(), optAct.toLowerCase());

		logger.info(inforSupplier.get(fieldName) + " option still is selected on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " option still is selected on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered before is kept on {string} input field")
	public void verify_value_entered_before_is_kept_on_input_field(String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + fieldName + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String valAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		System.out.println("Value actual is " + valAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), valAct);

		logger.info(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered before is kept on {string} textarea field")
	public void verify_value_entered_before_is_kept_on_textarea_field(String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + fieldName + ec.getObjects("textarea_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String valAct = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Value actual is " + valAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), valAct);

		logger.info(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " still is kept " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered before is kept on {string} datepicker field")
	public void verify_value_entered_before_is_kept_on_datepicker_field(String fieldName) throws Exception {
		String original = ec.getObjects("date_picker");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String valAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		System.out.println("Value actual is " + valAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), valAct);

		logger.info(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered before is kept on {string} search field")
	public void verify_value_entered_before_is_kept_on_search_field(String fieldName) throws Exception {
		String original = ec.getObjects("span_below_div");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String valAct = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Value actual is " + valAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), valAct);

		logger.info(inforSupplier.get(fieldName) + " still is kept on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " still is kept " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered before is kept on {string} checkbox field")
	public void verify_value_entered_before_is_kept_on_checkbox_field(String fieldName) throws Exception {
		String original = ec.getObjects("label_var") + inforSupplier.get(fieldName) + ec.getObjects("checkbox_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info(inforSupplier.get(fieldName) + " still is checked on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " still is checked on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered is shown on {string} field")
	public void verify_value_entered_is_shown_on_field(String fieldName) throws Throwable {

		String original = ec.getObjects("label_contains_txt") + fieldName + ec.getObjects("spanTxt_below_span");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String optAct = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Value actual is " + optAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");
		assertEquals(inforSupplier.get(fieldName), optAct);

		logger.info(inforSupplier.get(fieldName) + " value is shown on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " value is shown on " + fieldName + "\n");
		Thread.sleep(300);
	}

	@Then("Verify value entered is shown on {string} input field")
	public void verify_value_entered_is_shown_on_input_field(String fieldName) throws Throwable {

		String original = ec.getObjects("label_contains_txt") + fieldName + ec.getObjects("sinling_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String optAct = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		System.out.println("Value actual is " + optAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), optAct);

		logger.info(inforSupplier.get(fieldName) + " value is shown on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " value is shown on " + fieldName + "\n");
		Thread.sleep(3000);
	}

	@Then("Verify value entered is shown on {string} radio field")
	public void verify_value_entered_is_shown_on_radio_field(String fieldName) throws Throwable {
		String original = ec.getObjects("label_contains_txt") + fieldName + ec.getObjects("rdb_checked_quoMarks");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String optAct = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Value actual is " + optAct + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName) + "\n");

		assertEquals(inforSupplier.get(fieldName), optAct);

		logger.info(inforSupplier.get(fieldName) + " option is shown on " + fieldName + "\n");
		System.out.println(inforSupplier.get(fieldName) + " option  is shown on " + fieldName + "\n");
		Thread.sleep(3000);
	}

	@Then("Click on {string} Questionnaire on tab")
	public void click_on_Questionnaire_on_tab(String questionnaireName) throws Throwable {
		String original = ec.getObjects("label_var") + questionnaireName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(300);

		logger.info("Clicked on " + questionnaireName + "\n");
		System.out.println("Clicked on " + questionnaireName + "\n");
		Thread.sleep(3000);
	}

	@Then("Verify show value enterd before on {string} field")
	public void verify_shown_value_entered_before_on_field(String fieldName) throws Throwable {
		String original = ec.getObjects("p_contains_txt") + fieldName + ec.getObjects("strong_below_p");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String valAct = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Value actual is " + valAct.toUpperCase() + "\n");
		System.out.println("Value is entered before: " + inforSupplier.get(fieldName).toUpperCase() + "\n");

		assertEquals(inforSupplier.get(fieldName).toUpperCase(), valAct.toUpperCase());
		Thread.sleep(300);

		Thread.sleep(300);
	}

	@Then("Assign questionnaire to {string} QG and {string} QG")
	public void check_QG_is_in_same_QG(String QG1, String QG2) throws Throwable {
		if ("default".equals(QG2)) {
			QG2 = default_QG;
		} else if ("default".equals(QG1)) {
			QG1 = default_QG;
		}

		String AddQuesToDefaultbtns = ec.getObjects("addtodefaults");
		String newQuestionnaire = ec.getObjects("questionnaires_not_added");

		String formatbtnsXPATH = String.format(AddQuesToDefaultbtns);
		String formatNewQXPATH = String.format(newQuestionnaire);

		String nameQuestionnaire = driver.findElements(By.xpath(formatNewQXPATH)).get(0).getText();
		WebElement AddBtn = driver.findElements(By.xpath(formatbtnsXPATH)).get(0);
		QGoups.put(QG1, nameQuestionnaire);
		QGoups.put(QG2, nameQuestionnaire);
		AddBtn.click();
		Thread.sleep(2000);
		AddQuestionnaireToQG(nameQuestionnaire, QG1);
		Thread.sleep(50000);
		AddQuestionnaireToQG(nameQuestionnaire, QG2);
	}

	@Then("Assign new questionnaire to {string} QG")
	public void get_or_Assign_new_questionnaire_to_QG(String QGName) throws Throwable {
		if ("default".equals(QGName)) {
			QGName = default_QG;
		}

		String AddQuesToDefaultbtns = ec.getObjects("addtodefaults");
		String newQuestionnaire = ec.getObjects("questionnaires_not_added");

		String formatbtnsXPATH = String.format(AddQuesToDefaultbtns);
		String formatNewQXPATH = String.format(newQuestionnaire);

		String nameQuestionnaire = driver.findElements(By.xpath(formatNewQXPATH)).get(0).getText();
		Thread.sleep(3000);
		WebElement AddBtn = driver.findElements(By.xpath(formatbtnsXPATH)).get(0);
		QGoups.put(QGName, nameQuestionnaire);
		AddBtn.click();
		Thread.sleep(3000);
		AddQuestionnaireToQG(nameQuestionnaire, QGName);

	}

	@Then("Click on Update button on Manage Questionnaires")
	public void click_on_Update_button_on_Manage_Questionnaires() throws Exception {
		// Click on Update button on Manage Questionnaires
		String updatebutton = ec.getObjects("update_btn");
		String formatXPATHupdatebutton = String.format(updatebutton);

		((JavascriptExecutor) driver).executeScript("window.scrollTo(document.body.scrollHeight, 0)");
		WaitClass.webDriverWait(formatXPATHupdatebutton);
		Thread.sleep(3000);
		driver.findElement(By.xpath(updatebutton)).click();

		logger.info("Clicked on the Manage Questionnaires" + "\n");
		System.out.println("Clicked on the Manage Questionnaires" + "\n");

	}

	@Then("Click on Update button confirm")
	public void click_on_Update_button_confirm() throws Exception {
		String updatebuttononmodal = ec.getObjects("default_qg_updatebutton");
		String formatXPATHupdateonmodal = String.format(updatebuttononmodal);

		WaitClass.webDriverWait(formatXPATHupdateonmodal);

		driver.findElement(By.xpath(updatebuttononmodal)).click();
		Thread.sleep(5000);

		logger.info("Clicked on Update button confirm" + "\n");
		System.out.println("Clicked on Update button confirm" + "\n");
	}

	@Then("Click on small number beside questionnaire of {string} QG")
	public void click_on_small_number_beside_questionnaire_of_QG(String nameField) {
		String nameQ;
		if ("default".equals(nameField)) {
			nameQ = QGoups.get(default_QG);
		} else {
			nameQ = QGoups.get(nameField);
		}

		StringBuffer originalVal = new StringBuffer(nameQ);
		String removeLastCharacters = originalVal.reverse().toString().substring(6, originalVal.length());
		StringBuffer actVal = new StringBuffer(removeLastCharacters);
		String exptVal = String.valueOf(actVal.reverse());

		String numBtn = ec.getObjects("discover_filter_variable") + exptVal + ec.getObjects("btn_below");
		String formatXPATH = String.format(numBtn);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on small number beside questionnaire of " + nameField + " QG" + "\n");
		System.out.println("Click on small number beside questionnaire of " + nameField + " QG" + "\n");
	}

	@Then("Show {string} field on tooltip when hover on small number")
	public void show_field_on_tooltip_when_hover_on_small_number(String nameField) throws Exception {
		String tooltip = ec.getObjects("role_tooltip");
		String formatXPATH = String.format(tooltip);

		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(300);
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();

		logger.info("Show " + nameField + " field on tooltip when hover on small number" + "\n");
		System.out.println("Show " + nameField + " field on tooltip when hover on small number" + "\n");
	}

	@Then("Remove questionnaire just added in {string} group")
	public void remove_questionnaire_just_added(String QGName) {
		if ("default".equals(QGName)) {
			QGName = default_QG;
		}
		// get Questionnaire Name
		StringBuffer originalVal = new StringBuffer(QGoups.get(QGName));
		String removeLastCharacters = originalVal.reverse().toString().substring(6, originalVal.length());
		StringBuffer actVal = new StringBuffer(removeLastCharacters);
		String exptVal = String.valueOf(actVal.reverse());

		String deleteIcon = ec.getObjects("discover_filter_variable") + exptVal + ec.getObjects("delete_icon_btn");
		String formatXPATH = String.format(deleteIcon);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Remove questionnaire just added in " + QGName + "\n");
		System.out.println("Remove questionnaire just added in " + QGName + "\n");
	}

	@Then("Show {string} QG in supplier profile")
	public void show_QG_in_supplier_profile(String QGName) {
		if ("default".equals(QGName)) {
			QGName = default_QG;
		}
		String original = ec.getObjects("span_Txt") + QGName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,document.body.scrollHeight)");

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing the QG " + QGName + " in supplier profile" + "\n");
		System.out.println("Showing the QG " + QGName + " in supplier profile" + "\n");
	}

	@Then("Show {string} questionnaire in supplier profile")
	public void show_questionnaire_in_supplier_profile(String QName) {
		String contentFristCol = ec.getObjects("txt_first_col");
		String formatColFirstXPATH = String.format(contentFristCol);

		assertTrue(does_text_show(QName, formatColFirstXPATH));
		logger.info("Showing the questionnaire " + QName + " in supplier profile" + "\n");
		System.out.println("Showing the questionnaire " + QName + " in supplier profile" + "\n");

	}

	@Then("Show questionnaire of {string} QG in supplier profile")
	public void show_questionnaire_of_QG_in_supplier_profile(String QName) {
		String questionnaire = QGoups.get(QName);
		String contentFristCol = ec.getObjects("txt_first_col1");
		String formatColFirstXPATH = String.format(contentFristCol);

		assertTrue(does_text_show(questionnaire, formatColFirstXPATH));
		logger.info("Showing the questionnaire " + questionnaire + " in supplier profile" + "\n");
		System.out.println("Showing the questionnaire " + questionnaire + " in supplier profile" + "\n");

	}

	@When("User click on side toggle icon")
	public void user_click_on_side_toggle_icon() {
		String contentFristCol = ec.getObjects("toggle_icon");
		String formatColFirstXPATH = String.format(contentFristCol);
		driver.findElement(By.xpath(formatColFirstXPATH)).click();
		logger.info("Clicked on Toggle Icon" + "\n");
		System.out.println("Clicked on Toggle Icon" + "\n");
	}

	@When("User click on Admin expand icon")
	public void user_click_on_Admin_expand_icon() {
		String contentFristCol = ec.getObjects("admin_expand_icon");
		String formatColFirstXPATH = String.format(contentFristCol);
		driver.findElement(By.xpath(formatColFirstXPATH)).click();
		logger.info("Clicked on Admin expand icon" + "\n");
		System.out.println("Clicked on Admin expand icon" + "\n");
	}

	@Then("Show {string} optional field")
	public void show_optional_field(String label) throws Throwable {
		String original = ec.getObjects("div_tooltip_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String actTxt = driver.findElement(By.xpath(formatXPATH)).getText();

		System.out.println("Actual label " + actTxt + "\n");
		System.out.println("Expected label " + label + "\n");

		assertTrue(label.equals(actTxt));

		logger.info("Showing " + label + " optionnal field" + "\n");
		System.out.println("Showing " + label + " optionnal field" + "\n");
	}

	@Then("Get Role Name as Relationship Manage Role")
	public void get_Role_Name_as_Relationship_Manage_Role() {
		String expTxt;
		String original = ec.getObjects("checkboxes_names_checked");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		for (WebElement webElement : driver.findElements(By.xpath(formatXPATH))) {
			String actTxt = webElement.getText();
			System.out.println("Role Name: " + actTxt);

			if (actTxt.indexOf("\n") >= 0) {
				expTxt = actTxt.substring(0, actTxt.indexOf("\n"));
			} else {
				expTxt = actTxt;
			}

			RelationshipManageRole.add(expTxt);

			logger.info("Role Name: " + expTxt + " as Relationship Manage Roles" + "\n");
			System.out.println("Role Name: " + expTxt + " as Relationship Manage Roles" + "\n");
		}
	}

	@Then("Verify all role tagged as RMR showing in RMR column")
	public void verify_all_role_tagged_as_RMR_showing_in_RMR_column() {
		System.out.println("Relationship Manage Role have " + RelationshipManageRole.size() + " roles" + "\n");

		for (String roleName : RelationshipManageRole) {
			System.out.println(roleName);
			String original = ec.getObjects("div_txt") + roleName + ec.getObjects("no_round_brackets_end");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

			logger.info("Showing Role Name: " + roleName + " in Relationship Manage Roles column" + "\n");
			System.out.println("Showing Role Name: " + roleName + " in Relationship Manage Roles column" + "\n");
		}
	}

	@Then("Verify checkbox display corresponds to new role copied from {string} role")
	public void verify_checkbox_display_corresponds_to_new_role_copied_from(String roleName) {
		// roleName = roleName.replaceAll("\\s", "");
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(roleName) && (role.isRMR())) {
				// String original = ec.getObjects("manageuser_containsTextXpath_Variable") +
				// role.getRoleName() + ec.getObjects("checkbox_copy");
				String original = ec.getObjects("SRM_details1") + roleName + ec.getObjects("check_box");

				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
				logger.info("Shown checkbox corresponds to the " + role + " role " + "\n");
				System.out.println("Shown checkbox corresponds to the " + role + " role " + "\n");
			}
		}
	}

	@Then("Verify Update Contacts icon display corresponds to new role copied from {string} role")
	public void verify_Update_Contacts_icon_display_corresponds_to_new_role_copied_from_role(String roleName) {
		// roleName = roleName.replaceAll("\\s", "");
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(roleName) && (role.isRMR())) {
				// String original = ec.getObjects("SRM_details1") + role.getRoleName()+
				// ec.getObjects("upd_contact_icon");
				String original = ec.getObjects("SRM_details1") + role.getRoleName() + ec.getObjects("editupdate_icon");
				String formatXPATH = String.format(original);

				WaitClass.webDriverWait(formatXPATH);

				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

				logger.info("Shown Update Contacts icon corresponds to the " + role + " role " + "\n");
				System.out.println("Shown Update Contacts icon corresponds to the " + role + " role " + "\n");
			}
		}
	}

	@Then("Create new random role from {string} role and tag as RMR {string}")
	public void create_new_role_role_from_role_and_tag_as_RMR(String abc, String option) throws Throwable {

		String usrRoleinput = ec.getObjects("manageuser_roleName_input");
		String formatOptXPATH = String.format(usrRoleinput);
		WaitClass.webDriverWait(formatOptXPATH);
		// enter new role name
		newRoleName = RandomStringUtils.randomAlphabetic(8);
		driver.findElement(By.xpath(ec.getObjects("manageuser_roleName_input"))).sendKeys(newRoleName);

		logger.info("Entered " + "'" + newRoleName + "'" + " in Role Name field" + "\n");
		System.out.println("Entered " + "'" + newRoleName + "'" + " in Role Name field" + "\n");

		WebElement copyFromdrp = driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown")));
		Select dropdown = new Select(copyFromdrp);
		List alldropdownOptions = dropdown.getOptions();
		Iterator iterator = alldropdownOptions.iterator();
		while (iterator.hasNext()){
			WebElement element = (WebElement) iterator.next();
			if(element.getText().equals(abc)){
				element.click();
				logger.info("Internal Buyer"+ " is select form the Dropdown");
			}
		}

		// Click on Create role
		driver.findElement(By.xpath(ec.getObjects("manageuser_CreateRole_btn"))).click();
		logger.info("Clicked on Create Role button" + "\n");
		System.out.println("Clicked on Create Role button" + "\n");

		// Agree tag as Relationship Manage role or not
		driver.findElement(By.xpath(ec.getObjects("discover_button") + option + ec.getObjects("discoversupplier2")))
				.click();
		logger.info("Clicked on Yes tagged as RMR" + "\n");
		System.out.println("Clicked on Yes tagged as RMR" + "\n");

		verify_toast_message_successfully_is_shown("Saved new User role");

		logger.info("'" + newRoleName + "'" + " role is added in Edit Permissions Tab" + "\n");
		System.out.println("'" + newRoleName + "'" + " role is added in Edit Permissions Tab" + "\n");

	}

	@Then("Delete new role copy from {string}")
	public void delete_role(String roleName) {

		String original = ec.getObjects("Notifi_seresult")+newRoleName+ec.getObjects("deleteRolebtn");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Deleted the role: " + newRoleName + "\n");
		System.out.println("Deleted the role: " + newRoleName + "\n");

			}



	@Then("Verify new role copy from {string} role shows on {string}")
	public void verify_new_role_copy_from_role_shows_on(String roleName, String screen) {
		// roleName = roleName.replaceAll("\\s", "");
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(roleName) && (role.isRMR())) {
				roleName = role.getRoleName();
				System.out.println("\n" + roleName + "\n");
				String original = ec.getObjects("SRM_details1") + roleName + ec.getObjects("SRM_details2");
				String formatXPATH = String.format(original);

				System.out.println("\n" + "Waiting " + roleName + "visiable" + "\n");
				System.out.println("\n" + "Check RMR " + role.isRMR() + "visiable" + "\n");
				System.out.println("\n" + "Xpath: " + formatXPATH + "visiable" + "\n");

				WaitClass.webDriverWait(formatXPATH);

				if (role.isRMR()) {
					assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

					logger.info("Showing Role Name: " + roleName + " in Relationship Manage Roles column" + "\n");
					System.out
							.println("Showing Role Name: " + roleName + " in Relationship Manage Roles column" + "\n");

				} else {
					assertFalse(stepDefs.isDisplayed(formatXPATH));

					logger.info("Role: " + roleName + " was not shown in " + screen + "\n");
					System.out.println("Role: " + roleName + " was not shown in " + screen + "\n");

				}
				break;
			}
		}
	}

	@Then("Click on Update contacts icon on {string} role")
	public void click_on_Update_contacts_icon_on(String roleName) {
//		// roleName = roleName.replaceAll("\\s", "");
//		for (Role role : UserUtils.getRoles()) {
//			if (role.getRoleName().contains(roleName) && role.isRMR()) {
//				roleName = role.getRoleName();
//				// String original = ec.getObjects("SRM_details1") + roleName +
//				// ec.getObjects("upd_contact_icon");
				String original = ec.getObjects("SRM_details1") + roleName + ec.getObjects("editupdate_icon");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);

				driver.findElement(By.xpath(formatXPATH)).click();

				logger.info("Clicked on Update contacts icon on " + roleName + "\n");
				System.out.println("Clicked on Update contacts icon on " + roleName + "\n");

			}


	@Then("Show the contact of {string} role")
	public void show_the_contact_of_role(String role) {
	    String original;
	    String formatXPATH;
	    // role = role.replaceAll("\\s", "");
	    for (User user : UserUtils.getUsers()) {
	       if (user.getRole().getRoleName().contains(role) && user.getRole().isRMR()) {
	    	   String s = ec.getObjects("span_contains_Txt") + Email
	    				+ ec.getObjects("single_mark_end");
	          formatXPATH = String.format(s);
	          if ("Access Removed".equals(user.getStatus())) {
	             // assertFalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

	             logger.info("Contact: " + user.getFirstName() + " " + user.getLastName() + " , " + user.getEmail()
	                   + " was not shown" + "\n");
	             System.out.println("Contact: " + user.getFirstName() + " " + user.getLastName() + " , "
	                   + user.getEmail() + " was not shown" + "\n");

	          } else {
	             // WaitClass.webDriverWait(formatXPATH);
	             assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

	             logger.info("Showing contact: " + user.getFirstName() + " " + user.getLastName() + " , "
	                   + user.getEmail() + "\n");
	             System.out.println("Showing contact: " + user.getFirstName() + " " + user.getLastName() + " , "
	                   + user.getEmail() + "\n");
	          }
	       }
	    }
	}
	@Then("Show all contacts has {string} role")
	public void show_all_contacts_has_role(String role) {
		// role = role.replaceAll("\\s", "");
		for (User user : UserUtils.getUsers()) {
			if (user.getRole().getRoleName().contains(role)) {
				String original = ec.getObjects("div_modal_txt");
				String formatXPATH = String.format(original);

				assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(user.getEmail()));

				logger.info("Showing contact: " + user.getFirstName() + " " + user.getLastName() + " , "
						+ user.getEmail() + "\n");
				System.out.println("Showing contact: " + user.getFirstName() + " " + user.getLastName() + " , "
						+ user.getEmail() + "\n");
			}
		}
	}

	@Then("Update contacts of {string} role")
	public void update_contacts_of_role(String role) {
		// role = role.replaceAll("\\s", "");
		String original = ec.getObjects("span_contains_Txt") + newRoleName
		+ ec.getObjects("single_mark_end");
       String formatXPATH = String.format(original);
       WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Selected contact: " + Email + " " + "\n");
	}




	@Then("Click on checkbox on {string} role")
	public void click_on_checkbox_on_role(String roleName) {
		// roleName = roleName.replaceAll("\\s", "");
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(newRoleName)) {
				roleName = role.getRoleName();
				// String original = ec.getObjects("manageuser_containsTextXpath_Variable") +
				// roleName + ec.getObjects("checkbox_copy");
				String original = ec.getObjects("SRM_details1") + newRoleName + ec.getObjects("check_box");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				JavascriptExecutor js = (JavascriptExecutor) driver;
				js.executeScript("arguments[0].click();", driver.findElement(By.xpath(formatXPATH)));

				logger.info("Clicked on checkbox on " + roleName + "\n");
				System.out.println("Clicked on checkbox on " + roleName + "\n");
			}
		}

	}

	@Then("Click on View Message")
	public void click_on_view_message() {
		String original = ec.getObjects("viewMessage");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.switchTo().activeElement();
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on View Message" + "\n");
		System.out.println("Clicked on View Message " + "\n");
	}

	@Then("Click on {string} tab mail")
	public void click_on_tab_mail(String tab) {
		String original = ec.getObjects("manageuser_containsTextXpath_Variable") + tab
				+ ec.getObjects("single_mark_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + tab + "\n");
		System.out.println("Clicked on " + tab + "\n");
	}

	@Then("Verify mail cc to contacts has {string} role")
	public void verify_mail_cc_to_contacts_has_role(String role) {
		for (User user : users) {
			if (role.equals(user.getRole().getRoleName())) {
				String original = ec.getObjects("cc_contact_mail") + user.getEmail()
						+ ec.getObjects("combine_marks_end");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

				logger.info("Mail cc to: " + user.getEmail() + "\n");
				System.out.println("Mail cc to: " + user.getEmail() + "\n");
			}

		}
	}

	@Then("Verify mail cc to Internal Resouces {string}")
	public void verify_mail_cc_to_Internal_Resouces(String IntRes) {
		String original = ec.getObjects("cc_contact_mail") + IntRes + ec.getObjects("single_mark_end");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.switchTo().activeElement();
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Mail cc to: " + IntRes + "\n");
		System.out.println("Mail cc to: " + IntRes + "\n");

	}

	@Then("Verify mail cc to all contacts {string}")
	public void verify_mail_cc_to_all_contacts(String role) {
		for (User user : users) {
			if (role.equals(user.getRole().getRoleName())) {
				String original = ec.getObjects("SRM_details1") + user.getEmail() + ec.getObjects("single_mark_end");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

				logger.info("Mail cc to: " + user.getEmail() + "\n");
				System.out.println("Mail cc to: " + user.getEmail() + "\n");
			}

		}

	}

	@Then("Show {string} option in the form of pill")
	public void show_on_option_in_the_form_of_pill(String string) {
		String original = ec.getObjects("span_Txt") + string + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing " + "'" + string + "'" + " button in discover page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " button in discover page" + "\n");
	}

	@Then("Click on {string} option in the form of pill")
	public void click_on_option_in_the_form_of_pill(String string) throws Exception {
		String original = ec.getObjects("span_Txt") + string + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(200);
		logger.info("Clicked on " + string + " option in the form of pill ");
		System.out.println("Clicked on " + string + " option in the form of pill ");
	}

	@Then("Show role copy from {string} role")
	public void show_role_copy_from_role(String roleName) {
//		// roleName = roleName.replaceAll("\\s", "");
//		for (User user : users) {
//			if (user.getRole().getRoleName().contains(roleName) && (user.getRole().isRMR())) {
//				roleName = user.getRole().getRoleName();
				String original = ec.getObjects("fac_bank_country_select1") + roleName + "'])[2]";
				String formatXPATH = String.format(original);

				WaitClass.webDriverWait(formatXPATH);

				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

				logger.info("Showing label " + "'" + roleName + "'" + " in supplier registration" + "\n");
				System.out.println("Showing label " + "'" + roleName + "'" + " in supplier registration" + "\n");

			}



	public void AddQuestionnaireToQG(String nameQ, String nameQG) throws Throwable {
		// get Questionnaire Name
		StringBuffer originalVal = new StringBuffer(nameQ);
		String removeLastCharacters = originalVal.reverse().toString().substring(6, originalVal.length());
		StringBuffer actVal = new StringBuffer(removeLastCharacters);
		String exptVal = String.valueOf(actVal.reverse());

		// Click on Questionnaire dropdown to select QG
		String QG_dropdown = ec.getObjects("discover_filter_variable") + exptVal + ec.getObjects("QGs_dropdown");
		String formatQGdropdwnXPATH = String.format(QG_dropdown);
		driver.findElement(By.xpath(formatQGdropdwnXPATH)).click();

		logger.info("Clicked on the questionnaire " + nameQ + " dropdown" + "\n");
		System.out.println("\"Clicked on the questionnaire " + nameQ + " dropdown" + "\n");

		// Click on QG as expected
		String QG_option = ec.getObjects("div_txt") + nameQG + ec.getObjects("no_round_brackets_end");
		String formatoptionXPATH = String.format(QG_option);

		WaitClass.webDriverWait(formatoptionXPATH);
		driver.findElement(By.xpath(formatoptionXPATH)).click();

		logger.info("Clicked on the QG " + nameQG + " in dropdown" + "\n");
		System.out.println("Clicked on the QG " + nameQG + " in dropdown" + "\n");

		// Click on Update button
		click_on_Update_button_on_Manage_Questionnaires();
		click_on_Update_button_confirm();

		verify_toast_message_successfully_is_shown("Default questionnaires saved.");

		logger.info("Assigned questionnaire: " + nameQ + " to questionnaire group: " + nameQG + "\n");
		System.out.println("Assigned questionnaire: " + nameQ + " to questionnaire group: " + nameQG + "\n");
	}

	public boolean Is_questionnaire_assigned_to_QG(String QGName) {
		if ("default".equals(QGName)) {
			QGName = default_QG;
		}

		String originalQG = ec.getObjects("QG_selected");
		String formatQGXPATH = String.format(originalQG);

		for (WebElement element : driver.findElements(By.xpath(formatQGXPATH))) {
			if (QGName.equals(element.getText())) {
				String originQ = ec.getObjects("span_contains_Txt") + QGName + ec.getObjects("questionnaire");
				String Q_assigned = driver.findElement(By.xpath(String.format(originQ))).getText();

				QGoups.put(QGName, Q_assigned);

				logger.info("the questionnaire: " + Q_assigned + " is assigned to " + QGName + "\n");
				System.out.println("the questionnaire: " + Q_assigned + " is assigned to " + QGName + "\n");
				return true;
			}
		}

		logger.info("No assigned to " + QGName + "\n");
		System.out.println("No questionnaire assigned to " + QGName + "\n");
		return false;
	}

	public boolean isContainsNumber(String string) {
		char[] chars = string.toCharArray();
		for (char c : chars) {
			if (Character.isDigit(c)) {
				return true;
			}
		}
		return false;
	}

	public boolean does_text_show(String text, String xpath) {
		System.out.println("questionnaire expected on supplier profile: " + text);
		for (WebElement element : driver.findElements(By.xpath(xpath))) {
			if (element.getText().contains(text)) {
				System.out.println("questionnaire actual on supplier profile: " + element.getText());
				return true;
			}
		}

		return false;
	}

	public void select_option_in_dropdown_field(String option, String nameField, String xpath) throws Exception {
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
		driver.findElement(By.xpath(xpath)).click();
		Thread.sleep(3000);

		String original = ec.getObjects("label_Txt") + nameField + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(option);

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		builder.sendKeys(Keys.ENTER).build().perform();
		action.moveByOffset(0, 0).click().build().perform();

		logger.info("Selected: " + option + " in the dropdown" + nameField + "\n");
		System.out.println("Selected: " + option + " in the dropdown" + nameField + "\n");

	}

	@Then("Select the questioner {string} in Dropdown")
	public void select_the_questioner_in_Dropdown(String string) throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		driver.findElement(By
				.xpath("//*[@id='inviteSupplierForm']/div[3]/div/div[2]/div/div/div[2]/div/div/div/div[1]/div/span[2]"))
				.click();
		Thread.sleep(3000);

		String original1 = ec.getObjects("questionariesName");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		String original = ec.getObjects("selectAutomationDropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		// Select dropdown = new Select(driver.findElement(By.xpath(original)));

		// dropdown.deselectAll();

		Thread.sleep(3000);

		// dropdown.selectByVisibleText("Automation");
		// dropdown.selectByIndex(3);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		// builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		// Thread.sleep(3000);
		// builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		// Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		builder.moveByOffset(0, 0).click().build().perform();
		Thread.sleep(3000);

		logger.info("Select the dropdown" + "\n");
		System.out.println("Select the dropdown " + "\n");

	}
	/*
	 * @Then("Enter Contact Email Address on Invite Supplier window") public void
	 * enter_Contact_Email_Address_on_Invite_Supplier_window() throws Throwable {
	 * String original = ec.getObjects("contactemailaddress"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * String Email = timeStamp.get(0) + "@mailinator.com";
	 * driver.findElement(By.xpath(original)).sendKeys(Email);
	 * 
	 * logger.info("Entered data " + "'" + Email + "'" + " in Contact email address"
	 * + "\n"); System.out.println("Entered data " + "'" + Email + "'" +
	 * " in Contacts email address" + "\n"); }
	 * 
	 * @Then("Enter Confirm Contact Email Address on Invite Supplier window") public
	 * void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_window() throws
	 * Throwable { String original = ec.getObjects("confirmcontactemailaddress");
	 * String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * String Email = timeStamp.get(0) + "@mailinator.com";
	 * driver.findElement(By.xpath(original)).sendKeys(Email);
	 * 
	 * logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address"
	 * + "\n"); System.out.println("Entered data " + "'" + Email + "'" +
	 * " in Confirm email address" + "\n"); }
	 * 
	 */

	// UK Localization
	@Then("Verify received an email in supplier maildrop Inbox with subject {string}")
	public void verify_received_an_email_in_supplier_inbox_with_subject_maildrop(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		Thread.sleep(3000);
		WaitClass.webDriverWait(original);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).sendKeys(Email.substring(0, 15));
		Thread.sleep(10000);
		WaitClass.clickableWait(viewMailbox);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		String SubjectLine = ec.getObjects("maildrop_subjectline");
		String EmailformatXPATH = String.format(SubjectLine);
		String SubjectLine2 = ec.getObjects("maildrop_subjectline2");
		String EmailformatSubjectLine2 = String.format(SubjectLine2);
		String IBMSubjectLine = ec.getObjects("mailDropIBMSubject");
		String IBMSubFormat = String.format(IBMSubjectLine);
		String NokiaSubjectLine = ec.getObjects("maildropNokiaSubject");
		String NokiaSubFormat = String.format(NokiaSubjectLine);
		String RedHatSubjectLine = ec.getObjects("redhatSubject");
		String RedHatSubFormat = String.format(RedHatSubjectLine);
		driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
		Thread.sleep(10000);
		for(int i=0;i<15;i++) {
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				break;
			} else {
				driver.navigate().refresh();
				driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
//				driver.findElement(By.xpath(original)).clear();
//				System.out.println("Cleared the text in maildrop input" + "\n");
//				Thread.sleep(3000);
//				WaitClass.webDriverWait(original);
//				driver.findElement(By.xpath(original)).sendKeys(Email.substring(0, 15));
//				Thread.sleep(10000);
//				WaitClass.clickableWait(viewMailbox);
//				driver.findElement(By.xpath(viewMailbox)).click();
//				Thread.sleep(10000);
			}
		}


		WaitClass.webDriverWait(EmailformatXPATH);


			if (driver.findElement(By.xpath(EmailformatXPATH)).getText().contains("IBM")) {
				logger.info("inside IBM " + "\n");
				assertTrue(driver.findElement(By.xpath(EmailformatXPATH)).getText().contains(IBMSubFormat));
				logger.info("Showing email subject " + "'" + subject + "'" + "\n");
				System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

			} else if (driver.findElement(By.xpath(EmailformatXPATH)).getText().contains("Nokia")) {
				logger.info("inside nokia " + "\n");
				assertTrue(driver.findElement(By.xpath(EmailformatXPATH)).getText().contains(NokiaSubFormat));
				logger.info("Showing email subject " + "'" + subject + "'" + "\n");
				System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

			} else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("inviting")) {

				logger.info("inside Inviting " + "\n");
				assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
				logger.info("Showing email subject " + "'" + subject + "'" + "\n");
				System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

			} else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("Invitation")) {
				logger.info("inside Invitation " + "\n");

				assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(RedHatSubFormat));
				logger.info("Showing email subject " + "'" + subject + "'" + "\n");
				System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

			}else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("has been returned")) {
				String returnText = InviteSupplierPage.companyname+" has been returned by ";
				assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(returnText));
				logger.info("Showing email subject " + "'" + returnText + "'" + "\n");

			}

	}

	@Then("Enter Contact Email Address on Invite Supplier window from maildrop")
	public void enter_Contact_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String email = companyname.trim().replaceAll("\\s", "");
		Email = email + "@maildrop.cc";
		// String email = RandomStringUtils.randomAlphanumeric(3);

		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Confirm Contact Email Address on Invite Supplier window from maildrop")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String email = companyname.trim().replaceAll("\\s", "");
		Email = email + "@maildrop.cc";
		/*
		 * Date date = new Date(); String pattern = "yyyyMMddhh"; SimpleDateFormat
		 * simpledateformat = new SimpleDateFormat(pattern); String format =
		 * simpledateformat.format(date);
		 */

		// String email = RandomStringUtils.randomAlphanumeric(3);

		/*
		 * String Email = email + format + "@mailinator.com"; timeStamp.add(0, Email);
		 */
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Click on {string} link from maildrop")
	public void clickRegister(String link) {

		String original = ec.getObjects("register_now_link");
		String formatXPATH = String.format(original);
		// String original2 = ec.getObjects("frame_path2");
		// String formatXPATH2 = String.format(original);
		// WebElement frame = driver.findElement(By.xpath(formatXPATH2));
		int noofframes = driver.findElements(By.tagName("iframe")).size();
		System.out.println("Total frames:" + noofframes);
		// driver.switchTo().frame(frame);
		driver.switchTo().frame(0);
		// new WebDriverWait(driver,
		// 20).until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(By.xpath("frame_xpath")));
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on : " + "'" + link + "'" + " from maildrop" + "\n");

	}

	// multi buyer
	@Then("Click on the Search by Supplier Company Name text box")
	public void click_on_the_Search_Supplier_Company_Name_text_box() {

		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the Search Supplier Company Name text box " + "\n");
		System.out.println("Clicked on the Search Supplier Company Name text box " + "\n");

	}

	@Then("Enter same Supplier Company Name on Discover Supplier modal")
	public void enter_same_Supplier_Company_Name_on_Discover_Supplier_modal() throws Throwable {
		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		sameCompanyName = companyname.substring(0, 9);
		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys(sameCompanyName);

		logger.info("Entered same : " + "'" + companyname + "'" + " in Company Name field" + "\n");
		System.out.println("Entered same : " + "'" + companyname + "'" + " in Company Name field" + "\n");
	}

	@Then("Click on supplier compnay name from discover modal")
	public void clickOnsupplierCompanyName() throws Throwable {
		String original = ec.getObjects("supplier_name");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on supplier compnay name" + "\n");
		System.out.println("Clicked on supplier compnay name" + "\n");
	}

	@Then("Enter Unregistered Email Address on Invite Supplier window from maildrop")
	public void enter_Unregistered_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("unRegisterEmail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// String email = companyname.trim().replaceAll("\\s", "");

		String unregisteredEmail = RandomStringUtils.randomAlphabetic(9);
		UnEmail = unregisteredEmail + "@maildrop.cc";
		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(UnEmail);

		logger.info("Entered : " + "'" + UnEmail + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + UnEmail + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Unregistered confirm Email Address on Invite Supplier window from maildrop")
	public void enter_Unregistered_Confirm_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("unRegisterConfirmEmail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// String email = companyname.trim().replaceAll("\\s", "");

		// String unregisteredEmail = RandomStringUtils.randomAlphabetic(9);
		// UnEmail = unregisteredEmail + "@maildrop.cc";
		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(UnEmail);

		logger.info("Entered : " + "'" + UnEmail + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + UnEmail + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Verify received an un registered email in supplier maildrop Inbox with subject {string}")
	public void verify_received_an_unregistered_email_in_supplier_inbox_with_subject_maildrop(String subject)
			throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("maildrop_input");

		/*
		 * if (driver.findElements(By.xpath(original)).size() == 0) {
		 * driver.navigate().refresh(); } WaitClass.webDriverWait(original);
		 */

		// String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(UnEmail);
		Thread.sleep(3000);
		logger.info("Entered " + UnEmail + " in mailinator search box" + "\n");
		System.out.println("Entered " + UnEmail + " in mailinator search box" + "\n");

		driver.findElement(By.xpath(ec.getObjects("veiwMailBox_btn"))).click();
	
		
		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Enter {string} in Contact {string} on Discover Supplier window")
	public void enter_Contact_First_Name_on_Discover_Supplier_window(String input, String label) throws Throwable {
		String original = ec.getObjects("discover_inputvar1") + label + ec.getObjects("discover_inputvar2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(input);
		logger.info("Entered " + input + "on discover " + label + "Supplier window" + "\n");
		System.out.println("Entered " + input + " on discover " + label + " Supplier window" + "\n");

	}

	@Then("Click on close questionnare button on Discover Supplier window")
	public void close_quest_btn() throws Throwable {
		String original = ec.getObjects("close_questionnare_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on close questionnare button" + "\n");
		System.out.println("Clicked on close questionnare button" + "\n");

	}

	// diversity filter
	@Then("Click on the same supplier name and press Enter")
	public void click_on_the_Search_by_supplier_name_and_press_Enter() throws InterruptedException {
		String original = ec.getObjects("link_var1") + companyname + ec.getObjects("same_supplier2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();

		logger.info("Clicked on the Search by supplier name and press Enter" + "\n");
		System.out.println("Clicked on the Search by supplier name and press Enter" + "\n");
	}

	// supplier state transition
	@Then("Enter same supplier email in Email Address")
	public void enter_same_Email_Address_supplierLogin() {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// String email = companyname.trim().replaceAll("\\s", "");
		// Email = email + "@maildrop.cc";
		// String email = RandomStringUtils.randomAlphanumeric(3);

		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in supplier Email Address field" + "\n");
		System.out.println("Entered : " + "'" + Email + "'" + " in supplier Address field" + "\n");

	}

	// supplier state transition
	@Then("Show status {string} in Status {string} dropdown from buyer side")
	public void show_Returned_to_Supplier_Status_dropdown_from_buyer(String string, String cat) throws Throwable {
		String original = ec.getObjects("link_var1") + companyname + ec.getObjects("returned_to_supp") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(cat));
		logger.info("Showing status" + " " + string + " " + "in Status dropdown on buyers side" + "\n");
		System.out.println("Showing status " + " " + string + " " + "in Status dropdown on buyers side" + "\n");
	}

	@Then("Show Confirmation toast message as {string}")
	public void show_Confirmation_message_on_Manage_Users_Page(String string) throws Throwable {
		String original = ec.getObjects("complete_req_actions");
		String formatXPATH = String.format(original);
		String Toast = companyname + string;
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Toast));
		logger.info("Showing toast message as " + "'" + Toast + "\n");
		System.out.println("Showing toastn message as " + "'" + "\n");
	}

	@Then("Enter the Notes under notes for buyer")
	public void enter_the_Notes_for_Box() {
		String original = ec.getObjects("notesForBuyer");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Accepted");
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}
	// failed scenarios

	@Then("Click on Businessname")
	public void click_on_business_name() throws InterruptedException {
		String original = ec.getObjects("link_var1") + companyname + ec.getObjects("same_company");
		String formatXPATH = String.format(original);
		Actions builder = new Actions(driver);
		builder.moveToElement(driver.findElement(By.xpath(formatXPATH))).click().build().perform();
	}
	
	@Then("Show the {string} Supplier {string} in notifications")
	public void show_something_supplier_something_in_notifications(String country, String notification)
			throws Throwable {

		Thread.sleep(1000);

		String Email = companyname + notification;
		String original = ec.getObjects("verify_notification12") + Email + ec.getObjects("verify_notification2");
		
		//String original = ec.getObjects("verify_notification1") + InviteSupplierPage.companyname+ ec.getObjects("verify_notification2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Email));
		logger.info(" " + "'" + Email + "'" + " in " + "Notification" + "\n");
		System.out.println(" " + "'" + Email + "'" + " in " + " Notification" + "\n");

	}
	
	@Then("Verify received an email in supplier maildrop Inbox with subject {string} for redhat buyer")
	public void verify_received_an_email_in_supplier_maildrop_Inbox_with_subject_for_redhat_buyer(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(5000);

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).sendKeys(Email.substring(0, 15));
		Thread.sleep(10000);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		Thread.sleep(10000);
		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";
		String EmailformatXPATH = String.format(SubjectLine);
		WaitClass.webDriverWait(EmailformatXPATH);
		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
		}
	@Then("Delete role {string} if already {string}")
	public void delete_role_alredy_exist(String newRole,String role) throws InterruptedException {
		String original = ec.getObjects("div_Txt") + role + "']";
		String formatXPATH = String.format(original);
		String original2 = ec.getObjects("span_Txt") + newRole + ec.getObjects("delete_new_role");
		String formatXPATH2 = String.format(original2);
		if(driver.findElement(By.xpath(formatXPATH)).getText().contains(role)){
			driver.findElement(By.xpath(formatXPATH2)).click();
			logger.info("Deleting role " + "'" + newRole + "'" + "\n");
		}
		else{

			logger.info("No roles created as " + "'" + newRole + "'" + "\n");
		}
	}
	@Then("Click on {string} button from maildrop")
	public void clickCreatePass(String link) {

		String original = ec.getObjects("create_password_btn");
		String formatXPATH = String.format(original);
		// String original2 = ec.getObjects("frame_path2");
		// String formatXPATH2 = String.format(original);
		// WebElement frame = driver.findElement(By.xpath(formatXPATH2));
		int noofframes = driver.findElements(By.tagName("iframe")).size();
		System.out.println("Total frames:" + noofframes);
		// driver.switchTo().frame(frame);
		driver.switchTo().frame(0);
		// new WebDriverWait(driver,
		// 20).until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(By.xpath("frame_xpath")));
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on : " + "'" + link + "'" + " from maildrop" + "\n");

	}
	@Then("Scroll to {string} bar")
	public void scrolltoTab(String tab) {

		String original = ec.getObjects("sideBar_tabs_var1") + tab + ec.getObjects("inputfield_end");
		String formatXPATH = String.format(original);
		String sidebar = ec.getObjects("sidebar_tab");
		String sidebarFormat = String.format(sidebar);
		WebElement scroll = driver.findElement(By.xpath(sidebarFormat));
		scroll.sendKeys(Keys.PAGE_DOWN);


		logger.info("Scrolled on : " + "'" + tab + "'" + " from maildrop" + "\n");

	}
	@Then("Click on Supplier Company Name text box")
	public void click_on_the_Supplier_Company_Name() {

		String original = ec.getObjects("supliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the Supplier Company Name text box " + "\n");
		System.out.println("Clicked on the Supplier Company Name text box " + "\n");

	}
	@Then("Verify received an email in supplier maildrop Inbox with Nokia subject {string}")
	public void verify_received_an_email_in_supplier_inbox_with_nokia_subject_maildrop(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		Thread.sleep(3000);
		WaitClass.webDriverWait(original);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).sendKeys(Email.substring(0, 15));
		Thread.sleep(10000);
		WaitClass.clickableWait(viewMailbox);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email.substring(0, 15) + " in mailinator search box" + "\n");
		String SubjectLine = ec.getObjects("maildrop_subjectline_nokia");
		String EmailformatXPATH = String.format(SubjectLine);
		String IBMSubjectLine = ec.getObjects("mailDropIBMSubject");
		String IBMSubFormat = String.format(IBMSubjectLine);
		String NokiaSubjectLine = ec.getObjects("maildropNokiaSubject");
		String NokiaSubFormat = String.format(NokiaSubjectLine);
		String RedHatSubjectLine = ec.getObjects("redhatSubject");
		String RedHatSubFormat = String.format(RedHatSubjectLine);
		driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
		Thread.sleep(10000);
		for(int i=0;i<15;i++) {
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				break;
			} else {
				driver.navigate().refresh();
				driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
//				driver.findElement(By.xpath(original)).clear();
//				System.out.println("Cleared the text in maildrop input" + "\n");
//				Thread.sleep(3000);
//				WaitClass.webDriverWait(original);
//				driver.findElement(By.xpath(original)).sendKeys(Email.substring(0, 15));
//				Thread.sleep(10000);
//				WaitClass.clickableWait(viewMailbox);
//				driver.findElement(By.xpath(viewMailbox)).click();
//				Thread.sleep(10000);
			}
		}


		WaitClass.webDriverWait(EmailformatXPATH);


		if (driver.findElement(By.xpath(EmailformatXPATH)).getText().contains("IBM")) {
			logger.info("inside IBM " + "\n");
			assertTrue(driver.findElement(By.xpath(EmailformatXPATH)).getText().contains(IBMSubFormat));
			logger.info("Showing email subject " + "'" + subject + "'" + "\n");
			System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

		} else if (driver.findElement(By.xpath(EmailformatXPATH)).getText().contains("Nokia")) {
			logger.info("inside nokia " + "\n");
			assertTrue(driver.findElement(By.xpath(EmailformatXPATH)).getText().contains(NokiaSubFormat));
			logger.info("Showing email subject " + "'" + subject + "'" + "\n");
			System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

		} else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("inviting")) {

			logger.info("inside Inviting " + "\n");
			assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
			logger.info("Showing email subject " + "'" + subject + "'" + "\n");
			System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

		} else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("Invitation")) {
			logger.info("inside Invitation " + "\n");

			assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(RedHatSubFormat));
			logger.info("Showing email subject " + "'" + subject + "'" + "\n");
			System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

		}else if (driver.findElement(By.xpath(SubjectLine)).getText().contains("has been returned")) {
			String returnText = InviteSupplierPage.companyname+" has been returned by ";
			assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(returnText));
			logger.info("Showing email subject " + "'" + returnText + "'" + "\n");

		}

	}

}
