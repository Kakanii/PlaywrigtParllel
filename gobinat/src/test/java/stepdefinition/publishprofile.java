package stepdefinition;

//import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
//import org.openqa.selenium.interactions.Actions;
//import org.openqa.selenium.support.ui.ExpectedCondition;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;

///import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;
//import java.util.concurrent.TimeUnit;
import java.time.format.DateTimeFormatter;
import java.time.LocalDateTime;

public class publishprofile extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(Dashboard.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();
	public WebDriverWait wait = new WebDriverWait(driver, 120);

	@Then("Enter Supplier Company Name on Invite Supplier window")
	public void enter_Supplier_Company_Name_on_Invite_Supplier_window() throws Throwable {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String supplier = "Supplier" + Time;

		timeStamp.add(0, supplier);
		driver.findElement(By.xpath(original)).sendKeys(supplier);

		logger.info("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
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
	 */

	@Then("Enter Contact First Name on Invite Supplier window")
	public void enter_Contact_First_Name_on_Invite_Supplier_window() throws Throwable {

		String original = ec.getObjects("contactfirstname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("First Name");

		logger.info("Entered Contact First name field" + "\n");
		System.out.println("Entered Contact First name field" + "\n");

	}

	@Then("Enter Contact Last Name on Invite Supplier window")
	public void enter_Contact_Last_Name_on_Invite_Supplier_window() throws Throwable {

		String original = ec.getObjects("contactlastname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Last Name");

		logger.info("Entered Contact Last name field" + "\n");
		System.out.println("Entered Contact Last name field" + "\n");
	}

	@Then("Click on Next button on Invite Supplier questionnaires window")
	public void click_on_Next_button_on_Invite_Supplier_questionnaires_window() throws Throwable {
		String original = ec.getObjects("invitesupplierenextbtnconfirm");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Click on Next button on Invite Supplier questionnaires window " + "\n");
		System.out.println("Click on Next button on Invite Supplier questionnaires window " + "\n");
	}

	@Then("Click on the email in mailinator with subject {string}")
	public void click_on_the_email_in_mailinator_with_subject(String string) throws Throwable {

		System.out.println("inside the email click1111" + "\n");
		String original = ec.getObjects("CH_variable_subjectLine") + string + "')]";

		System.out.println("inside the email click2222" + original + "\n");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		System.out.println("inside the email click3333" + "\n");
		Thread.sleep(2000);

		logger.info("Clicked on Email with subject: " + "'" + string + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + string + "'" + "\n");

	}

	@Then("Click on Join Now Link in the supplier invite email")
	public void click_on_Join_Now_Link_in_the_supplier_invite_email() throws Throwable {

		if (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed()) {
			driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		} else {
			System.out.println("Got It button not found");
		}
		Thread.sleep(2000);

		driver.switchTo().frame("msg_body");

		driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link"))).click();

		driver.switchTo().parentFrame();

		String mailinatorHandle = driver.getWindowHandle();

		tabs.add(0, mailinatorHandle);

		logger.info("Clicked on Join Now Link" + "\n");
		System.out.println("Clicked on Join Now Link" + "\n");

	}

	@Then("Click on check box on TYS tab {string}")
	public void click_on_check_box_on_TYS_tab(String string) throws Throwable {
		String original = ec.getObjects("CH_TandCAccept_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on check box " + "'" + string + "'" + "\n");
		System.out.println("Clicked on check box " + "'" + string + "'" + "\n");

	}

	@Then("Click {string} button on TYS tab")
	public void click_button_on_TYS_tab(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_button") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	}

	@Then("Enter Legal Business Name on Company tab")
	public void enter_Legal_Business_Name_on_Company_tab() throws Throwable {

		String original = ec.getObjects("CH_LegalBusinessName_inputbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Legal Name");

		logger.info("Entered Legal business name" + "\n");
		System.out.println("Entered legal business name" + "\n");

	}

	@Then("Enter City {string} in City field for USA")
	public void enter_City_in_City_field_for_USA(String string) throws Throwable {

		String original = ec.getObjects("usa_signup_city");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in City field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in City field" + "\n");

	}

	@Then("Select {string} state from the State drop down")
	public void select_state_from_the_State_drop_down(String string) throws Throwable {

		String original = ec.getObjects("usa_signup_state");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("usa_signup_state"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Enter value {string} in Zip code")
	public void enter_value_in_Zip_code(String string) throws Throwable {

		String original = ec.getObjects("usa_signup_zipcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Zip code field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Zip code field" + "\n");

	}

	@Then("Enter value {string} in Phone Number field")
	public void enter_value_in_Phone_Number_field(String string) throws Throwable {

		String original = ec.getObjects("usa_signup_phonenumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in phone number field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in phone number field" + "\n");

	}

	@Then("Enter new password in Password field")
	public void enter_new_password_in_Password_field() throws Throwable {
		String original = ec.getObjects("usa_signup_password");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("pwd"));

		logger.info("Entered data" + " " + ec.getObjects("pwd") + " " + "Password field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("pwd") + " " + "Password field" + "\n");
	}

	@Then("Enter same password in Confirm Password field")
	public void enter_same_password_in_Confirm_Password_field() throws Throwable {
		String original = ec.getObjects("usa_signup_confirmpassword");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("pwd"));

		logger.info("Entered data" + " " + ec.getObjects("pwd") + " " + "Confirm Password field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("pwd") + " " + "Confirm Password field" + "\n");
	}

	@Then("Verify {string} from the email and copy the code")
	public void verify_from_the_email_and_copy_the_code(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_Vcode") + string + "')]";

		driver.switchTo().frame(0);
		String VC = driver.findElement(By.xpath(original)).getText();

		String Code = VC.substring(string.length());

		driver.switchTo().parentFrame();
		VerificationCode.add(0, Code);

		logger.info("Retrieved Verification Code: " + Code + "\n");
		System.out.println("Retrieved Verification Code: " + Code + "\n");
	}

	@Then("Close current tys tab")
	public void close_current_tys_tab() {

		driver.close();
		driver.switchTo().window(tabs.get(0));
	}

	@Then("Enter code in verification code field in TYS tab")
	public void enter_code_in_verification_code_field_in_TYS_tab() throws Throwable {
		String original = ec.getObjects("CH_invite_VCode_inputbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(VerificationCode.get(0));
		Thread.sleep(3000);

		String NewTYSHandle = driver.getWindowHandle();

		tabs.add(1, NewTYSHandle);

		logger.info("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
		System.out.println("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
	}

	@Then("Click on Let's Begin button")
	public void click_on_Let_s_Begin_button() throws Throwable {
		Thread.sleep(3000);

		String original = ec.getObjects("usa_signup_letsbeginbutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Lets begin button" + "\n");
		System.out.println("Clicked on Lets begin button" + "\n");
	}

	@Then("Click on Continue button")
	public void click_on_Continue_button() throws Throwable {

		String original = ec.getObjects("usa_signup_continuebutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Continue button" + "\n");
		System.out.println("Clicked on Continue button" + "\n");
	}

	@Then("Click on Let's get started button")
	public void click_on_Let_s_get_started_button() throws Throwable {

		String original = ec.getObjects("usa_signup_letsgetstartedbutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Let's get started button" + "\n");
		System.out.println("Clicked on Let's get started button" + "\n");
	}

	@Then("Enter Date Established on Basic information page")
	public void enter_Date_Established_on_Basic_information_page() throws Throwable {

		String original = ec.getObjects("basicinfo_dateestablished");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys("1/02/2021");
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(3000);
		logger.info("Entered Date Established on Basic information page" + "\n");
		System.out.println("Entered Date Established on Basic information page" + "\n");

	}

	@Then("Upload the Tax Registration Document on the Basic information page")
	public void upload_the_Tax_Registration_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_taxupload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_taxupload"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("basicinfo_taxupload")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded pdf at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded pdf at the Tax Registration Document on the Basic information page" + "\n");
	}

	@Then("Enter the Description on the Basic information page")
	public void enter_the_Description_on_the_Basic_information_page() throws Throwable {

		String original = ec.getObjects("basicinfo_description");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		do {
			// driver.findElement(By.xpath(original)).click();
			driver.findElement(By.xpath(original)).sendKeys("Automation description");
		} while (driver.findElement(By.xpath(original)).getText().equals(null));

		logger.info("Entered the Description on the Basic information page" + "\n");
		System.out.println("Entered the Description on the Basic information page" + "\n");

	}

	@Then("Enter the Company Email on the Basic information page")
	public void enter_the_Company_Email_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_companyemail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered the Company Email on the Basic information page" + "\n");
		System.out.println("Entered the Company Email on the Basic information page" + "\n");

	}

	@Then("Enter the Website on the Basic information page")
	public void enter_the_Website_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_website");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered the Website on the Basic information page" + "\n");
		System.out.println("Entered the Website on the Basic information page" + "\n");

	}

	@Then("Enter the value {string} at Number of Full Time Employees on the Basic information page")
	public void enter_the_value_at_Number_of_Full_Time_Employees_on_the_Basic_information_page(String string)
			throws Throwable {

		String original = ec.getObjects("basicinfo_fulltimeemployee");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " "
				+ "at Number of Full Time Employees on the Basic information page" + "\n");
		System.out.println("Entered data" + " " + string + " "
				+ "at Number of Full Time Employees on the Basic information page" + "\n");
	}

	@Then("Enter the value {string} at Number of Temporary and Contracted Employees on the Basic information page")
	public void enter_the_value_something_at_number_of_temporary_and_contracted_employees_on_the_basic_information_page(
			String string) throws Throwable {
		String original = ec.getObjects("basicinfo_contemporaryemployee");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " "
				+ "at Number of Full Time Employees on the Basic information page" + "\n");
		System.out.println("Entered data" + " " + string + " "
				+ "at Number of Full Time Employees on the Basic information page" + "\n");
	}

	@Then("Select the UNSPSC codes on the Basic information page")
	public void select_the_UNSPSC_codes_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_unspsc_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, -1000);");

		String originalsegment = ec.getObjects("basicinfo_unspsc_segment");
		String formatXPATHsegment = String.format(originalsegment);

		WaitClass.clickableWait(formatXPATHsegment);

		driver.findElement(By.xpath(originalsegment)).click();

		String originalfamily = ec.getObjects("basicinfo_unspsc_family");
		String formatXPATHfamily = String.format(originalfamily);

		WaitClass.clickableWait(formatXPATHfamily);

		driver.findElement(By.xpath(originalfamily)).click();

		String originalclass = ec.getObjects("basicinfo_unspsc_class");
		String formatXPATHclass = String.format(originalclass);

		WaitClass.clickableWait(formatXPATHclass);

		driver.findElement(By.xpath(originalclass)).click();

		String originalcommodity = ec.getObjects("basicinfo_unspsc_commodity");
		String formatXPATHcommodity = String.format(originalcommodity);

		WaitClass.clickableWait(formatXPATHcommodity);

		driver.findElement(By.xpath(originalcommodity)).click();

		String addbutton = ec.getObjects("basiinfo_unspsc_add");
		String formatXPATHadd = String.format(addbutton);

		WaitClass.clickableWait(formatXPATHadd);

		driver.findElement(By.xpath(addbutton)).click();

		String originalconfirm = ec.getObjects("basicinfo_unspsc_confirm");
		String formatXPATHconfirm = String.format(originalconfirm);

		WaitClass.clickableWait(formatXPATHconfirm);

		driver.findElement(By.xpath(originalconfirm)).click();

		logger.info("Click on the UNSPSC codes on the Basic information page " + "\n");
		System.out.println("Click onthe UNSPSC codes on the Basic information page" + "\n");
	}

	@Then("Enter Legal business name on Basic information page")
	public void enter_Legal_business_name_on_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_legalbusiness");
		String formatXPATH = String.format(original);

		String legal = timeStamp.get(0) + "Legal";

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(legal);

		logger.info("Entered data " + "'" + legal + "'" + " Legal business name" + "\n");
		System.out.println("Entered data " + "'" + legal + "'" + " inlegal business name" + "\n");
	}

	@Then("Select the {string} from the Address type on location modal")
	public void select_the_from_the_Address_type_on_location_modal(String string) throws Throwable {
		String original = ec.getObjects("location_addresstype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("location_addresstype"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Enter the {string} in the Address field in the location modal")
	public void enter_the_in_the_Address_field_in_the_location_modal(String string) throws Throwable {
		String original = ec.getObjects("location_address");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in the Address field in the location modal" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in the Address field in the location modal" + "\n");
	}

	@Then("Enter the value {string} in the city field in the location modal")
	public void enter_the_value_in_the_city_field_in_the_location_modal(String string) throws Throwable {
		String original = ec.getObjects("location_city");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in the city field in the location modal" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in the city field in the location modal" + "\n");
	}

	@Then("Select the {string} in the state drop down in the location modal")
	public void select_the_in_the_state_drop_down_in_the_location_modal(String string) throws Throwable {
		String original = ec.getObjects("location_state");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("location_state"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Enter the {string} in the Zip code field in the location modal")
	public void enter_the_in_the_Zip_code_field_in_the_location_modal(String string) throws Throwable {
		String original = ec.getObjects("location_zipcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in the Zip code field in the location modal" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in the Zip code field in the location modal" + "\n");
	}

	@Then("Click Add New Location button on Locations page")
	public void click_Add_New_Location_button_on_Locations_page() throws Throwable {
		String original = ec.getObjects("location_addlocation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked Add New Location button on Locations page " + "\n");
		System.out.println("Clicked Add New Location button on Locations page" + "\n");
	}

	@Then("Enter value at Employer Identification Number on Basic information page")
	public void enter_value_at_Employer_Identification_Number_on_Basic_information_page() throws Throwable {

		String original = ec.getObjects("basicinfo_EIN");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMddHHmms");
		LocalDateTime now = LocalDateTime.now();

		driver.findElement(By.xpath(original)).sendKeys(dtf.format(now));

		logger.info("Entered data" + " " + dtf.format(now) + " "
				+ "at Employer Identification Number/ Business Number on Basic information page" + "\n");
		System.out.println("Entered data" + " " + dtf.format(now) + " "
				+ "at Employer Identification Number/  Business Number on Basic information page" + "\n");
	}

	@Then("Click on the next step button")
	public void click_on_the_next_step_button() throws Throwable {
		Thread.sleep(5000);
		String original = ec.getObjects("location_nextstep");
		String formatXPATH = String.format(original);
		String currentURL = driver.getCurrentUrl();
		do {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		} while (driver.getCurrentUrl().equals(currentURL));

		logger.info("Clicked on the next step button" + "\n");
		System.out.println("Clicked on the next step button" + "\n");
	}

	@Then("Click on the next step button on Locations page")
	public void click_on_the_next_step_button_on_Locations_page() throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("location_nextstep_locations");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the next step button on location page " + "\n");
		System.out.println("Clicked on the next step button on location page" + "\n");
	}

	@Then("Select the Suggested address radio button in location page")
	public void select_the_Suggested_address_radio_button_in_location_page() throws Throwable {
		String original = ec.getObjects("location_suggested");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement suggestedadd = driver.findElement(By.xpath(ec.getObjects("location_suggested")));
		suggestedadd.click();

		logger.info("Selected radio button of Suggested Location" + "\n");
		System.out.println("Selected radio button of Suggested Location" + "\n");
	}

	@Then("Click on Save button on Address Verification in location page")
	public void click_on_Save_button_on_Address_Verification_in_location_page() throws Throwable {

		String original = ec.getObjects("location_savebutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Click on Save button on Address Verification in location page" + "\n");
		System.out.println("Click on Save button on Address Verification in location page" + "\n");
	}

	@Then("Click on the Assign button to assign the CEO")
	public void click_on_the_Assign_button_to_assign_the_CEO() throws Throwable {

		String original = ec.getObjects("management_assignbutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on the Assign button to assign the CEO" + "\n");
		System.out.println("Clicked on the Assign button to assign the CEO" + "\n");
	}

	// span[contains(text(),'CEO or
	// Equivalent')]/following-sibling::div/button[contains(text(),'Assign')]
	@Then("Click on the {string} button under {string}")
	public void click_on_the_button_to_under(String assign, String Management) throws Throwable {

		Thread.sleep(2000);

		for (int i = 0; i < 4; i++) {
			String original = ec.getObjects("suppliersearch_var1") + Management + ec.getObjects("buttondiv1") + assign
					+ "')]";
			String formatXPATH = String.format(original);

			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
			Thread.sleep(2000);
			driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
			if (driver.findElements(By.xpath(ec.getObjects("publish_popup"))).size() > 0) {
				break;
			}
		}
		logger.info("Clicked on the Assign button to assign " + Management + "\n");
		System.out.println("Clicked on the Assign button to assign " + Management + "\n");
	}

	@Then("Select the option {string} on the Assign a Contact to Management Team modal")
	public void select_the_option_on_the_Assign_a_Contact_to_Management_Team_modal(String string) throws Throwable {

		String original = ec.getObjects("management_selectcontact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("management_selectcontact"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " "
				+ "from the drop down list on the Assign a Contact to Management Team modal" + "\n");
		System.out.println("selected" + " " + string + " "
				+ "from the drop down list  on the Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Select the {string} year from the drop down")
	public void select_the_year_from_the_drop_down(String string) throws Throwable {

		String original = ec.getObjects("management_selectdateofbirth");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("management_selectdateofbirth"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " "
				+ " year from the drop down on the Assign a Contact to Management Team modal" + "\n");
		System.out.println("selected" + " " + string + " "
				+ " year from the drop down  on the Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Click on Save button on the Assign a Contact to Management Team modal")
	public void click_on_Save_button_on_the_Assign_a_Contact_to_Management_Team_modal() throws Throwable {

		String original = ec.getObjects("management_savebutton");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);
			Thread.sleep(2000);
			driver.findElement(By.xpath(original)).click();
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
		logger.info("Clicked on Save button on the Assign a Contact to Management Team modal" + "\n");
		System.out.println("Clicked on Save button on the Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Click on Not applicable check box on CFO")
	public void click_on_Not_applicable_check_box_on_CFO() throws Throwable {

		String original = ec.getObjects("management_check_box_on_CFO");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Not applicable check box on CFO" + "\n");
		System.out.println("Clicked on Not applicable check box on CFO" + "\n");
	}

	@Then("Click on Not applicable check box on DOS")
	public void click_on_Not_applicable_check_box_on_DOS() throws Throwable {

		String original = ec.getObjects("management_check_box_on_DOS");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Not applicable check box on DOS" + "\n");
		System.out.println("Clicked on Not applicable check box on DOS" + "\n");
	}

	@Then("Click on the Add Ownership at Ownership tab")
	public void click_on_the_Add_Ownership_at_Ownership_tab() throws Throwable {

		String original = ec.getObjects("ownership_addownership");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Add Ownership at Ownership tab" + "\n");
		System.out.println("Clicked on the Add Ownership at Ownership tab" + "\n");
	}

	@Then("Select the option Individual from the drop down")
	public void select_the_option_Individual_from_the_drop_down() throws Throwable {

		String original = ec.getObjects("ownership_selectindividual");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the option Individual from the drop down" + "\n");
		System.out.println("Selected the option Individual from the drop down" + "\n");
	}

	@Then("Select the option {string} for Ownership on the Add a new Individual modal")
	public void select_the_option_for_Ownership_on_the_Add_a_new_Individual_modal(String string) throws Throwable {

		String original = ec.getObjects("Ownership_selectownership");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("Ownership_selectownership"))));
		drpCompany.selectByVisibleText(string);
		// drpCompany.selectByIndex(3);
		// drpCompany.selectByIndex(0);

		logger.info("Selected " + " " + string + " " + " for Ownership on the Add a new Individual modal" + "\n");
		System.out.println("selected" + " " + string + " " + " for Ownership on the Add a new Individual modal" + "\n");
	}

	@Then("Enter the value {string} percentage at the Ownership Percentage")
	public void enter_the_value_percentage_at_the_Ownership_Percentage(String string) throws Throwable {
		String original = ec.getObjects("ownership_percentage");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "percentage at the Ownership Percentage" + "\n");
		System.out.println("Entered data" + " " + string + " " + "percentage at the Ownership Percentage" + "\n");
	}

	@Then("Click on the save new individual owner button on the modal")
	public void click_on_the_save_new_individual_owner_button_on_the_modal() throws Throwable {

		String original = ec.getObjects("ownership_savenewownership");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on the save new individual owner button on the modal" + "\n");
		System.out.println("Clicked on the save new individual owner button on the modal" + "\n");
	}

	@Then("Click on Corporation Relations button")
	public void click_on_the_Corporation_Relations_button() throws Throwable {

		String original = ec.getObjects("Corp_Relation");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");

			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		}
		logger.info("Clicked on the Corporation Relations button" + "\n");
		System.out.println("Clicked on the Corporation Relations button" + "\n");
	}

	@Then("Select the {string} from the drop down in Financial tab")
	public void select_the_from_the_drop_down_in_Financial_tab(String string) throws Throwable {
		String original = ec.getObjects("financial_currency");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("financial_currency"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " + " " + string + " " + "from the drop down list" + "\n");
		System.out.println("selected" + " " + string + " " + "from the drop down list" + "\n");
	}

	@Then("Click on save button in Financial tab")
	public void click_on_save_button_in_Financial_tab() throws Throwable {

		String original = ec.getObjects("financial_save");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on save button in Financial tab" + "\n");
		System.out.println("Clicked on save button in Financial tab" + "\n");
	}

	@Then("Click on Save and Next step in Financial tab")
	public void click_on_Save_and_Next_step_in_Financial_tab() throws Throwable {

		String original = ec.getObjects("financial_saveandnext");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save and Next step in Financial tab" + "\n");
		System.out.println("Clicked on Save and Next step in Financial tab" + "\n");
	}

	@Then("Click on Review and publish profile button in the review and Publish tab")
	public void click_on_Review_and_publish_profile_button_in_the_review_and_Publish_tab() throws Throwable {

		String original = ec.getObjects("reviewandpublish_button");
		String formatXPATH = String.format(original);
		try {

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {

			WaitClass.staleElementClickWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}
		logger.info("Clicked on Review and publish profile button in the review and Publish tab" + "\n");
		System.out.println("Clicked on Review and publish profile button in the review and Publish tab" + "\n");
	}

	@Then("Enter value at Commercial Registration Number on Basic information page")
	public void enter_value_at_Commercial_Registration_Number_on_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_corporateregistration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMddHHmmss");
		LocalDateTime now = LocalDateTime.now();

		String Commregistrration = "CN" + dtf.format(now);

		driver.findElement(By.xpath(original)).sendKeys(Commregistrration);

		logger.info("Entered data at Commercial Registration Number on Basic information page" + "\n");
		System.out.println("Entered data at Commercial Registration Number on Basic information page" + "\n");
	}

	@Then("Upload the Business Incorporation Document on the Basic information page")
	public void upload_the_Business_Incorporation_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_france_bussinesincorporateupload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_france_bussinesincorporateupload"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver
				.findElement(By.xpath(ec.getObjects("basicinfo_france_bussinesincorporateupload")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded pdf at the Business Incorporation Document on the Basic information page" + "\n");
		System.out.println("Uploaded pdf at the Business Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Upload the Registration Incorporation Document on the Basic information page")
	public void upload_the_Registration_Incorporation_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_canada_registrationdocsupload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_canada_registrationdocsupload"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("basicinfo_canada_registrationdocsupload")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded pdf at the Registration Incorporation Document on the Basic information page" + "\n");
		System.out.println(
				"Uploaded pdf at the Registration Incorporation Document on the Basic information page" + "\n");
	}

	@Then("Upload the SIRET Registration Document on the Basic information page")
	public void upload_the_SIRET_Registration_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_france_siretregistrationdocs");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_france_siretregistrationdocs"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("basicinfo_france_siretregistrationdocs")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded pdf at SIRET Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded pdf at SIRET Registration Document on the Basic information page" + "\n");
	}

	@Then("Enter value at SIRET Number on the Basic Information page")
	public void enter_value_at_SIRET_Number_on_the_Basic_Information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_france_siret");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("ssyyMMddHHmmss");
		LocalDateTime now = LocalDateTime.now();

		driver.findElement(By.xpath(original)).sendKeys(dtf.format(now));

		logger.info("Entered data at SIRET Number on the Basic Information page" + "\n");
		System.out.println("Entered data at SIRET Number on the Basic Information page" + "\n");
	}

	@Then("Click on the publish button")
	public void click_on_the_publish_button() throws Throwable {

		String original = ec.getObjects("reviewandpublish_publish");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		/*
		 * do {
		 * 
		 * } while (driver.findElements(By.xpath(formatXPATH)).size() > 0);
		 * 
		 * String xpathExpressionfirst = ec.getObjects("publish_publihedtext");
		 * WaitClass.webDriverWait(xpathExpressionfirst);
		 */

		logger.info("Clicked on the publish button" + "\n");
		System.out.println("Clicked on the publish button" + "\n");
	}

	@Then("Click on button {string} for the questionare {string}")
	public void Click_beginQuest(String text,String string) throws Throwable {
		driver.switchTo().activeElement();
		String original = ec.getObjects("btn1") + text + ec.getObjects("btn2")+ "[" + string + "]";
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on " + text + " button " + "\n");
		logger.info("\n" + "Clicked on " + text + " button" + "\n");
	}
	@Then("Click on button {string} for questionare")
	public void Click_beginQuest(String text) throws Throwable {
		driver.switchTo().activeElement();
		String original = ec.getObjects("btn1") + text + ec.getObjects("btn2");
		String formatXPATH = String.format(original);
		//WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on " + text + " button " + "\n");
		logger.info("\n" + "Clicked on " + text + " button" + "\n");
	}

	@Then("Click button {string} for questionare")
	public void Click_publishQuest(String text) throws Throwable {
		driver.switchTo().activeElement();
		String original = ec.getObjects("publish_questionnaire2");
		String formatXPATH = String.format(original);
		//WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on " + text + " button " + "\n");
		logger.info("\n" + "Clicked on " + text + " button" + "\n");
	}
	@Then("Verify the filter as {}")
	public void verify_filter_as(String strvalue) throws Throwable {
		String original = ec.getObjects("supplier_Status_Check") + strvalue + "')]";
	}

	@Then("Enter Supplier Email at Invite Email label in User dropdown")
	public void enter_Supplier_Email_at_Invite_Email_label_in_User_dropdown() throws Throwable {
		String original = ec.getObjects("mysupplier_userstatus_inviteeemail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data at Supplier Email at Invite Email label in User dropdown" + "\n");
		System.out.println("Entered data at Supplier Email at Invite Email label in User dropdown" + "\n");
	}

	@Then("verify the status as {string}")
	public void verify_the_status_as(String string) throws Throwable {
		String original = ec.getObjects("supplier_Status_Check") + string + "')]";
		// String original = ec.getObjects("mysupplier_userstatus_readyforreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");
		logger.info("Status  " + " " + string + " " + " showing on Company name in buyer view" + "\n");
		System.out.println("status  " + " " + string + " " + " showing on company name in buyer view" + "\n");
	}

	@Then("verify the status as a Profile Complete")
	public void verify_the_status_as_a_Profile_Complete() {
		String original = ec.getObjects("profileComplete_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("verify the status as a Profile Complete" + "\n");
		System.out.println("verify the status as a Profile Complete" + "\n");
	}

	@Then("verify the status as Ready for Review")
	public void verify_the_status_as_Ready_for_Review() {
		String original = ec.getObjects("ReadyforReview_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("verify the status as Ready for Review" + "\n");
		System.out.println("verify the status as Ready for Review" + "\n");
	}

	@Then("Click on Return to Supplier button")
	public void click_on_Return_to_Supplier_button() {
		String original = ec.getObjects("returntoSupplierBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Return to Supplier button" + "\n");
		System.out.println("Click on Return to Supplier button" + "\n");
	}
	@Then("Click on Return to Supplier button with RFR status")
	public void click_on_Return_to_Supplier_button_with_RFR_status() {
		String original = ec.getObjects("returntoSupplierBtnRFRstatus");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Return to Supplier button" + "\n");
		System.out.println("Click on Return to Supplier button" + "\n");
	}

	@Then("Click on Confirm Return to Supplier button")
	public void click_on_Confirm_Return_to_Supplier_button() {
		String original = ec.getObjects("ConfirmReturnSupplierBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Confirm Return to Supplier button" + "\n");
		System.out.println("Click on Confirm Return to Supplier button" + "\n");

	}

	@Then("Click on the Undo Return to Supplier")
	public void click_on_the_Undo_Return_to_Supplier() {
		String original = ec.getObjects("UndoReturntoSupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on the Undo Return to Supplier" + "\n");
		System.out.println("Click on the Undo Return to Supplier" + "\n");

	}

	@Then("Choose Corporation company present in the drop down")
	public void choose_Corporation_company_present_in_the_drop_down() throws Throwable {

		String original = ec.getObjects("corporation_business");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Choose Corporation company present in the drop down" + "\n");
		System.out.println("Choose Corporation company present in the drop down" + "\n");

	}

	@Then("Click on the Connect with this Supplier button")
	public void click_on_the_Connect_with_this_Supplier_button() {

		String original = ec.getObjects("ConnectwiththisSupplier_button_supplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the Connect with this Supplier button" + "\n");
		System.out.println("Clicked on the Connect with this Supplier button" + "\n");

	}

	@Then("Click on the next button on Connect with supplier")
	public void click_on_the_next_button_on_Connect_with_supplier() {

		String original = ec.getObjects("nextbutton_connectwithsupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Next button on Connect with first Supplier window" + "\n");
		System.out.println("Clicked on Next button on Connect with first Supplier window" + "\n");

	}

	@Then("Click on Next button on Connect with Supplier window")
	public void click_on_Next_button_on_Connect_with_Supplier_window() {

		String original = ec.getObjects("nextbutton_connectwith");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Next button on Connect with Supplier window" + "\n");
		System.out.println("Clicked on Next button on Connect with Supplier window" + "\n");
	}

	@Then("Click on Connect with supplier button on Connect window")
	public void click_on_Connect_with_supplier_button_on_Connect_window() {
		String original = ec.getObjects("connectbutton_onconnectwith");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		String email_notification = ec.getObjects("email_notification");
		String formatXPATHemailnotify = String.format(email_notification);

		WaitClass.webDriverWait(formatXPATHemailnotify);

		logger.info("Clicked on Connect with supplier button on Connect window" + "\n");
		System.out.println("Clicked on Connect with supplier button on Connect window" + "\n");
	}

	@Then("Select the {string} Questionnaire group from the drop down on Connect Supplier form")
	public void select_the_Questionnaire_group_from_the_drop_down_on_Connect_Supplier_form(String string)
			throws Throwable {
		String original = ec.getObjects("connectrsupplier_QGdropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("qg_readingpanel_lowriskinput");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selectedthe " + string + " Questionnaire group from the drop down" + "\n");
		System.out.println("Selected the" + string + " Questionnaire group from the drop down" + "\n");
	}

	@Then("select {string} under {string} for Diversity Category")
	public void select_diversity_category(String text, String subcat) throws Throwable {
		String original = ec.getObjects("diversity_Cat") + subcat + "-input']";
		String formatXPATH = String.format(original);
		String dropDownText = ec.getObjects("diversity_tooltip1") + text + ec.getObjects("trade3_req3");
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(text);

		Actions action = new Actions(driver);
		action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();

		logger.info("Selected the " + text + " diversity category" + "\n");
		System.out.println("Selected the" + text + " diversity category" + "\n");
	}

	@Then("Click radio button {string} under {string} for Custom fields")
	public void click_customRadio(String button, String subcat) throws Throwable {
		String original = ec.getObjects("firstlabel") + subcat + ec.getObjects("pif_no");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		WebElement element = driver.findElement(By.xpath(formatXPATH));
		Actions action = new Actions(driver);
		action.sendKeys(Keys.PAGE_DOWN);
		JavascriptExecutor jse = ((JavascriptExecutor) driver);
		jse.executeScript("arguments[0].click();", element);
		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on " + button + " for" + subcat + "\n");
		System.out.println("Clicked on" + button + " for" + subcat + "\n");
	}

	@Then("Click on {string} button under Custom Fields")
	public void click_save_btn(String button) throws Throwable {
		String original = ec.getObjects("save_change_btn");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on " + button + " for Custom Fields" + "\n");
		System.out.println("Clicked on" + button + " forCustom Fields " + "\n");
	}

	@Then("Show {string} field is displyed under {string} for Diversity Category")
	public void show_text_diversity(String field, String subcat) {

		String original = ec.getObjects("diversity_text") + field + "']";
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Field " + field + " is diplyed under Diveridy Category" + "\n");
		System.out.println("Field " + field + " is diplyed under Diveridy Category" + "\n");

	}

	@Then("Verify Select Certifiers dropdown is displyed under Diversity Category")
	public void verify_selectCertifiers() {

		String original = ec.getObjects("select_certifiers");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Select Certifiers dropdown is displyed under Diversity Category" + "\n");
		System.out.println("Select Certifiers dropdown is displyed under Diversity Category" + "\n");

	}

	@Then("Select {string} from {string} Diversity Category")
	public void selectCertifiers(String text, String subcat) {

		String original = ec.getObjects("select_certifiers");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(text);
		logger.info("Selected Certifiers " + text + "from" + subcat + "\n");
		System.out.println("Selected Certifiers " + text + " from " + subcat + "\n");

	}

	@Then("Verify Diversity Date calandar is displyed under Diversity Category")
	public void verify_DiverseDate() {

		String original = ec.getObjects("date_diversity");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Diversity Date calandar is displyed under Diversity Category" + "\n");
		System.out.println("Diversity Date calandar is displyed under Diversity Category" + "\n");

	}

	@Then("Select {string} date drom the Diversity calandar")
	public void DiversityDate(String date) {

		String original = ec.getObjects("date_diversity");

		driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		String dateXpath = ec.getObjects("dates_diversity");
		driver.findElement(By.xpath(formatXPATH)).click();
		List<WebElement> dates = driver.findElements(By.xpath(dateXpath));
		for (int i = 0; i < dates.size(); i++) {
			String selectDate = driver.findElements(By.xpath(dateXpath)).get(i).getText();
			if (date.equalsIgnoreCase(selectDate)) {
				driver.findElements(By.xpath(dateXpath)).get(i).click();
				break;
			}
		}

		logger.info("Selected   " + date + "Day" + "\n");
		System.out.println("Selected " + date + "\n");

	}

	@Then("Verify {string} button is displyed under Diversity Category")
	public void verifyfileUpload(String field) {

		String original = ec.getObjects("naicsvalue1") + field + "')]";
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("button is displyed under Diversity Category" + field + "\n");
		System.out.println("button is displyed under Diversity Category" + field + "\n");

	}

	@Then("Upload {string} file {string} for Diversity category")
	public void upload_under(String FileFormat, String Label) {

		String original = ec.getObjects("diversity_text") + Label + "']";

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

	@Then("Enter Nokia Corporation and click Enter at Buyer search")
	public void enter_Nokia_Corporation_and_click_Enter_at_Buyer_search() throws Throwable {

		String original = ec.getObjects("suppliersearch");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Nokia Corporation");

		Thread.sleep(5000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);
		logger.info("Enter Nokia Corporation and click Enter at Buyer search" + "\n");
		System.out.println("Enter Nokia Corporation and click Enter at Buyer search" + "\n");

	}

	@Then("verify the status of the Nokia Corporation as {string}")
	public void verify_the_status_of_the_Nokia_Corporation_as(String string) {
		String original = ec.getObjects("nokia_invited");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("nokia_invited"))).isDisplayed(), string);

		logger.info("verify the status of the Nokia Corporation " + "\n");
		System.out.println("verify the status of the Nokia Corporation " + "\n");
	}

	@Then("Choose Co-operative Societies company present in the drop down")
	public void choose_Co_operative_Societies_company_present_in_the_drop_down() throws Throwable {

		String original = ec.getObjects("CooperativeSocieties_businesstype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Choose Co-operative Societies company present in the drop down" + "\n");
		System.out.println("Choose Co-operative Societies company present in the drop down" + "\n");
	}

	@Then("Upload the GST Registration Certificate Document on the Basic information page")
	public void upload_the_GST_Registration_Certificate_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_india_uploadGSTRegistration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_india_uploadGSTRegistration"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("basicinfo_india_uploadGSTRegistration")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Upload the GST Registration Certificate Document on the Basic information page" + "\n");
		System.out.println("Upload the GST Registration Certificate Document on the Basic information page" + "\n");

	}

	@Then("Enter value {string} in Phone Number field on the Basic information page")
	public void enter_value_in_Phone_Number_field_on_the_Basic_information_page(String string) throws Throwable {

		String original = ec.getObjects("indialoc_supplierRegis_Phone_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in phone number field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in phone number field" + "\n");

	}

	@Then("Choose Branch Office of a Foreign Corporation present in the drop down")
	public void choose_Branch_Office_of_a_Foreign_Corporation_present_in_the_drop_down() throws Throwable {

		String original = ec.getObjects("BranchForeignCorporation_businesstype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Choose Branch Office of a Foreign Corporation present in the drop down" + "\n");
		System.out.println("Choose Branch Office of a Foreign Corporation present in the drop down" + "\n");

	}

	@Then("Enter value at Tax Identification Number on Basic information page")
	public void enter_value_at_Tax_Identification_Number_on_Basic_information_page() throws Throwable {
		String original = ec.getObjects("TaxIdentificationNumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("Hmmss");
		LocalDateTime now = LocalDateTime.now();

		String TaxIdentificationNumber = "123456789" + dtf.format(now);

		driver.findElement(By.xpath(original)).sendKeys(TaxIdentificationNumber);

		logger.info("Entered data at Commercial Registration Number on Basic information page" + "\n");
		System.out.println("Entered data at Commercial Registration Number on Basic information page" + "\n");
	}

	@Then("Upload theTax Identification Number Document on the Basic information page")
	public void upload_theTax_Identification_Number_Document_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_Taxregistrationdoc");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(
				ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("basicinfo_Taxregistrationdoc"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("basicinfo_Taxregistrationdoc")));

		// Send key with path
		fileInput.sendKeys(filepath);

		Thread.sleep(3000);

		logger.info("Uploaded pdf at the Tax Registration Document on the Basic information page" + "\n");
		System.out.println("Uploaded pdf at the Tax Registration Document on the Basic information page" + "\n");
	}

	@Then("Enter value at Business Number \\(BN) on Basic Information page")
	public void enter_value_at_Business_Number_BN_on_Basic_Information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_businessnumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MddHHmmss");
		LocalDateTime now = LocalDateTime.now();

		String basicinfo_businessnumber = dtf.format(now);

		driver.findElement(By.xpath(original)).sendKeys(basicinfo_businessnumber);

		logger.info("Entered data at Commercial Registration Number on Basic information page" + "\n");
		System.out.println("Entered data at Commercial Registration Number on Basic information page" + "\n");
	}

	@Then("Enter value at Registration Incorporation Number on the Basic Information page of Canada")
	public void enter_value_at_Registration_Incorporation_Number_on_the_Basic_Information_page_of_Canada()
			throws Throwable {
		String original = ec.getObjects("basicinfo_registrationincorporation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");
		LocalDateTime now = LocalDateTime.now();

		String basicinfo_registrationincorporation = dtf.format(now);

		driver.findElement(By.xpath(original)).sendKeys(basicinfo_registrationincorporation);

		logger.info("Entered data at Commercial Registration Number on Basic information page" + "\n");
		System.out.println("Entered data at Commercial Registration Number on Basic information page" + "\n");
	}

	@Then("Click {string} Terms & Conditions checkbox")
	public void click_Terms_Conditions_checkbox(String Organisation) {
		String original = ec.getObjects("tnc_checkbox_var1") + Organisation + ec.getObjects("tnc_checkbox_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "'" + Organisation + "'" + " Terms & Conditions checkbox" + "\n");
		System.out.println("Clicked on " + "'" + Organisation + "'" + " Terms & Conditions checkbox" + "\n");

	}

	@Then("Click on the Assign button to assign the CFO")
	public void click_on_the_Assign_button_to_assign_the_CFO() throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		// WebDriverWait wait = new WebDriverWait(driver,120);
		// wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("modal_x_button"))));

		Thread.sleep(2000);
		String original = ec.getObjects("management_CFO_assignbutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on the Assign button to assign the CFO" + "\n");
		System.out.println("Clicked on the Assign button to assign the CFO" + "\n");
	}

	@Then("Click on the Assign button to assign the DOS")
	public void click_on_the_Assign_button_to_assign_the_DOS() throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		// WebDriverWait wait = new WebDriverWait(driver,120);
		// wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("modal_x_button"))));

		Thread.sleep(2000);
		String original = ec.getObjects("management_DOS_assignbutton");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on the Assign button to assign the DOS" + "\n");
		System.out.println("Clicked on the Assign button to assign the DOS" + "\n");

	}

	@Then("Click on Do it later button")
	public void click_on_Do_it_later_button() throws Throwable {

		String original = ec.getObjects("3rdPartyIdenti_doItLater");
		String formatXPATH = String.format(original);

		if (driver.findElements(By.xpath(formatXPATH)).size() > 0) {
			do {
				WaitClass.clickableWait(formatXPATH);
				driver.findElement(By.xpath(formatXPATH)).click();
			} while (driver.findElements(By.xpath(formatXPATH)).size() > 0);

			logger.info("Clicked on " + "'" + "Do it Later button" + "'" + "\n");
			System.out.println("Clicked on " + "'" + "Do it Later button" + "'" + "\n");
		} else {
			System.out.println("Do it Later button not found");
		}
	}

	@Then("Show dialog box with text {string}{string}{string}")
	public void show_dialog_box_with_text(String PopupText1, String PopupText2, String PopupText3) {

		String original = ec.getObjects("republish_popup_message_var1") + PopupText1 + PopupText2 + PopupText3 + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing pop up with text: " + PopupText1 + PopupText2 + PopupText3 + "\n");
		System.out.println("Showing pop up with text: " + PopupText1 + PopupText2 + PopupText3 + "\n");
	}

	@Then("Close dialog box")
	public void close_dialog_box() {
		String original = ec.getObjects("republish_popup_x_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Closed the popup window" + "\n");
		System.out.println("Closed the popup window" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in revenue field for 2021$")
	public void enter_something_in_revenue_field_for_2021(String strArg1) throws Throwable {
		String original = ec.getObjects("revenuelastyear");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(strArg1);
		logger.info("Entered" + strArg1 + "in revenue field for 2021" + "\n");
		System.out.println("Entered" + strArg1 + "in revenue field for 2021" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in asserts field for 2021$")
	public void enter_something_in_asserts_field_for_2021(String strArg1) throws Throwable {
		String original = ec.getObjects("assetlastyear");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(strArg1);
		logger.info("Entered" + strArg1 + "in asserts field for 2021" + "\n");
		System.out.println("Entered" + strArg1 + "in asserts field for 2021" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in liability field for 2021$")
	public void enter_something_in_liability_field_for_2021(String strArg1) throws Throwable {
		String original = ec.getObjects("liabilitylastyear");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(strArg1);
		logger.info("Entered" + strArg1 + "in liability field for 2021" + "\n");
		System.out.println("Entered" + strArg1 + "in liability field for 2021" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in Profit field for 2021$")
	public void enter_something_in_profit_field_for_2021(String strArg1) throws Throwable {
		String original = ec.getObjects("profitlastyear");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(strArg1);
		logger.info("Entered" + strArg1 + "in Profit field for 2021" + "\n");
		System.out.println("Entered" + strArg1 + "in Profit field for 2021" + "\n");
	}

	@Then("Click on Buyers Tab")
	public void click_on_Buyers_Tab() throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("Buyers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Buyers Tab" + "\n");
		System.out.println("Click on Buyers Tab" + "\n");

	}

	@Then("Click on the IBM company")
	public void click_on_the_IBM_company() {
		String original = ec.getObjects("clickIBM");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the IBM company" + "\n");
		System.out.println("Click on the IBM company" + "\n");

	}

	@Then("Click on the Actions Tab")
	public void click_on_the_Actions_Tab() throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("clickActions");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Actions Tab" + "\n");
		System.out.println("Click on the Actions Tab" + "\n");
	}

	@Then("Select the Action Complete")
	public void select_the_Action_Complete() throws InterruptedException {

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(2000);

	}

	@Then("Enter the Notes for buyer")
	public void enter_the_Notes_for_buyer() {
		String original = ec.getObjects("notesForBuyer");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Demo1");
		System.out.println("Enter the Notes for buyer" + "\n");
	}

	@Then("Click on Confirm Action Complete")
	public void click_on_Confirm_Action_Complete() throws InterruptedException {
		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(2000);

		logger.info("Click on Confirm Action Complete" + "\n");
		System.out.println("Click on Confirm Action Complete" + "\n");

	}

	@Then("Select fiscalmonth")
	public void Select_fiscalmonth() throws Throwable {

		String original = ec.getObjects("fiscalmonth");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("fiscalmonth"))));
		drpCompany.selectByIndex(2);

		logger.info("Selected " + " " + " " + " fiscal month from the drop down" + "\n");
		System.out.println("selected" + " " + " " + " fiscal month from the drop down" + "\n");
	}
	// supplier state transition

	@Then("Click on Review & publish button")
	public void click_on_Review_and_publish_btn() throws Throwable {

		String original = ec.getObjects("review_publish_btn");
		String formatXPATH = String.format(original);
		try {
			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			driver.findElement(By.xpath(original)).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");

			wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));

			driver.findElement(By.xpath(formatXPATH)).click();

			logger.info("Clicked on Review and publis button" + "\n");
			System.out.println("Clicked on Review and publish button" + "\n");
		}
	}

}
