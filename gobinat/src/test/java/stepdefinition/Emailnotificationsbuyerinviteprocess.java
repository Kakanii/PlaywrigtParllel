package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;

import org.apache.log4j.Logger;

import org.openqa.selenium.By;

import org.openqa.selenium.Keys;

import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;

import utility.ElementControl;

import utility.Miscellaneous;

import utility.WaitClass;

public class Emailnotificationsbuyerinviteprocess extends DriverEngine {

	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(Emailnotificationsbuyerinviteprocess.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	@Then("Click on Notifications in Dashboard page {string}")

	public void click_on_notifications_in_dashboard_page_something(String string) throws Throwable {

		String original = ec.getObjects("notificationstab");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Notifications in Dashboard page" + "\n");

		System.out.println("Clicked on Notifications in Dashboard page" + "\n");

	}

	@Then("Select the discover supplier")

	public void select_the_discover_supplier() throws Throwable {

		String original = ec.getObjects("selectdiscoversupplier");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the discover supplier" + "\n");

		System.out.println("Selected the discover supplier" + "\n");

	}

	@Then("Enter Supplier name and click Enter at supplier search")

	public void enter_Supplier_name_and_click_Enter_at_supplier_search() throws Throwable {

		String original = ec.getObjects("suppliersearch");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Suppliername = timeStamp.get(0) + " ";

		driver.findElement(By.xpath(original)).sendKeys(Suppliername);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);

		logger.info("Entered Supplier name and click Enter at supplier search" + "\n");

		System.out.println("Entered Supplier name and click Enter at supplier search" + "\n");

	}

	@Then("Click on connectwiththissupplier button")

	public void click_on_connectwiththissupplier_button() throws Throwable {

		String original = ec.getObjects("connectwiththissupplierbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on connectwiththissupplier button" + "\n");

		System.out.println("Clicked on connectwiththissupplier button" + "\n");

	}

	@Then("Click on Next button")

	public void click_on_next_button() throws Throwable {

		Thread.sleep(3000);
		
		String original = ec.getObjects("nextbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Next button" + "\n");

		System.out.println("Clicked on Next button" + "\n");

	}

	@Then("Click on Next option")

	public void click_on_next_option() throws Throwable {

		String original = ec.getObjects("next_button");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Next option" + "\n");

		System.out.println("Clicked on Next option" + "\n");

	}

	@Then("Click on connectwithsupplier button")

	public void click_on_connectwithsupplier_button() throws Throwable {

		String original = ec.getObjects("connectwithsupplierbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on connectwithsupplier button" + "\n");

		System.out.println("Clicked on connectwithsupplier button" + "\n");

	}

	@Then("Show LinkRequestSent button on Discover page {string}")

