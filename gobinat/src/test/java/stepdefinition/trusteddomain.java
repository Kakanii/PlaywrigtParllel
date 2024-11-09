package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class trusteddomain extends DriverEngine
{	
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ManageUsers.class);
	
	@Then("Click on Trusted Domains tab")
	public void click_on_Manage_Users_Tab() throws Throwable
	{
		String original = ec.getObjects("trusteddomain_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Trusted Domains tab in Manage Users page"+"\n");
		System.out.println("Clicked on Trusted Domains tab in Manage Users page"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Check the Title of the Trusted Domains tab {string}")
	public void check_the_title_of_the_trusted_domains_tab(String string) throws Throwable
	{
		String original = ec.getObjects("trusteddomain_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing Title of tab" +" "+ string + " "+ "in Manage Users page"+"\n"); 
    	System.out.println("Showing Title of tab" +" "+ string + " "+ "in Manage Users page"+"\n");
	}
	
	@Then("Check the Title of the Add Trusted Domains button {string}")
	public void check_the_title_of_the_add_trusted_domains_button(String string) throws Throwable
	{
		String original = ec.getObjects("adddomain_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing button" +" "+ string + " "+ "in Trusted Domains Tab"+"\n"); 
    	System.out.println("Showing button" +" "+ string + " "+ "in Trusted Domains Tab"+"\n");
	}
	
	@Then("Click on Add a Trusted Email Domain button")
	public void click_on_add_a_trusted_email_domain_button() throws Throwable
	{			
		String original = ec.getObjects("adddomain_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Add a Trusted Email Domain button"+"\n");
		System.out.println("Clicked on Add a Trusted Email Domain button"+"\n");		
	}
	
	@Then("Click on Close button in Add a Trusted Email Domain button pop up")
	public void click_on_add_a_trusted_email_domain_button_in_add_a_trusted_email_domain_button_pop_up() throws Throwable
	{
		String original = ec.getObjects("close_td_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Close button"+"\n");
		System.out.println("Clicked on Close button"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Check Title of Trusted Email Domain Name input text field {string}")
	public void check_title_of_trusted_email_domain_name_input_text_field_something(String string) throws Throwable
	{
		String original = ec.getObjects("trusted_domainboxtitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing field title" +" "+ string + " "+ "in Add Trusted Domains pop-up"+"\n"); 
    	System.out.println("Showing field title" +" "+ string + " "+ "in Add Trusted Domains pop-up"+"\n");
	}
	
	@Then("Check Text input field availability")
	public void check_text_input_field_availability() throws Throwable
	{
		String original = ec.getObjects("trusteddomain_textbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Showing text input field for Trusted Email Domain Name"+"\n"); 
    	System.out.println("Showing text input field for Trusted Email Domain Name"+"\n");
	}
	
	@Then("Enter input in Add Trusted Email Domain field {string}")
	public void enter_input_in_add_trusted_email_domain_field_something(String string) throws Throwable
    {
		String original = ec.getObjects("trusteddomain_textbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();	
				
		driver.findElement(By.xpath(original)).sendKeys(string);
    	logger.info("Entered input " +" "+ string +" "+"\n"); 
    	System.out.println("Entered input "+" "+ string +" "+"\n");
    	Thread.sleep(3000);  	    	
    }
	
	@Then("Enter input in Update Trusted Email Domain field {string}")
	public void enter_input_in_update_trusted_email_domain_field_something(String string) throws Throwable
    {
		String original = ec.getObjects("updateinput_textbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);

		if(driver.findElement(By.xpath(original)).getAttribute("value") != string);
 		{
 			WebElement toClear = driver.findElement(By.xpath(original));

 			toClear.sendKeys(Keys.CONTROL + "a");

 			toClear.sendKeys(Keys.DELETE);

			driver.findElement(By.xpath(original)).sendKeys(string);

 		}
		
		 logger.info("Entered input " +" "+ string +" "+"\n"); 
    	System.out.println("Entered input "+" "+ string +" "+"\n");
    	Thread.sleep(3000);  	    	
    }	
	
	@Then("Click on Save Trusted Email Domain button")
	public void click_on_save_trusted_email_domain_button() throws Throwable
	{
		String original = ec.getObjects("save_td_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Save button"+"\n");
		System.out.println("Clicked on Save button"+"\n");		
	}
	
	@Then("Capture invalid input Validation error {string}")
	public void capture_invalid_input_validation_error_something(String string) throws Throwable
	{
		String original = ec.getObjects("invalidemaildomain_validation");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing validation " +" "+ string + " "+ "on pop-up"+"\n"); 
    	System.out.println("Showing validation " +" "+ string + " "+ "on pop-up"+"\n");
    	Thread.sleep(3000);
	}
	
	@Then("Check Saved Successfully Toast Notificaiton {string}")
	public void check_saved_successfully_toast_notificaiton_something(String string) throws Throwable
	{
		String original = ec.getObjects("savedsuccess_toast");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing toast notification " +" "+ string + " "+"\n"); 
    	System.out.println("Showing toast notification " +" "+ string + " "+"\n");
	}
	
	@Then("Validate added Trusted Domain on the page {string}")
	public void validate_added_trusted_domain_on_the_page_something(String string) throws Throwable
	{
		String original = ec.getObjects("newtruseddomain");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Domain " +" "+ string + " "+ "availabe on the page"+"\n"); 
    	System.out.println("Domain " +" "+ string + " "+ "available on the page"+"\n");
	}
	
	@Then("Validate Actions button Dropdown corresponding to newly added Trusted domain")
	public void validate_actions_button_dropdown_corresponding_to_newly_added_trusted_domain() throws Throwable
	{
		String original = ec.getObjects("actions_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Showing Actions button on the page"+"\n"); 
    	System.out.println("Showing Actions button on the page"+"\n");
	}
	
	@Then("Choose Update option from the actions dropdown")
	public void choose_update_option_from_the_actions_dropdown() throws Throwable
	{		
		String original = ec.getObjects("actions_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);				
		
		driver.findElement(By.xpath(original)).click();	
		logger.info("Clicked on Actions button on the page and actions dropdown is populated"+"\n"); 
    	System.out.println("Clicked on Actions button on the page and actions dropdown is populated"+"\n");
    	Thread.sleep(2000);
		String original1 = ec.getObjects("updatedrop_downoption");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
				
		driver.findElement(By.xpath(original1)).click();		
		logger.info("Click on Update option from the actions dropdown"+"\n");
		System.out.println("Clicked on Update option from the actions dropdown"+"\n");		
	}
	
	@Then("Check Add Trusted Domain Title on the pop up {string}")
	public void check_add_trusted_domain_title_on_the_pop_up_something(String string) throws Throwable
	{
		String original = ec.getObjects("adddomainpop_uptitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing Title" +" "+ string + " "+ "on the pop-up"+"\n"); 
    	System.out.println("Showing Title" +" "+ string + " "+ "on the pop-up"+"\n");
	}
	
	@Then("Check Update Trusted Domain Title on the pop up {string}")
	public void check_update_trusted_domain_title_on_the_pop_up_something(String string) throws Throwable
	{
		String original = ec.getObjects("updatedomain_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing Title" +" "+ string + " "+ "in Trusted Domains Tab"+"\n"); 
    	System.out.println("Showing Title" +" "+ string + " "+ "in Trusted Domains Tab"+"\n");    	
    }
	
	@Then("Check button on the pop up {string}")
	public void check_button_on_the_pop_up_something(String string) throws Throwable
	{
		String original = ec.getObjects("update_buttons") + string + "']";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing button" +" "+ string + " "+ "in the pop-up"+"\n"); 
    	System.out.println("Showing button" +" "+ string + " "+ "in the pop-up"+"\n");
	}
	
	@Then("Click on Update button in the Update Trusted Email Domain popup")
	public void click_on_update_button_in_the_update_trusted_email_domain_popup() throws Throwable
	{
		String original = ec.getObjects("update_update_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
    	logger.info("Clicked on Update Button"+"\n"); 
    	System.out.println("Clicked on Update Button"+"\n");
	}
	
	@Then("Choose Remove option from the actions dropdown")
	public void choose_remove_option_from_the_actions_dropdown() throws Throwable
	{		
		String original = ec.getObjects("actions_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);				
		
		driver.findElement(By.xpath(original)).click();	
		logger.info("Clicked on Actions button on the page"+"\n"); 
    	System.out.println("Clicked on Actions button on the page"+"\n");
    	Thread.sleep(2000);
    	
		String original1 = ec.getObjects("removedrop_downoption");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
				
		driver.findElement(By.xpath(original1)).click();		
		logger.info("Clicked on Remove option from the actions dropdown"+"\n");
		System.out.println("Clicked on Remove option from the actions dropdown"+"\n");		
	}
	
	@Then("Check Delete Trusted Domain Title on the pop up {string}")
	public void check_delete_trusted_domain_title_on_the_pop_up_something(String string) throws Throwable
	{
		String original = ec.getObjects("deletedomain_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing Title" +" "+ string + " "+ "on the pop-up"+"\n"); 
    	System.out.println("Showing Title" +" "+ string + " "+ "on the pop-up"+"\n");    	
    }
	
	@Then("Check button on Delete trusted Domain pop up {string}")
	public void check_button_on_delete_trusted_domain_pop_up_something(String string) throws Throwable
	{
		String original = ec.getObjects("delete_buttons");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing button" +" "+ string + " "+ "on the pop-up"+"\n"); 
    	System.out.println("Showing button" +" "+ string + " "+ "on the pop-up"+"\n");
	}
	
	@Then("Click on Delete button in the Delete Trusted Email Domain popup")
	public void click_on_delete_button_in_the_delete_trusted_email_domain_popup() throws Throwable
	{
		String original = ec.getObjects("delete_delete_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
    	logger.info("Clicked on Delete button in the pop-up"+"\n"); 
    	System.out.println("Clicked on Delete button in the pop-up"+"\n");
	}	
	@Then("Check the Description of Tab {string}")
	public void check_the_Description_of_Tab(String string) {
		String original = ec.getObjects("description_text");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("description_text"))).isDisplayed(), string);
		logger.info("Description " + " " + string + " " + " visible on trusted domains tab" + "\n");
		System.out.println("Description " + " " + string + " " + " visible on trusted domains tab" + "\n");
	}
	@Then("click on Trusted Domain Tab")
	public void click_on_Trusted_Domain_Tab() {
		String original = ec.getObjects("trusteddomain_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
    	logger.info("Clicked on Trusted Domain Tab"+"\n"); 
    	System.out.println("Clicked on Trusted Domain Tab"+"\n");
	}

	@Then("Show {string} label in the popup")
    public void show_something_label_in_the_popup(String string) throws Throwable {
        String original = ec.getObjects("domain_name_label");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing" +" "+ string + " "+ "label in the popup"+"\n"); 
    	System.out.println("Showing" +" "+ string + " "+ "label in the popup"+"\n");
    }

	@Then("Show {string} addon in the popup")
    public void show_something_addon_in_the_popup(String string) throws Throwable {
        String original = ec.getObjects("addon");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing" +" "+ string + " "+ "addon in the popup"+"\n"); 
    	System.out.println("Showing" +" "+ string + " "+ "addon in the popup"+"\n");
    }

	@Then("Verify Close Icon clickable in Add a Trusted Email Domain button pop up {string}")
    public void verify_close_icon_clickable_in_add_a_trusted_email_domain_button_pop_up_something(String strArg1) throws Throwable {
        String original = ec.getObjects("close_icon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("close icon is clickable" + "\n");
		System.out.println("close icon is clickable" + "\n");
    }

	
    @Then("Verify Close button clickable in Add a Trusted Email Domain button pop up {string}")
    public void verify_close_button_clickable_in_add_a_trusted_email_domain_button_pop_up_something(String strArg1) throws Throwable {
        String original = ec.getObjects("close_td_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("close botton is clickable" + "\n");
		System.out.println("close button is clickable" + "\n");
    }

	@Then("Show Error message {string} under {string} field in the popup")
    public void show_error_message_something_under_something_field_in_the_popup(String error, String field) throws Throwable {
		String original = ec.getObjects("addon");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Showing" +" "+ error + " "+ "under"+ field+ "in the popup"+"\n"); 
    	System.out.println("Showing" +" "+ error + " "+ "under" +field+ "in the popup"+"\n");
    }

}	