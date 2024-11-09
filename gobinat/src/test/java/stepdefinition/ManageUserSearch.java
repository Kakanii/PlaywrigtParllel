package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;
import utility.Miscellaneous;

public class ManageUserSearch extends DriverEngine
{	
	public Miscellaneous mis = new Miscellaneous();
	
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ManageUserSearch.class);	
	
	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> First = new ArrayList<String>();

	ArrayList<String> Last = new ArrayList<String>();
	
	@Then("Show User in search results {string}")
	public void show_User_in_search_results(String string) throws Exception {

		Thread.sleep(2000);
		String original = ec.getObjects("manageuser_searchresult_variable") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing matching user(s) with the Name or Email or Role as: "  + string + "\n")  ;
	System.out.println("Showing matching user(s) with the Name or Email or Role as: "  + string + "\n");
	}
	
	@Then("Show User with Email containing {string}")
	public void show_User_with_Email_containing(String string) {
	    
		String original = ec.getObjects("manageuser_searchresult_emailVariable1") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		
    	logger.info("Shows user with Email address containing " +"'"+ string + "'"+  " in manage user search results"+"\n");
    	System.out.println("Shows user with Email address containing " +"'"+ string + "'"+  " in manage user search results"+"\n");
    	
	}
	
	@Then("Show User with First name as {string}")
	public void show_User_with_First_name_as(String string) {
		String original = ec.getObjects("filterby_firstname1") + string + "')]";
		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().startsWith(string));
		
		logger.info("Showing User with First Name: " + string + "\n");
		System.out.println("Showing User with First Name: " + string + "\n");
	}
	
	@Then("Show User with Last name as {string}")
	public void show_User_with_Last_name_as(String string) {
		String original = ec.getObjects("filterby_firstname1") + string + "')]";
		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		
		logger.info("Showing User with Last Name: " + string + "\n");
		System.out.println("Showing User with Last Name: " + string + "\n");
	}
	
	@Then("Show User Kiran C in Search results {string}")
	public void show_User_Kiran_C_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageuser_searchresult_emailVariable") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Enter User First Name on Invite a New User modal")
	public void enter_User_First_Name_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String randomFirst = "FirstName" + RandomStringUtils.randomAlphabetic(8);
		driver.findElement(By.xpath(original)).sendKeys(randomFirst);
		
		First.add(0, randomFirst);

		logger.info("Enter text in First Name field " + "'" + randomFirst + "'" + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in First Name field " + "'" + randomFirst + "'" + " on Invite a New User Modal" + "\n");

	}
	
	@Then("Enter User Last Name on Invite a New User modal")
	public void enter_User_Last_Name_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserlastname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String randomLast = "LastName" + RandomStringUtils.randomAlphabetic(8);
		driver.findElement(By.xpath(original)).sendKeys(randomLast);
		
		Last.add(0, randomLast);

		logger.info("Enter text in Last Name field " + "'" + randomLast + "'" + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in Last Name field " + "'" + randomLast + "'" + " on Invite a New User Modal" + "\n");
	}
	
	@Then("Enter User Email on Invite a New User modal {string}")
	public void enter_User_Email_on_Invite_a_New_User_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);
		
		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);
		
		String Email = string + timeStamp.get(0);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
	}
	
	@Then("Enter User Confirmation Email on Invite a New User modal {string}")
	public void enter_User_Confirmation_Email_on_Invite_a_New_User_modal(String string) throws Throwable {
		
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);
		
		String Email = string + timeStamp.get(0);
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info(
				"Entered Email in " + "'" + Email + "'" + " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println(
				"Entered Email in " + "'" + Email + "'" + " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}
	
	@Then("Click on Enter Key on Manage User Search")
	public void click_on_Enter_Key_on_Manage_User_Search() throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		
		Thread.sleep(5000);
	}
	
	
	@Then("Enter User First Name in Search field")
	public void enter_User_First_Name_in_Search_field() throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(First.get(0).toString());
		
		logger.info("Enter User First Name "+"'"+First.get(0).toString()+ "'" +" in manage user search field"+"\n"); 
    	System.out.println("Enter User First Name "+"'"+ First.get(0).toString()+ "'" + " in manage user search field"+"\n"); 
	}
	
	@Then("Enter User First Name in Search field {string}")
	public void enter_User_First_Name_in_Search_field(String string) throws Throwable
	{
		Thread.sleep(5000);
		String original = ec.getObjects("filterby_search_box");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		
		logger.info("Enter User First Name "+"'"+string+ "'" +" in manage user search field"+"\n"); 
    	System.out.println("Enter User First Name "+"'"+ string + "'" + " in manage user search field"+"\n"); 
	}
	
	@Then("Enter User Last Name in Search field")
	public void enter_User_Last_Name_in_Search_field() throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Last.get(0).toString());
		logger.info("Enter User Last Name "+"'"+Last.get(0).toString()+ "'" + " in manage user search field"+"\n"); 
    	System.out.println("Enter User Last Name "+"'" + Last.get(0).toString() + "'" + " in manage user search field"+"\n");
	}
	
	@Then("Enter User Last Name in Search field {string}")
	public void enter_User_Last_Name_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("filterby_search_box");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter User Last Name "+"'"+string+ "'" + " in manage user search field"+"\n"); 
    	System.out.println("Enter User Last Name "+"'" + string + "'" + " in manage user search field"+"\n");
	}
	
	
	
	@Then("Show User Chandra Chavva in Search results {string}")
	public void show_User_Chandra_Chavva_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchresultswithchandra");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	
	
	@Then("Enter User Email Address in Search field {string}")
	public void enter_User_Email_Address_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("filterby_search_box");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		
		logger.info("Enter Email Address " + "'" + string + "'" + " in manage user search field"+"\n"); 
    	System.out.println("Enter Email Address " + "'" + string + "'" +" in manage user search field"+"\n");
	}
	
	@Then("Enter role in Search field {string}")
	public void enter_role_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter Role"+"-"+string+"in manage user search field"+"\n"); 
    	System.out.println("Enter Role"+"-"+string+"in manage user search field"+"\n");
	}
	
	@Then("Show User admin role in Search results {string}")
	public void show_User_admin_role_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchwithadminrole") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows role" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows role " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User Kiran Chadalavada in Search results {string}")
	public void show_User_Kiran_Chadalavada_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchwithadminrole") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows role" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows role " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Enter pending users data in Search field {string}")
	public void enter_pending_users_data_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
    	logger.info("Enter pending data" +" "+ string + " "+  "in manage user search field"+"\n");
    	System.out.println("Enter pending data " +" "+ string + " "+  "in manage user search field"+"\n");
	}
	
	@Then("Enter deleted users data in Search field {string}")
	public void enter_deleted_users_data_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
    	logger.info("Enter deleted data" +" "+ string + " "+  "in manage user search field"+"\n");
    	System.out.println("Enter deleted data " +" "+ string + " "+  "in manage user search field"+"\n");
	}
	
	
	@Then("Enter invalid data in Search field {string}")
	public void enter_invalid_data_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
    	logger.info("Enter invalid data" +" "+ string + " "+  "in manage user search field"+"\n");
    	System.out.println("Enter invalid data " +" "+ string + " "+  "in manage user search field"+"\n");
	}
	
	@Then("Show No User message {string}")
	public void show_No_User_message(String string) throws Throwable
	{
		String original = ec.getObjects("Zero_records");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows a message" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows a message " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User Administrator as first name in Search results {string}")
	public void show_User_Administrator_as_first_name_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchfirstnameuser");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows a user first name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows a user first name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	
	@Then("Show User Administrator as last name in Search results {string}")
	public void show_User_Administrator_as_last_name_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageUserAdminLast");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows a user last name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows a user last name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	
	@Then("Select First Name from Search By Dropdown on Manage Users")
	public void select_First_Name_from_Search_By_Dropdown_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("manageusersearchby");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("manageusersearchbyfirstname");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By First Name"+"\n");
    	System.out.println("Selected Search By First Name"+"\n");
	}
	
	@Then("Show user with First Name admin {string}")
	public void show_user_with_First_Name_admin(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchwithfirstname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows User with first name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows User with first name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Select Last Name from Search By Dropdown on Manage Users")
	public void select_Last_Name_from_Search_By_Dropdown_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("manageusersearchby");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("manageusersearchbylastname");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Last Name"+"\n");
    	System.out.println("Selected Search By Last Name"+"\n");
	}
	
	@Then("Select Email Address from Search By Dropdown on Manage Users")
	public void select_Email_Address_from_Search_By_Dropdown_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("manageusersearchby");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("manageusersearchbyemailaddress");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Email Address"+"\n");
    	System.out.println("Selected Search By Email Address"+"\n");
	}
	
	@Then("Show User QA User in Search results {string}")
	public void show_User_QA_User_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchresultswithqauser");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User QA User in Search results page {string}")
	public void show_User_QA_User_in_Search_results_page(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchresultswithqauseradmin");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Select User Role from Search By Dropdown on Manage Users")
	public void select_User_Role_from_Search_By_Dropdown_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("manageusersearchby");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("manageusersearchbyuserrole");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By User Role"+"\n");
    	System.out.println("Selected Search By User Role"+"\n");
	}
	
	@Then("Click Active Users on Manage Users")
	public void click_Active_Users_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("manageactiveusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Click on Active Users on Manage Users"+"\n");
    	System.out.println("Click on Active Users on Manage Users"+"\n");
	}
	
	@Then("Click Pending Users on Manage Users")
	public void click_Pending_Users_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("managependingusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Click on Pending Users on Manage Users"+"\n");
    	System.out.println("Click on Pending Users on Manage Users"+"\n");
	}
	
	@Then("Show User Ajay Mudunuri in Search results {string}")
	public void show_User_Ajay_Mudunuri_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("managependinguserajay");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show Read Only Admin role in Search results {string}")
	public void show_Read_Only_Admin_role_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageusersearchreadonlyadmin");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show admin role in Search results {string}")
	public void show_admin_role_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageuseremail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}	
	
	@Then("Show User last name as admin in Search results {string}")
	public void show_User_last_name_as_admin_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageuserlastnameadmin");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User Ajay Mudunuri email in Search results {string}")
	public void show_User_Ajay_Mudunuri_email_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageuseremailpen");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User Ajay Mudunuri admin email in Search results {string}")
	public void show_User_Ajay_Mudunuri_admin_email_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manageuseremail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User admin buyer admin email in Search results {string}")
	public void show_User_admin_buyer_admin_email_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("managedeluseradmins");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show User John DeletedUser email in Search results {string}")
	public void show_User_John_DeletedUser_email_in_Search_results(String string) throws Throwable
	{
		String original = ec.getObjects("manage_delete_email");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	@Then("Show Remove User in Search Results Page {string}")
	public void show_remove_user_in_Search_results_page(String string) throws Throwable
	{
		String original = ec.getObjects("CH_companyName_variable") + string + ec.getObjects("select_option2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows user name" +" "+ string + " "+  "in manage user search results"+"\n");
    	System.out.println("Shows user name " +" "+ string + " "+  "in manage user search results"+"\n");
	}
	
	
	@Then("Click Deleted Users on Manage Users")
	public void click_Deleted_Users_on_Manage_Users() throws Throwable
	{
		String original = ec.getObjects("managedeletedusersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Click on Deleted Users on Manage Users"+"\n");
    	System.out.println("Click on Deleted Users on Manage Users"+"\n");
	}
	
	@Then("Show user {string}")
	public void show_user(String string) {
		String original = ec.getObjects("name_or_email_or_role_var1") + string + "')]";		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		String UserDetails = driver.findElement(By.xpath(original)).getText();
		logger.info("Showing user: " + UserDetails + "\n");
		System.out.println("Showing user: " + UserDetails + "\n");
	}

	@And("^Click Reinvite user button on manage users page$")
    public void click_reinvite_user_button_on_manage_users_page() throws Throwable {
        String original = ec.getObjects("re_invite_button");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Reinvite button" + "\n");
		System.out.println("Clicked on Reinvite button" + "\n");
    }

	@Then("Click Clearall link in manage users")
	public void click_Clearall_link_in_manage_users() {
    	String original = ec.getObjects("manageusers_clearall");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Clearall button" + "\n");
		System.out.println("Clicked on Clearall button" + "\n");
}

	@Then("Click {string} checkbox under Filter By {string}")
	public void click_checkbox_under_Filter_By(String string, String string2) throws InterruptedException {
   		String original = ec.getObjects("filterby_checkbox_role1") + string + ec.getObjects("filterby_checkbox_role2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		WebElement Element = driver.findElement(By.xpath(original));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);

		//driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on " + string + " checkbox under Filter By " + string2 + "\n");
		System.out.println("Clicked on " + string + " checkbox under Filter By " + string2 + "\n");
}

@Then("Verify {string} added under Search rile")
public void verify_added_under_Search_rile(String string) {
    
		String original = ec.getObjects("filterby_role_multiple1") + string + ec.getObjects("filterby_role_multiple2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Role added in the search rile as :"  + string + "\n")  ;
	System.out.println("Showing Role added in the search rile as :"  + string + "\n");
}

@Then("Verify the filter {string} is applied")
public void verify_the_filter_is_applied(String string) {
	String original = ec.getObjects("filterby_role_multiple1") + string + ec.getObjects("filterby_role_multiple2");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

	logger.info("Filtered by "  + string + "\n")  ;
	System.out.println("Filtered by :"  + string + "\n");
}

@Then("Click on Expand arrow of user in manage users")
public void click_on_Expand_arrow_of_user_in_manage_users() {
	String original = ec.getObjects("expand_arrow");
	String formatXPATH = String.format(original);
	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Expanded view of user in manage users" + "\n");
	System.out.println("Clicked on Expanded view of user in manage users"  + "\n");
}

@Then("Show {string} label under user expanded view")
public void show_label_under_user_expanded_view(String string) {
    String original = ec.getObjects("user_details") + string + "')]";		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

	logger.info("Showing "  + string + "label under user expanded view" + "\n")  ;
	System.out.println("Showing :"  + string + "label under user expanded view" +"\n");
}

@Then("Click on Pending Users checkbox under Filter By")
    public void click_on_pending_users_checkbox_under_filter_by() throws Throwable {
        String original = ec.getObjects("manageusers_pending");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Pending Users checkbox under Filter By" + "\n");
		System.out.println("Clicked on Pending Users checkbox under Filter By" + "\n");
    }
	


@Then("Select a Team from the dropdown on Invite a New User Modal {string}")
public void select_a_team_from_the_dropdown_on_invite_a_new_user_modal_something(String string) throws Throwable {
	String original = ec.getObjects("team_searchand_select");
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	Thread.sleep(2000);
	driver.findElement(By.xpath(original)).click();

	String original1 = ec.getObjects("manageusers_team_checkbox") + string + ec.getObjects("manageusers_team_checkbox2");
	String formatXPATH1 = String.format(original1);
	
	WaitClass.clickableWait(formatXPATH1);
	WebElement Element = driver.findElement(By.xpath(original1));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
	logger.info("Selected" + string + "Team from the dropdown on Invite a New User Modal "  + "\n")  ;
	System.out.println("Selected" + string + "Team from the dropdown on Invite a New User Modal "   + "\n");
}

@Then("Click on Remove Access button in manage users Page")
public void click_on_Remove_Access_button_in_manage_users_Page() {
	String original = ec.getObjects("remove_access_button");
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	driver.findElement(By.xpath(original)).click();

	logger.info("Clicked on Remove Access button in manage users Page"   + "\n")  ;
	System.out.println("Clicked on Remove Access button in manage users Page"   + "\n");
}

@Then("Verify the Status as {string}")
public void verify_the_Status_as(String string) {
	String original = ec.getObjects("access_removed_status") + string + "']";		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

	logger.info("Verify the Status as "  + string + "\n")  ;
	System.out.println("Verify the Status as "  + string + "\n");
}

}
