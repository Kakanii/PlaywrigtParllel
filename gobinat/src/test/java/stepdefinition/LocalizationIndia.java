package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class LocalizationIndia extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(LocalizationIndia.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	@Then("Verify Tax Country is Pre populated with country {string}")
	public void verify_Tax_Country_is_Pre_populated_with_country(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("indialocal_taxCntry_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getAttribute("value").equalsIgnoreCase(string));

		logger.info("Showing India in the Tax country field" + "\n");
		System.out.println("Showing India in the Tax country field" + "\n");

	}

	@Then("Show Business Type Label in Basic Information Page {string}")
	public void show_Business_Type_Label_in_Basic_Information_Page(String string) {
		String original = ec.getObjects("indialocal_businessType_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Business Type label in Basic Information Page of India Supplier" + "\n");
		System.out.println("Showing Business Type label in Basic Information Page of India Supplier" + "\n");

	}

	@Then("Show Business Type tooltip {string}")
	public void show_Business_Type_tooltip(String string) throws Throwable {
		Thread.sleep(1500);
		
		String original = ec.getObjects("indialoacal_businessType_TT");

		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText()
				.equalsIgnoreCase(string));

		logger.info("Showing Business Type Tooltip: " + string + "\n");
		System.out.println("Showing Business Type Tooltip: " + string + "\n");
	}

	@Then("Show Business type field in Basic information Page {string}")
	public void show_Business_type_field_in_Basic_information_Page(String string) {
		String original = ec.getObjects("indialocal_businessType_drpdown");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Business Type dropdown in Basic Info page for India Supplier" + "\n");
		System.out.println("Showing Business Type dropdown in Basic Info page for India Supplier" + "\n");

	}

	@Then("Verify Business type field clickable in Basic information Page {string}")
	public void verify_Business_type_field_clickable_in_Basic_information_Page(String string) {
		String original = ec.getObjects("indialocal_businessType_drpdown");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Business Type field is Enabled in Basic Info page for a India Supplier" + "\n");
		System.out.println("Business Type field is Enabled in Basic Info page for a India Supplier" + "\n");
	}

	@Then("Verify {string} is listed in Business Type dropdown")
	public void verify_is_listed_in_Business_Type_dropdown(String string) throws Throwable {

		WaitClass.webDriverWait(ec.getObjects("indialocal_businessType_drpdown"));
		driver.findElement(By.xpath(ec.getObjects("indialocal_businessType_drpdown"))).click();
		Thread.sleep(1500);

		String original = ec.getObjects("indialocal_buinessTypeOptions_variable") + string + "')]";

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing " + "'" + string + "'"
				+ " in Business Type dropdown in basic Info page for a India Supplier" + "\n");
		System.out.println("Showing " + "'" + string + "'"
				+ " in Business Type dropdown in basic Info page for a India Supplier" + "\n");
	}

	@Then("Select {string} in Business Type dropdown")
	public void select_in_Business_Type_dropdown(String string) throws Throwable {
		String original = ec.getObjects("indialocal_businessType_drpdown");

		WaitClass.webDriverWait(original);

		Select Btype = new Select(driver.findElement(By.xpath(original)));
		Btype.selectByVisibleText(string);
		
		Thread.sleep(2000);

		logger.info("Selected " + "'" + string + "'" + " in Busyness type Dropdown" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " in Busyness type Dropdown" + "\n");
	}

	@Then("Click on Save button in Basic Information Page")
	public void click_on_Save_button_in_Basic_Information_Page() {

		for (int k = 0; k < 4; k++)
			try {
				String original = ec.getObjects("indialocal_basicInfo_savebtn");
				WaitClass.clickableWait(original);

				driver.findElement(By.xpath(original)).click();
				break;
			} catch (Exception o) {
				o.toString();
				logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + o.getMessage());
			}
		
		logger.info("Clicked on Save btm in basic onformation page" + "\n");
		System.out.println("Clicked on Save btm in basic onformation page" + "\n");

	}

	@Then("Enter Indian Supplier Company Name on Invite Supplier window")
	public void enter_Indian_Supplier_Company_Name_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String supplier = "indiasupplier" + Time;

		timeStamp.add(0, supplier);
		driver.findElement(By.xpath(original)).sendKeys(supplier);

		logger.info("Entered data " + "'" + supplier + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + supplier + "'" + " Company name field" + "\n");
	}

	@Then("Enter Indian Supplier Contact Email Address on Invite Supplier window")
	public void enter_Indian_Supplier_Contact_Email_Address_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Enter Indian Supplier Confirm Contact Email Address on Invite Supplier window")
	public void enter_Indian_Supplier_Confirm_Contact_Email_Address_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Confirm email address" + "\n");
	}

	@Then("Verify email received in Indian supplier inbox with subject {string}")
	public void verify_email_received_in_Indian_supplier_inbox_with_subject(String subject) throws Throwable {

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

	@Then("Verify {string} is listed in Country field while supplier registration")
	public void verify_is_listed_in_country_field_while_supplier_registration(String string) throws Throwable {

		WaitClass.webDriverWait(ec.getObjects("indialocal_supplierRegis_countrydrpdown"));
		driver.findElement(By.xpath(ec.getObjects("indialocal_supplierRegis_countrydrpdown"))).click();

		String original = ec.getObjects("indialocal_supplierRegis_countryoption_var") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info(string + " is listed in country dropdown while supplier registration" + "\n");
		System.out.println(string + " is listed in country dropdown while supplier registration" + "\n");

	}

	@Then("^Close the TYS tab$")
	public void close_the_tys_tab() throws Throwable {

		driver.close();
		Thread.sleep(2000);
		logger.info("Closed the TYS tab" + "\n");
		System.out.println("Closed the TYS tab" + "\n");

	}

	@Then("Show Legal Business Name field {string}")
	public void show_Legal_Business_Name_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_Legalbus_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Legal Business Name field in India Supplier Registration" + "\n");

		System.out.println("Showing Legal Business Name field in India Supplier Registration" + "\n");
	}

	@Then("Show Country field {string}")
	public void show_Country_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_Country_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Country field in India Supplier Registration" + "\n");

		System.out.println("Showing Country field in India Supplier Registration" + "\n");
	}

	@Then("Show Address field {string}")
	public void show_Address_field(String string) {

		String original = ec.getObjects("indialoc_supplierRegis_Address_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Address field in India Supplier Registration" + "\n");

		System.out.println("Showing Address field in India Supplier Registration" + "\n");
	}

	@Then("Show City field {string}")
	public void show_City_field(String string) {

		String original = ec.getObjects("indialoc_supplierRegis_City_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing City field in India Supplier Registration" + "\n");

		System.out.println("Showing City field in India Supplier Registration" + "\n");
	}

	@Then("Show State field {string}")
	public void show_State_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_State_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing State field in India Supplier Registration" + "\n");

		System.out.println("Showing State field in India Supplier Registration" + "\n");
	}

	@Then("Show PIN Code field {string}")
	public void show_PIN_Code_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_PINCode_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing PIN Code field in India Supplier Registration" + "\n");

		System.out.println("Showing PIN Code field in India Supplier Registration" + "\n");
	}

	@Then("Show Phone Number field {string}")
	public void show_Phone_Number_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_Phone_field");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Phone Number field in India Supplier Registration" + "\n");

		System.out.println("Showing Phone Number field in India Supplier Registration" + "\n");
	}

	@Then("Verify Phone number flag is showing Indian flag {string}")
	public void verify_Phone_number_flag_is_showing_Indian_flag(String string) {
		String original = ec.getObjects("indialoc_Phoneflag");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing India flag in Phone Number country flag field" + "\n");

		System.out.println("Showing India flag in Phone Number country flag field" + "\n");
	}

	@Then("Click Continue button in supplier registration")
	public void click_Continue_button_in_supplier_registration() {

		String original = ec.getObjects("indialoc_continue_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Continue button in supplier registration" + "\n");
		System.out.println("Clicked on Continue button in supplier registration" + "\n");

	}

	@Then("Show {string} label")
	public void show_label(String string) {

		String original = ec.getObjects("label_var") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + string + "'" + " in supplier registration" + "\n");
		System.out.println("Showing label " + "'" + string + "'" + " in supplier registration" + "\n");
	}
	
	@Then("Show {string} label in basic information page of Indian Supplier")
	public void show_label_in_basic_information_page_of_Indian_Supplier(String string) {

		String original = ec.getObjects("indialoc_label_variable") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + string + "'" + " in supplier registration" + "\n");
		System.out.println("Showing label " + "'" + string + "'" + " in supplier registration" + "\n");
	}

	@Then("Show {string} field")
	public void show_field(String string) {
		String original = ec.getObjects("management_label_variable") + string + "']//following-sibling::input";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + string + "'" + " field in supplier registration" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " field in supplier registration" + "\n");

	}

	@Then("Show Phone Number field")
	public void show_Phone_Number_field() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("indialoc_phoneNumber_input");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Phone Number field in supplier registration" + "\n");
		System.out.println("Showing Phone Number field in supplier registration" + "\n");

	}

	@Then("Show {string} dropdown")
	public void show_dropdown(String string) {

		String original = ec.getObjects("management_label_variable") + string + "']//following-sibling::select";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + string + "'" + " dropdown in supplier registration" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " dropdown in supplier registration" + "\n");

	}

	@Then("Verify error message {string} under {string} field")
	public void verify_error_message_under_field(String string, String string2) throws Throwable {
		String original = ec.getObjects("management_label_variable") + string2 + "']//following-sibling::div";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " for the field " + "'" + string2 + "'" + "\n");
		System.out.println(
				"Showing Error message " + "'" + string + "'" + " for the field " + "'" + string2 + "'" + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under website field")
	public void verify_error_message_under_website_field(String string) throws Throwable {
		String original = "(" + ec.getObjects("management_label_variable") + "Website" + "']//following-sibling::div)[3]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " for the field "  + "\n");
		System.out.println(
				"Showing Error message " + "'" + string + "'" + " for the field "  + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under Phone Number field")
	public void verify_error_message_under_Phone_Number_field(String string) throws Throwable {
		String original = ec.getObjects("indialoc_phoneNumber_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " for Phone Number field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " for Phone Number field + " + "\n");
		Thread.sleep(1500);
	}

	@Then("Verify error message {string} under {string} dropdown")
	public void verify_error_message_under_dropdown(String string, String string2) {
		String original = ec.getObjects("management_label_variable") + string2 + "']//following-sibling::div";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info(
				"Showing Error message " + "'" + string + "'" + " for the " + "'" + string2 + "'" + " dropdown" + "\n");
		System.out.println(
				"Showing Error message " + "'" + string + "'" + " for the " + "'" + string2 + "'" + " dropdown" + "\n");
	}

	@Then("Verify Pin Code tooltip {string}")
	public void verify_Pin_Code_tooltip(String string) throws Throwable {

		String pinCodeTT = ec.getObjects("indialoc_PinCode_TT");

		WaitClass.webDriverWait(pinCodeTT);
		
		String TTDescription = driver.findElement(By.xpath(pinCodeTT)).getAttribute("data-original-title");

		Thread.sleep(2000);


		assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing PIN Code Tool Tip: " + string + "\n");
		System.out.println("Showing PIN Code Tool Tip: " + string + "\n");
	}

	@Then("Enter {string} in Pin code field")
	public void enter_in_Pin_code_field(String string) {
		String original = ec.getObjects("indialoc_supplierRegis_PINCode_field");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in PIN Code field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in PIN Code field" + "\n");

	}

		
	@Then("Show GST Registration Certificate ToolTip {string}")
	public void show_GST_Registration_Certificate_ToolTip(String string) throws Throwable {
		String original = ec.getObjects("indialoc_GSTCert_TT");

		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText()
				.equalsIgnoreCase(string));

		logger.info("Showing GST Registration Certificate Tooltip: " + string + "\n");
		System.out.println("Showing GST Registration Certificate Tooltip: " + string + "\n");

	}

	@Then("Verify {string} button is enabled in basic information page")
	public void verify_is_button_enabled_in_basic_information_page(String string) {
		String original = ec.getObjects("indialoc_GSTUpload_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());

		logger.info(string + " button is enabled in basic information page" + "\n");
		System.out.println(string + " button is enabled in basic information page" + "\n");

	}

	@Then("Supplier land on Locations tab {string}")
	public void supplier_land_on_Locations_tab(String string) {
		String original = ec.getObjects("AddLocation_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Supplier Landed on Locations tab" + "\n");
		System.out.println("Supplier Landed on Locations tab" + "\n");
	}

	@Then("Verify {string} from the verification code email and copy the code")
	public void verify_from_the_verification_code_email_and_copy_the_code(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_Vcode") + string + "')]";

		driver.switchTo().frame(0);
		String VC = driver.findElement(By.xpath(original)).getText();

		String Code = VC.substring(string.length());

		driver.switchTo().parentFrame();
		VerificationCode.add(0, Code);

		logger.info("Retrieved Verification Code: " + Code + "\n");
		System.out.println("Retrieved Verification Code: " + Code + "\n");
	}

	@Then("Enter verification code in verification code field in TYS tab")
	public void enter_verification_code_in_verification_code_field_in_TYS_tab() throws Throwable {
		String original = ec.getObjects("CH_invite_VCode_inputbox");

		WaitClass.webDriverWait(original);

		String code = VerificationCode.get(0).toString();

		driver.findElement(By.xpath(original)).sendKeys(code);
		Thread.sleep(3000);

		String NewTYSHandle = driver.getWindowHandle();

		tabs.add(1, NewTYSHandle);

		logger.info("Entered " + "'" + code + "'" + " in Verification Code field" + "\n");
		System.out.println("Entered " + "'" + code + "'" + " in Verification Code field" + "\n");
	}

	@Then("Show {string} button in basic information page of Indian Supplier")
	public void show_button_in_basic_information_page_of_Indian_Supplier(String string) {

		String original = ec.getObjects("indialoc_GSTUpload_btn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing " + string + " butoon in basic information page of Indian Supplier" + "\n");
		System.out.println("Showing " + string + " butoon in basic information page of Indian Supplier" + "\n");

	}
	
	@Then("Show CIN label in basic information {string}")
	public void show_CIN_label_in_basic_information(String string) {
		String original = ec.getObjects("indialoc_CIN_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Corporate Identification Number (CIN) label in basic information page" + "\n");
		System.out.println("Showing Corporate Identification Number (CIN) label in basic information page" + "\n");

	}

	@Then("Show CIN text field in basic information page {string}")
	public void show_CIN_text_field_in_basic_information_page(String string) {

		String original = ec.getObjects("indialoc_CIN_inputtext");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Corporate Identification Number (CIN) input field in basic information page" + "\n");
		System.out
				.println("Showing Corporate Identification Number (CIN) input field in basic information page" + "\n");
	}

	@Then("Verify CIN text field enabled {string}")
	public void verify_CIN_text_field_enabled(String string) {
		String original = ec.getObjects("indialoc_CIN_inputtext");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());

		logger.info("Corporate Identification Number (CIN) input field is Enabled in basic information page" + "\n");
		System.out.println(
				"Corporate Identification Number (CIN) input field is Enabled in basic information page" + "\n");
	}

	@Then("Show Certificate of Incorporation label {string}")
	public void show_Certificate_of_Incorporation_label(String string) {
		String original = ec.getObjects("indialoc_COI_label");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Certificate of Incorporation label in basic information page" + "\n");
		System.out.println("Showing Certificate of Incorporationlabel in basic information page" + "\n");

	}

	@Then("Show Attach Document button under Certificate of Incorporation {string}")
	public void show_Attach_Document_button_under_Certificate_of_Incorporation(String string) {
		String original = ec.getObjects("indialoc_COI_attachBtn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Certificate of Incorporation attached in basic information page" + "\n");
		System.out.println("Showing Certificate of Incorporation attached in basic information page" + "\n");

	}

	@Then("Verify Attach Document button clickable under Certificate of Incorporation {string}")
	public void verify_Attach_Document_button_clickable_under_Certificate_of_Incorporation(String string) {

		String original = ec.getObjects("indialoc_COI_attachBtn");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Attach Document button is clickable under Certificate of Incorporation" + "\n");
		System.out.println("Attach Document button is clickable under Certificate of Incorporation" + "\n");
	}


	@Then("Click on Join Now Link in the India supplier email")
	public void click_on_Join_Now_Link_in_the_India_supplier_email() throws Throwable {
		if (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed()) {
			driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		} else {
			System.out.println("Got It button not found");
		}
		Thread.sleep(2000);

		driver.switchTo().frame("msg_body");
		
		WaitClass.webDriverWait(ec.getObjects("mailinator_joinNow_link"));

		driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link"))).click();

		driver.switchTo().parentFrame();

		String mailinatorHandle = driver.getWindowHandle();

		tabs.add(0, mailinatorHandle);

		logger.info("Clicked on Join Now Link" + "\n");
		System.out.println("Clicked on Join Now Link" + "\n");
	}

	@Then("Close the current tab")
	public void close_the_current_tab() {

		driver.close();
		driver.switchTo().window(tabs.get(0));
	}

	@Then("Show Step five of supplier registration {string}")
	public void show_Step_of_supplier_registration(String string) {

		String original = ec.getObjects("indialocal_supRegis_Step5");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Step 5 page of supplier registration" + "\n");
		System.out.println("Showing Step 5 page of supplier registration" + "\n");
	}
	
	@Then("Select State in State drop down {string}")
	public void select_State_in_State_drop_down(String string) {

		String original = ec.getObjects("CH_state_drpdown");
		WaitClass.webDriverWait(original);
		
		Select state = new Select(driver.findElement(By.xpath(original)));

		state.selectByVisibleText(string);

		logger.info("Selected "+ "'" + string + "'" + " from the State dropdown" + "\n");
		System.out.println("Selected "+ "'" + string + "'" + " from the State dropdown" + "\n");

	}
	
	@Then("Verify no error message under business type {string}")
	public void verify_no_error_message_under_business_type(String string) {
		
		String original = ec.getObjects("indialocal_businesstype_error");

		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);
		
		logger.info("No error message is displayed under Busyness Type" + "\n");
		System.out.println("No error message is displayed under Busyness Type" + "\n");
	}

	@Then("Show Permanent Account Number label {string}")
	public void show_Permanent_Account_Number_PAN_label(String string) {
		String original = ec.getObjects("indialocal_PAN_label");

		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		
		logger.info("Showing Permanent Account Number label in Basic Information Page" + "\n");
	System.out.println("Showing Permanent Account Number label in Basic Information Page" + "\n");
	}

	@Then("Show Permanent Account Number input field {string}")
	public void show_Permanent_Account_Number_PAN_input_field(String string) {
		String original = ec.getObjects("indialocal_PAN_input");

		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		
		logger.info("Showing Permanent Account Number input text box in Basic Information Page" + "\n");
	System.out.println("Showing Permanent Account Number input text box in Basic Information Page" + "\n");
	
	}

	@Then("Verify Permanent Account Number input field clickable {string}")
	public void verify_Permanent_Account_Number_PAN_input_field_clickable(String string) {

		String original = ec.getObjects("indialocal_PAN_input");

		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled());
		
		logger.info("Permanent Account Number input text box is Enabled in Basic Information Page" + "\n");
	System.out.println("Permanent Account Number input text box is Enabled in Basic Information Page" + "\n");
	
	
	}

	@Then("Show Permanent Account Number Tooltip {string}")
	public void show_Permanent_Account_Number_PAN_Tooltip(String string) throws Throwable {
		String original = ec.getObjects("indialocal_PAN_TT");

		WaitClass.webDriverWait(original);
		
		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText().equalsIgnoreCase(string));
		
	//	String TTDescription = driver.findElement(By.xpath(PANToolT)).getAttribute("data-original-title");

	//	assertTrue(TTDescription.equalsIgnoreCase(string));

		logger.info("Showing Permanent Account Number Tooltip: " + string + "\n");
		System.out.println("Showing Permanent Account Number Tooltip: " + string + "\n");
	
	}

	@Then("Enter {string} in Permanent Account Number input field")
	public void enter_in_Permanent_Account_Number_PAN_input_field(String string) {
		String original = ec.getObjects("indialocal_PAN_input");

		WaitClass.webDriverWait(original);
		
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);
		
		logger.info("Entered " + "'" + string + "'" + " in Permanent Account Number input field" + "\n");
	System.out.println("Entered " + "'" + string + "'" + " in Permanent Account Number input field" + "\n");
	
	}

	@Then("No error message is displayed under Permanent Account Number input field")
	public void no_error_message_is_displayed_under_Permanent_Account_Number_PAN_input_field() {
		String original = ec.getObjects("indialocal_PAN_error");

		
		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);
		
		
		logger.info("No error message is displayed under Permanent Account Number" + "\n");
		System.out.println("No error message is displayed under Permanent Account Number" + "\n");
	
	}
	
	@Then("Verify error message {string} under Permanent Account Number field")
	public void verify_error_message_under_Permanent_Account_Number_field(String string) throws Throwable {
		String original = ec.getObjects("indialocal_PAN_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " under Permanent Account Number field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " under Permanent Account Number field" + "\n");
		Thread.sleep(1500);
	}
	
	@Then("Verify Corporate Identification Number Tooltip {string}")
	public void verify_Corporate_Identification_Number_Tooltip(String string) throws Throwable {
		String original = ec.getObjects("indialocal_CIN_TT");

		WaitClass.webDriverWait(original);
		
		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText()
				.equalsIgnoreCase(string));

		logger.info("Showing CIN Code Tool Tip: " + string + "\n");
		System.out.println("Showing CIN Code Tool Tip: " + string + "\n");
	
	}

	@Then("Enter data in CIN field {string}")
	public void enter_data_in_CIN_field(String string) {
		
		String original = ec.getObjects("indialocal_CIN_input"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ " CIN field"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ " CIN field" +"\n");

		
	}

	@Then("Show error message {string} under Corporate Identification Number")
	public void show_error_message_under_Corporate_Identification_Number(String string) throws Throwable {

		String original = ec.getObjects("indialocal_CIN_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + " under Corporate Identification Number (CIN)" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " under Corporate Identification Number (CIN)" + "\n");
		Thread.sleep(1500);
		
	}
	@Then("No error message is displayed under Corporate Identification Number")
	public void no_error_message_is_displayed_under_Corporate_Identification_Number() {

String original = ec.getObjects("indialocal_CIN_error");

		
		ArrayList<WebElement> error = new ArrayList<WebElement>(driver.findElements(By.xpath(original)));
		assertTrue(error.size() == 0);
		
		
		logger.info("No error message is displayed under Corporate Identification Number (CIN)" + "\n");
		System.out.println("No error message is displayed under Corporate Identification Number (CIN)" + "\n");
	
	}
	
	@Then("Enter India supplier email in Email Address field")
    public void enter_India_supplier_email_in_email_address_field_something() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("india_Supplierusr"));
		
		if(driver.findElement(By.xpath(original)).getAttribute("value") != ec.getObjects("india_Supplierusr"));
		{
			
			WebElement toClear = driver.findElement(By.xpath(original));
			toClear.sendKeys(Keys.CONTROL + "a");
			toClear.sendKeys(Keys.DELETE);
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("india_Supplierusr"));
		}
		

		logger.info("Entered data" + " " + ec.getObjects("india_Supplierusr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("india_Supplierusr") + " " + "Email Address field" + "\n");
	
	
	}


	@Then("Verify error message {string} under PIN Code field")
	public void verify_error_message_under_PIN_Code_field(String string) throws Throwable {
		String original = ec.getObjects("indiasupplierregist_pincode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));

		logger.info("Showing Error message " + "'" + string + "'" + "  under pin Code field" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + " under pin Code field + " + "\n");
		Thread.sleep(1500);
	}
	
	}
