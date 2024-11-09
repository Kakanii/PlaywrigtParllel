package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ProfileOwnership extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> First = new ArrayList<String>();

	ArrayList<String> Last = new ArrayList<String>();
	public WebDriverWait wait = new WebDriverWait(driver, 120);

	@Then("^Show Ownership Tab \"([^\"]*)\"$")
	public void show_ownership_tab_something(String string) throws Throwable {

		String original = ec.getObjects("Ownershipnavlink");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Ownership Tab visible on Profile page" + "\n");
		System.out.println("Ownership Tab visible on Profile page" + "\n");

	}

	@Then("^Verify Ownership Tab clickable \"([^\"]*)\"$")
	public void verify_ownership_tab_clickable_something(String string) throws Throwable {

		String original = ec.getObjects("Ownershipnavlink");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Ownership Tab clickable on Profile page" + "\n");
		System.out.println("Ownership Tab clickable on Profile page" + "\n");

	}

	@Then("^Show Ownership page desctiption \"([^\"]*)\"$")
	public void show_ownership_page_desctiption_something(String string) throws Throwable {
		String original = ec.getObjects("ownership_description");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Ownership page description visible on Ownership page" + "\n");
		System.out.println("Ownership page description visible on Ownership page" + "\n");

	}

	@Then("^Show Previous Step button \"([^\"]*)\"$")
	public void show_previous_step_button_something(String string) throws Throwable {

		String original = ec.getObjects("ownership_PreviousStep_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Previous Step button is visible" + "\n");
		System.out.println("Previous Step button is visible" + "\n");

	}

	@Then("^Verify Previous Step clickable \"([^\"]*)\"$")
	public void verify_previous_step_clickable_something(String string) throws Throwable {

		String original = ec.getObjects("ownership_PreviousStep_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Previous Step button clickable on Ownership page" + "\n");
		System.out.println("Previous Step button clickable on Ownership page" + "\n");

	}

	@Then("^Show Management page desctiption \"([^\"]*)\"$")
	public void show_management_page_desctiption_something(String string) throws Throwable {

		String original = ec.getObjects("management_description");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Management page description visible on Management page" + "\n");
		System.out.println("Management page description visible on Management page" + "\n");
	}

	@Then("^Show Next Step button \"([^\"]*)\"$")
	public void show_next_step_button_something(String string) throws Throwable {

		String original = ec.getObjects("nextStep_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Next Step button is visible on Ownership page" + "\n");
		System.out.println("Next Step button visible on Ownership page" + "\n");
	}

	@Then("^Verify Next Step clickable \"([^\"]*)\"$")
	public void verify_next_step_clickable_something(String string) throws Throwable {
		String original = ec.getObjects("nextStep_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Previous Step button clickable on Ownership page" + "\n");
		System.out.println("Previous Step button clickable on Ownership page" + "\n");

	}

	@Then("^Show Add Ownership button \"([^\"]*)\"$")
	public void show_add_ownership_button_something(String string) throws Throwable {

		String original = ec.getObjects("add_ownership_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add Ownership button is visible on Ownership page" + "\n");
		System.out.println("Add Ownership button is visible on Ownership page" + "\n");

	}

	@Then("^Verify Add Ownership button clickable \"([^\"]*)\"$")
	public void verify_add_ownership_button_clickable_something(String string) throws Throwable {
		String original = ec.getObjects("add_ownership_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Add Ownership button clickable on Ownership page" + "\n");
		System.out.println("Add Ownership button clickable on Ownership page" + "\n");

	}

	@Then("^Click on Add ownership button$")
	public void click_on_add_ownership_button() throws Throwable {
		String original = ec.getObjects("add_ownership_btn");
		WaitClass.webDriverWait(original);

		driver.manage().timeouts().implicitlyWait(2, TimeUnit.MINUTES);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add Ownership button" + "\n");
		System.out.println("Clicked on Add Ownership button" + "\n");

	}

	@Then("^Verify list of Ownership type \"([^\"]*)\"$")
	public void verify_list_of_ownership_type_something(String string) throws Throwable {

		String original = ec.getObjects("ownershipType_drpdownMenu");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("List of Ownership Types are visible" + "\n");
		System.out.println("List of Ownership Types are visible" + "\n");
	}

	@Then("^Show \"([^\"]*)\" ownership type$")
	public void show_something_ownership_type(String string) throws Throwable {
		String original = ec.getObjects("ownership_button_variable") + string + "')]";

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		Thread.sleep(1000);
		logger.info("Ownership Type " + "'" + string + "'" + " is visible" + "\n");
		System.out.println("Ownership Type " + "'" + string + "'" + " is visible" + "\n");

	}

	@Then("^Verify \"([^\"]*)\" clickable$")
	public void verify_something_clickable(String string) throws Throwable {

		String original = ec.getObjects("ownership_button_variable") + string + "')]";

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());
		logger.info("Ownership Type " + "'" + string + "'" + " is clickable" + "\n");
		System.out.println("Ownership Type " + "'" + string + "'" + " is clickable" + "\n");
	}

	@Then("^Click on \"([^\"]*)\" ownership type$")
	public void click_on_something_ownership_type(String string) throws Throwable {
		String original = ec.getObjects("ownership_button_variable") + string + "')]";

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on " + "'" + string + "'" + " Ownership Type " + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " Ownership Type " + "\n");

	}

	@Then("^Show \"([^\"]*)\" header$")
	public void show_something_header(String string) throws Throwable {

		String original = ec.getObjects("ownership_header_variable") + string + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("'" + string + "'" + " modal is visible" + "\n");
		System.out.println("'" + string + "'" + " modal is visible" + "\n");
	}

	@Then("^Click on \"([^\"]*)\" button$")
	public void click_on_something_button(String string) throws Throwable {
		String original = ec.getObjects("ownership_button_variable") + string + "')]";
		String formatXPATH = String.format(original);
//		try {
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
//		}
//		catch (ElementClickInterceptedException e) {
//			logger.info("Recovering from ElementClickInterceptedException " + "\n");
//			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
//
//			wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
//
//			driver.findElement(By.xpath(formatXPATH)).click();
//		}

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click on {string} radio button")
	public void click_on_radio_button(String string) throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("FactoringCompanyAccount");
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
		Thread.sleep(2000);
	}

	@Then("^Show Select Ownership label$")
	public void show_select_ownership_label() throws Throwable {

		String original = ec.getObjects("selectOwnership_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Select Ownership label is visible" + "\n");
		System.out.println("Select Ownership label is visible" + "\n");

	}

	@Then("^Show Select Ownership dropdown$")
	public void show_select_ownership_dropdown() throws Throwable {

		String original = ec.getObjects("selectOwnership_dropDown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Select Ownership dropdown is visible" + "\n");
		System.out.println("Select Ownership dropdown is visible" + "\n");
	}

	@Then("Show Ownership Percentage label")
	public void show_Ownership_Percentage_label() {
		String original = ec.getObjects("ownership_percent_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Ownership Percentage label is visible" + "\n");
		System.out.println("Ownership Percentage label is visible" + "\n");

	}

	@Then("Show Ownership Percentage input box")
	public void show_Ownership_Percentage_input_box() {

		String original = ec.getObjects("ownership_percent_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Select Ownership dropdown is visible" + "\n");
		System.out.println("Select Ownership dropdown is visible" + "\n");
	}

	@Then("Show {string} button")
	public void show_button(String string) {
		String original = ec.getObjects("ownership_button_variable") + string + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("'" + string + "'" + " button is visible" + "\n");
		System.out.println("'" + string + "'" + " button is visible" + "\n");

	}

	@Then("Show {string} tooltip description {string}")
	public void show_tooltip_description(String string, String string2) throws Throwable {

		String original = ec.getObjects("ownership_TT_variable") + string + "')]/span";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		String tt = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		assertEquals(tt, string2);
		logger.info("Showing Tooltip description: " + tt + "\n");
		System.out.println("Showing Tooltip description: " + tt + "\n");
	}

	@Then("Show Company Name label")
	public void show_Company_Name_label() {
		String original = ec.getObjects("ownership_companyName_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Company Name label is visible" + "\n");
		System.out.println("Company Name label is visible" + "\n");

	}

	@Then("Show Company Name input box")
	public void show_Company_Name_input_box() {
		String original = ec.getObjects("ownership_companyName_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Company Name input field is visible" + "\n");
		System.out.println("Company Name input field is visible" + "\n");

	}

	@Then("Show Tax Country label")
	public void show_Tax_Country_label() {

		String original = ec.getObjects("ownership_taxCountry_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Tax Country label is visible" + "\n");
		System.out.println("Tax Country label is visible" + "\n");
	}

	@Then("Show Tax Country dropdown")
	public void show_Tax_Country_dropdown() {

		String original = ec.getObjects("ownership_taxCountry_drpdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Tax Country dropdown is visible" + "\n");
		System.out.println("Tax Country dropdown is visible" + "\n");
	}

	@Then("Show D-U-N-S Number label")
	public void show_D_U_N_S_Number_label() {
		String original = ec.getObjects("ownership_DUNS_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("DUNS number label is visible" + "\n");
		System.out.println("DUNS number label is visible" + "\n");

	}

	@Then("Show D-U-N-S Number input box")
	public void show_D_U_N_S_Number_input_box() {

		String original = ec.getObjects("ownership_DUNS_input");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("DUNS number input field is visible" + "\n");
		System.out.println("DUNS number input field is visible" + "\n");
	}

	@Then("Show error message {string} under {string}")
	public void show_error_message_under(String string, String string2) {
		String original = ec.getObjects("ownership_variable_error1") + string2
				+ ec.getObjects("ownership_variable_error2") + string + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showing Error message " + "'" + string + "'" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + "\n");

	}

	@Then("Enter data in Email field")
	public void enter_data_in_Email_field() {
		String original = ec.getObjects("emailoncontactmodal");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);

		String Email = Time + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data" + "'" + Email + "'" + "in Email field" + "\n");
		System.out.println("Entered data" + "'" + Email + "'" + "in Email field" + "\n");

	}

	@Then("Select Add a New Location from the dropdown")
	public void select_Add_a_New_Location_from_the_dropdown() throws Throwable {

		String original = ec.getObjects("selectlocationcontactmodal");
		WaitClass.webDriverWait(original);

		WebElement location = driver.findElement(By.xpath(original));
		Select location_text = new Select(location);
		location_text.selectByIndex(3);

		Thread.sleep(1000);

		logger.info("Location selected from dropdown" + "\n");
		System.out.println("Location selected from dropdown" + "\n");

	}

	@Then("Click {string} dropdown")
	public void click_dropdown(String string) throws Throwable {

		String original = ec.getObjects("ownership_select_variable") + string + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);

		logger.info("Clicked on: " + string + " dropdown" + "\n");
		System.out.println("Clicked on: " + string + " dropdown" + "\n");

	}

	@Then("Enter data in Fist Name field")
	public void enter_data_in_Fist_Name_field() throws Throwable {
		String original = ec.getObjects("firstnameoncontactmodal");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).clear();
		String Firstname = RandomStringUtils.randomAlphabetic(8);

		driver.findElement(By.xpath(original)).sendKeys(Firstname);

		First.add(0, Firstname);

		logger.info("Entered First Name " + Firstname + "\n");
		System.out.println("Entered First Name " + Firstname + "\n");
	}

	@Then("Enter data in Last Name field")
	public void enter_data_in_Last_Name_field() throws Throwable {
		String original = ec.getObjects("lastnameoncontactmodal");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).clear();
		String LastName = RandomStringUtils.randomAlphabetic(8);

		driver.findElement(By.xpath(original)).sendKeys(LastName);

		Last.add(0, LastName);

		logger.info("Entered Last name" + "\n");
		System.out.println("Entered Last name" + "\n");

	}

	@Then("Select from existing contacts")
	public void select_from_existing_contacts() {
		String original = ec.getObjects("selectOwnership_dropDown");
		WaitClass.webDriverWait(original);

		Select s = new Select(driver.findElement(By.xpath(original)));

		String contact = First.get(0) + " " + Last.get(0) + " - ExistAutomation";

		s.selectByVisibleText(contact);

		logger.info("Selected Contact from available contacts" + "\n");
		System.out.println("Selected Contact from available contacts" + "\n");

	}

	@Then("Enter {string} in Ownership Percentage")
	public void enter_in_Ownership_Percentage(String string) {

		String original = ec.getObjects("ownership_percent_input");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + string + "% in ownership percentage" + "\n");
		System.out.println("Entered " + string + "% in ownership percentage" + "\n");

	}

	@Then("Verify Individual ownership added")
	public void verify_Individual_ownership_added() {
		String original = ec.getObjects("ownershipCard_First") + First.get(0) + "  " + Last.get(0) + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Individual Ownership successfully added" + "\n");
		System.out.println("Individual Ownership successfully added" + "\n");
	}

	@Then("Verify ownership added")
	public void verify_ownership_added() {
		String original = ec.getObjects("ownershipCard_First") + timeStamp.get(0) + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Individual Ownership successfully added" + "\n");
		System.out.println("Individual Ownership successfully added" + "\n");
	}

	@Then("Click on the Individual ownership card")
	public void click_on_the_individual_ownership_card() throws Throwable {

		String original = ec.getObjects("ownershipCard_First") + First.get(0) + "  " + Last.get(0) + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(1000);

		logger.info("Clicked on Ownership card" + "\n");
		System.out.println("Clicked on Ownership card" + "\n");

	}

	@Then("^Enter data in the Company Name field$")
	public void enter_data_in_the_company_name_field() throws Throwable {
		String original = ec.getObjects("ownership_companyName_input");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);
		driver.findElement(By.xpath(original)).sendKeys(Time);

		logger.info("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
	}

	@Then("Click on the ownership card")
	public void click_on_the_ownership_card() {

		String original = ec.getObjects("ownershipCard_First") + timeStamp.get(0) + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Ownership card" + "\n");
		System.out.println("Clicked on Ownership card" + "\n");

	}

	@Then("Select {string} from the ownership dropdown")
	public void select_from_the_ownership_dropdown(String string) {
		String original = ec.getObjects("selectOwnership_dropDown");
		WaitClass.webDriverWait(original);

		Select select = new Select(driver.findElement(By.xpath(original)));

		select.selectByValue("new");

		logger.info("Selected " + "'" + string + "'" + " from the ownership dropdown" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " from the ownership dropdown" + "\n");

	}

	@Then("Select {string} in Tax Country")
	public void select_in_Tax_Country(String string) {

		String original = ec.getObjects("ownership_taxCountry_drpdown");
		WaitClass.webDriverWait(original);

		Select role = new Select(driver.findElement(By.xpath(original)));

		role.selectByVisibleText(string);

		logger.info("Selected " + "'" + string + "'" + " in Tax Country" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " in Tax Country" + "\n");

	}

	@Then("Select Year of birth")
	public void select_Year_of_birth() {
		String original = ec.getObjects("ownership_YOB_dropdown");
		WaitClass.webDriverWait(original);

		Select s = new Select(driver.findElement(By.xpath(original)));

		s.selectByIndex(5);

		logger.info("Selected Year of Birth" + "\n");
		System.out.println("Selected Year of Birth" + "\n");
	}

	@Then("Select {string} from ownership dropdown")
	public void select_from_ownership_dropdown(String string) {
		String original = ec.getObjects("selectOwnership_dropDown");
		WaitClass.webDriverWait(original);
		Select s = new Select(driver.findElement(By.xpath(original)));
		s.selectByVisibleText(string);

		logger.info("Selected " + "'" + string + "'" + "from ownership dropdown" + "\n");
		System.out.println("Selected " + "'" + string + "'" + "from ownership dropdown" + "\n");

	}

	@Then("Verify ownership percentage updated to {string}")
	public void verify_ownership_percentage_updated_to(String string) {
		String original = ec.getObjects("ownership_percentOnCard") + string + "')]";
		WaitClass.webDriverWait(original);

		String Ownershippercent = driver.findElement(By.xpath(original)).getText();

		String percent = Ownershippercent.substring(22, 25).trim();

		assertTrue(percent.equalsIgnoreCase(string));

		logger.info("Updated Ownership percentage to " + string + "\n");
		System.out.println("Updated Ownership percentage to " + string + "\n");
	}

	@Then("Verify if ownership card is deleted")
	public void verify_if_ownership_card_is_deleted() {
		String original = ec.getObjects("ownershipCard_First") + timeStamp.get(0) + "')]";
		String formatXPATH = String.format(original);

		Boolean abc = driver.findElements(By.xpath(formatXPATH)).size() > 0;
		assertFalse(abc);

		logger.info("Ownership card successfully deleted" + "\n");
		System.out.println("Ownership card successfully deleted" + "\n");
	}

	@Then("Verify if Individual ownership card is deleted")
	public void verify_if_individual_ownership_card_is_deleted() {
		String original = ec.getObjects("ownershipCard_First") + First.get(0) + "  " + Last.get(0) + "')]";
		String formatXPATH = String.format(original);

		Boolean abc = driver.findElements(By.xpath(formatXPATH)).size() > 0;
		assertFalse(abc);

		logger.info("Ownership card successfully deleted" + "\n");
		System.out.println("Ownership card successfully deleted" + "\n");
	}

}