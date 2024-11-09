package stepdefinition;

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ProfileManagement extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<String> First = new ArrayList<String>();

	ArrayList<String> Last = new ArrayList<String>();

	@Then("Show Management tab in Profile tab {string}")
	public void show_Management_tab_in_Profile_tab(String string) {

		String original = ec.getObjects("managementnavlink");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Management tab in Profile page" + "\n");
		System.out.println("Showing Management tab in Profile page" + "\n");
	}

	@Then("Verify Management tab clickable in Profile tab {string}")
	public void verify_Management_tab_clickable_in_Profile_tab(String string) {

		String original = ec.getObjects("managementnavlink");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Management tab is clickable in Profile page" + "\n");
		System.out.println("Management tab is clickable in Profile page" + "\n");

	}

	@Then("Click on Management tab in Profile page")
	public void click_on_Management_tab_in_Profile_page() {
		String original = ec.getObjects("management_tab");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Management tab in Profile page" + "\n");
		System.out.println("Clicked on Management tab in Profile page" + "\n");

	}

	@Then("Show Management tab description in Management page {string}")
	public void show_Management_tab_description_in_Management_page(String string) {

		String original = ec.getObjects("management_pageDescription");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Management page description in Profile page" + "\n");
		System.out.println("Showing Management page description in Profile page" + "\n");

	}

	@Then("Show Previous Step button in Management page {string}")
	public void show_Previous_Step_button_in_Management_page(String string) {
		String original = ec.getObjects("management_PreviosStep");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Previous Step button in Management page" + "\n");
		System.out.println("Showing Previous Step button in Management page" + "\n");

	}

	@Then("Verify Previos Step button clickable in Management page {string}")
	public void verify_Previos_Step_button_clickable_in_Management_page(String string) {
		String original = ec.getObjects("management_PreviosStep");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Previous Step button is Clickable in Management page" + "\n");
		System.out.println("Previous Step button is Clickable in Management page" + "\n");
	}

	@Then("Show Next Step button in Management page {string}")
	public void show_Next_Step_button_in_Management_page(String string) {
		String original = ec.getObjects("management_NextStep");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Next Step button in Management page" + "\n");
		System.out.println("Showing Next Step button in Management page" + "\n");

	}

	@Then("Verify Next Step button disabled in Management Screen {string}")
	public void verify_Next_Step_button_disabled_in_Management_Screen(String string) {

		String original = ec.getObjects("management_NextStep");
		WaitClass.webDriverWait(original);

		assertFalse(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Next Step button is disabled in Management page" + "\n");
		System.out.println("Next Step button is disabled in Management page" + "\n");

	}

	@Then("Click on Add Other button in Management page")
	public void click_on_Add_Other_button_in_Management_page() {

		String original = ec.getObjects("management_Add_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add Other button in Management page" + "\n");
		System.out.println("Clicked on Add Other button in Management page" + "\n");
	}

	@Then("Select a contact from the dropdown")
	public void select_a_contact_from_the_dropdown() {
		String original = ec.getObjects("management_contact_dropdown");
		WaitClass.webDriverWait(original);

		Select contact = new Select(driver.findElement(By.xpath(original)));
		contact.selectByIndex(4);

		logger.info("Selected Contact in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Selected Contact in Assign a Contact to Management Team modal" + "\n");
	}
	
	@Then("Enter data in Fist Name field in Assign a Contact to Management Team modal")
	public void enter_data_in_Fist_Name_field_in_Assign_a_Contact_to_Management_Team_modal() throws Throwable {
		String original = ec.getObjects("firstnameoncontactmodal");
		WaitClass.webDriverWait(original);
		
		driver.findElement(By.xpath(original)).clear();
		String Firstname = RandomStringUtils.randomAlphabetic(8);

		driver.findElement(By.xpath(original)).sendKeys(Firstname);

		First.add(0, Firstname);

		logger.info("Entered First Name" + "\n");
		System.out.println("Entered First Name" + "\n");
	}

	@Then("Enter data in Last Name field in Assign a Contact to Management Team modal")
	public void enter_data_in_Last_Name_field_in_Assign_a_Contact_to_Management_Team_modal() throws Throwable {
		String original = ec.getObjects("lastnameoncontactmodal");
		WaitClass.webDriverWait(original);
		
		driver.findElement(By.xpath(original)).clear();
		String LastName = RandomStringUtils.randomAlphabetic(8);

		driver.findElement(By.xpath(original)).sendKeys(LastName);

		Last.add(0, LastName);

		logger.info("Entered Last name" + "\n");
		System.out.println("Entered Last name" + "\n");

	}

	@Then("Click {string} checkbox")
	public void click_checkbox(String string) {
		String original = ec.getObjects("management_YOB_checkbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on YOB checkbox in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Clicked on Add Other button in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Click on Save button in Assign a Contact to Management Team modal")
	public void click_on_Save_button_in_Assign_a_Contact_to_Management_Team_modal() {

		String original = ec.getObjects("mangagement_save_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Clicked on Save button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Click on {string} check box under CFO or Equivalent")
	public void click_on_check_box_under_CFO_or_Equivalent(String string) {

		String original = ec.getObjects("management_CFO_checkbox");
		WaitClass.webDriverWait(original);

		if (driver.findElement(By.xpath(original)).isSelected()) {
			logger.info("'" + string + "'" + " checkbox is already selected in CFO or Equivalent card" + "\n");
			System.out.println("'" + string + "'" + " checkbox is already selected in CFO or Equivalent card" + "\n");
		} else {
			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on " + "'" + string + "'" + "checkbox in CFO or Equivalent card" + "\n");
			System.out.println("Clicked on " + "'" + string + "'" + "checkbox in CFO or Equivalent card" + "\n");
		}

	}

	@Then("Click on {string} check box under DOS or Equivalent")
	public void click_on_check_box_under_DOS_or_Equivalent(String string) throws Throwable {
		String original = ec.getObjects("management_DOS_checkbox");
		WaitClass.webDriverWait(original);

		if (driver.findElement(By.xpath(original)).isSelected()) {
			logger.info("'" + string + "'" + " checkbox is already selected in DOS or Equivalent card" + "\n");
			System.out.println("'" + string + "'" + " checkbox is already selected in DOS or Equivalent card" + "\n");
		} else {
			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on " + "'" + string + "'" + "checkbox in DOS or Equivalent card" + "\n");
			System.out.println("Clicked on " + "'" + string + "'" + "checkbox in DOS or Equivalent card" + "\n");
		}
		
		Thread.sleep(3000);
	}

	@Then("Verify Next Step button enabled in Management Screen {string}")
	public void verify_Next_Step_button_enabled_in_Management_Screen(String string) {
		String original = ec.getObjects("management_NextStep");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Next Step button is enabled in Management page" + "\n");
		System.out.println("Next Step button is enabled in Management page" + "\n");
	}

	@Then("Show Add Other button visibility in Management page {string}")
	public void show_Add_Other_button_visibility_in_Management_page(String string) {

		String original = ec.getObjects("management_Add_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Add other button in Management page" + "\n");
		System.out.println("Showing Add other button in Management page" + "\n");
	}

	@Then("Verify Add Other button clickable in Management page {string}")
	public void verify_Add_Other_button_clickable_in_Management_page(String string) {

		String original = ec.getObjects("management_Add_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Add other button clickable in Management page" + "\n");
		System.out.println("Add other button clickable in Management page" + "\n");

	}

	@Then("Show {string} modal header in Management page")
	public void show_modal_header_in_Management_page(String string) {

		String original = ec.getObjects("management_modal_header");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing " + "'" + string + "'" + " modal headeer in Management page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " modal headeer in Management page" + "\n");

	}

	@Then("Show {string} label in {string} modal")
	public void show_label_in_modal(String string, String string2) {

		String original = ec.getObjects("management_label_variable") + string + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + string + "'" + " label in " + string2 + " modal" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " label in " + string2 + " modal" + "\n");

	}

	@Then("Show Year of Birth Description in {string} modal")
	public void show_Year_of_Birth_Description_in_modal(String string) {
		String original = ec.getObjects("management_YOBdescription");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing YOB description in " + string + " modal" + "\n");
		System.out.println("Showing YOB description in " + string + " modal" + "\n");

	}

	@Then("Click Close button in Assign a Contact to Management Team modal")
	public void click_Close_button_in_Assign_a_Contact_to_Management_Team_modal() {

		String original = ec.getObjects("management_close_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Clicked on Close button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show Contacts dropdown in Assign a Contact to Management Team modal {string}")
	public void show_Contacts_dropdown_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_contact_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Contacts dropdown in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Contacts dropdown in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify Contacts dropdown enabled in Assign a Contact to Management Team modal {string}")
	public void verify_Contacts_dropdown_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_contact_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Contacts dropdown is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Contacts dropdown is enabled in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show {string} input field in in Assign a Contact to Management Team modal {string}")
	public void show_input_field_in_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {

		String original = ec.getObjects("management_label_variable") + string + "']/following-sibling::input";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed(), string2);

		logger.info(
				"Showing " + "'" + string + "'" + " input field in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Showing " + "'" + string + "'" + " input field in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify {string} input field enabled in Assign a Contact to Management Team modal {string}")
	public void verify_input_field_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {

		String original = ec.getObjects("management_label_variable") + string + "']/following-sibling::input";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled(), string2);

		logger.info("'" + string + "'" + " input field is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"'" + string + "'" + " input field is enabled in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Verify Primary Phone field enabled in Assign a Contact to Management Team modal {string}")
	public void verify_Primary_Phone_field_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_PrimePhone_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Primary Phone input field is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Primary Phone input field is enabled in Assign a Contact to Management Team modal" + "\n");

	}
	
	@Then("Verify Secondary Phone field enabled in Assign a Contact to Management Team modal {string}")
	public void verify_Secondary_Phone_field_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_SecondPhone_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Secondary Phone input field is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Secondary Phone input field is enabled in Assign a Contact to Management Team modal" + "\n");

	}
	@Then("Show Year of Birth dropdrown in Assign a Contact to Management Team modal {string}")
	public void show_Year_of_Birth_dropdrown_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_YOB_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing YOB dropdown in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing YOB dropdown in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify Year of Birth dropdrown enabled in Assign a Contact to Management Team modal {string}")
	public void verify_Year_of_Birth_dropdrown_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_YOB_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("YOB dropdown is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println("YOB dropdown is enabled in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show {string} checkbox in Assign a Contact to Management Team modal {string}")
	public void show_checkbox_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {

		String original = ec.getObjects("management_YOB_checkbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing " + "'" + string + "'" + " checkbox in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Showing " + "'" + string + "'" + " checkbox in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify {string} checkbox clickable in Assign a Contact to Management Team modal {string}")
	public void verify_checkbox_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {

		String original = ec.getObjects("management_YOB_checkbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string2);

		logger.info("'" + string + "'" + " checkbox is enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"'" + string + "'" + " checkbox is enabled in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show {string} input field in Assign a Contact to Management Team modal {string}")
	public void show_input_field_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {
		String original = ec.getObjects("management_label_variable") + string + "']/following-sibling::input";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed(), string2);

		logger.info(
				"Showing " + "'" + string + "'" + " input field in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Showing " + "'" + string + "'" + " input field in Assign a Contact to Management Team modal" + "\n");
	}
	
	@Then("Show Primary Phone field in Assign a Contact to Management Team modal {string}")
	public void show_Primary_Phone_field_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("management_PrimePhone_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info(
				"Showing Primary Phone input field in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Showing Primary Phone input field in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Show Secondary Phone field in Assign a Contact to Management Team modal {string}")
	public void show_Secondary_Phone_field_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("management_SecondPhone_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info(
				"Showing Secondary Phone input field in Assign a Contact to Management Team modal" + "\n");
		System.out.println(
				"Showing Secondary Phone input field in Assign a Contact to Management Team modal" + "\n");
	}
	
	@Then("Show Select Location dropdown in Assign a Contact to Management Team modal {string}")
	public void show_Select_Location_dropdown_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("management_location_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Location dropdown in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Location dropdown in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify Select Location dropdown enabled in Assign a Contact to Management Team modal {string}")
	public void verify_Select_Location_dropdown_enabled_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_location_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Location dropdown enabled in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Location dropdown enabled in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Show {string} Tooltip in Assign a Contact to Management Team modal {string}")
	public void show_Tooltip_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2)
			throws Throwable {

		String toolTip = ec.getObjects("management_label_variable") + string + "']//i";
		String formatXPATH = String.format(toolTip);
		WaitClass.webDriverWait(formatXPATH);

		action.moveToElement(driver.findElement(By.xpath(formatXPATH))).build().perform();
		Thread.sleep(2000);
		
		String tooltipContent = ec.getObjects("management_tooltp_description");
		String formatXPATHTT = String.format(tooltipContent);
		WaitClass.webDriverWait(formatXPATHTT);
		
		String ActualTtDescription = driver.findElement(By.xpath(tooltipContent)).getText();

		assertTrue(ActualTtDescription.equals(string2));

		Thread.sleep(1500);
		logger.info("Showing " + "'" + string + "'" + "tooltip" + "\n");
		System.out.println("Showing " + "'" + string + "'" + "tooltip" + "\n");

	}

	@Then("Show {string} under {string} field")
	public void show_under_field(String string, String string2) {

		String original = ec.getObjects("label_var") + string2 + "']/following-sibling::div";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		String error = driver.findElement(By.xpath(original)).getText();

		assertTrue(error.equalsIgnoreCase(string));

		logger.info("Showing error message " + "'" + string + "'" + " under " + string2 + " field" + "\n");
		System.out.println("Showing error message " + "'" + string + "'" + " under " + string2 + " field" + "\n");

	}
	
	@Then("Show {string} under Primary Phone field")
	public void show_under_Primary_Phone_field(String string) {

		String original = ec.getObjects("management_PrimePhone_error");
		WaitClass.webDriverWait(original);

		String error = driver.findElement(By.xpath(original)).getText();

		assertTrue(error.equalsIgnoreCase(string));

		logger.info("Showing error message " + "'" + string + "'" + " under Primary Phone field" + "\n");
		System.out.println("Showing error message " + "'" + string + "'" + " under Primary Phone field" + "\n");

	}

	@Then("Select Existing contact from contacts dropdown in Assign a Contact to Management Team modal")
	public void select_Existing_contact_from_contacts_dropdown_in_Assign_a_Contact_to_Management_Team_modal() {

		String original = ec.getObjects("management_contact_dropdown");
		WaitClass.webDriverWait(original);
		
		String Contact = First.get(0)+ " " + Last.get(0) + " - Director";
		
		Select contact = new Select(driver.findElement(By.xpath(original)));
		contact.selectByVisibleText(Contact);

		logger.info("Selected Contact in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Selected Contact in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify newly added Management in Management page {string}")
	public void verify_newly_added_Management_in_Management_page(String string) throws InterruptedException {
		Thread.sleep(3000);
		
		String original = ec.getObjects("management_card_variable") + First.get(0) + " " + Last.get(0) + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Newly added Management in Management page" + "\n");
		System.out.println("Showing Newly added Management in Management page" + "\n");
	}

	@Then("Click on the newly added Management in Management page")
	public void click_on_the_newly_added_Management_in_Management_page() throws Throwable {
		
		Thread.sleep(3000);
		
		String original = ec.getObjects("management_card_variable") + First.get(0) + " " + Last.get(0) + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on the newly added Management card" + "\n");
		System.out.println("Clicked on the newly added Management card" + "\n");

	}

	@Then("Click Remove button in Assign a Contact to Management Team modal")
	public void click_Remove_button_in_Assign_a_Contact_to_Management_Team_modal() {

		String original = ec.getObjects("management_Remove_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Remove button in Update Contact On Management Team" + "\n");
		System.out.println("Clicked on Remove button in Update Contact On Management Team" + "\n");
	}

	@Then("Click on OK button")
	public void click_on_OK_button() {

		driver.switchTo().alert().accept();

		logger.info("Clicked on OK button" + "\n");
		System.out.println("Clicked on OK button" + "\n");

	}

	@Then("Show the alert saying {string}")
	public void show_the_alert_saying(String string) {

		String alert = driver.switchTo().alert().getText();

		assertTrue(alert.equalsIgnoreCase(string));

		logger.info("Showing Alert with text: " + string + "\n");
		System.out.println("Showing Alert with text: " + string + "\n");

	}

	@Then("Verify Management is deleted from Management page {string}")
	public void verify_Management_is_deleted_from_Management_page(String string) throws Throwable {
		
		Thread.sleep(3000);
		
		String original = ec.getObjects("management_card_variable") + First.get(0) + " " + Last.get(0) + "']";
		String formatXPATH = String.format(original);

		
		assertFalse(driver.findElements(By.xpath(formatXPATH)).size() > 0);

		logger.info("Confirmed management card deleted in Management page" + "\n");
		System.out.println("Confirmed management card deleted in Management page" + "\n");
	}

	@Then("Click on Update Management button in Assign a Contact to Management Team modal")
	public void click_on_Update_Management_button_in_Assign_a_Contact_to_Management_Team_modal() {
		String original = ec.getObjects("management_update_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Update Management button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Clicked on Update Management button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show Close button in Assign a Contact to Management Team modal {string}")
	public void show_Close_button_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("management_close_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Close button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Close button in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Verify Close button clickable in Assign a Contact to Management Team modal {string}")
	public void verify_Close_button_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_close_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Close button is clickable in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Close button is clickable in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Show Save Contact button in Assign a Contact to Management Team modal {string}")
	public void show_Save_Contact_button_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("mangagement_save_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Save Contact button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Save Contact button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Verify Save Contact button clickable in Assign a Contact to Management Team modal {string}")
	public void verify_Save_Contact_button_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("mangagement_save_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Save Contact button is clickable in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Save Contact button is clickable in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show Remove button in Assign a Contact to Management Team modal {string}")
	public void show_Remove_button_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_Remove_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Remove button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Remove button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Verify Remove button clickable in Assign a Contact to Management Team modal {string}")
	public void verify_Remove_button_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_Remove_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Remove button is clickable in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Remove button is clickable in Assign a Contact to Management Team modal" + "\n");
	}

	@Then("Show Update Management button in Assign a Contact to Management Team modal {string}")
	public void show_Update_Management_button_in_Assign_a_Contact_to_Management_Team_modal(String string) {

		String original = ec.getObjects("management_update_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing Update Management button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Update Management button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Verify Update Management button clickable in Assign a Contact to Management Team modal {string}")
	public void verify_Update_Management_button_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string) {
		String original = ec.getObjects("management_update_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Remove button is clickable in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Remove button is clickable in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Show Close {string} button in Assign a Contact to Management Team modal {string}")
	public void show_Close_button_in_Assign_a_Contact_to_Management_Team_modal(String string, String string2) {

		String original = ec.getObjects("close_x_button");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing Close X button in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Showing Close X button in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Verify Close {string} button clickable in Assign a Contact to Management Team modal {string}")
	public void verify_Close_button_clickable_in_Assign_a_Contact_to_Management_Team_modal(String string,
			String string2) {

		String original = ec.getObjects("close_x_button");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string2);

		logger.info("Close X button is clickable in Assign a Contact to Management Team modal" + "\n");
		System.out.println("Close X button is clickable in Assign a Contact to Management Team modal" + "\n");

	}

	@Then("Update Alternate Email {string}")
	public void update_Alternate_Email(String string) {
		String original = ec.getObjects("management_AltEmail_input");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Alternate Email field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Alternate Email field" + "\n");
	}

	@Then("Verify Alternate Email updated to {string}")
	public void verify_Alternate_Email_updated_to(String string) throws Throwable {
		
		Thread.sleep(3000);
		
		String original = ec.getObjects("management_card_variable") + First.get(0) + " " + Last.get(0)
				+ "']//following-sibling::p[text()='Alternate Email: ']/a";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		String AltEmailDisplayed = driver.findElement(By.xpath(formatXPATH)).getText();
		assertTrue(AltEmailDisplayed.equalsIgnoreCase(string));

		logger.info("Confirmed Altername Email is updated in management card");
		System.out.println("Confirmed Altername Email is updated in management card");
	}
	
	@Then("Add CEO or Equivalant in Management page")
	public void add_CEO_or_Equivalant_in_Management_page() throws Throwable {
		
		Thread.sleep(3000);
		
	//	String original = ec.getObjects("management_CEOassign_btn");
		
		if(driver.findElements(By.xpath(ec.getObjects("management_CEOassign_btn"))).size() > 0)
		{
			
			driver.findElement(By.xpath(ec.getObjects("management_CEOassign_btn"))).click();
			
/*			String contactdropdown = ec.getObjects("management_contact_dropdown");
			WaitClass.webDriverWait(contactdropdown);

			Select contact = new Select(driver.findElement(By.xpath(contactdropdown)));
			contact.selectByIndex(5);
			
			String YOB = ec.getObjects("management_YOB_checkbox");
			WaitClass.webDriverWait(YOB);

			driver.findElement(By.xpath(YOB)).click();
			
			String save = ec.getObjects("mangagement_save_btn");
			WaitClass.webDriverWait(save);

			driver.findElement(By.xpath(save)).click();
	
		*/
			
		//	System.out.println("@@@@@@" + driver.findElement(By.xpath(ec.getObjects("management_CEOassign_btn"))).getText());
			logger.info("Added CEO or Equivalant in Management page" + "\n");
			System.out.println("Added CEO or Equivalant in Management page" + "\n");
						
		}
		else
		{
			System.out.println("@@@@@@" + driver.findElement(By.xpath(ec.getObjects("management_CEOassign_btn"))).getText());
			logger.info("CEO or Equivalant is already added in Management page" + "\n");
			System.out.println("CEO or Equivalant is already added in Management page" + "\n");
		}
	
	}

	@Then("Click on CEO or Equivalant card")
	public void click_on_CEO_or_Equivalant_card() {

		String original = ec.getObjects("management_CEO_card");
		WaitClass.webDriverWait(original);
		
		driver.findElement(By.xpath(original)).click();
		
		logger.info("Clicked on CEO or Equilant card in Management page");
		System.out.println("Clicked on CEO or Equilant card in Management page");
	}
	
	@Then("Show {string} tooltip {string} in Assign a Contact modal")
	public void show_tooltip_in_Assign_a_Contact_modal(String Label, String TTexpected) {
		String original = ec.getObjects("prefered_label1") + Label + ec.getObjects("svg_Tooltip");
		String formatXPATH = String.format(original);
		
		String original1 = ec.getObjects("AddressFields_tooltips_content");
		String formatXPATH1 = String.format(original1);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH1);
		
		String TTactual = driver.findElement(By.xpath(formatXPATH1)).getText().trim();

		assertTrue(TTactual.equals(TTexpected.trim()));

		action.moveByOffset(0, 0).click().build().perform();

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		
	
	}
	@Then("Show error message {string} under {string} field in Assign a Contact modal")
	public void show_error_message_under_field_in_Assign_a_Contact_modal(String error, String Label) {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("Registration_error_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
		System.out.println("Showing error message " + "'" + error + "'" + " under " + Label + " field" + "\n");
	}

	@Then("Verify no error message is displayed under {string} field in Assign a Contact modal")
	public void verify_no_error_message_is_displayed_under_field_in_Assign_a_Contact_modal(String Label) {

		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("label_var") + Label + ec.getObjects("Registration_error_var3");
		String formatXPATH = String.format(original);

		assertFalse(driver.findElements(By.xpath(formatXPATH)).size() > 0);

		logger.info("No error message is displayed under " + Label + " field" + "\n");
		System.out.println("No error message is displayed under " + Label + " field" + "\n");
	
	}
}
