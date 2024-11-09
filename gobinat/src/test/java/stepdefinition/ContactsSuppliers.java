package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.sql.Time;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;

public class ContactsSuppliers extends DriverEngine 
{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);
	
	@When("Minimize Your Profile in Profile")
	public void minimize_Your_Profile_in_Profile() 
	{
		String original = ec.getObjects("collapse_your_profile");
		String formatXPATH = String.format(original);
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Minimize Your Profile in Profile " + "\n");
		System.out.println("Minimize Your Profile in Profile" + "\n");
	}

	@When("Click on Contacts\\/Locations tab")
	public void click_on_Contacts_Locations_tab() 
	{
		String original = ec.getObjects("suppliers_contacts_locations_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Contacts/Locations tab " + "\n");
		System.out.println("Clicked on Contacts/Locations tab" + "\n");
	}

	@Then("Shows a title Contacts\\/Locations")
	public void shows_a_title_Contacts_Locations() 
	{
		String original = ec.getObjects("contacts_locations_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Clicked on Contacts/Locations tab " + "\n");
		System.out.println("Clicked on Contacts/Locations tab" + "\n");
	}

	@Then("Shows Add Contact button")
	public void shows_Add_Contact_button() 
	{
		String original = ec.getObjects("suppliers_add_contacts_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Add Contact button " + "\n");
		System.out.println("Shows Add Contact button" + "\n");
	}

	@When("Click Add Contact button")
	public void click_Add_Contact_button() 
	{
		String original = ec.getObjects("suppliers_add_contacts_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click Add Contact button " + "\n");
		System.out.println("Click Add Contact button" + "\n");
	}

	@Then("Shows Add Contact title in right drawer")
	public void shows_Add_Contact_title_in_right_drawer() 
	{
		String original = ec.getObjects("add_contact__title_in_right_drawer");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Add Contact title in right drawer" + "\n");
		System.out.println("Shows Add Contact title in right drawer" + "\n");
	}
	
	@When("Click on Save Contact button on Supplier Contacts page")
	public void click_on_Save_Contact_button_on_Supplier_Contacts_page() 
	{
		String original = ec.getObjects("save_button_in_right_drawer");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Save Contact button on Supplier Contacts page" + "\n");
		System.out.println("Click on Save Contact button on Supplier Contacts page" + "\n");
	}
	
	@When("Enter Contact {string} Keyword in Search box")
	public void enter_Contact_Keyword_in_Search_box(String string) 
	{
		String original = ec.getObjects("supplier_searc_contact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Enter Contact"+" " + string+ " Keyword in Search box" + "\n");
		System.out.println("Enter Contact"+" " + string+ " Keyword in Search box" + "\n");
	}

	@Then("Show contact details in search results")
	public void show_contact_details_in_search_results() 
	{
		String original = ec.getObjects("contact_details");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();;

		logger.info("Show contact details in search results" + "\n");
		System.out.println("Show contact details in search results" + "\n");
	}

	@When("Click on Contact Menu on Contact\\/Locations page")
	public void click_on_Contact_Menu_on_Contact_Locations_page() 
	{
		String original = ec.getObjects("supplier_contact_menu");
		String formatXPATH = String.format(original);
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		//WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		logger.info("Clicked on Contact Menu on Contact Locations page" + "\n");
		System.out.println("Clicked on Contact Menu on Contact Locations page" + "\n");
	}

	@Then("Show Update Contact and Delete Contact")
	public void show_Update_Contact_and_Delete_Contact() throws Exception 
	{

		//To Select Record(Show the delete) then click on Delete

		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		/*String chevronClick = ec.getObjects("supplier_Chevron");
		String chevronselection = String.format(chevronClick);
		driver.findElement(By.xpath(chevronselection)).click();*/
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);


		/*String original = ec.getObjects("supplier_update_contact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);*/
		//driver.findElement(By.xpath(chevronselection)).isDisplayed();

		logger.info("Show Update Contact Contact" + "\n");
		System.out.println("Show Update Contact Contact" + "\n");
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("supplier_delete_contact");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).isDisplayed();

		logger.info("Show Delete Contact" + "\n");
		System.out.println("Show Delete Contact" + "\n");

	}

	@When("Click on Delete Contact")
	public void click_on_Delete_Contact()
	{
		String original = ec.getObjects("supplier_delete_contact");
		String formatXPATH = String.format(original);
		
		//Actions actions = new Actions(driver);
				
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		//actions.moveToElement(driver.findElement(By.xpath(original)));
		//actions.click();
		//actions.build();		
		//actions.perform();

		logger.info("Click on Delete Contact" + "\n");
		System.out.println("Click on Delete Contact" + "\n");
	}
	
	@When("Click on Update Contact")
	public void click_on_Update_Contact() 
	{
		String original = ec.getObjects("supplier_update_contact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Update Contact" + "\n");
		System.out.println("Click on Update Contact" + "\n");
	}

	@When("Click on Delete button on Delete Contact Window")
	public void click_on_Delete_button_on_Delete_Contact_Window() 
	{
		driver.switchTo().activeElement();
		String original = ec.getObjects("supplier_delete_contact_confirm");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Delete Contact" + "\n");
		System.out.println("Click on Delete Contact" + "\n");
	}
	
	@Then("Click on the Search by supplier for {string}")
	public void click_on_first_record_of_the_Search(String abc) {
		String original = ec.getObjects("buyer_search") + abc +	ec.getObjects("selectAll_role2");	
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		
    	logger.info("Clicked on first record of the Search "+"\n");
    	System.out.println("Clicked on first record of the Search"+"\n");
	
	}
	
	@Then("Verify {string} header contains label as {string}")
	public void verify_header_contains_label_as(String abc, String xyz) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("header_table") + xyz + ec.getObjects("label_var2") ;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
	}
	
	@Then("Select the {string} in filter Dropdown on connected suppliers")
	public void select_the_in_filter_Dropdown_on_connected_suppliers(String string) throws InterruptedException {
		String original = ec.getObjects("discover_CountrySearch_field");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		// WaitClass.clickableWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(string);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(string);
		}
		Thread.sleep(3000);

		logger.info("Selected " + "'" + string + "'" + " in " + " dropdown" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " in " + " dropdown" + "\n");

		
	}
	
	@Then("Click on the {string} collapse icon")
	public void click_on_the_collapse_icon(String string) {
		//strong[contains(text(),'Liaisons')]//parent::h6//following-sibling::div/div/button/*[local-name()='svg']
		
		String original = ec.getObjects(string);
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		
    	logger.info("Clicked on  collapse icon "+"\n");
    	System.out.println("Clicked on  collapse icon"+"\n");
	}
	
	@Then("Verify the {string} section visibility on the {string} page")
	public void verify_the_section_visibility_on_the_page(String abc, String xyz) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("Profile_overview") + abc + ec.getObjects("label_var2") ;
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		
		Thread.sleep(3000);
		logger.info("Verified "+ abc +"on"+ xyz +"\n");
    	System.out.println("verified"+ abc +"on"+ xyz +"\n");
	}
	
	///////************RD********///
	@Then("verify the visibility of the {string} Approval Source {string} on Action center")
	public void verify_the_visibility_of_the_Approval_Source_on_Action_center(String label, String value ) {
		String original = ec.getObjects("approval1")+label+ec.getObjects("approval2")+value+"]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), label);		
		logger.info("Able to iew" + label + " Approval sounce "+ "\n");
		System.out.println("Able to iew"  + label + " Approval sounce  "+ "\n");
	
	}


}
