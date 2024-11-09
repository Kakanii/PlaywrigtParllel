package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;
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
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationBrazil extends DriverEngine {

	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	@Then("Enter Brazil supplier email in Email Address field")
	public void enter_Brazil_supplier_email_in_email_address_field_something() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("brazil_Supplierusr"));

		if (driver.findElement(By.xpath(original)).getAttribute("value") != ec.getObjects("brazil_Supplierusr"))
			;
		{

			WebElement toClear = driver.findElement(By.xpath(original));
			toClear.sendKeys(Keys.CONTROL + "a");
			toClear.sendKeys(Keys.DELETE);
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("brazil_Supplierusr"));
		}

		logger.info("Entered data" + " " + ec.getObjects("brazil_Supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("brazil_Supplierusr") + " " + "Email Address field" + "\n");

	}

	@Then("Show Tax Identification Number label in basic information {string}")
	public void show_Tax_Identification_Number_label_in_basic_information(String string) {
		String original = ec.getObjects("brazilLoc_TIN_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Tax Identification Number label in basic information page" + "\n");
		System.out.println("Showing Tax Identification Number label in basic information page" + "\n");

	}

	@Then("Show Tax Identification Number text field in basic information page {string}")
	public void show_Tax_Identification_Number_text_field_in_basic_information_page(String string) {

		String original = ec.getObjects("brazilLoc_TIN_inputtext");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Tax Identification Number input field in basic information page" + "\n");
		System.out.println("Showing Tax Identification Number input field in basic information page" + "\n");
	}

	@Then("Verify Tax Identification Number text field enabled {string}")
	public void verify_Tax_Identification_Number_text_field_enabled(String string) {
		String original = ec.getObjects("brazilLoc_TIN_inputtext");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());

		logger.info("Tax Identification Number input field is Enabled in basic information page" + "\n");
		System.out.println("Tax Identification Number input field is Enabled in basic information page" + "\n");
	}

	@Then("Verify Tax Identification Number Tooltip {string}")
	public void verify_Tax_Identification_Number_Tooltip(String string) throws Throwable {
		String original = ec.getObjects("brazilLoc_TIN_TT");

		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText()
				.equalsIgnoreCase(string));

		logger.info("Showing Tax Identification Number Code Tool Tip: " + string + "\n");
		System.out.println("Showing Tax Identification Number Code Tool Tip: " + string + "\n");

	}

	@Then("Enter data in Tax Identification Number field {string}")
	public void enter_data_in_Tax_Identification_field(String string) {

		String original = ec.getObjects("brazilLoc_TIN_inputtext");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + " Tax Identification Number field" + "\n");
		System.out.println("Entered data" + " " + string + " " + " Tax Identification Number field" + "\n");

	}

	@Then("Show error message {string} under Tax Identification Number")
	public void show_error_message_under_Tax_Identification_Number(String string) throws Throwable {

		String original = ec.getObjects("brazillocal_TIN_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " under Tax Identification Number" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " under Tax Identification Number" + "\n");
		Thread.sleep(1500);

	}

	@Then("No error message is displayed under Tax Identification Number")
	public void no_error_message_is_displayed_under_Tax_Identification_Number() {

		String original = ec.getObjects("brazillocal_TIN_error");

		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);

		logger.info("No error message is displayed under Tax Identification Number" + "\n");
		System.out.println("No error message is displayed under Tax Identification Number" + "\n");

	}

	@Then("Show Certification of Incorporation label under Tax Details {string}")
	public void show_Certification_of_Incorporation_label_under_Tax_Details(String string) {
		String original = ec.getObjects("indialoc_COI_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Certification of Incorporation label in basic information page" + "\n");
		System.out.println("Showing Certification of Incorporationlabel in basic information page" + "\n");

	}

	@Then("Show Attach Document button under Certification of Incorporation in Tax Details {string}")
	public void show_Attach_Document_button_under_Certification_of_Incorporation_in_Tax_Details(String string) {
		String original = ec.getObjects("indialoc_COI_attachBtn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Certification of Incorporation attached in basic information page" + "\n");
		System.out.println("Showing Certification of Incorporation attached in basic information page" + "\n");

	}

	@Then("Verify Attach Document button clickable under Certification of Incorporation in Tax Details {string}")
	public void verify_Attach_Document_button_clickable_under_Certification_of_Incorporation_in_Tax_Details(
			String string) {

		String original = ec.getObjects("indialoc_COI_attachBtn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Attach Document button is clickable under Certification of Incorporation" + "\n");
		System.out.println("Attach Document button is clickable under Certification of Incorporation" + "\n");
	}

	@Then("Enter Brazil Supplier Company Name on Invite Supplier window")
	public void enter_Brazil_Supplier_Company_Name_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String supplier = "brazilsupplier" + Time;

		timeStamp.add(0, supplier);
		driver.findElement(By.xpath(original)).sendKeys(supplier);

		logger.info("Entered data " + "'" + supplier + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + supplier + "'" + " Company name field" + "\n");
	}

	@Then("Enter Brazil Supplier Contact Email Address on Invite Supplier window")
	public void enter_Brazil_Supplier_Contact_Email_Address_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter Brazil Supplier Confirm Contact Email Address on Invite Supplier window")
	public void enter_Brazil_Supplier_Confirm_Contact_Email_Address_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("Verify email received in Brazil supplier inbox with subject {string}")
	public void verify_email_received_in_Brazil_supplier_inbox_with_subject(String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.webDriverWait(original);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.findElement(By.xpath(ec.getObjects("mailinator_gobtn"))).click();
		Thread.sleep(1000);

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

	@Then("Show Postal Code field {string}")
	public void show_Postal_Code_field(String string) {
		String original = ec.getObjects("brazilloc_postCode_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Postal Code field in Brazil Supplier Registration" + "\n");

		System.out.println("Showing Postal Code field in Brazil Supplier Registration" + "\n");
	}

	@Then("Verify Phone number flag is showing Brazil flag {string}")
	public void verify_Phone_number_flag_is_showing_Brazil_flag(String string) {
		String original = ec.getObjects("brazilloc_Phoneflag");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Brazil flag in Phone Number country flag field" + "\n");

		System.out.println("Showing Brazil flag in Phone Number country flag field" + "\n");
	}

	@Then("Verify {string} tooltip {string}")
	public void verify_tooltip(String string, String string1) throws Throwable {

		Thread.sleep(2000);

		String original = ec.getObjects("brazilloc_var_TT") + string + ec.getObjects("brazilLoc_var2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		action.moveToElement(driver.findElement(By.xpath(formatXPATH))).build().perform();

		String TTDescription = driver.findElement(By.xpath(ec.getObjects("TtDescription"))).getText();

		Thread.sleep(2000);

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing " + string + " Tool Tip: " + string1 + "\n");
		System.out.println("Showing " + string + " Tool Tip: " + string1 + "\n");
	}

	@Then("Verify Business Name tooltip {string}")
	public void verify_Business_Name_tooltip(String string) throws Throwable {

		Thread.sleep(2000);

		String original = ec.getObjects("brazilLoc_BusinessName_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		Thread.sleep(2000);

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Business Name Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Business Name Tool Tip in Brazil Supplier Registration: " + string + "\n");
	}

	@Then("Verify Legal Business Name tooltip {string}")
	public void verify_Legal_Business_Name_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_LegalBusinessName_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Legal Business Name Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Legal Business Name Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Country tooltip {string}")
	public void verify_Country_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_Country_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Country/Region Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Country/Region Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Address tooltip {string}")
	public void verify_Address_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_Address_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Address Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Address Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Address II tooltip {string}")
	public void verify_Address_II_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_Address2_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Address 2 Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Address 2 Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Address III tooltip {string}")
	public void verify_Address_III_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_Address3_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Address 3 Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Address 3 Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify City tooltip {string}")
	public void verify_City_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_City_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing City Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing City Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify State tooltip {string}")
	public void verify_State_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_State_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing State Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing State Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Postal Code tooltip {string}")
	public void verify_Postal_Code_tooltip(String string) {
		String original = ec.getObjects("brazilLoc_PostCode_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Postal Code Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Postal Code  Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify PO Box tooltip {string}")
	public void verify_PO_Box_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_POBox_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing PO Box Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing PO Box Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify PO Box Postal Code tooltip {string}")
	public void verify_PO_Box_Postal_Code_tooltip(String string) {
		String original = ec.getObjects("brazilLoc_POBoxPostCode_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing PO Box Postal Code Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing PO Box Postal Code Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Verify Phone Number tooltip {string}")
	public void verify_Phone_Number_tooltip(String string) {

		String original = ec.getObjects("brazilLoc_PhoneNumber_tt");

		WaitClass.webDriverWait(original);

		String TTDescription = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Phone Number Tool Tip in Brazil Supplier Registration: " + string + "\n");
		System.out.println("Showing Phone Number Tool Tip in Brazil Supplier Registration: " + string + "\n");

	}

	@Then("Enter Address {string} in Address field in supplier registration")
	public void enter_address_something_in_address_field_in_supplier_registration(String string) throws Throwable {

		String original = ec.getObjects("Location_Address1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Address field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Address field" + "\n");

	}

	@Then("Enter Address {string} in Address 2 field in supplier registration")
	public void enter_address_something_in_address_2_field_in_supplier_registration(String string) throws Throwable {

		String original = ec.getObjects("Location_Address2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Address 2 field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Address 2 field" + "\n");

	}

	@Then("Enter Address {string} in Address 3 field in supplier registration")
	public void enter_address_something_in_address_3_field_in_supplier_registration(String string) throws Throwable {

		String original = ec.getObjects("Location_Address3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Address 3 field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Address 3 field" + "\n");

	}

	@Then("Enter {string} in Postal code field")
	public void enter_in_Postal_code_field(String string) {
		String original = ec.getObjects("brazilloc_postCode_input");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Post Code field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Post Code field" + "\n");

	}

	@Then("Enter {string} in PO Box Postal code field")
	public void enter_in_PO_Box_Postal_code_field(String string) {
		String original = ec.getObjects("brazilloc_POBoxPostCode_input");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in PO Box Post Code field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in PO Box Post Code field" + "\n");

	}

	@Then("Verify no data is entered in Bank Key field")
	public void verify_no_data_is_entered_in_Bank_Key_field() {
		String original = ec.getObjects("brazilLoc_BankKey_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equals(""));

		logger.info("No data entered in Bank Key Field" + "\n");
		System.out.println("No data entered in Bank Key Field" + "\n");
	}

	@Then("Verify no error is visible under Bank Key field")
	public void verify_no_error_is_visible_under_Bank_Key_field() {
		String original = ec.getObjects("brazilLoc_BankKey_error");

		assertTrue(driver.findElements(By.xpath(original)).size() == 0);

		logger.info("No error message is displayed under Bank Key field" + "\n");
		System.out.println("No error message is displayed under Bank Key field" + "\n");
	}

	@Then("Verify no data is entered in Account Number field")
	public void verify_no_data_is_entered_in_Account_Number_field() {
		String original = ec.getObjects("brazilLoc_BankAccount_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equals(""));

		logger.info("No data entered in Account Number Field" + "\n");
		System.out.println("No data entered in Account Number Field" + "\n");

	}

	@Then("Verify no error is visible under Bank Account Number field")
	public void verify_no_error_is_visible_under_Bank_Account_Number_field() {

		String original = ec.getObjects("brazilLoc_BankAccount_error");

		assertTrue(driver.findElements(By.xpath(original)).size() == 0);

		logger.info("No error message is displayed under Bank Account Number field" + "\n");
		System.out.println("No error message is displayed under Bank Account Number field" + "\n");

	}

	@Then("Verify no data is entered in IBAN field")
	public void verify_no_data_is_entered_in_IBAN_field() {
		String original = ec.getObjects("brazilLoc_IBAN_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equals(""));

		logger.info("No data entered in IBAN Field" + "\n");
		System.out.println("No data entered in IBAN Field" + "\n");

	}

	@Then("Show Certificate of Incorporation label under Tax Details {string}")
	public void show_Certificate_of_Incorporation_label_under_Tax_Details(String string) {

		String original = ec.getObjects("brazilLoc_COI_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Certificate of Incorporation label under Tax Details" + "\n");
		System.out.println("Showing Certificate of Incorporation label under Tax Details" + "\n");
	}

	@Then("Show Certificate of Incorporation tooltip {string}")
	public void show_Certificate_of_Incorporation_tooltip(String string) {
		String original = ec.getObjects("brazilLoc_COI_tt");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("data-original-title").equalsIgnoreCase(string));

		logger.info("Showing Certificate of Incorporation tooltip" + "\n");
		System.out.println("Showing Certificate of Incorporation tooltip" + "\n");

	}

	@Then("Show Upload Document button under Certificate of Incorporation in Tax Details {string}")
	public void show_Upload_Document_button_under_Certificate_of_Incorporation_in_Tax_Details(String string) {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Upload Document button under Certificate of Incorporation in Tax Details" + "\n");
		System.out.println("Showing Upload Document button under Certificate of Incorporation in Tax Details" + "\n");

	}

	@Then("Verify Upload Document button clickable under Certificate of Incorporation in Tax Details {string}")
	public void verify_Upload_Document_button_clickable_under_Certificate_of_Incorporation_in_Tax_Details(
			String string) {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Upload Document button is Clickable under Certificate of Incorporation in Tax Details" + "\n");
		System.out.println(
				"Upload Document button is Clickable under Certificate of Incorporation in Tax Details" + "\n");

	}

	@Then("Upload Certificate of Incorporation in PDF format")
	public void upload_Certificate_of_Incorporation_in_PDF_format() throws Throwable {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded PDF at the Certificate of Incorporation Document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded PDF at the Certificate of Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Upload Certificate of Incorporation in PNG format")
	public void upload_Certificate_of_Incorporation_in_PNG_format() throws Throwable {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePNG.png";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded PNG at the Certificate of Incorporation Document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded PNG at the Certificate of Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Upload Certificate of Incorporation in JPG format")
	public void upload_Certificate_of_Incorporation_in_JPG_format() throws Throwable {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sampleJPG.jpg";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded JPG at the Certificate of Incorporation Document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded JPG at the Certificate of Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Upload Certificate of Incorporation in JPEG format")
	public void upload_Certificate_of_Incorporation_in_JPEG_format() throws Throwable {
		String original = ec.getObjects("brazilLoc_COIUpload_btn");

		WaitClass.webDriverWait(original);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sampleJPEG.jpeg";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded JPEG at the Certificate of Incorporation Document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded JPEG at the Certificate of Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Show uploaded document under Certificate of Incorporation {string}")
	public void show_uploaded_document_under_Attach_document_button(String string) {

		String original = ec.getObjects("brazilLoc_COI_docAttached");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info(
				"Showing Certificate of Incorporation uploaded in basic information page of Brazil Supplier" + "\n");
		System.out.println(
				"Showing Certificate of Incorporation uploaded in basic information page of Brazil Supplier" + "\n");
	}

	@Then("Show Company Registration Number label in basic information {string}")
	public void show_Company_Registration_Number_label_in_basic_information(String string) {
		String original = ec.getObjects("brazilLoc_CompRegistration_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Company Registration Number label in basic information page" + "\n");
		System.out.println("Showing Company Registration Number label in basic information page" + "\n");

	}

	@Then("Show Company Registration Number text field in basic information page {string}")
	public void show_Company_Registration_Number_text_field_in_basic_information_page(String string) {

		String original = ec.getObjects("brazilLoc_CompRegistration_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Company Registration Number input field in basic information page" + "\n");
		System.out.println("Showing Company Registration Number input field in basic information page" + "\n");
	}

	@Then("Verify Company Registration Number text field enabled {string}")
	public void verify_Company_Registration_Number_text_field_enabled(String string) {

		String original = ec.getObjects("brazilLoc_CompRegistration_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Company Registration Number input field is Enabled in basic information page" + "\n");
		System.out.println("Company Registration Number input field is Enabled in basic information page" + "\n");

	}

	@Then("Verify Company Registration Number Tooltip {string}")
	public void verify_Company_Registration_Number_Tooltip(String string) {
		String original = ec.getObjects("brazilLoc_CompRegistration_tt");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("data-original-title").equalsIgnoreCase(string));

		logger.info("Showing Company Registration Number Tooltip: " + string + "\n");
		System.out.println("Showing Company Registration Number Tooltip: " + string + "\n");
	}

	@Then("Enter data in Company Registration Number field {string}")
	public void enter_data_in_Company_Registration_Number_field(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("brazilLoc_CompRegistration_input");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " Company Registration Number field " + "\n");
		System.out.println("Entered : " + "'" + string + "'" + " Company Registration Number field " + "\n");
	}

	@Then("Verify no data is entered in Company Registration Number field")
	public void verify_no_data_is_entered_in_Company_Registration_Number_field() {
		String original = ec.getObjects("brazilLoc_CompRegistration_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equals(""));

		logger.info("No data entered in Company Registration Number Field" + "\n");
		System.out.println("No data entered in Company Registration Number Field" + "\n");

	}

	@Then("No error message is displayed under Company Registration Number field")
	public void no_error_message_is_displayed_under_Company_Registration_Number_field() {

		String original = ec.getObjects("brazilLoc_CompRegistration_error");

		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);

		logger.info("No error message is displayed under Company Registration Number field" + "\n");
		System.out.println("No error message is displayed under Company Registration Number field" + "\n");

	}

	@Then("Show error message {string} under Company Registration Number")
	public void show_error_message_under_Company_Registration_Number(String string) {
		String original = ec.getObjects("brazilLoc_CompRegistration_error");

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing error message: " + string + "under Company Registration Number" + "\n");
		System.out.println("Showing error message: " + string + "under Company Registration Number" + "\n");
	}

	@Then("Show Tax Registration Document label in basic information page of Brazil Supplier")
	public void show_Tax_Registration_Document_label_in_basic_information_page_of_Brazil_Supplier() {

		String original = ec.getObjects("brazilLoc_TaxRegistration_label");

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Tax Registration Document label in basic information page of Brazil Supplier" + "\n");
		System.out
				.println("Showing Tax Registration Document label in basic information page of Brazil Supplier" + "\n");

	}

	@Then("Show Tax Registration Document ToolTip {string}")
	public void show_Tax_Registration_Document_ToolTip(String string) {

		String original = ec.getObjects("brazilLoc_TaxRegistration_tt");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("data-original-title").equalsIgnoreCase(string));

		logger.info("Showing Tax Registration Number Tooltip: " + string + "\n");
		System.out.println("Showing Tax Registration Number Tooltip: " + string + "\n");

	}

	@Then("Show Upload Tax Registration Document button in basic information page of Brazil Supplier")
	public void show_Upload_Tax_Registration_Document_button_in_basic_information_page_of_Brazil_Supplier() {

		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info(
				"Showing Upload Tax Registration Document button in basic information page of Brazil Supplier" + "\n");
		System.out.println(
				"Showing Upload Tax Registration Document button in basic information page of Brazil Supplier" + "\n");

	}

	@Then("Upload Tax Registration Document in PDF format in Basic Information page")
	public void upload_Tax_Registration_Document_in_PDF_format_in_Basic_Information_page() throws Throwable {
		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded PDF at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded PDF at the Tax Registration Document on the Basic information page" + "\n");

	}

	@Then("Show attached document under Tax Registration Document {string}")
	public void show_attached_document_under_Tax_Registration_Document(String string) {
		String original = ec.getObjects("brazilLoc_TaxRegistration_attached");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Tax Registration Certificate attached in basic information page of India Supplier" + "\n");
		System.out.println(
				"Showing Tax Registration Certificate attached in basic information page of India Supplier" + "\n");

	}

	@Then("Upload Tax Registration Document in PNG format in Basic Information page")
	public void upload_Tax_Registration_Document_in_PNG_format_in_Basic_Information_page() throws Throwable {

		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePNG.png";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded PNG at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded PNG at the Tax Registration Document on the Basic information page" + "\n");

	}

	@Then("Upload Tax Registration Document in JPG format in Basic Information page")
	public void upload_Tax_Registration_Document_in_JPG_format_in_Basic_Information_page() throws Throwable {

		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sampleJPG.jpg";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded JPG at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded JPG at the Tax Registration Document on the Basic information page" + "\n");
	}

	@Then("Upload Tax Registration Document in JPEG format in Basic Information page")
	public void upload_Tax_Registration_Document_in_JPEG_format_in_Basic_Information_page() throws Throwable {

		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sampleJPEG.jpeg";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded JPEG at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded JPEG at the Tax Registration Document on the Basic information page" + "\n");

	}

	@Then("Verify Postal code format {string}")
	public void verify_Postal_code_format(String string) {
		String original = ec.getObjects("brazilloc_postCode_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(string));

		logger.info("Postal Code is as per the specified format - 8 digits with a hiphen after fifth digit" + "\n");
		System.out.println(
				"Postal Code is as per the specified format - 8 digits with a hiphen after fifth digit" + "\n");
	}

	@Then("Verify PO Box Postal code format {string}")
	public void verify_PO_Box_Postal_code_format(String string) {
		String original = ec.getObjects("brazilloc_POBoxPostCode_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(string));

		logger.info(
				"PO Box Postal Code is as per the specified format - 8 digits with a hiphen after fifth digit" + "\n");
		System.out.println(
				"PO Box Postal Code is as per the specified format - 8 digits with a hiphen after fifth digit" + "\n");

	}

	@Then("Show error message under Bank Key {string}")
	public void show_error_message_under_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("brazilLoc_BankKey_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at  Bank Key " + " " + string + " " + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at  Bank Key  " + " " + string + " " + " on Add Company Account Modal" + "\n");
	}

	@Then("Verify no error message under IBAN {string}")
	public void verify_no_error_message_under_IBAN(String string) {

		String original = ec.getObjects("brazilLoc_IBAN_error");

		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);

		logger.info("No error message is displayed under Busyness Type" + "\n");
		System.out.println("No error message is displayed under Busyness Type" + "\n");
	}

	@Then("Show error message under IBAN {string}")
	public void show_error_message_under_IBAN(String string) {

		String original = ec.getObjects("brazilLoc_IBAN_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at IBAN " + "'" + string + "'" + " on Add Company Account Modal" + "\n");
		System.out.println(
				"Show an error message at IBAN " + "'" + string + "'" + " on Add Company Account Modal" + "\n");
	}

	@Then("Upload Certificate of Incorporation document bigger than {int} MB in PDF format")
	public void upload_Certificate_of_Incorporation_document_bigger_than_MB_in_PDF_format(Integer int1)
			throws Throwable {

		String original = ec.getObjects("brazilLoc_COIUpload_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF5MB+.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info(
				"Uploaded PDF file at the Certificate of Incorporation document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded PDF file at the Certificate of Incorporation document on the Basic information page" + "\n");

	}

	@Then("Upload Tax Registration Document bigger than {int} MB in PDF format")
	public void upload_Tax_Registration_Document_bigger_than_MB_in_PDF_format(Integer int1) throws Throwable {

		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF5MB+.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("brazilLoc_TaxRegistration_btn")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded PDF file at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded PDF file at the Tax Registration Document on the Basic information page" + "\n");
	}

	@Then("Verify Brazilian real BRL is listed in Currency droppdown {string}")
	public void verify_Brazilian_real_BRL_is_listed_in_Currency_droppdown(String string) throws Throwable {
		String original = ec.getObjects("brazilLoc_currency_picker");

		WaitClass.webDriverWait(original);

		action.sendKeys(driver.findElement(By.xpath(original)), string).build().perform();
		;
		Thread.sleep(2000);

		action.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("brazilLoc_currencyBRL_option"))).getText()
				.equalsIgnoreCase(string));

		logger.info(" Brazilian real BRL is listed in Currency droppdown in Add Bank account modal" + "\n");
		System.out.println(" Brazilian real BRL is listed in Currency droppdown in Add Bank account modal" + "\n");

	}

	@Then("Show tooltip text for {string} {string}")
	public void show_tooltip_text_for(String label, String tooltip) throws Throwable {
		String original = "//label[text()='" + label + ec.getObjects("brazilLoc_var2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, tooltip);
		logger.info("Showing " + label + " tooltip: " + "'" + tooltip + "'" + "\n");
		System.out.println("Showing " + label + " tooltip: " + "'" + tooltip + "'" + "\n");

	}

	@Then("Show tooltip text of {string} {string}")
	public void show_tooltip_text_of(String label, String tooltip) throws Throwable {
		String original = "//p[text()='" + label + ec.getObjects("brazilLoc_var3");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String text = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		System.out.println("Tool Tip: ---" + text);

		assertEquals(text, tooltip);
		logger.info("Showing " + label + " tooltip: " + "'" + tooltip + "'" + "\n");
		System.out.println("Showing " + label + " tooltip: " + "'" + tooltip + "'" + "\n");

	}

	@Then("Verify Upload Tax Registration Document button is enabled in basic information page")
	public void verify_Upload_Tax_Registration_Document_is_button_enabled_in_basic_information_page() {
		String original = ec.getObjects("brazilLoc_TaxRegistration_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());

		logger.info("Upload Tax Registration Document button is enabled in basic information page" + "\n");
		System.out.println("Upload Tax Registration Document button is enabled in basic information page" + "\n");

	}

	@Then("Close Brazil supplier registration tab")
	public void close_Brazil_supplier_registration_tab() {

		driver.close();
		driver.switchTo().window(tabs.get(0));
	}

	@Then("Switch to the {string} tab")
	public void switch_to_something_tab(String string) throws Throwable {

		driver.switchTo().window("Trust Your Supplier");

		logger.info("Switched to " + string + " tab" + "\n");
		System.out.println("Switched to " + string + " tab" + "\n");
	}

	@Then("Show error message under Bank Account Number {string}")
	public void show_error_message_under_Bank_Account_Number(String string) throws Throwable {
		String original = ec.getObjects("brazilLoc_BankAccount_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(string));
		logger.info("Show an error message at  Bank Account Number " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
		System.out.println("Show an error message at  Bank Account Number  " + " " + string + " "
				+ " on Add Company Account Modal" + "\n");
	}

	@Then("Verify error message {string} under Legal Business Name field")
	public void verify_error_message_under_Legal_Business_Name_field(String string) throws Throwable {
		String original = ec.getObjects("brazilSupplierregist_LegalBusinessName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " under Legal Business Name field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " funder Legal Business Name field + " + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under Address 1 field")
	public void verify_error_message_under_Address_field(String string) throws Throwable {
		String original = ec.getObjects("brazilsupplierregist_address1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + "  under Address 1 field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + "  under Address 1 field + " + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under City field")
	public void verify_error_message_under_City_field(String string) throws Throwable {
		String original = ec.getObjects("brazilsupplierregist_city");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + "  under City field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + "  under City field + " + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under Postal Code field")
	public void verify_error_message_under_Postal_Code_field(String string) throws Throwable {
		String original = ec.getObjects("brazilsupplierregist_postalcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + "  under Postal Code field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " under Postal Code field + " + "\n");
		Thread.sleep(1500);
	}///// RD writing for Canada localization////

	@Then("Verify error message {string} under business type")
	public void verify_error_message_under_business_type(String string) throws Throwable {
		String original = ec.getObjects("canadasupplierBusiness_typeerror");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + "  under City field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + "  under City field + " + "\n");
		Thread.sleep(1500);
	}

	@Then("Enter value of Bank Account Number {string}")
	public void enter_value_of_Bank_Account_Number(String string) throws Throwable {
		Thread.sleep(5000);
		String original = ec.getObjects("bankAccountNumber1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String generatedString = RandomStringUtils.randomNumeric(12);
		System.out.println(generatedString);
		// String accountnumber = RandomStringUtils.randomAlphanumeric(12);
		WebElement ra = driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1")));
		// driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1"))).clear();
		// Thread.sleep(5000);
		driver.findElement(By.xpath(ec.getObjects("bankAccountNumber1"))).sendKeys(generatedString);
		System.out.println(generatedString);

		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + "on  Add Company Account Modal" + "\n");
		String val = ra.getAttribute("value");
		System.out.println("Entered text is: " + val);
	}

	@Then("Select {string} in the {string} dropdown")
	public void select_in_the_dropdown(String Option, String Label) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("ownership_select_variable") + Label + "']";
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH)
		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);
		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}

	@Then("Verify {string} tooltip of {string} in add bank account page")
	public void verify_tooltip_of_in_add_bank_account_page(String Label, String TTdescription)
			throws InterruptedException {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("BA_tooltips_icon_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		// WaitClass.webDriverWait(formatXPATH);

		// Wait.until(ExpectedConditions.elementToBeClickable(formatXPATH));
		Thread.sleep(3000);
		String ttactual = driver.findElement(By.xpath(ec.getObjects("password_tooltip"))).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Verified '" + Label + "' tooltip: " + TTdescription + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + TTdescription + "\n");

	}

	@Then("Click on cancel button.")
	public void click_on_cancel_button() {
		String original = ec.getObjects("cancelUpload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("cancelUpload"))).click();
		System.out.println("clicked" + "on" + "cancel" + "button");
	}
	
	@Then("Enter {string} email in Email Address")
	public void enter_email_in_email_address(String Option) throws Throwable {
		String original = ec.getObjects("email");
		Thread.sleep(4000);
		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects(Option));
		Thread.sleep(6000);
		
		logger.info("Entered data" + "'netherlands" + "supplier'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'netherlands" + "supplier'" + "Email Address field" + "\n");
		}
	
	@Then("^Enter text in IBAN field$")
	public void enter_text_in_IBAN_field() throws Throwable {

		String original = ec.getObjects("alb_text_area");
		//String formatXPATH = String.format(original);

		driver.findElement(By.xpath(original)).sendKeys("testinguatiniban");

		logger.info("Entered data" + "inIBAN field" + "\n");
		System.out.println("Entered data" + "inIBAN field" + "\n");
	}
	
	@Then("Enter {string} email in Email Address field for Italy")
	public void enter_email_in_email_address_field__for_Italy_something(String Country) throws Throwable {

		Thread.sleep(6000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = Country + ec.getObjects("localisation_Supplierusr1");
		
		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys(Email);
		
		logger.info("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'" + Email + "'" + "Email Address field" + "\n");

	}
	@Then("Enter {string} data in {string} field")
	public void Enter_data_in_field(String InputString, String Label) throws Throwable {

		Thread.sleep(2000);

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputString);

		logger.info("data is enetered in " + "'" + Label + "'" + " field" + "\n");
		System.out.println("data is enetered in " + "'" + Label + "'" + " field" + "\n");
	}

	@Then("verify no error msg is displayed under {string} field under {string}")
	public void verify_no_error_msg_is_displayed_under_field_under(String Label, String SubCat) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " input text field under " + SubCat + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " input text field under " + SubCat + "\n");
	}

	@Then("Show error msg {string} under {string} field under BankAccountInformation")
	public void show_error_msg_under_field_under_BankAccountInformation(String error, String Label) {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");

	}

	@Then("Verify no data is entered in {string} field {string}")
	public void verify_no_data_is_entered_in_field (String Label, String SubCat) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").isEmpty());
		logger.info("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");
		System.out.println("Verified no data is enetered in " + "'" + Label + "'" + " field" + "\n");

	}
	
	@Then("Clear {string} the field under {string}")
	public void clear_the_field_under(String Label, String SubCat) {
		
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		System.out.println("\n" + "Cleared " + Label + " field" + "\n");
	}
	
	@Then("Enter {string} followed by {int} numbers in {string} field under {string}")
	public void enter_followed_by_numbers_in_field_under(String startingLetters, Integer followingNumbers,
			String Label, String SubCat) {

		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String alphabets = startingLetters;
		String numbers = RandomStringUtils.randomNumeric(followingNumbers);

		String input = alphabets + numbers;

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		String actualInput = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info(Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
		System.out.println(
				Label + ":--" + "\n" + "Data Generated: " + input + "\n" + "Data Entered  : " + actualInput + "\n");
	}
	
	
	@Then("Select {string} in {string} dropdown from {string}")
	public void select_in_dropdown_from(String Option, String Label, String SubCat) throws Throwable {

		
				String original =  ec.getObjects("label_var") + Label + ec.getObjects("dropdown_h6_var3");
				String formatXPATH = String.format(original);

				WaitClass.clickableWait(formatXPATH);
				Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

				dropdown.selectByVisibleText(Option);
				
		Thread.sleep(2000);
		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	}
	
	@Then("verify no error message {string} for {string} field")
	public void verify_no_error_message_for_field(String error, String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("error_var4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("not Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("not Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}
	
	@Then("Enter input data in {string} field")
	public void Enter_input_data_in_field(String Label) throws Throwable {
		
		int min = 1;
		int max = 20;
		int InputString=5;
		String str = new String();
		Random random = new Random();

		Thread.sleep(2000);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);
	
		// WaitClass.webDriverWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for(int i=min;i<=max;i++) {
		InputString = random.nextInt(max-min)+min;
		str = str+Integer.toString(InputString);
		}
		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		
		logger.info("data is enetered in " + "'" + Label + "'" + " field" + "\n");
		System.out.println("data is enetered in " + "'" + Label + "'" + " field" + "\n");
			}
	
	@Then("Show error message {string} under {string} field {string}")
	public void show_error_message_under_field(String Error, String SubCat, String lev ) {

		//String original = ec.getObjects("labvar") + SubCat + ec.getObjects("labvar1") + lev;
		// Error+ ec.getObjects("label_var2");
		String original = ec.getObjects("label123");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Error.trim()));

		logger.info("Showing error message " + "'" + Error + "'" + " under Currency field" + "\n");
		System.out.println("Showing error message " + "'" + Error + "'" + " under Currency field" + "\n");

	}
	@Then("Enter {int} digit numeric datawith {string} in {string} field under {string}")
	public void enter_digit_numeric_datawith_in_field_under(Integer stringLeangth, String Seperator, String Label, String SubCat) {
		String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String random = RandomStringUtils.randomNumeric(stringLeangth)+ Seperator + RandomStringUtils.randomNumeric(stringLeangth)+ Seperator + RandomStringUtils.randomNumeric(stringLeangth)+ Seperator + RandomStringUtils.randomNumeric(stringLeangth) + RandomStringUtils.randomNumeric(stringLeangth) ;
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(random);

		logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");

	}
	
	@Then("Verify {string} tooltip of {string} in add bank account Factoring Company Address section")
	public void verify_tooltip_of_in_add_bank_account_Factoring_Company_Address_section(String Label, String TTdescription) throws InterruptedException {
		String original = ec.getObjects("Companyadress1") + Label + ec.getObjects("Companyadress2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		// WaitClass.webDriverWait(formatXPATH);
		// Wait.until(ExpectedConditions.elementToBeClickable(formatXPATH));
		Thread.sleep(3000);
		String ttactual = driver.findElement(By.xpath(ec.getObjects("password_tooltip"))).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + Label + "' tooltip: " + TTdescription + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + TTdescription + "\n");
	}
	
	@Then("Click on Submit button on Export Import Compliance")
	public void click_on_the_Submit_button_on_Export_Import_Compliance() 
	{
		String original = ec.getObjects("export_import_checklist_questionnaire_submit_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		//driver.findElement(By.xpath(original)).sendKeys(formatXPATH); 
		driver.findElement(By.xpath(formatXPATH)).click(); 

		logger.info("Click on Submit button on Export Import Compliance" + "\n");
		System.out.println("Click on Submit button on Export Import Compliance" + "\n");   
	}

}