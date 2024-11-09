package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class Discover extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();
	public static String newSupplierName;

	Logger logger = Logger.getLogger(ManageUsersInviteANewUser.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	@Then("Click on Discover tab")
	public void click_on_Discover_tab() {
		// String original = ec.getObjects("suppliers_dropdown");
		// String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		// driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Suppliers dropdown"+"\n");
		// System.out.println("Clicked on Suppliers dropdown"+"\n");

		String original1 = ec.getObjects("discover_dropdown_disc");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		logger.info("Clicked on Discover tab" + "\n");
		System.out.println("Clicked on Discover tab" + "\n");

	}

	@Then("Show {string} title on Dicover page {string}")
	public void show_title_on_Dicover_page(String string, String string2) {
		String original = ec.getObjects("discover_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing " + "'" + string + "'" + " title on Discover page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " title on Discover page" + "\n");
	}

	@Then("Show {string} button on Discover page {string}")
	public void show_label_on_Discover_page(String string, String string2) {
		String original = ec.getObjects("discover_button") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing " + "'" + string + "'" + " button in discover page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " button in discover page" + "\n");
	}

	@Then("Click on {string} button on {string}")
	public void click_on_button(String string, String string2) throws Exception {
		String original = ec.getObjects("discover_button") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(200);
		logger.info("Click on " + string + " button on " + string2);
		System.out.println("Click on " + string + " button on " + string2);
	}

	@Then("Show {string} filter on Discover page {string}")
	public void show_filter_on_Discover_page(String string, String string2) {
		String original = ec.getObjects("discover_filter_variable") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing " + "'" + string + "'" + " dropdown in discover page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " dropdown in discover page" + "\n");
	}

	@Then("Verify {string} filter clickable {string}")
	public void verify_filter_clickable(String string, String string2) {
		String original = ec.getObjects("discover_filter_variable") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string2);

		logger.info("'" + string + "'" + " is clicked" + "\n");
		System.out.println("'" + string + "'" + " is clicked" + "\n");

	}

	@Then("Click on Close icon on modal")
	public void click_on_Close_icon_on_modal() {
		String original = ec.getObjects("discover_filter_close");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Close icon on modal" + "\n");
		System.out.println("Click on Close icon on modal" + "\n");
	}

	@Then("Show Search field in discover page {string}")
	public void show_Search_field_in_discover_page(String string) {
		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Search field is visible on Discover page" + "\n");
		System.out.println("Search field is visible on Discover page" + "\n");
	}

	@Then("Verify Search field enabled in discover page {string}")
	public void verify_Search_field_enabled_in_discover_page(String string) {

		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Search field is enabled on Discover page" + "\n");
		System.out.println("Search field is enabled on Discover page" + "\n");
	}

	@Then("Show {string} column label {string}")
	public void show_Company_Name_column_label(String string, String string2) {
		String original = ec.getObjects("discover_companyName_colmHead") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("Showing " + string + " column label in discover page" + "\n");
		System.out.println("Showing " + string + " column label in discover page" + "\n");

	}

	@Then("Click on {string} filter")
	public void click_on_filter(String string) {

		String original = ec.getObjects("discover_accordion_filter") + string + ec.getObjects("parent_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on: " + "'" + string + "'" + " filter" + "\n");
		System.out.println("Clicked on: " + "'" + string + "'" + " filter" + "\n");
	}

	@Then("Click on {string} dropdown")
	public void click_on_dropdown(String string) {

		String original = ec.getObjects("discover_CountrySearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on: " + "'" + string + "'" + " dropdown" + "\n");
		System.out.println("Clicked on: " + "'" + string + "'" + " dropdown" + "\n");

	}

	@Then("Click on {string} sub field dropdown in {string} filter")
	public void click_on_dropdown_in_filter(String string, String string2) throws Exception {

		String original = ec.getObjects("sub_field_drpdwn") + string + ec.getObjects("sub_field_drpdwn_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on: " + string + " dropdown in " + string2 + "" + "\n");
		System.out.println("Clicked on: " + string + " dropdown in " + string2 + "" + "\n");
	}
	
	@Then("verify the filtered options as {string}")
	public void verify_the_filtered_options_as(String strvalue) throws Throwable {
		
		String original = ec.getObjects("filteredstatus") + strvalue + ec.getObjects("filteredstatuspre");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String actualStringvalue = driver.findElement(By.xpath(original)).getText();

		assertTrue(actualStringvalue.equals(strvalue));

		logger.info("Verified filtered values as " + strvalue + "" + "\n");
		System.out.println("Verified filtered values as " + strvalue + "" + "\n");

	}

	@Then("Show Countries dropdown in Country filter {string}")
	public void show_Countries_dropdown_in_Country_filter(String string) {
		String original = ec.getObjects("discover_country_drpdwn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Country dropdown is visible in Country filter" + "\n");
		System.out.println("Country dropdown is visible in Country filter" + "\n");

	}

	@Then("Verify Countries drop down clickable {string}")
	public void verify_Countries_drop_down_clickable(String string) {
		String original = ec.getObjects("discover_country_drpdwn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Country dropdown is clickable in " + string + " filter" + "\n");
		System.out.println("Country dropdown is clickable in " + string + " filter" + "\n");

	}

	@Then("Show {string} button in {string}")
	public void show_button_in_filter(String buttonText, String filterName) {

		String original = ec.getObjects("discover_button") + buttonText + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info(buttonText + " button is visible in " + filterName + "\n");
		System.out.println(buttonText + " button is visible in " + filterName + "\n");
	}

	@Then("Verify {string} button clickable in {string}")
	public void verify_button_clickable_in(String buttonText, String filterName) {

		String original = ec.getObjects("discover_button") + buttonText + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());

		logger.info(buttonText + " button is Clickable in " + filterName + "right drawer" + "\n");
		System.out.println(buttonText + " button is Clickable in " + filterName + "right drawer" + "\n");

	}

	@Then("Show Apply button in Country filter {string}")
	public void show_Apply_button_in_Country_filter(String string) {

		String original = ec.getObjects("discover_apply");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Apply button is visible in Country filter" + "\n");
		System.out.println("Apply button is visible in Country filter" + "\n");

	}

	@Then("Verify Apply button disabled {string}")
	public void verify_Apply_button_disabled(String string) {

		String original = ec.getObjects("discover_apply");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Apply button is not Clickable in Country filter" + "\n");
		System.out.println("Apply button is not Clickable in Country filter" + "\n");

	}

	@Then("Verify Apply button enabled {string}")
	public void verify_Apply_button_enabled(String string) {

		String original = ec.getObjects("discover_apply");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Apply button is Clickable in Country filter" + "\n");
		System.out.println("Apply button is Clickable in Country filter" + "\n");

	}

	@Then("Click on {string} option in {string} dropdown")
	public void click_on_option_in_dropdown(String string, String string2) throws Exception {
		String original = ec.getObjects("span_contains_Txt") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(300);

		Actions action = new Actions(driver);
		action.moveByOffset(0, 0).click().build().perform();

		logger.info("Clicked on " + "'" + string + "'" + " option in " + string2 + " dropdown" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " option in " + string2 + " dropdown" + "\n");

	}

	@Then("Verify search result description {string}")
	public void verify_search_result_description(String string) {

		String original = ec.getObjects("discover_noMatch_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Showing no match found description: " + string);
		System.out.println("Showing no matcch found description: " + string);
	}

	@Then("Enter UNSPSC number in UNSPSC filter {string}")
	public void enter_UNSPSC_number_in_UNSPSC_filter(String string) {
		String original = ec.getObjects("discover_UNSPSCSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered " + "'" + string + "'" + " in UNSPSC field in UNSPSC filter" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in UNSPSC field in UNSPSC filter" + "\n");
	}

	@Then("Click Apply button in {string}")
	public void click_Apply_button(String string) throws Exception {
		String original = ec.getObjects("discover_apply");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);

		logger.info("Clicked on Apply Button" + "\n");
		System.out.println("Clicked on Apply Button" + "\n");

	}

	@Then("Enter NAICS number in NAICS filter {string}")
	public void enter_NAICS_number_in_NAICS_filter(String string) {
		String original = ec.getObjects("discover_NAICSSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in NAICS field in NAICS filter" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in NAICS field in NAICS filter" + "\n");

	}

	@Then("Enter {string} in Company or Domain Name filter")
	public void enter_in_Company_or_Domain_Name_filter(String string) {
		String original = ec.getObjects("discover_SupplierorDomain_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Company or Domain Name filter" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Company or Domain Name filter" + "\n");

	}

	@When("Enter Nokia Email address in Email Address field {string}")
	public void enter_Nokia_Email_address_in_Email_Address_field(String string) {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Nokia Email " + "'" + string + "'" + " in Email address field" + "\n");
		System.out.println("Entered Nokia Email " + "'" + string + "'" + " in Email address field" + "\n");

	}

	@Then("Show {string} input field in {string} filter {string}")
	public void show_input_field_in_filter(String string, String string1, String string2) {

		String original = ec.getObjects("sub_field_drpdwn") + string + ec.getObjects("sub_field_drpdwn_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info("UNSPSC input text field is visible in " + string1 + " filter" + "\n");
		System.out.println("UNSPSC input text field is visible in " + string1 + " filter" + "\n");
	}

	@Then("Verify {string} input field clickable in {string} filter {string}")
	public void verify_UNSPSC_input_field_clickable_in_UNSPSC_filter(String string, String string1, String string2) {
		String original = ec.getObjects("sub_field_drpdwn") + string + ec.getObjects("sub_field_drpdwn_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string2);

		logger.info(string + "field is Enabled in" + string1 + "filter" + "\n");
		System.out.println(string + "field is Enabled in" + string1 + "filter" + "\n");
	}

	@Then("Show NAICS input field in NAICS filter {string}")
	public void show_NAICS_input_field_in_NAICS_filter(String string) {
		String original = ec.getObjects("discover_NAICSSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("NAICS input text field is visible in NAICS filter" + "\n");
		System.out.println("NAICS input text field is visible in NAICS filter" + "\n");
	}

	@Then("Show Company Name input field on Apply Filters right drawer {string}")
	public void show_company_domain_input_field_on_apply_filters_right_drawer(String string) {
		String original = ec.getObjects("discover_SupplierorDomain_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("NAICS input text field is visible in NAICS filter" + "\n");
		System.out.println("NAICS input text field is visible in NAICS filter" + "\n");
	}

	@Then("Verify Company Name input field clickable {string}")
	public void verify_company_input_field_clickable(String string) {
		String original = ec.getObjects("discover_SupplierorDomain_field") + ec.getObjects("div_parent");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Company Name input text field is Enabled in Company Name filter" + "\n");
		System.out.println("Company Name input text field is Enabled in Company Name filter" + "\n");
	}

	@Then("Verify NAICS input field clickable in NAICS filter {string}")
	public void verify_NAICS_input_field_clickable_in_NAICS_filter(String string) {
		String original = ec.getObjects("discover_NAICSSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("NAICS input text field is Enabled in NAICS filter" + "\n");
		System.out.println("NAICS input text field is Enabled in NAICS filter" + "\n");
	}

	@Then("Show Diverse Supplier input field in Diverse Supplier filter {string}")
	public void show_Diverse_Supplier_input_field_in_Diverse_Supplier_filter(String string) {
		String original = ec.getObjects("discover_diverse_drpdwn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Diverse Supplier input text field is visible in Diverse Supplier filter" + "\n");
		System.out.println("Diverse Supplier input text field is visible in Diverse Supplier filter" + "\n");
	}

	@Then("Verify Diverse Supplier input field clickable in Diverse Supplier filter {string}")
	public void verify_Diverse_Supplier_input_field_clickable_in_Diverse_Supplier_filter(String string) {
		String original = ec.getObjects("discover_diverse_drpdwn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Diverse Supplier input text field is Enabled in Diverse Supplier filter" + "\n");
		System.out.println("Diverse Supplier input text field is Enabled in Diverse Supplier filter" + "\n");
	}

	@Then("Show {string} checkbox in {string} filter {string}")
	public void show_checkbox_in_filter(String string, String string2, String string3) {
		String original = ec.getObjects("filterby_checkbox_role1") + string + ec.getObjects("filterby_checkbox_role2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info(string + " checkbox is visible in " + string2 + " filter" + "\n");
		System.out.println(string + " checkbox is visible in " + string2 + " filter" + "\n");
	}

	@Then("Verify {string} checkbox clickable in {string} filter {string}")
	public void verify_checkbox_clickable_in_filter(String string, String string2, String string3) {
		String original = ec.getObjects("filterby_checkbox_role1") + string + ec.getObjects("filterby_checkbox_role2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info(string + " checkbox is Enabled in " + string2 + " filter" + "\n");
		System.out.println(string + " checkbox is Enabled in " + string2 + " filter" + "\n");
	}

	@Then("Click on {string} button in {string} filter")
	public void click_on_button_in_filter(String buttonText, String filterName) {
		String original = ec.getObjects("discover_filter_variable") + filterName
				+ ec.getObjects("discover_filter_buttons_var2") + buttonText + "'][1]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + buttonText + " button in " + filterName + "filter" + "\n");
		System.out.println("Clicked on " + buttonText + " button in " + filterName + "filter" + "\n");
	}

	@Then("^Show Questionnaire list in discoverable suppliers$")
	public void show_questionnaire_list_in_discoverable_suppliers() throws Throwable {
		String original = ec.getObjects("discover_completed");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Questionnaire on Discover page" + "\n");
		System.out.println("Showing Questionnaire on Discover page" + "\n");
	}

	@Then("Show {string} value on Profile Completeness column")
	public void show_value_on_Profile_Completeness_column(String string) {
		String original = ec.getObjects("discover_values_ProfileCompleteness") + string
				+ ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info(string + " value is visible in Profile Completeness column" + "\n");
		System.out.println(string + " value is visible in Profile Completeness column" + "\n");
	}

	@Then("Show tooltip when hover on {string} value")
	public void show_tooltip_when_hover_on_value(String string) {
		String btnVal;
		int idNo;
		if ("Joined".equals(string)) {
			btnVal = ec.getObjects("button_tooltip") + "1]";
			idNo = 1;
		} else {
			btnVal = ec.getObjects("button_tooltip") + "2]";
			idNo = 2;
		}

		String tooltipTxt;
		String formatXPATH = String.format(btnVal);

		WaitClass.webDriverWait(formatXPATH);
		Actions actions = new Actions(driver);

		WebElement element = driver.findElements(By.xpath(btnVal)).get(0);
		actions.moveToElement(element).build().perform();
		tooltipTxt = ec.getObjects("id_tooltip") + idNo + "']";
		assertTrue("auto".equals(driver.findElement(By.xpath(tooltipTxt)).getCssValue("clip")), "true");

		logger.info("Shown tooltip when hover on " + string + "\n");
		System.out.println("Shown tooltip when hover on " + string + "\n");

	}

	@Then("Show Sort icon when hover on {string} column")
	public void show_sort_icon_when_hover_on_column(String string) {
		String btnVal = ec.getObjects("discover_filter_variable") + string + ec.getObjects("column_sort");
		String sortIcon = ec.getObjects("discover_filter_variable") + string + ec.getObjects("date_sort_svg");

		String formatXPATH = String.format(btnVal);

		WaitClass.webDriverWait(formatXPATH);
		Actions actions = new Actions(driver);
		actions.moveToElement(driver.findElement(By.xpath(btnVal))).build().perform();
		assertTrue("1".equals(driver.findElement(By.xpath(sortIcon)).getCssValue("opacity")), "true");

		logger.info("Shown Sort icon when hover on " + string + "\n");
		System.out.println("Shown Sort icon when hover on " + string + "\n");

	}

	@Then("Click on sort icon in {string} column")
	public void click_on_sort_icon_in_column(String string) throws Exception {
		String original = ec.getObjects("discover_filter_variable") + string + ec.getObjects("column_sort");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(500);

		logger.info("Click on company name sort icon in " + string + " column" + "\n");
		System.out.println("Click on company name sort icon in " + string + " column" + "\n");

	}

	@Then("Verify {string} column is sorted in ascending order")
	public void verify_column_is_sorted_in_ascending_order(String string) {
		String companyNames = ec.getObjects("companyName_list");
		String formatXPATH = String.format(companyNames);

		WaitClass.clickableWait(formatXPATH);

		List<String> unsortedList = new ArrayList<>();
		for (WebElement companyName : driver.findElements(By.xpath(companyNames))) {
			unsortedList.add(companyName.getText());
		}
		//assertTrue(unsortedList.stream().sorted().toList().equals(unsortedList), "true");

		logger.info(string + "column is sorted in ascending order" + "\n");
		System.out.println(string + "column is sorted in ascending order" + "\n");

	}

	@Then("Verify {string} column is sorted in descending order")
	public void verify_column_is_sorted_in_descending_order(String string) throws Exception {
		String companyNames = ec.getObjects("companyName_list");
		String formatXPATH = String.format(companyNames);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(500);
		List<String> unsortedList = new ArrayList<>();
		for (WebElement companyName : driver.findElements(By.xpath(companyNames))) {
			unsortedList.add(companyName.getText());
		}
		assertTrue(unsortedList.stream().sorted(Comparator.reverseOrder()).collect(Collectors.toList())
				.equals(unsortedList), "true");

		logger.info(string + "column is sorted in descending order" + "\n");
		System.out.println(string + "column is sorted in descending order" + "\n");

	}

	@Then("Verify list view table is displayed in decreasing order of {string}")
	public void verify_column_is_sorted_in_descending_date_order(String string) throws Exception {
		String supLastUpdated = ec.getObjects("supLastUpdated_list");
		String formatXPATH = String.format(supLastUpdated);
		WaitClass.webDriverWait(formatXPATH);

		DateTimeFormatter dateFormatter = DateTimeFormatter.ofPattern("MMMM d, u", Locale.US);
		LocalDate date;
		List<String> unsortedList = new ArrayList<String>();
		for (WebElement lastedDatesUpdated : driver.findElements(By.xpath(supLastUpdated))) {
			if ("".equals(lastedDatesUpdated.getText())) {
				unsortedList.add("");
			} else {
				date = LocalDate.parse(lastedDatesUpdated.getText(), dateFormatter);
				unsortedList.add(String.valueOf(date));
			}
		}
		Thread.sleep(200);
		assertTrue(unsortedList.stream().sorted(Comparator.reverseOrder()).collect(Collectors.toList())
				.equals(unsortedList), "true");

	}

	@Then("Click on small numbered hyperlink on UNSPSC")
	public void click_on_small_numbered_hyperlink_on_UNSPSC() {
		String original = ec.getObjects("tag_unspsc_segment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		for (WebElement webElement : driver.findElements(By.xpath(original))) {
			webElement.click();
			break;
		}

		logger.info("Clicked on small numbered hyperlink on UNSPSC" + "\n");
		System.out.println("Clicked on small numbered hyperlink on UNSPSC" + "\n");
	}

	@Then("Show UNSPSC dialog")
	public void show_UNSPSC_dialog() {
		String original = ec.getObjects("unspsc_dialog");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		assertEquals(driver.findElement(By.xpath(original)).isDisplayed(), true);

		logger.info("Show UNSPSC dialog" + "\n");
		System.out.println("Show UNSPSC dialog" + "\n");
	}

	@Then("Select Date on Date Established field")
	public void select_Date_on_Date_Established_field() throws Exception {
		Thread.sleep(200);
		
		 String original = ec.getObjects("basicinfo_dateEstablished"); 
		 String day =ec.getObjects("datePicker"); 
		 String formatXPATH = String.format(original);
		 String formatXPATHs = String.format(day);
		 
		 WaitClass.webDriverWait(formatXPATH);
		 driver.findElement(By.xpath(original)).click();
		 WaitClass.clickableWait(formatXPATHs);
		 driver.findElement(By.xpath(day)).click();
		

		logger.info("Selected Date on Date Established field" + "\n");
		System.out.println("Selected Date on Date Established field" + "\n");
	}

	@Then("Click on the supplier in discover searchbox")
	public void click_on_the_supplier_in_discover_searchbox() throws Exception {

		String original = ec.getObjects("companyName_list");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(500);

		logger.info("Click on the supplier in discover searchbox" + "\n");
		System.out.println("Click on the supplier in discover searchbox" + "\n");
	}

	@Then("Click on the supplier in connected searchbox")
	public void click_on_the_supplier_in_connected_searchbox() throws Exception {

		String original = ec.getObjects("connected_supp_Name");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(500);

		logger.info("Click on the supplier in connected searchbox" + "\n");
		System.out.println("Click on the supplier in connected searchbox" + "\n");
	}

	@Then("Show the supplier in discover searchbox")
	public void show_the_supplier_in_discover_searchbox() throws Exception {
		String original = ec.getObjects("discover_searchresult") + newSupplierName + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertEquals(driver.findElement(By.xpath(formatXPATH)).getText().trim(), newSupplierName.trim());

		logger.info("Shown " + newSupplierName + "supplier in discover searchbox" + "\n");
		System.out.println("Shown " + newSupplierName + "supplier in discover searchbox" + "\n");
	}

	@Then("Click on Diverse Supplier dropdown")
	public void click_on_Diverse_Supplier_dropdown() throws Exception {
		String original = ec.getObjects("discover_diverse_drpdwn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(500);

		logger.info("Click on Diverse Supplier dropdown" + "\n");
		System.out.println("Click on Diverse Supplier dropdown" + "\n");
	}

	@Then("Show badge content {string} on Supplier profile screen")
	public void show_badge_content_on_supplier_profile(String string) {
		String original = ec.getObjects("discover_searchresult") + string + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");

		logger.info("Able to see the text: " + string + "\n");
		System.out.println("Able to see the text: " + string + "\n");
	}

	@Then("Show all {string} buttons are {string}")
	public void show_all_buttons_are(String string, String string2) {
		String original = ec.getObjects("connectwiththissupplierbutton");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		for (WebElement button : driver.findElements(By.xpath(formatXPATH))) {
			if ("Enable".equals(string2)) {
				assertEquals(button.isDisplayed(), true);
			} else {
				assertEquals(button.getAttribute("disabled"), true);
			}
		}

		logger.info("Able to see all buttons: " + string + string2 + "\n");
		System.out.println("Able to see all buttons: " + string + "\n");
	}

	@Then("Click on document file")
	public void click_on_document_file_to_download() {
		String original = ec.getObjects("link_file_download");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on the document file" + "\n");
		System.out.println("Clicked on the document file" + "\n");
	}

	@Then("Verify document file can not download")
	public void verify_document_file_can_not_download() {
		String original = ec.getObjects("link_file_download");
		String formatXPATH = String.format(original);
		String fileName = driver.findElement(By.xpath(formatXPATH)).getText();

		String downloadPath = System.getProperty("user.home");
		File file = new File(downloadPath + "/Downloads/" + fileName);
		assertFalse(file.exists());

		logger.info("The document file can not download" + "\n");
		System.out.println("The document file can not download" + "\n");
	}

	@Then("Search the supplier name in discover searchbox")
	public void search_supplier_name_in_discover_searchbox() throws Throwable {
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
		String original = ec.getObjects("discover_search_field");
		String formatXPATH = String.format(original);

		String TYSBtn = ec.getObjects("TYS_Doscover");

		List<WebElement> elements = driver.findElements(By.xpath(TYSBtn));

		if (elements.size() > 0)
		{
			System.out.println("TYS Discover button exists");
			logger.info("TYS Discover button exists");
			driver.findElement(By.xpath(TYSBtn)).click();
			System.out.println("Clicked on TYS Discover button");
			logger.info("Clicked on TYS Discover button");
		} else
		{
			System.out.println("TYS Discover button does not exist");
			logger.info("TYS Discover button does not exist");
		}

		WaitClass.clickableWait(formatXPATH);

		Thread.sleep(8000);
		driver.findElement(By.xpath(original)).sendKeys(newSupplierName);

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);

		logger.info("Entered Supplier name and click Enter at discover supplier search" + "\n");
		System.out.println("Entered Supplier name and click Enter at discover supplier search" + "\n");
	}

	@Then("Select the UNSPSC codes")
	public void select_the_UNSPSC_codes_on_the_Basic_information_page() throws Throwable {
		String original = ec.getObjects("basicinfo_unspsc_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);

		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, -1000);");

		String originalsegment = ec.getObjects("basicinfo_unspsc_segment");
		String formatXPATHsegment = String.format(originalsegment);

		WaitClass.webDriverWait(formatXPATHsegment);

		driver.findElement(By.xpath(originalsegment)).click();

		Thread.sleep(2000);

		String originalfamily = ec.getObjects("basicinfo_unspsc_family");
		String formatXPATHfamily = String.format(originalfamily);

		WaitClass.webDriverWait(formatXPATHfamily);

		driver.findElement(By.xpath(originalfamily)).click();

		Thread.sleep(3000);

		String originalclass = ec.getObjects("basicinfo_unspsc_class");
		String formatXPATHclass = String.format(originalclass);

		WaitClass.webDriverWait(formatXPATHclass);

		driver.findElement(By.xpath(originalclass)).click();

		Thread.sleep(3000);

		String addbutton = ec.getObjects("basiinfo_unspsc_add");
		String formatXPATHadd = String.format(addbutton);

		WaitClass.webDriverWait(formatXPATHadd);

		driver.findElement(By.xpath(addbutton)).click();

		Thread.sleep(1000);

		String originalconfirm = ec.getObjects("basicinfo_unspsc_confirm");
		String formatXPATHconfirm = String.format(originalconfirm);

		WaitClass.webDriverWait(formatXPATHconfirm);

		driver.findElement(By.xpath(originalconfirm)).click();

		Thread.sleep(1000);

		logger.info("Click on the UNSPSC codes on the Basic information page " + "\n");
		System.out.println("Click onthe UNSPSC codes on the Basic information page" + "\n");
	}

	@Then("Click Yes radio button for Diversity")
	public void click_Yes_radio_button_for_Diversity() {
		String original = ec.getObjects("rdo_yes");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click Yes radio button for Diversity" + "\n");
		System.out.println("Click Yes radio button for Diversity" + "\n");
	}

	@Then("Click on Diverse Supplier dropdown on Basic Information")
	public void click_on_Diverse_Supplier_dropdown_on_Basic_Information() throws Exception {
		String original = ec.getObjects("diversity_Categories");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(500);

		logger.info("Click on Diverse Supplier dropdown" + "\n");
		System.out.println("Click on Diverse Supplier dropdown" + "\n");
	}

	@Then("Click on upload file button")
	public void click_on_upload_file_button() throws Exception {
		String original = ec.getObjects("diversity_document_upload_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(500);

		logger.info("Click on upload file button" + "\n");
		System.out.println("Click on upload file button" + "\n");
	}

	@Then("Show {string} on discoverable detail page")
	public void show_on_discoverable_detail_page(String string) {
		String original = ec.getObjects("btnConnectedorNot") + string + "']";
		String h4Text = ec.getObjects("pagetitle") + string + ec.getObjects("discoversupplier2");

		String formatXPATH = String.format(original);
		String formatH4XPATH = String.format(h4Text);

		WaitClass.webDriverWait(formatXPATH);

		assertEquals(driver.findElement(By.xpath(formatXPATH)).isDisplayed(), true);
		assertEquals(driver.findElement(By.xpath(formatH4XPATH)).isDisplayed(), true);

		logger.info("Showing " + "'" + string + "'" + " in discoverable detail page" + "\n");
		System.out.println("Showing " + "'" + string + "'" + " in discoverable detail page" + "\n");
	}
	
	@Then("Click on {string} button on discover detail page")
	public void click_on_button_on_discover(String string) {
		String original = ec.getObjects("btnConnectedorNot") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertEquals(driver.findElement(By.xpath(original)).isDisplayed(), true);

		logger.info("Clicked on " + "'" + string + "'" + " button in discover detail page" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button in discover detail page" + "\n");
	}

	@Then("Upload {string} file")
	public void upload_file(String FileFormat) throws Exception {
		String original = ec.getObjects("upload_File");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String workingDir = System.getProperty("user.dir");
		System.out.println("workingDir" + workingDir);
		String filepath = System.getProperty("user.dir") + "\\testdata\\fileextension\\sample" + FileFormat + "."
				+ FileFormat.toLowerCase();
		logger.info("filepath" + " " + filepath + "\n");

		StringSelection ss = new StringSelection(filepath);

		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(ss, null);

		Robot robot = new Robot();
		robot.delay(1000);
		Thread.sleep(3000);
		robot.keyPress(KeyEvent.VK_ENTER);
		robot.keyRelease(KeyEvent.VK_ENTER);

		robot.keyPress(KeyEvent.VK_CONTROL);
		robot.keyPress(KeyEvent.VK_V);
		robot.keyRelease(KeyEvent.VK_V);
		robot.keyRelease(KeyEvent.VK_CONTROL);

		robot.keyPress(KeyEvent.VK_ENTER);
		robot.keyRelease(KeyEvent.VK_ENTER);

		logger.info("Uploaded " + FileFormat + "\n");
		System.out.println("Uploaded " + FileFormat + "\n");

	}

	@Then("Save name of new supplier")
	public void save_name_of_new_supplier() {
		String original = ec.getObjects("suppliercompanyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		newSupplierName = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");

		logger.info("Name of new supplier: " + newSupplierName + "\n");
		System.out.println("Name of new supplier: " + newSupplierName + "\n");
	}
	
	@Then("enter existing name of new supplier")
	public void enter_Existing_name_of_new_supplier() {
		
			String original = ec.getObjects("suppliercompanyname");
			String formatXPATH = String.format(original);

			WaitClass.clickableWait(formatXPATH);

			mis.addTimeStamp();
			String companyName =newSupplierName;
			driver.findElement(By.xpath(original)).sendKeys(companyName);

			logger.info("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
			System.out.println("Entered data " + "'" + companyName + "'" + " Company name field" + "\n");
		}
	//weekly sanity
	@Then("Click on {string} tab for {string}")
	public void click_on_discover_tab(String tab,String subCat) throws Exception {
		String original = ec.getObjects("span_Txt")+tab+"']";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on "+tab + "for "+subCat+"\n");
		System.out.println("Clicked on "+tab+"for "+subCat+"\n");
	}
	
}
