package stepdefinition;

import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;
import static org.testng.Assert.assertTrue;
import java.util.Iterator;
import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import io.cucumber.java.en.Then;
public class help extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(help.class);
	
	@Then("Click on Help Tab")
    public void click_on_help_tab() throws Throwable 
	{	
		Thread.sleep(5000);
		String original = ec.getObjects("help_module");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Help Tab"+"\n");
		System.out.println("Clicked on Help Tab"+"\n");
		Thread.sleep(8000);
	}	
	
	@Then("Visibility of Title on Help Page {string}")
	public void visibility_of_title_on_help_page_something(String string) throws Throwable
	{
		String original = ec.getObjects("help_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Contact Us Get Help Title Visibility {string}")
	public void contact_us_get_help_title_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("contactus_gethelp_button_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Click on Contact Us Get Help button")
	public void click_on_contact_us_get_help_button() throws Throwable 
	{	
		String original = ec.getObjects("contactus_gethelp_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Contact Us Get Help button"+"\n");
		System.out.println("Clicked on Contact Us Get Help button"+"\n");
	}	
	
	@Then("Privacy Policy button Visibility {string}")
	public void privacy_policy_button_visibility_something(String string) throws Throwable
	{		
		Thread.sleep(5000);
		String original = ec.getObjects("privacypolicy_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Click on Privacy Policy button")
	public void click_on_privacy_policy_button() throws Throwable 
	{	
		String original = ec.getObjects("privacypolicy_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();	
		//driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("Clicked on Privacy Policy button"+"\n");
		System.out.println("Clicked on Privacy Policy button"+"\n");	
		Thread.sleep(5000);
	}
		
	@Then("Terms of Use button Visibility {string}")
	public void terms_of_use_button_visibility_something(String string) throws Throwable
	{		
		String original = ec.getObjects("termsofuse_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Click on Terms of Use button")
	public void click_on_terms_of_use_button() throws Throwable 
	{	
		String original = ec.getObjects("termsofuse_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Terms of Use button"+"\n");
		System.out.println("Clicked on Terms of Use button"+"\n");	
		Thread.sleep(12000);
	}	
	
	@Then("Third Party Licenses Visibility {string}")
	public void third_party_licenses_visibility_something(String string) throws Throwable
	{		
		Thread.sleep(3000);
		String original = ec.getObjects("third_party_licences_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Click on Third Party Licenses button")
	public void click_on_third_party_licenses_button() throws Throwable 
	{	
		String original = ec.getObjects("third_party_licences_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.switchTo().parentFrame();
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Third Party Licenses button"+"\n");
		System.out.println("Clicked on Third Party Licenses button"+"\n");	
		Thread.sleep(12000);
	}	
	
	@Then("Click on Toggle button")
	public void click_on_toggle_button() throws Throwable 
	{	
		Thread.sleep(3000);
		String original = ec.getObjects("toggle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.switchTo().parentFrame();
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Toggle button"+"\n");
		System.out.println("Clicked on Toggle button"+"\n");			
	}
	
	@Then("Validate Third Party Licenses page Title {string}")
	public void validate_third_party_licenses_page_title_something(String string) throws Throwable 
	{
		Thread.sleep(4000);
		String url = driver.getCurrentUrl();
		System.out.println(url);
		
		boolean pageSource = driver.getPageSource().contains("Third Party Licenses");
	
		assertTrue(pageSource, string);
		System.out.println(string + "-Title is Available on the page");	
	}	
	
	@Then("Validate Privacy policy page Title {string}")
	public void validate_privacy_policy_title_something(String string) throws Throwable 
	{
		Thread.sleep(4000);		
		String url = driver.getCurrentUrl();
		System.out.println(url);
		
		boolean pageSource = driver.getPageSource().contains("PRIVACY POLICY");
	
		assertTrue(pageSource, string);
		System.out.println(string + "-Title is Available on the page");		
	}
	
	@Then("Validate Terms of Use page Title for Buyer {string}")
	public void validate_terms_of_use_page_title_for_buyer(String string) throws Throwable 
	{
		Thread.sleep(4000);		
		String url = driver.getCurrentUrl();
		System.out.println(url);
		
		String ngTitle = driver.findElement(By.xpath(ec.getObjects("termsofuse_title"))).getText();
	
		//boolean pageSource = driver.getPageSource().contains("NETWORK AGREEMENT");	
		
		Assert.assertEquals(ngTitle, string);
	
		//assertTrue(ngTitle, string);
		
		System.out.println(string + "-Title is Available on the page");			
	}
	
	@Then("Validate Terms of Use page Title for Supplier {string}")
	public void validate_terms_of_use_page_title_for_supplier(String string) throws Throwable 
	{
		Thread.sleep(4000);		
		String url = driver.getCurrentUrl();
		System.out.println(url);
	
		boolean pageSource = driver.getPageSource().contains("SUPPLIER TERMS OF USE");
	
		assertTrue(pageSource, string);
		System.out.println(string + "-Title is Available on the page");			
	}		
	
	@Then("Validate Buyer T&C Lookup page Title {string}")
	public void validate_buyer_tc_lookup_page_title_something(String string) throws Throwable
	{		
		String original = ec.getObjects("buyer_termsofuseforsupplier_title");		
	    String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
				
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}	
	
	@Then("Check the visibility of FAQ Title on Help Page {string}")
	public void check_the_visibility_of_faq_title_on_help_page_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on Help Page"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on Help Page"+"\n");
	}		
	
	@Then("Check the visibility of Sub Section Blockchain in FAQ section {string}")
	public void check_the_visibility_of_sub_section_blockchain_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_blockchain_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section General in FAQ section {string}")
	public void check_the_visibility_of_sub_section_general_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_general_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}
	
	@Then("Check the visibility of Sub Section Languages in FAQ section {string}")
	public void check_the_visibility_of_sub_section_languages_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_languages_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section Questionnaires in FAQ section {string}")
	public void check_the_visibility_of_sub_section_questionnaires_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_questionnaires_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section Support in FAQ section {string}")
	public void check_the_visibility_of_sub_section_support_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_support_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section User Guides in FAQ section {string}")
	public void check_the_visibility_of_sub_section_user_guides_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_userguides_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section Userid and Passwords in FAQ section {string}")
	public void check_the_visibility_of_sub_section_userid_and_passwords_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_userid_and_passwords_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String label = driver.findElement(By.xpath(original)).getText();
		System.out.println("Title text: - "+label);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().equals(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section Discover Suppliers in FAQ section {string}")
	public void check_the_visibility_of_sub_section_discover_suppliers_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_discover_suppliers_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	
	@Then("Check the visibility of Sub Section Pricing in FAQ section {string}")
	public void check_the_visibility_of_sub_section_pricing_in_faq_section(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_pricing_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}
	
	@Then("Check the visibility of Sub Section Notifications in FAQ section {string}")
	public void check_the_visibility_of_sub_section_notifications_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_notifications_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Sub Section Email Settings in FAQ section {string}")
	public void check_the_visibility_of_sub_section_email_settings_in_faq_section(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_email_settings_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}
	
	@Then("Check the visibility of Sub Section Supplier Invitation in FAQ section {string}")
	public void check_the_visibility_of_sub_section_supplier_invitation_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_supplier_invitation_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}	
	
	@Then("Check the visibility of Seach FAQ text Box")
	public void check_the_visibility_of_search_faq_text_box() throws Throwable
	{		
		String original = ec.getObjects("faq_search_input_field");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isEnabled();
		logger.info("Seach FAQ text Box is Available"+"\n");
		System.out.println("Seach FAQ text Box is Available"+"\n");
	}	
	
	@Then("Check the Visibility of Not finding the help you need title {string}")
	public void check_the_visibility_of_not_finding_the_help_you_need_title_something(String string) throws Throwable
	{		
		String original = ec.getObjects("contact_support_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "above Contact Support button"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "above Contact Support button"+"\n");
	}	
	
	@Then("Check the Contact Support button Visiblity {string}")
	public void check_the_contact_support_button_visibility_something(String string) throws Throwable
	{		
		String original = ec.getObjects("contact_support_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "of button"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "of button"+"\n");
	}	
	
	@Then("Check the Visibility of Buyer T and C Lookup button {string}")
	public void check_the_visibility_of_buyer_t_and_c_lookup_button_something(String string) throws Throwable
	{
		String original = ec.getObjects("buyer_tandc_lookup_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "of button"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "of button"+"\n");
	}	
	
	@Then("Check if Buyer T and C Lookup button is clickable and Validate title on new TAB Buyer T and C {string}")
	public void check_if_buyer_t_and_c_lookup_button_is_clickable_and_validate_title_on_new_tab_buyer_t_and_c_something(String string) throws Throwable 
	{	
		Thread.sleep(3000);
		String original = ec.getObjects("buyer_tandc_lookup_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Buyer T&C Lookup button"+"\n");
		System.out.println("Clicked on Buyer T&C Lookup button"+"\n");
		Thread.sleep(3000);
	
		// ArrayList<String> tabs = new ArrayList<String> (driver.getWindowHandles());
		// driver.switchTo().window(tabs.get(1));
		Thread.sleep(3000);
		String original1 = ec.getObjects("buyer_termsofuseforsupplier_title");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		assertTrue(driver.findElement(By.xpath(original1)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on new tab"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on new tab"+"\n");
		// driver.close();
		// driver.switchTo().window(tabs.get(0));		
		System.out.println("Showing back to Parent tab"+"\n");
	}
	
	@Then("Check if Contact Support button is clickable")
	public void check_if_contact_support_button_is_clickable() throws Throwable 
	{	
		String original = ec.getObjects("contact_support_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Contact Support button"+"\n");
		System.out.println("Clicked on Contact Support button"+"\n");
	}		
	
	@Then("Check if Buyer T and C Lookup button is clickable")
	public void check_if_buyer_t_and_c_lookup_button_is_clickable() throws Throwable 
	{			
		String original = ec.getObjects("buyer_tandc_lookup_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Buyer T&C Lookup button"+"\n");
		System.out.println("Clicked on Buyer T&C Lookup button"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Check the Title on Buyer T and C look up pop up {string}")
	public void check_the_title_on_buyer_t_and_c_look_up_pop_up_something(String string) throws Throwable 
	{
		String original = ec.getObjects("buyertandctitle_on_popup");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title  "+ " "+ string +" "+" showing on modal"+"\n"); 
    	System.out.println("Title  "+ " "+ string +" "+" showing on modal"+"\n");
	}	
	
	@Then("Check Close icon Availability {string}")
	public void check_close_icon_availability_something(String string) throws Throwable 
	{
		String original = ec.getObjects("buyertandc_closeicon");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Icon  "+ " "+ string +" "+" showing on modal"+"\n"); 
    	System.out.println("Icon  "+ " "+ string +" "+" showing on modal"+"\n");
	}	
	
	@Then("Check Cancel button Availability {string}")
	public void check_cancel_button_availability_something(String string) throws Throwable 
	{
		String original = ec.getObjects("buyertandc_cancelbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Button  "+ " "+ string +" "+" showing on modal"+"\n"); 
    	System.out.println("Button  "+ " "+ string +" "+" showing on modal"+"\n");
	}	
	
	@Then("Check View button Availability {string}")
	public void check_view_button_availability_something(String string) throws Throwable 
	{
		String original = ec.getObjects("buyertandc_popup_viewbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Button  "+ " "+ string +" "+" showing on modal"+"\n"); 
    	System.out.println("Button  "+ " "+ string +" "+" showing on modal"+"\n");
	}
	
	@Then("Click on Cancel button on Buyer TandC lookup popup")
	public void click_on_cancel_button_on_buyer_tandc_lookup_popup() throws Throwable
	{
		String original = ec.getObjects("buyertandc_cancelbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Close Icon on on Buyer T and C lookup popup"+"\n");
        System.out.println("Clicked on Close Icon on Buyer T and C lookup popup"+"\n");        
	}
	
	@Then("Check Available Buyers in the popup and print the List of Buyers")
	public void check_available_buyers_in_the_popup_and_print_the_List_of_Buyers() throws Throwable
	{
		Select buyers  = new Select(driver.findElement(By.name("buyer")));
		List<WebElement> list = buyers.getOptions();
		Iterator<WebElement> iter = list.iterator();
		while(iter.hasNext())
		{
		    if(iter.next().getText().equals("Select Buyer"))
		    {
		        iter.remove();
		        break;
		    }
		}
		System.out.println("Buyer's List available in the dropdown are :");
		for(WebElement buy: list)
		System.out.println(buy.getText());
	}
	
	@Then("Check Select Buyers Dropdown Title Buyers TandC Popup {string}")
	public void check_select_buyers_dropdown_title_buyers_tandc_popup_something(String string) throws Throwable
	{		
		String original = ec.getObjects("buyer_dropdowntitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "of button"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "of button"+"\n");
	}
	
	@Then("Select First buyer from the Dropdown on Buyers T and C Popup and click on View")
	public void select_first_buyer_from_the_dropdown_on_buyers_tandc_popup_and_click_on_view() throws Throwable
	{
		String mainwindow = driver.getWindowHandle();
        for (String popup : driver.getWindowHandles())
        {
            driver.switchTo().window(popup);
        }
        Select buyers  = new Select(driver.findElement(By.name("buyer")));
        buyers.selectByIndex(1);
        Thread.sleep(3000);
        
        driver.findElement(By.xpath("//button[@class=\"btn btn-sm btn-primary\"]")).click();
        
        logger.info("Clicked on View button on Buyer T and C lookup popup"+"\n");
        System.out.println("Clicked on View button on Buyer T and C lookup popup"+"\n");
        Thread.sleep(3000);
        
        driver.switchTo().window(mainwindow);
	}
	
	@Then("Validate Buyer Title on T and C page {string}")
	public void validate_buyer_title_on_t_and_c_page_something(String string) throws Throwable 
	{
		String original = ec.getObjects("buyer_termsofuseforsupplier_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on new tab"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on new tab"+"\n");
	}
	
	@Then("Check the visibility of Sub Section Documents in FAQ section {string}")
	public void check_the_visibility_of_sub_section_documents_in_faq_section_something(String string) throws Throwable
	{		
		String original = ec.getObjects("faq_documents_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n"); 
    	System.out.println("Showing Sub Section title" +" "+ string +" "+ "under FAQ's Section on Help Page"+"\n");
	}
}	