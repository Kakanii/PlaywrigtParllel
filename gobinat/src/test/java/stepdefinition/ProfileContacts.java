package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ProfileContacts extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ProfileContacts.class);
	
	
	@Then("Click on Profile tab on Dashboard")
	public void click_on_Profile_tab_on_Dashboard() throws Throwable 
	{
		String original = ec.getObjects("profile");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Profile Tab on Dashboard"+"\n");
        System.out.println("Clicked on Profile Tab on Dashboard"+"\n");
        Thread.sleep(3000);
	}
	
	@Then("Show title on Profile page {string}")
	public void show_title_on_Profile_page(String string) throws Throwable 
	{
		String original = ec.getObjects("basicinfolabel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("basicinfolabel"))).isDisplayed(),string);
    	logger.info("Title  "+ " "+ string +" "+" showing on Profile page"+"\n"); 
    	System.out.println("Title  "+ " "+ string +" "+" showing on profile page"+"\n");
	}
	
	@Then("Click on Contacts on Profile page")
	public void click_on_Contacts_on_Profile_page() throws Throwable 
	{
		String original = ec.getObjects("contactstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Contacts on Profile"+"\n");
        System.out.println("Clicked on Contacts on Profile"+"\n");
        Thread.sleep(2000);
	}
	
	@Then("Show Add a New Contact button on Contacts {string}")
	public void show_Add_a_New_Contact_button_on_Contacts(String string) throws Throwable 
	{
		String original = ec.getObjects("addacontactbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Add a New Contact button Showing on Contacts:- "+ " "+ string +" "+"\n"); 
    	System.out.println("Add a New Contact button Showing on Contacts:- "+ " "+ string +" "+"\n"); 
	}
	
	@Then("Click on Add a New Contact button on Contacts")
	public void click_on_Add_a_New_Contact_button_on_Contacts() throws Throwable
	{		
		String original = ec.getObjects("addacontactbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Add a New Contact button on Contacts Tab"+"\n");
        System.out.println("Clicked on Add a New Contact button on Contacts Tab"+"\n");
        Thread.sleep(2000);
	}
	
	@Then("Show title on Add a New Contact modal {string}")
	public void show_title_on_Add_a_New_Contact_modal(String string) throws Throwable
	{
		String original = ec.getObjects("addanewcontacttitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title  "+ " "+ string +" "+" showing on Add a New Contact Modal"+"\n"); 
    	System.out.println("Title  "+ " "+ string +" "+" showing on Add a New Contact Modal"+"\n");
	}
	
	@Then("Switch to the active window")
	public void switch_to_the_active_window() throws Throwable
	{
		driver.switchTo().activeElement();
		logger.info("Switch to the active window"+"\n");
		System.out.println("Switch to the active window "+"\n");
		
	}
	
	@Then("Click on Cancel button on Add a New Contact Modal")
	public void click_on_Cancel_button_on_Add_a_New_Contact_Modal() throws Throwable
	{
		String original = ec.getObjects("cancelbtnonaddanewcontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Cancel button on Add a New Contact Modal"+"\n");
        System.out.println("Clicked on Cancel button on Add a New Contact Modal"+"\n");
        Thread.sleep(2000);
	}
	
	@Then("Show error message for first name {string}")
	public void show_error_message_for_first_name(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgfirstnameoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at First Name field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at First Name field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for last name {string}")
	public void show_error_message_for_last_name(String string) throws Throwable
	{
		String original = ec.getObjects("errormsglastnameoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Last Name field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Last Name field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for job title {string}")
	public void show_error_message_for_job_title(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgjobtitleoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Job Title field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Job Title field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for primary phone {string}")
	public void show_error_message_for_primary_phone(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgprimaryphoneoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Primary Phone field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Primary Phone field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for email {string}")
	public void show_error_message_for_email(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgemailoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Email field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Email field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for alternative email {string}")
	public void show_error_message_for_alternative_email(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgalternativeemailoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Alternative Email field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Alternative Email field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for select location {string}")
	public void show_error_message_for_select_location(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgselectlocationoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Select Location field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Select Location field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
	}
	
	@Then("Click on Save Contact button on Add a New Contact Modal")
	public void click_on_Save_Contact_button_on_Add_a_New_Contact_Modal() throws Throwable
	{
		String original = ec.getObjects("savecontactbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Save Contact on Add a New Contact Modal"+"\n");
        System.out.println("Clicked on Save Contact on Add a New Contact Modal"+"\n");
        Thread.sleep(5000);
	}
	
	@Then("Enter data in Fist Name field {string}")
	public void enter_data_in_Fist_Name_field(String string) throws Throwable
	{
		String original = ec.getObjects("firstnameoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in First Name field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in First Name field on Add a New Contact Modal"+"\n");
    	
    	
	}
	
	@Then("Enter data in Middle Name field {string}")
	public void enter_data_in_Middle_Name_field(String string) throws Throwable
	{
		String original = ec.getObjects("middlenameoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Middle Name field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Middle Name field on Add a New Contact Modal"+"\n");
    	
    	
	}
	
	@Then("Enter data in Last Name field {string}")
	public void enter_data_in_Last_Name_field(String string) throws Throwable
	{
		String original = ec.getObjects("lastnameoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Last Name field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Last Name field on Add a New Contact Modal"+"\n");
    	
    	
	}
	
	@Then("Show error message for specal char data {string}")
	public void show_error_message_for_special_char_data(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforspecialcharoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
	}
	
	@Then("Enter data in Job Title field {string}")
	public void enter_data_in_Job_Title_field(String string) throws Throwable
	{
		String original = ec.getObjects("jobtitleoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Job Title field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Job Title field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter data in Primary Phone field {string}")
	public void enter_data_in_Primary_Phone_field(String string) throws Throwable
	{
		String original = ec.getObjects("primaryphoneoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.clickableWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Primary Phone field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Primary Phone field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for invalid phone number {string}")
	public void show_error_message_for_invalid_phone_number(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforinvalidphonenum");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
	}
	
	@Then("Enter data in Secondary Phone field {string}")
	public void enter_data_in_Secondary_Phone_field(String string) throws Throwable
	{
		String original = ec.getObjects("secondaryphoneoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Secondary Phone field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Secondary Phone field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for invalid phone number at Secondary Phone {string}")
	public void show_error_message_for_invalid_phone_number_at_Secondary_Phone(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforinvalidsecondaryphone");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
	}
	
	@Then("Enter data in Email field {string}")
	public void enter_data_in_Email_field(String string) throws Throwable
	{
		String original = ec.getObjects("emailoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).clear();
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Email field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Email field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for invalid email {string}")
	public void show_error_message_for_invalid_email(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforinvalidemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter space in Email field")
	public void enter_space_in_Email_field() throws Throwable
	{
		String original = ec.getObjects("emailoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Enter space in Fist Name field")
	public void enter_space_in_Fist_Name_field() throws Throwable
	{
		String original = ec.getObjects("firstnameoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Enter space in Middle Name field")
	public void enter_space_in_Middle_Name_field() throws Throwable
	{
		String original = ec.getObjects("middlenameoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Enter space in Last Name field")
	public void enter_space_in_Last_Name_field() throws Throwable
	{
		String original = ec.getObjects("lastnameoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Enter space in Job Title field")
	public void enter_space_in_Job_Title_field() throws Throwable
	{
		String original = ec.getObjects("jobtitleoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Enter data in Alternate Email field {string}")
	public void enter_data_in_Alternate_Email_field(String string) throws Throwable
	{
		String original = ec.getObjects("alternateemailoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Alternate Email field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Alternate Email field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter space in Alternate Email field")
	public void enter_space_in_Alternate_Email_field() throws Throwable
	{
		String original = ec.getObjects("alternateemailoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);
		
		Thread.sleep(1000);
	}
	
	@Then("Show error message for different email {string}")
	public void show_error_message_for_different_email(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforalternateemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Select Add a New Location from the dropdown {string}")
	public void select_Add_a_New_Location_from_the_dropdown(String string) throws Throwable
	{
		
		for (int i = 0; i < 4; i++)
			try {
		String original = ec.getObjects("selectlocationcontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		WebElement location = driver.findElement(By.xpath(original));
		Select location_text = new Select(location);
		location_text.selectByVisibleText(string);
		break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage()+ "\n");

			}
		Thread.sleep(1000);
		
		logger.info("Add a New Location selected"+"\n"); 
		System.out.println("Add a New Location selected"+"\n");
	}
	
	@Then("Show error message for Address Type {string}")
	public void show_error_message_for_Address_Type(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgaddresstype");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Address Type field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Address Type field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for Country {string}")
	public void show_error_message_for_Country(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgcountry");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Country field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Country field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Select Address Type from the dropdown {string}")
	public void select_Address_Type_from_the_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("location_addresstype");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement location = driver.findElement(By.xpath(original));
		Select location_text = new Select(location);
		location_text.selectByVisibleText(string);
		
		logger.info("Address Type selected"+"\n"); 
		System.out.println("Address Type selected"+"\n");
	}
	
	@Then("Select Country from the dropdown {string}")
	public void select_Country_from_the_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("selectcountry");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement location = driver.findElement(By.xpath(original));
		Select location_text = new Select(location);
		location_text.selectByVisibleText(string);
		Thread.sleep(2000);
		
		logger.info("Country selected"+string+"\n"); 
		System.out.println("Country selected"+string+"\n");
	}
	
	@Then("Show error message for Address {string}")
	public void show_error_message_for_Address(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgaddressoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Address field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Address field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for City {string}")
	public void show_error_message_for_City(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgcityoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at City field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at City field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for City error {string}")
	public void show_error_message_for_City_error(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgfrancecityoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at City field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at City field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for State {string}")
	public void show_error_message_for_State(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgstateoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at State field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at State field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for Zip Code {string}")
	public void show_error_message_for_Zip_Code(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgzipcodeoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Zip Code field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Zip Code field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for Invalid Postal Code {string}")
	public void show_error_message_for_Invlaid_Postal_Code(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgmustbepostalcodeoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Postal Code field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Postal Code field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for Postal Code {string}")
	public void show_error_message_for_Postal_Code(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgpostalcodeoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Postal Code field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Postal Code field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show error message for Postal Code error {string}")
	public void show_error_message_for_Postal_Code_error(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgcanadaposstalcodeoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Postal Code field "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message at Postal Code field  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter data in Address field {string}")
	public void enter_data_in_Address_field(String string) throws Throwable
	{
		String original = ec.getObjects("addressoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in Address field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in Address field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter data in City field {string}")
	public void enter_data_in_City_field(String string) throws Throwable
	{
		String original = ec.getObjects("cityoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "in City field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "in City field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Select State from the dropdown {string}")
	public void select_State_from_the_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("stateoncontactmodal");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		WebElement location = driver.findElement(By.xpath(original));
		Select location_text = new Select(location);
		location_text.selectByVisibleText(string);
		
		Thread.sleep(2000);
		
		logger.info("State selected"+"\n"); 
		System.out.println("State selected"+"\n");
	}
	
	@Then("Enter data in Zip Code field")
	public void enter_data_in_Zip_Code_field() throws Throwable
	{
		String original = ec.getObjects("postalcodeoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys("943012343");
    	Thread.sleep(2000);
    	
    	logger.info("Entered data" +" "+ " "+ "in City field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" " + " "+ "in City field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter data in Postal Code field")
	public void enter_data_in_Postal_Code_field() throws Throwable
	{
		String original = ec.getObjects("postalcodeoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys("943012343"); 
    	Thread.sleep(2000);
    	
    	logger.info("Entered data" +" "+ " "+ "in City field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" " + " "+ "in City field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Enter data in Postal Code for Canada")
	public void enter_data_in_Postal_Code_for_Canada() throws Throwable
	{
		String original = ec.getObjects("postalcodeoncontactmodal"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys("M1R 0E9"); 
    	Thread.sleep(2000);
    	
    	logger.info("Entered data" +" "+ " "+ "in City field on Add a New Contact Modal"+"\n");
    	System.out.println("Entered data" +" " + " "+ "in City field on Add a New Contact Modal"+"\n");
	}
	
	@Then("Show created contact on Contacts list {string}")
	public void show_created_contact_on_Contacts_list(String string) throws Throwable
	{
		String original = ec.getObjects("contactconfirm");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info(" "+ string +" "+" showing on Contacts page"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" showing on Contacts page"+"\n");
	}
	
	@Then("Click on {string} Contact")
	public void click_on_Contact(String string) throws Throwable
	{
		String original = ec.getObjects("contactconfirm");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on" +string+ " Contacts Tab"+"\n");
        System.out.println("Clicked on"+string+" Contacts Tab"+"\n");
        Thread.sleep(2000);
	}
	
	@Then("Click on Delete button on Update Contact Modal")
	public void click_on_Delete_button_on_Update_Contact_Modal() throws Throwable
	{
		String original = ec.getObjects("deletebtnonupdatecontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Delete button on Update Contact modal"+"\n");
        System.out.println("Clicked on Delete button on Update Contact modal"+"\n");
        Thread.sleep(8000);
	}
	
	@Then("Click on Update Contact button on Update Contact Modal")
	public void click_on_Update_Contact_button_on_Update_Contact_Modal() throws Throwable
	{
		String original = ec.getObjects("updatebtnonupdatecontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Update Contact button on Update Contact modal"+"\n");
        System.out.println("Clicked on Update Contact button on Update Contact modal"+"\n");
        Thread.sleep(2000);
	}
	
	@Then("Show mouseover text for First Name {string}")
	public void show_mouseover_text_for_First_Name(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipfirstnameoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for first name on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for first name on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Middle Name {string}")
	public void show_mouseover_text_for_Middle_Name(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipmiddlenameoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Middle name on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Middle name on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Last Name {string}")
	public void show_mouseover_text_for_Last_Name(String string) throws Throwable
	{
		String original = ec.getObjects("tooltiplastnameoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Last name on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Last name on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Job Title {string}")
	public void show_mouseover_text_for_Job_Title(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipjobtitleoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Job Title on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Job Title on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Primary Phone {string}")
	public void show_mouseover_text_for_Primary_Phone(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipprimaryphoneoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Primary Phone on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Primary Phone on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Secondary Phone {string}")
	public void show_mouseover_text_for_Secondary_Phone(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipsecondaryphoneoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Secondary Phone on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Secondary Phone on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Email {string}")
	public void show_mouseover_text_for_Email(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipemailoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Email on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Email on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Alternate Email {string}")
	public void show_mouseover_text_for_Alternate_Email(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipalternateemailoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Alternate Email on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Alternate Email on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Select Location {string}")
	public void show_mouseover_text_for_Select_Location(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipselectlocationoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Select Location on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Select Location on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Address Type {string}")
	public void show_mouseover_text_for_Address_Type(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipaddresstypeoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Address Type on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Address Type on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Country {string}")
	public void show_mouseover_text_for_Country(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipcountryoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Country on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Country on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Address {string}")
	public void show_mouseover_text_for_Address(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipaddressoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Address on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Address on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Address2 {string}")
	public void show_mouseover_text_for_Address2(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipaddress2oncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Address2 on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Address2 on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for City {string}")
	public void show_mouseover_text_for_City(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipcityoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for City on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for City on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for State {string}")
	public void show_mouseover_text_for_State(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipstateoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for State on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for State on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Zip Code {string}")
	public void show_mouseover_text_for_Zip_Code(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipzipcodeoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Zip Code on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Zip Code on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for PO Box {string}")
	public void show_mouseover_text_for_PO_Box(String string) throws Throwable
	{
		String original = ec.getObjects("tooltippoboxoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for PO Box on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box on Add a New Contact"+"\n");
	}
	
	
	@Then("Show mouseover text for PO Box Zip Code {string}")
	public void show_mouseover_text_for_PO_Box_Zip_Code(String string) throws Throwable
	{
		String original = ec.getObjects("tooltippoboxzipcodeoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for PO Box Zip Code on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box Zip Code on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for D-U-N-S Number {string}")
	public void show_mouseover_text_for_D_U_N_S_Number(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipdunsoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for D-U-N-S Number on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for D-U-N-S Number on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Postal Code {string}")
	public void show_mouseover_text_for_Postal_Code(String string) throws Throwable
	{
		String original = ec.getObjects("tooltippostalcodeoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Postal Code on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Postal Code on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Province {string}")
	public void show_mouseover_text_for_Province(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipprovinceoncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Province on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Province on Add a New Contact"+"\n");
	}
	
	@Then("Show mouseover text for Address3 {string}")
	public void show_mouseover_text_for_Address3(String string) throws Throwable
	{
		String original = ec.getObjects("tooltipaddress3oncontact");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Address3 on Add a New Contact"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Address3 on Add a New Contact"+"\n");
	}

	
	//RD writings
	@Then("Show error message for duplicate email {string}")
	public void show_error_message_for_duplicate_email(String string) throws Throwable
	{
		String original = ec.getObjects("errormsgforinvalidemail1");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on Add a New Contact Modal"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on Add a New Contact Modal"+"\n");
	}
	
	@Then("Click on location {string}")
	public void Click_on_location(String srmdetails) throws Throwable {
		String original = ec.getObjects("SRM_details3") + srmdetails + ec.getObjects("SRM_details2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Show" + " " + srmdetails + ":" + " " + " label on" + "\n");
		System.out.println("Show" + " " + srmdetails + ":" + " " + " label on" + "\n");
	}
}
