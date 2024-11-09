package stepdefinition;

import org.openqa.selenium.interactions.Actions;

// import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import org.openqa.selenium.Keys;
import utility.WaitClass;

public class AddUNSPSCCode extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(AddUNSPSCCode.class);

	Actions action = new Actions(driver);

	@When("User click on UNSPSC in filter")
	public void user_click_on_UNSPSC_in_filter() 
	{
		String original = ec.getObjects("unspsc_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("User clicked on UNSPSC filter" + "\n");
		System.out.println("User clicked on UNSPSC filter" + "\n");
	}

	@Then("User click on filter close Icon")
	public void user_click_on_filter_close_Icon() 
	{
	    String original = ec.getObjects("filter_close");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("User clicked on Filter Close icon" + "\n");
		System.out.println("User clicked on Filter Close icon" + "\n");
	}

	@Then("Profile tab visibility on Dashboard {string}")
	public void profile_tab_visibility_on_dashboard_something(String string) throws Throwable {
		String original = ec.getObjects("profile_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
	}

	@Then("Profile tab clickable on Dashboard {string}")
	public void profile_tab_clickable_on_dashboard_something(String string) throws Throwable {
		String original = ec.getObjects("profile_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Profile Tab clickable " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Profile Tab clickable " + " " + string + " " + " on Dashboard" + "\n");
	}

	@Then("Click on Profile tab")
	public void click_on_profile_tab() throws Throwable {

		String original = ec.getObjects("profile_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Profile Tab" + "\n");
		System.out.println("Clicked on Profile Tab" + "\n");
	}

	@Then("Scroll Arrow Down the page")
	public void scroll_arrow_down_the_page() throws Throwable 
	{
		Actions action = new Actions(driver);
		action.sendKeys(Keys.DOWN);
		action.sendKeys(Keys.DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.sendKeys(Keys.ARROW_DOWN);
		action.build().perform();
		Thread.sleep(5000);

	}
	
	@Then("Scroll Down the page")
	public void scroll_down_the_page() throws Throwable 
	{
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, 500);");
		Thread.sleep(5000);

	}
	
	@Then("Scroll Down the page by {int}")
	public void scroll_Down_the_page_by(Integer int1)
	{
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("scroll(0,"+int1+");");
	}

	@Then("Add UNSPSC Code button visibility in Basic Information {string}")
	public void add_unspsc_code_button_visibility_in_basic_information_something(String string) throws Throwable {
		String original = ec.getObjects("addunspsccode_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add UNSPSC Code button visible " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Add UNSPSC Code button visible " + " " + string + " " + " in Basic Information" + "\n");
	}

	@Then("Add UNSPSC Code button clickable in Basic Information {string}")
	public void add_unspsc_code_button_clickable_in_basic_information_something(String string) throws Throwable {
		String original = ec.getObjects("addunspsccode_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Add UNSPSC Code button clickable " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Add UNSPSC Code button clickable " + " " + string + " " + " in Basic Information" + "\n");
	}
	
	@Then("Back button visibility in Basic Information {string}")
	public void back_button_visibility_in_Basic_Information(String string) {
		String original = ec.getObjects("backBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Back button visibility " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Back button visibility " + " " + string + " " + " in Basic Information" + "\n");
	
	    
	}

	@Then("Click on Back button")
	public void click_on_Back_button() {
		String original = ec.getObjects("backBtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Back button clickable " + "  " + " in Basic Information" + "\n");
		System.out.println("Back button clickable " + "  " + " in Basic Information" + "\n");
	}

	@Then("Click on Add UNSPSC Code button")
	public void click_on_add_unspsc_code_button() throws Throwable {

		String original = ec.getObjects("addunspsccode_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked on Add UNSPSC Code button" + "\n");
		System.out.println("Clicked on Add UNSPSC Code button" + "\n");
	}

	@Then("Tooltip available on mouse hover for UNSPSC code {string}")
	public void tooltip_available_on_mouse_hover_for_unspsc_code_something(String string) throws Throwable {
		String original = ec.getObjects("unspsccode_tooltip");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("CH_ToolTip_description"))).getText().equalsIgnoreCase(string));

		logger.info(" " + string + " " + "is the tooltip for UNSPSC code" + "\n");
		System.out.println(" " + string + " " + "is the tooltip for UNSPSC code" + "\n");
	}

	@Then("Close UNSPSC Code modal")
	public void close_unspsc_code_modal() throws Throwable {

		String original = ec.getObjects("close_x_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked on Close button" + "\n");
		System.out.println("Clicked on Close button" + "\n");
	}

	@Then("Search by code field visibility in Add product codes modal {string}")
	public void search_by_code_field_visibility_in_add_product_codes_modal_something(String string) throws Throwable {
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Search by code field visible " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println("Search by code field visible " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Search by code field clickable in Add product codes modal {string}")
	public void search_by_code_field_clickable_in_add_product_codes_modal_something(String string) throws Throwable {
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Search by code field clickable " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println("Search by code field clickable " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Enter product code {string} in search by code field")
	public void enter_product_code_something_in_search_by_code_field(String string) throws Throwable

	{
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		driver.findElement(By.xpath(original)).sendKeys(string);

		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered product code" + " " + string + " " + "In Search by code field" + "\n");
		System.out.println("Entered product code" + " " + string + " " + "In Search by code field" + "\n");

	}

	@Then("Click on Add All option")
	public void click_on_add_all_option() throws Throwable {

		String original = ec.getObjects("select_all_option");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);
		String original1 = ec.getObjects("addall_option");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Clicked on Add All option" + "\n");
		System.out.println("Clicked on Add All option" + "\n");
	}

	@Then("Unselect any of added product code")
	public void unselect_any_of_added_product_code() throws Throwable {

		String original = ec.getObjects("unselect_productcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Unselected the added product code" + "\n");
		System.out.println("Unselected the added product code" + "\n");
	}

	@Then("Click on Confirm button")
	public void click_on_confirm_button() throws Throwable {

		String original = ec.getObjects("confirm_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked on Confirm button" + "\n");
		System.out.println("Clicked on Confirm button" + "\n");
	}

	// Click on the code
	@Then("Click on the {string} code")
	public void click_on_the_code(String string) throws Throwable {

		String original = ec.getObjects("click_code") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked  on the code" + "\n");
		System.out.println("Clicked  on the code" + "\n");
	}

	@Then("Click on Cancel button")
	public void click_on_cancel_button() throws Throwable {

		String original = ec.getObjects("cancel_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked on Cancel button" + "\n");
		System.out.println("Clicked on Cancel button" + "\n");
	}

	@Then("View added product codes in basic information page {string}")
	public void view_added_product_codes_in_basic_information_page_something(String string) throws Throwable {
		String original = ec.getObjects("added_product_codes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
	
		Thread.sleep(2000);
		
		//assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(string));
		//assertTrue(driver.findElement(By.xpath(ec.getObjects("added_product_codes"))).getText().equalsIgnoreCase(string));
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Added UNSPSC Codes visible " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Added UNSPSC Codes visible " + " " + string + " " + " in Basic Information" + "\n");
	}

	@Then("Search by keyword field visibility in Add product codes modal {string}")
	public void search_by_keyword_field_visibility_in_add_product_codes_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Search by keyword field visible " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println(
				"Search by keyword field visible " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Search by keyword field clickable in Add product codes modal {string}")
	public void search_by_keyword_field_clickable_in_add_product_codes_modal_something(String string) throws Throwable {
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Search by keyword field clickable " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println(
				"Search by keyword field clickable " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Enter {string} in search by keyword field")
	public void enter_something_in_search_by_keyword_field(String string) throws Throwable

	{
		String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);
		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered product keyword" + " " + string + " " + "In Search by keyword field" + "\n");
		System.out.println("Entered product keyword" + " " + string + " " + "In Search by keyword field" + "\n");

	}

	@Then("Search {string} in the selected codes")
	public void search_in_the_selected_codes(String string) throws Throwable

	{
		String original = ec.getObjects("searchin_selectedcode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		System.out.println("UNSPSC Code:---"+string);
		logger.info("UNSPSC Code:--"+string);

		driver.findElement(By.xpath(original)).sendKeys(string);
		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered product keyword" + " " + string + " " + "In Search by keyword field" + "\n");
		System.out.println("Entered product keyword" + " " + string + " " + "In Search by keyword field" + "\n");

	}

	@Then("Click on Clear button")
	public void click_on_clear_button() throws Throwable {

		String original = ec.getObjects("clear_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(6000);

		logger.info("Clicked on Clear button" + "\n");
		System.out.println("Clicked on Clear button" + "\n");
	}

	@Then("Search button visibility in Add UNSPSC code modal {string}")
	public void search_button_visibility_in_add_unspsc_code_modal_something(String string) throws Throwable {
		String original = ec.getObjects("search_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Search button visible " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println("Search button visible " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Search button clickable in Add UNSPSC code modal {string}")
	public void search_button_clickable_in_add_unspsc_code_modal_something(String string) throws Throwable {
		String original = ec.getObjects("search_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Search button clickable " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println("Search button clickable " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Click on Search button")
	public void click_on_search_button() throws Throwable {

		String original = ec.getObjects("search_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Search button" + "\n");
		System.out.println("Clicked on Search button" + "\n");
	}

	@Then("Search Results dropdown visibility in Add UNSPSC code modal {string}")
	public void search_results_dropdown_visibility_in_add_unspsc_code_modal_something(String string) throws Throwable {
		String original = ec.getObjects("searchresults_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Search Results dropdown visible " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println(
				"Search Results dropdown visible " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Search Results dropdown clickable in Add UNSPSC code modal {string}")
	public void search_results_dropdown_clickable_in_add_unspsc_code_modal_something(String string) throws Throwable {
		String original = ec.getObjects("searchresults_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Search Results dropdown clickable " + " " + string + " " + " in Add product codes modal" + "\n");
		System.out.println("Search Results dropdown clickable " + " " + string + " " + " in Add product codes modal" + "\n");
	}

	@Then("Click on search results button")
	public void click_on_search_results_button() throws Throwable {

		String original = ec.getObjects("searchresults_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Search Results button" + "\n");
		System.out.println("Clicked on Search Results button" + "\n");
	}

	@Then("Select {string} from search results")
	public void select_something_from_search_results(String string) throws Throwable {

		String original = ec.getObjects("dropdown_value") + string + ec.getObjects("dropdown_value2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Selected" + " " + string + " from the Search Results dropdown in Add UNSPSC code modal" + "\n");
		System.out.println("Selected " + " " + string + " from the Search Results dropdown in Add UNSPSC code modal" + "\n");

	}

	@Then("^Click Select All option$")
    public void click_select_all_option() throws Throwable {
		String original = ec.getObjects("select_all_bottom");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Select all button in the bottom");
		System.out.println("Clicked on Select all button in the bottom");

	}
	@Then("^Click on Delete button$")
    public void click_on_delete_button() throws Throwable 
	{
        String original = ec.getObjects("Delete_bottom");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Delete button in the bottom");
		System.out.println("Clicked on Delete button in the bottom");
	}
	
	@Then("User can able to see UNSPSC Code option Segment {string}")
	public void user_can_able_to_see_UNSPSC_Code_option_Segment(String string) 
	{
		String original = ec.getObjects("filer_segment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");
		System.out.println("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");   
	}

	@When("User select a Segment {string} from filter dropdown")
	public void user_select_a_Segment_from_filter_dropdown(String string) 
	{
		String original = ec.getObjects("segment_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		String original1 = ec.getObjects("segment_liveplant");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("UNSPSC option Segment " + " " + string + " " + " got selected on Filter" + "\n");
		System.out.println("UNSPSC option Segment " + " " + string + " " + " got selected on Filter" + "\n");  
	}

	@When("User select a Family {string} from filter dropdown")
	public void user_select_a_Family_from_filter_dropdown(String string) 
	{
		String original = ec.getObjects("family_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		String original1 = ec.getObjects("family_liveanimals");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("UNSPSC option Family " + " " + string + " " + " got selected on Filter" + "\n");
		System.out.println("UNSPSC option Family " + " " + string + " " + " got selected on Filter" + "\n"); 
	}

	@When("User select a Class {string} from filter dropdown")
	public void user_select_a_Class_from_filter_dropdown(String string) 
	{
		String original = ec.getObjects("class_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		String original1 = ec.getObjects("class_livestock");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("UNSPSC option Class " + " " + string + " " + " got selected on Filter" + "\n");
		System.out.println("UNSPSC option Class " + " " + string + " " + " got selected on Filter" + "\n"); 
	}

	@When("User select a Commodity {string} from filter dropdown")
	public void user_select_a_Commodity_from_filter_dropdown(String string) 
	{
		String original = ec.getObjects("commodity_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		String original1 = ec.getObjects("commodity_dogs");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("UNSPSC option Commodity " + " " + string + " " + " got selected on Filter" + "\n");
		System.out.println("UNSPSC option Commodity " + " " + string + " " + " got selected on Filter" + "\n"); 
	}

	@When("User click on Search button")
	public void user_click_on_Search_button() 
	{
		String original = ec.getObjects("search_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Search UNSPSC option as Segment on Filter" + "\n");
		System.out.println("Search UNSPSC option as Segment on Filter" + "\n");  

	}

	@When("User enter Supplier Name in search input field")
	public void user_enter_Supplier_Name_in_search_input_field() 
	{
		String original = ec.getObjects("search_connected_suppliers");
		String formatXPATH = String.format(original);

		driver.switchTo().activeElement();

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("myqasupplier");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Search UNSPSC option as Segment on Filter" + "\n");
		System.out.println("Search UNSPSC option as Segment on Filter" + "\n"); 
	}

	@When("User enter Supplier Name in search input field on Discover page")
	public void user_enter_Supplier_Name_in_search_input_field_on_Discover_page() 
	{
		String original = ec.getObjects("search_connected_suppliers");
		String formatXPATH = String.format(original);

		driver.switchTo().activeElement();

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("premiumquality");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Search UNSPSC option as Segment on Filter" + "\n");
		System.out.println("Search UNSPSC option as Segment on Filter" + "\n");
	}

	@Then("User can see Supplier in Search results {string}")
	public void user_can_see_Supplier_in_Search_results(String string) 
	{
		String original = ec.getObjects("myqasupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed(), string);
		logger.info("User can see Supplier on Search results " + " " + string + " " + "\n");
		System.out.println("User can see Supplier on Search results" + " " + string + " " + "\n"); 
	}

	@When("User click on Clear All link on Connected Suppliers page")
	public void user_click_on_Clear_All_link_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("clear_link");
		String formatXPATH = String.format(original);

		driver.switchTo().activeElement();

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("User click on Clear All link on Connected Suppliers page" + "\n");
		System.out.println("User click on Clear All link on Connected Suppliers page" + "\n"); 
	}

	@Then("User can able to see UNSPSC Code option Family {string}")
	public void user_can_able_to_see_UNSPSC_Code_option_Family(String string) 
	{
		String original = ec.getObjects("filer_family");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");
		System.out.println("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");   
	}

	@Then("User can able to see UNSPSC Code option Class {string}")
	public void user_can_able_to_see_UNSPSC_Code_option_Class(String string) 
	{
		String original = ec.getObjects("filer_class");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");
		System.out.println("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");   
	}

	@Then("User can able to see UNSPSC Code option Commodity {string}")
	public void user_can_able_to_see_UNSPSC_Code_option_Commodity(String string) 
	{
		String original = ec.getObjects("filer_commodity");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");
		System.out.println("UNSPSC option visible " + " " + string + " " + " on Filter" + "\n");   
	}



	@Then("^Show UNSPSC in filter column \"([^\"]*)\"$")
    public void show_unspsc_in_filter_column_something(String string) throws Throwable {
        String original = ec.getObjects("unspsc_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC filter visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("UNSPSC filter visible " + " " + string + " " + " on Dashboard" + "\n");
    }	

	@Then("^Verify UNSPSC dropdown in filter is clickable \"([^\"]*)\"$")
    public void verify_unspsc_dropdown_in_filter_is_clickable_something(String string) throws Throwable {
        String original = ec.getObjects("unspsc_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("UNSPSC filter Clickable " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("UNSPSC filter Clickable " + " " + string + " " + " on Dashboard" + "\n");
    }

	@Then("^Click UNSPSC filter on Connected supplier Page$")
    public void click_unspsc_filter_on_connected_supplier_page() throws Throwable {
        String original = ec.getObjects("unspsc_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on UNSPSC filter" + "\n");
		System.out.println("Clicked on UNSPSC filter" + "\n");
    }

	@Then("^Enter input for UNSPSC filter dropdown$")
    public void enter_input_for_unspsc_filter_dropdown() throws Throwable {
        String original = ec.getObjects("searchby_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		driver.findElement(By.xpath(original)).sendKeys("Cats");

		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered Input In Search by code field" + "\n");
		System.out.println("Entered Input In Search by code field" + "\n");
    }

	@Then("^Verify the Search results in dropdown \"([^\"]*)\"$")
    public void verify_the_search_results_in_dropdown_something(String string) throws Throwable {
        String original = ec.getObjects("input_results");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(" UNSPSC Search results " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("UNSPSC Search results " + " " + string + " " + " in Basic Information" + "\n");
    }

	@Then("^Click on Search result dropdown$")
    public void click_on_search_result_dropdown() throws Throwable {
		String original = ec.getObjects("search_list");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on result dropdown" + "\n");
		System.out.println("Clicked on result dropdown" + "\n");
    }

	@Then("^Click unspsc apply button under dropdown$")
    public void click_unspsc_apply_button_under_dropdown() throws Throwable {
        String original = ec.getObjects("unspsc_applybutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on result dropdown" + "\n");
		System.out.println("Clicked on result dropdown" + "\n");
    }

	@Then("Click unspsc apply button under dropdown in discover page")
    public void click_unspsc_apply_button_under_dropdown_in_discover_page() throws Throwable {
        String original = ec.getObjects("discover_unspsc_applybutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on result dropdown" + "\n");
		System.out.println("Clicked on result dropdown" + "\n");
    }

	@Then("^Show the List of new and existing suppliers displayed \"([^\"]*)\"$")
    public void show_the_list_of_new_and_existing_suppliers_displayed_something(String string) throws Throwable {
        String original = ec.getObjects("search_results");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
    }

	@Then("^Show \"([^\"]*)\" under unspsc dropdown$")
    public void show_something_under_unspsc_dropdown(String string) throws Throwable {
        String original = ec.getObjects("invalid_key");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
    }

	@Then("^Click \"([^\"]*)\" button UNSPSC filter dropdown$")
    public void click_something_button_unspsc_filter_dropdown(String string) throws Throwable {
        String original = ec.getObjects("unspsc_cancel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Cancel Button" + "\n");
		System.out.println("Clicked on Cancel Button" + "\n");
    }

	@Then("Show UNSPSC in discover filter column {string}")
    public void show_unspsc_in_discover_filter_column_something(String string) throws Throwable {
		String original = ec.getObjects("discover_UNSPSC_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("UNSPSC filter visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("UNSPSC filter visible " + " " + string + " " + " on Dashboard" + "\n");

    }

	@Then("Verify UNSPSC dropdown in discover filter is clickable {string}")
    public void verify_unspsc_dropdown_in_discover_filter_is_clickable_something(String string) throws Throwable {
        String original = ec.getObjects("discover_UNSPSC_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("UNSPSC filter Clickable " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("UNSPSC filter Clickable " + " " + string + " " + " on Dashboard" + "\n");
    }
	@Then("^Click UNSPSC filter on Discover Page$")
    public void click_unspsc_filter_on_discover_page() throws Throwable {
        String original = ec.getObjects("discover_UNSPSC_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on UNSPSC filter" + "\n");
		System.out.println("Clicked on UNSPSC filter" + "\n");
    }

	@Then("Click \"([^\"]*)\" button UNSPSC filter dropdown in discover page")
    public void click_something_button_unspsc_filter_dropdown_in_discover_page(String strArg1) throws Throwable {
        String original = ec.getObjects("discover_unspsc_cancel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Cancel Button" + "\n");
		System.out.println("Clicked on Cancel Button" + "\n");

    }

	@Then("^Show the List of new and existing suppliers displayed in discover page \"([^\"]*)\"$")
    public void show_the_list_of_new_and_existing_suppliers_displayed_in_discover_page_something(String string) throws Throwable {
        String original = ec.getObjects("discover_search_results");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on Dashboard" + "\n");
    }

	@When("User click on Reset Filters button")
	public void user_click_on_Reset_Filters_button() 
	{
		String original = ec.getObjects("reset_filters");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("User clicked on Reset Filters button" + "\n");
		System.out.println("User clicked on Reset Filters button" + "\n");
	}

	@Then("User able to see Reset Filters button {string}")
	public void user_able_to_see_Reset_Filters_button(String string) 
	{
		String original = ec.getObjects("reset_filters");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Reset Filters button is visible " + " " + string + " " + " in Filter By on Connected Suppliers" + "\n");
		System.out.println("Reset Filters button is visible " + " " + string + " " + " in Filter By on Connected Suppliers" + "\n");
	}

	@Then("Reset Filter button is clickable {string}")
	public void reset_Filter_button_is_clickable(String string) 
	{
		String original = ec.getObjects("reset_filters");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Reset Filters button is clickable " + " " + string + " " + " in Filter By on Connected Suppliers" + "\n");
		System.out.println("Reset Filters button is clickable " + " " + string + " " + " in Filter By on Connected Suppliers" + "\n");
	}

	@When("User click on Discoverable Suppliers tab")
	public void user_click_on_Discoverable_Suppliers_tab() 
	{
		String original = ec.getObjects("discover_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("User clicked on Discoverable Suppliers tab" + "\n");
		System.out.println("User clicked on Discoverable Suppliers tab" + "\n");
	}

	@Then("User can see a title on Discoverable Suppliers page {string}")
	public void user_can_see_a_title_on_Discoverable_Suppliers_page(String string) 
	{
		String original = ec.getObjects("discover_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Discoverabale Suppliers title:-- " + " " + string + " " + "\n");
		System.out.println("Discoverable Suppliers title:--- " + " " + string + " " + "\n");
	}

	@When("User click on UNSPSC in filter on Discover page")
	public void user_click_on_UNSPSC_in_filter_on_Discover_page() 
	{
		String original = ec.getObjects("unspsc_filter_discover");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("User clicked on UNSPSC filter" + "\n");
		System.out.println("User clicked on UNSPSC filter" + "\n");
	}

	@Then("User can see Supplier in Search results on Discover page {string}")
	public void user_can_see_Supplier_in_Search_results_on_Discover_page(String string) 
	{
		String original = ec.getObjects("moody");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed(), string);
		logger.info("User can see Supplier on Search results on Discover page " + " " + string + " " + "\n");
		System.out.println("User can see Supplier on Search results on Discover page" + " " + string + " " + "\n"); 
	}
}