	public void show_linkrequestsent_button_on_discover_page_something(String string) throws Throwable {

		String original = ec.getObjects("linkrequestsent");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("discover"))).isDisplayed(), string);

		logger.info("LinkRequestSent button visible " + " " + string + " " + " on Discover page" + "\n");

		System.out.println("LinkRequestSent button visible " + " " + string + " " + " on Discover page" + "\n");

	}

	@Then("LinkRequestSent button clickable on Discover page {string}")

	public void linkrequestsent_button_clickable_on_discover_page_something(String string) throws Throwable {

		String original = ec.getObjects("linkrequestsent");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("discover"))).isEnabled(), string);

		logger.info("LinkRequestSent button clickable " + " " + string + " " + " on Discover page" + "\n");

		System.out.println("LinkRequestSent button clickable " + " " + string + " " + " on Discover page" + "\n");

	}

	@Then("Select the buyer")

	public void select_the_buyer() throws Throwable {

		String original = ec.getObjects("selectbuyer");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the buyer" + "\n");

		System.out.println("Selected the buyer" + "\n");

	}

	@Then("Click on Actionsoption")

	public void click_on_actionsoption() throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("actionsdropdown");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		/*
		 * WebElement targetElement = driver.findElement(By.xpath(original));
		 * 
		 * JavascriptExecutor js = ((JavascriptExecutor) driver);
		 * 
		 * js.executeScript("arguments[0].scrollIntoView(false);", targetElement);
		 */

		logger.info("Clicked on Actions drop down" + "\n");

		System.out.println("Clicked on Actions drop down" + "\n");

	}

	@Then("Select the consent checkbox")

	public void select_the_consent_checkbox() throws Throwable {

		String original = ec.getObjects("consentcheckbox");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the consent checkbox" + "\n");

		System.out.println("Selected the consent checkbox" + "\n");

	}

	@Then("Enter the text area {string}")

	public void enter_the_text_area_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("textarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Select AcceptInvitation option from Actions dropdown")

	public void select_acceptinvitation_option_from_actions_dropdown() throws Throwable {

		String original = ec.getObjects("actionsdropdown");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Actions button on the page" + "\n");

		System.out.println("Clicked on Actions button on the page" + "\n");

		Thread.sleep(2000);

		String original1 = ec.getObjects("acceptinvitation");

		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selected AcceptInvitation option from the actions dropdown" + "\n");

		System.out.println("Selected AcceptInvitation option from the actions dropdown" + "\n");

	}

	@Then("Select DeclineInvitation option from Actions dropdown")

	public void select_declineinvitation_option_from_actions_dropdown() throws Throwable {

		String original = ec.getObjects("actionsdropdown");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Actions button on the page" + "\n");

		System.out.println("Clicked on Actions button on the page" + "\n");

		Thread.sleep(2000);

		String original1 = ec.getObjects("declineinvitation");

		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selected DeclineInvitation option from the actions dropdown" + "\n");

		System.out.println("Selected DeclineInvitation option from the actions dropdown" + "\n");

	}

	@Then("Click on Accept button")

	public void click_on_accept_button() throws Throwable {

		String original = ec.getObjects("acceptbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Accepted button" + "\n");

		System.out.println("Clicked on Accepted button" + "\n");

	}

	@Then("Click on Decline button")

	public void click_on_decline_button() throws Throwable {

		String original = ec.getObjects("declinebutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Decline button" + "\n");

		System.out.println("Clicked on Decline button" + "\n");

	}

	@Then("Click on Yes button")

	public void click_on_yes_button() throws Throwable {

		String original = ec.getObjects("declineyesbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Yes button" + "\n");

		System.out.println("Clicked on Yes button" + "\n");

		Thread.sleep(6000);

	}

	/*
	 * @Then("Enter {string} Supplier Company name on Invite Supplier modal")
	 * 
	 * public void enter_Supplier_Company_name_on_Invite_Supplier_modal(String
	 * country) throws Throwable {
	 * 
	 * String original = ec.getObjects("suppliercompanyname");
	 * 
	 * String formatXPATH = String.format(original);
	 * 
	 * 
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * 
	 * 
	 * mis.addTimeStamp();
	 * 
	 * String companyName = country + "supplier" + mis.getTimeStamp();
	 * 
	 * 
	 * 
	 * discovercompanyname.add(0,companyName);
	 * 
	 * 
	 * 
	 * driver.findElement(By.xpath(original)).sendKeys(companyName);
	 * 
	 * 
	 * 
	 * 
	 * 
	 * logger.info("Entered data " + "'" + companyName + "'" + " Company name field"
	 * + "\n");
	 * 
	 * System.out.println("Entered data " + "'" + companyName + "'" +
	 * " Company name field" + "\n");
	 * 
	 * }
	 */

	@Then("Provide the credit card name {string}")

	public void provide_the_credit_card_name_something(String string) throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("cardholdername");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Provided the credit card name" + " " + string + "\n");

		System.out.println("Provided the credit card name" + " " + string + "\n");

		Thread.sleep(3000);

	}

	@Then("Provide the credit card number {string}")

	public void provide_the_credit_card_number_something(String string) throws Throwable

	{

		String original = ec.getObjects("cardnumber");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Provided the credit card number" + " " + string + "\n");

		System.out.println("Provided the credit card number" + " " + string + "\n");

	}

	@Then("Enter the card expiry date {string}")

	public void enter_the_card_expiry_date_something(String string) throws Throwable

	{

		String original = ec.getObjects("expiredate");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered the card expiry date" + " " + string + "\n");

		System.out.println("Entered the card expiry date" + " " + string + "\n");

	}

	@Then("Enter CVC number {string}")

	public void enter_cvc_number_something(String string) throws Throwable

	{

		String original = ec.getObjects("cvc");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered CVC number" + " " + string + "\n");

		System.out.println("Entered CVC number" + " " + string + "\n");

	}

	@Then("Enter city name {string}")

	public void enter_city_name_something(String string) throws Throwable

	{

		String original = ec.getObjects("city");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered City Name" + " " + string + "\n");

		System.out.println("Entered City Name" + " " + string + "\n");

	}

	@Then("Enter Postal code {string}")

	public void enter_postal_code_something(String string) throws Throwable

	{

		String original = ec.getObjects("postalcode");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Postal Code" + " " + string + "\n");

		System.out.println("Entered Postal Code" + " " + string + "\n");

	}

	@Then("Select the checkbox")

	public void select_the_checkbox() throws Throwable {

		String original = ec.getObjects("checkbox");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the checkbox" + "\n");

		System.out.println("Selected the checkbox" + "\n");

	}

	@Then("Click on savecard details")

	public void click_on_savecard_details() throws Throwable {

		String original = ec.getObjects("savecarddetails");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Accepted button" + "\n");

		System.out.println("Clicked on Accepted button" + "\n");

	}

	@Then("Click on accept")

	public void click_on_accept() throws Throwable

	{

		String original = ec.getObjects("acceptbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Accept button" + "\n");

		System.out.println("Clicked on Accept button" + "\n");

	}

	@Then("Click on do it later option")

	public void click_on_do_it_later_option() throws Throwable {

		String original = ec.getObjects("identifiersdialog");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on do it later option" + "\n");

		System.out.println("Clicked on do it later option" + "\n");

	}

	@Then("Select invoice option")

	public void select_invoice_option() throws Throwable {

		String original = ec.getObjects("invoiceoption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the invoice option" + "\n");

		System.out.println("Selected the invoice option" + "\n");

	}

	@Then("Select creditcard option")

	public void select_creditcard_option() throws Throwable {

		String original = ec.getObjects("creditcardoption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the invoice option" + "\n");

		System.out.println("Selected the invoice option" + "\n");

	}

	@Then("Click on confirm button")

	public void click_on_confirm_button() throws Throwable {

		String original = ec.getObjects("confirmbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on confirm button" + "\n");

		System.out.println("Clicked on confirm button" + "\n");

	}

	@Then("Select Cuba country for Company Operations Second question")

	public void select_cuba_country_for_company_operations_second_question() throws Throwable {

		String original = ec.getObjects("selectcountry_companyoperations");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("selectgroup") + "Cuba" + ec.getObjects("selectgroupend");

		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selected the Cuba Country from the drop down" + "\n");

		System.out.println("Selected the Cuba Country from the drop down" + "\n");

	}

	@Then("Click on No for Second Question")

	public void click_on_no_for_second_question() throws Throwable {

		String original = ec.getObjects("No_answer2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Second question" + "\n");

		System.out.println("Click on NO for Second question" + "\n");

	}

	@Then("Click on No for Third Question")

	public void click_on_no_for_third_question() throws Throwable {

		String original = ec.getObjects("No_answer3");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Third question" + "\n");

		System.out.println("Click on NO for Third question" + "\n");

	}

	@Then("Click on Actions options")

	public void click_on_actions_options() throws Throwable

	{

		String original = ec.getObjects("manageusersactionsbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Actions drop down" + "\n");

		System.out.println("Click on Actions drop down " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on Actions drop down")

	public void click_on_actions_drop_down() throws Throwable

	{

		String original = ec.getObjects("actionsdropdow");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Actions drop down" + "\n");

		System.out.println("Click on Actions drop down " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select Edit option")

	public void select_edit_option() throws Throwable

	{

		String original = ec.getObjects("manageuserseditbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Edit option" + "\n");

		System.out.println("Click on Edit option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on update button")

	public void click_on_update_button() throws Throwable

	{

		String original = ec.getObjects("manageusersupdatebtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on update button" + "\n");

		System.out.println("Click on update button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select role from drop down to {string}")

	public void select_role_from_drop_down_to_something(String string) throws Throwable {

		String original = ec.getObjects("manageusersselectrole");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select role = new Select(driver.findElement(By.xpath(original)));

		role.selectByVisibleText(string);

		logger.info("Change the role to" + " " + string + "from the dropdown on Update User Modal" + "\n");

		System.out.println("Change the role to" + " " + string + "from the dropdown on Update User Modal" + "\n");

	}

	@Then("Click on Manage Users Submenu")

	public void click_on_manage_users_submenu() throws Throwable

	{

		String original = ec.getObjects("manageusersmenu");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Manage Users tab on Dashboard" + "\n");

		System.out.println("Click on Manage Users tab on Dashboard " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on NewApprovalRequest Option")

	public void click_on_newapprovalrequest_option() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("createaroption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on NewApprovalRequest Option" + "\n");

		System.out.println("Clicked on NewApprovalRequest Option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on Actions")

	public void click_on_actions() throws Throwable

	{

		String original = ec.getObjects("aractionsdropdown");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Actions" + "\n");

		System.out.println("Clicked on Actions " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter ApprovalRequest description in text area {string}")

	public void enter_approvalrequest_description_in_text_area_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("artextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	/*
	 * @Then("Select the role from drop down to {string}")
	 * 
	 * public void select_the_role_from_drop_down_to_something(String string) throws
	 * Throwable {
	 * 
	 * String original = ec.getObjects("arrole");
	 * 
	 * String formatXPATH = String.format(original);
	 * 
	 * 
	 * 
	 * WaitClass.clickableWait(formatXPATH);
	 * 
	 * 
	 * 
	 * Select role = new Select(driver.findElement(By.xpath(original)));
	 * 
	 * 
	 * 
	 * role.selectByVisibleText(string);
	 * 
	 * 
	 * 
	 * logger.info("Select the role from drop down to" + " " + string + "\n");
	 * 
	 * System.out.println("Select the role from drop down to" + " " + string +
	 * "\n");
	 * 
	 * }
	 */

	@Then("Click on Create button")

	public void click_on_create_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("createarbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Create button" + "\n");

		System.out.println("Clicked on Create button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select Reject option")

	public void select_reject_option() throws Throwable

	{

		String original = ec.getObjects("rejectoption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Reject option" + "\n");

		System.out.println("Clicked on Reject option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter some text for rejecting {string}")

	public void enter_some_text_for_rejecting_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("rejectartextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Click on Reject button")

	public void click_on_reject_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("rejectbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Reject button" + "\n");

		System.out.println("Clicked on Reject button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select Reassign option")

	public void select_reassign_option() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("reassignaroption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Reassign option" + "\n");

		System.out.println("Clicked on Reassign option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter some text for reassigning {string}")

	public void enter_some_text_for_reassigning_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("reassigntextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Click on Reassign button")

	public void click_on_reassign_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("reassignbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Reassign button" + "\n");

		System.out.println("Clicked on Reassign button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select InfoRequest button")

	public void select_inforequest_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("inforreqaroption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on InfoRequest option" + "\n");

		System.out.println("Clicked on InfoRequest option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter some text for requesting more information {string}")

	public void enter_some_text_for_requesting_more_information_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("inforeqartextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Select the role from dropdown {string}")

	public void select_the_role_from_dropdown_something(String string) throws Throwable

	{

		String original = ec.getObjects("inforeqarrole");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select role = new Select(driver.findElement(By.xpath(original)));

		role.selectByVisibleText(string);

		logger.info("Select the role from drop down to" + " " + string + "\n");

		System.out.println("Select the role from drop down to" + " " + string + "\n");

	}

	@Then("Click on Request button")

	public void click_on_request_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("requestbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Request button" + "\n");

		System.out.println("Clicked on Request button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select Resolve button")

	public void select_resolve_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("resolvearoption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Resolve option" + "\n");

		System.out.println("Clicked on Resolve option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter some text for resolve {string}")

	public void enter_some_text_for_resolve_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("resolveartextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Click on Resolve button")

	public void click_on_resolve_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("resolvebtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Resolve button" + "\n");

		System.out.println("Clicked on Resolve button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Select Approve option")

	public void select_approve_option() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("approvearoption");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Approve option" + "\n");

		System.out.println("Clicked on Approve option " + "\n");

		Thread.sleep(3000);

	}

	@Then("Enter some text for approving {string}")

	public void enter_some_text_for_approving_something(String string) throws Throwable {

		Thread.sleep(3000);

		String original = ec.getObjects("approveartextarea");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered : " + "'" + string + "'" + " the text area" + "\n");

		System.out.println("Entered : " + "'" + string + "'" + " the text area" + "\n");

	}

	@Then("Click on Approve button")

	public void click_on_approve_button() throws Throwable

	{

		Thread.sleep(3000);

		String original = ec.getObjects("approvebtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Approve button" + "\n");

		System.out.println("Clicked on Approve button " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on Actions menu")

	public void click_on_actions_menu() throws Throwable

	{

		String original = ec.getObjects("manageusersupactionsbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Actions drop down" + "\n");

		System.out.println("Click on Actions drop down " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on supplier Actions menu")

	public void click_on_supplier_actions_menu() throws Throwable

	{

		String original = ec.getObjects("pendingusersactionsdropdwon");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Actions drop down" + "\n");

		System.out.println("Click on Actions drop down " + "\n");

		Thread.sleep(3000);

	}

	@Then("Click on the Submit button")

	public void click_on_the_submit_button() throws Throwable {

		String original = ec.getObjects("submitbtnidd");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Submit button" + "\n");

		System.out.println("Clicked on Submit button" + "\n");

	}

	@Then("Select the supplier record")

	public void select_the_supplier_record() throws Throwable {

		String original = ec.getObjects("selectdiscoversupplier");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected the supplier" + "\n");

		System.out.println("Selected the supplier" + "\n");

	}

	@Then("Click on Confirm for document")

	public void click_on_confirm_for_document() throws Throwable {

		String original = ec.getObjects("basicinfodocconfirmbtn");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Confirm for document" + "\n");

		System.out.println("Clicked on Confirm for document" + "\n");

		Thread.sleep(2000);

	}

	@Then("Click on Upload Document")

	public void click_on_upload_document() throws Throwable {

		String original = ec.getObjects("basicinfotaxuploaddocument");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Upload Document" + "\n");

		System.out.println("Clicked on Upload Document" + "\n");

		Thread.sleep(2000);

	}
	
	@Then("Verify Email received in {string} maildrop Buyer Inbox with subject {string}")

	public void verify_email_received_in_something_maildrop_buyer_inbox_with_subject_something(String string1, String subject)
			throws Throwable {
		driver.get(ec.getObjects("maildropurl"));

		Thread.sleep(2000);
		String original = ec.getObjects("maildrop_input");
		if (driver.findElements(By.xpath(original)).size() == 0) {

			driver.navigate().refresh();

		}

		WaitClass.clickableWait(original);
		// String Email = country + "buyer" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string1);
		logger.info("Entered buyer email address in mailinator search box" + "\n");

		System.out.println("Entered buyer email address in mailinator search box" + "\n");

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.clickableWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

		
	@Then("Enter the Notes under the decline buyer Notes Box")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("accept_buyer_notes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Decline");

		
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}

	@Then("Click on role {string} on Approvalrequest")

	public void click_on_role_on_Approvalrequest(String abc) throws Throwable {

		String original = ec.getObjects("role_dropdown");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on AR role" + "\n");

		System.out.println("Clicked on AR role" + "\n");

		Thread.sleep(2000);

	}
	
	@Then("Click on {string} on Buyer screen")
	public void Click_on_on_Buyer_screen(String xyz) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("header_table") + xyz + ec.getObjects("label_var2") ;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
	}
	
	@Then("Verify Email received in the {string} maildrop Buyer Inbox with subject {string} {int}")

	public void verify_email_received_in_the_something_maildrop_buyer_inbox_with_subject_something(String string1, String subject, int x)
			throws Throwable {
		driver.get(ec.getObjects("maildropurl"));

		Thread.sleep(2000);
		String original = ec.getObjects("maildrop_input");
		if (driver.findElements(By.xpath(original)).size() == 0) {

			driver.navigate().refresh();

		}

		WaitClass.clickableWait(original);
		// String Email = country + "buyer" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string1);
		logger.info("Entered buyer email address in mailinator search box" + "\n");

		System.out.println("Entered buyer email address in mailinator search box" + "\n");

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("Value1") + subject + ec.getObjects("Value2") + "[" + x +"]";
		

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.clickableWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

	@Then("Click {string} on the Approval request on Action center")
	public void click_on_the_Approval_request_on_Action_center(String abc) 
	{
		String original = ec.getObjects("manual_AR") + abc + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the" + abc + "\n");
		System.out.println("Clicked on the" + abc + "\n");
	}
	
	@Then("Click on {string} option in settings {string}")
	public void Click_on_option_in_settings_something(String string, String abc) throws Throwable {
		String original = ec.getObjects("supplier_notificationlabel") + string + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("clicked on" + string +"on"  + abc+ "\n");
		System.out.println("clicked on" + string +"on"  + abc+ "\n");
	}
	
}
