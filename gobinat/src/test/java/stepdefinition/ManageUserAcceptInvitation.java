package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.Base;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

import org.openqa.selenium.WebElement;

public class ManageUserAcceptInvitation extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ManageUsersInviteANewUser.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	@Then("Close toast message in Manage Users page")
	public void close_toast_message_in_Manage_Users_page() {
		String original = ec.getObjects("manageuser_closeToast");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Closed Toast message" + "\n");
		System.out.println("Closed Toast message" + "\n");

	}

	@Then("Enter the same Email on Invite a New User modal {string}")
	public void enter_the_same_Email_on_Invite_a_New_User_modal(String string) {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0).toString();
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
	}

	@Then("Show Confirmation message {string}")
	public void show_Confirmation_message(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		Thread.sleep(3000);

		logger.info("Show confirmaiton message " + "'" + string + "'" + " on Manage Users page" + "\n");
		System.out.println("Show confirmaiton message " + "'" + string + "'" + " on Manage Users page" + "\n");
	}

	@Then("Delete User from Manage Users")
	public void delete_User_from_Manage_Users() throws InterruptedException {
		String search = ec.getObjects("manageUser_search");

		WaitClass.clickableWait(search);
		String SearchQuery = timeStamp.get(0).toString();
		driver.findElement(By.xpath(search)).sendKeys(SearchQuery);
		driver.findElement(By.xpath(search)).sendKeys(Keys.ENTER);
		
		Thread.sleep(3000);
		String ActionBtn = ec.getObjects("manageUser_Action_btn");
		WaitClass.clickableWait(ActionBtn);
		driver.findElement(By.xpath(ActionBtn)).click();

		String RemoveBtn = ec.getObjects("manageUser_remove");
		WaitClass.clickableWait(RemoveBtn);
		driver.findElement(By.xpath(RemoveBtn)).click();

		String DeleteBtn = ec.getObjects("manageUser_delete_btn");
		WaitClass.clickableWait(DeleteBtn);
		driver.findElement(By.xpath(DeleteBtn)).click();

//		String closeToast = ec.getObjects("manageuser_closeToast");
//		WaitClass.clickableWait(closeToast);
//		driver.findElement(By.xpath(closeToast)).click();

		logger.info("Deleted the user from Manage users" + "\n");
		System.out.println("Deleted the user from Manage users" + "\n");
	}

	@Then("Enter Email address in Input field {string}")
	public void enter_email_address_in_Input_field(String string) throws Throwable {
		String original = ec.getObjects("mailinator_searchbox");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		Thread.sleep(2000);

		logger.info("Entered email address " + "'" + Email + "'" + " in mailinator search field" + "\n");
		System.out.println("Entered email address " + "'" + Email + "'" + " in mailinator search field" + "\n");
	}

	@Then("Enter Email address in Input field")
	public void enter_email_address_in_Input_field() throws Throwable {
		String original = ec.getObjects("mailinator_searchbox");
		WaitClass.webDriverWait(original);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		Thread.sleep(2000);

		logger.info("Entered Admin email address " + "'" + Email + "'" + " in mailinator search field" + "\n");
		System.out.println("Entered Admin email address " + "'" + Email + "'" + " in mailinator search field" + "\n");
	}

	@Then("Click on the GO button")
	public void click_on_the_GO_button() {
		String goBtn = ec.getObjects("mailinator_gobtn");
		WaitClass.webDriverWait(goBtn);

		driver.findElement(By.xpath(goBtn)).click();

		logger.info("Clicked on Go button" + "\n");
		System.out.println("Clicked on Go button" + "\n");
	}

	@Then("Enter Confirmation Email on Invite a New User modal {string}")
	public void enter_Confirmation_Email_on_Invite_a_New_User_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}

	@Then("Enter Confirmation Email on Invite a New User modal")
	public void enter_Confirmation_Email_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);

		String Email = timeStamp.get(0) + "@maildrop.cc";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Admin Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println("Entered Admin Email in" + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}

	@Then("Enter First Name on Invite a New User modal")
	public void enter_First_Name_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String random = RandomStringUtils.randomAlphabetic(8);
		driver.findElement(By.xpath(original)).sendKeys(random);

		logger.info("Enter text in First Name field " + "'" + random + "'" + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in First Name field " + "'" + random + "'" + " on Invite a New User Modal" + "\n");

	}

	@Then("Enter Last Name on Invite a New User modal")
	public void enter_Last_Name_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserlastname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String random = RandomStringUtils.randomAlphabetic(8);
		driver.findElement(By.xpath(original)).sendKeys(random);

		logger.info("Enter text in Last Name field " + "'" + random + "'" + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in Last Name field " + "'" + random + "'" + " on Invite a New User Modal" + "\n");
	}

	@Then("Show Confirmation message on Manage Users Page {string}")
	public void show_Confirmation_message_on_Manage_Users_Page(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Toast = string + timeStamp.get(0) + "@mailinator.com";
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Toast));
		Thread.sleep(3000);

		logger.info("Show confirmaiton message " + "'" + Toast + "'" + " on Manage Users page" + "\n");
		System.out.println("Show confirmaiton message " + "'" + Toast + "'" + " on Manage Users page" + "\n");
	}

	@Then("Show Confirmation toast message on Manage Users page {string}")
	public void show_Confirmation_toast_message_on_Manage_Users_page(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");

		WaitClass.webDriverWait(original);

		String Toast = string + ManageUsersInviteANewUser.inviteEmail;
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Toast));

		logger.info("Show confirmaiton message " + " " + Toast + " " + " on Manage Users page" + "\n");
		System.out.println("Show confirmaiton message " + " " + Toast + " " + " on Manage Users page" + "\n");
	}

	@Then("Enter Email on Invite a New User modal {string}")
	public void enter_Email_on_Invite_a_New_User_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);

		String Email = string + timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Email field " + "'" + Email + "'" + " on Invite a New User Modal" + "\n");
	}

	@Then("Enter Email on Invite a New User modal")
	public void enter_Email_on_Invite_a_New_User_modal() throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);

		String Email = timeStamp.get(0) + "@maildrop.cc";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
		System.out.println(
				"Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
	}

	@And("Enter Email in the search box under filterby")
    public void enter_email_in_the_search_box_under_filterby() throws Throwable {
		String original = ec.getObjects("filterby_search_box");
		WaitClass.webDriverWait(original);
        
		String Email = ManageUsersInviteANewUser.inviteEmail;

		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered Admin email " + "'" + Email + "'" + " in Search Box" + "\n");
		System.out.println("Entered Admin email " + "'" + Email + "'" + " in Search Box" + "\n");
    }


	@Then("Enter Email on Invite a user registration modal {string}")
	public void enter_Email_on_Invite_a_user_registration_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);

		String Email = string + timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
		System.out.println(
				"Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
	}

	@Then("Enter Confirmation Email on Invite a user registration modal {string}")
	public void enter_Confirmation_Email_on_Invite_a_user_registration_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}
	@Then("Enter Job title on secondary invite")
	public void enter_Job_title_on_secondary_invite() throws InterruptedException {
		
		String original = ec.getObjects("Secondary_Job_titile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		//String JobTitle = RandomStringUtils.randomAlphanumeric(4);
		//String JobTitle = RandomStringUtils.randomAlphabetic(7);
		driver.findElement(By.xpath(original)) .sendKeys("CEO");

		logger.info("Entered the title " + "name" + " in Job title  field " + "\n");
		System.out.println("Entered the title " + "name" + " in Job title field " + "\n");	
		
	    
	}
	
	
	@Then("Verify Email received with subject {string}")
	public void verify_email_received_with_subject(String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);
		String Email = timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		ArrayList<WebElement> GotIt = new ArrayList<WebElement>(
				driver.findElements(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		if (GotIt.size() > 0) {
			action.click(driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		} else {
			System.out.println("Got It button not found");
		}
		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.clickableWait(EmailformatXPATH);
		;

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Login with same Buyer Email registered")
	public void login_with_same_buyer_email_registered() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";

		for (int i = 0; i < 4; i++)
			try {
				driver.findElement(By.xpath(original)).sendKeys(Email);
				break;
			} catch (Exception e) {
				e.toString();
				logger.info("Trying to recover from a stale element :" + e.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + e.getMessage() + "\n");

			}

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
	}

	@Then("Click on Active Users button")
	public void click_on_Active_Users_button() {
		String original = ec.getObjects("manageUser_ActiveUsers");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Active Users button" + "\n");
		System.out.println("Clicked on Active Users button" + "\n");

	}

	@Then("Search for the new user using email address {string}")
	public void search_for_the_new_user_using_email_address(String string) {
		String search = ec.getObjects("manageUser_search");
		WaitClass.webDriverWait(search);

		String SearchEmail = string + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(search)).sendKeys(SearchEmail);
		driver.findElement(By.xpath(search)).sendKeys(Keys.ENTER);

		logger.info("Searched for the newly added User using email address " + "'" + SearchEmail + "\n");
		System.out.println("Searched for the newly added User using email address " + "'" + SearchEmail + "\n");
	}

	@Then("Search for the new user using email address")
	public void search_for_the_new_user_using_email_address() {
		String search = ec.getObjects("manageUser_search");
		WaitClass.webDriverWait(search);

		String SearchEmail = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(search)).sendKeys(SearchEmail);
		driver.findElement(By.xpath(search)).sendKeys(Keys.ENTER);

		logger.info("Searched for the newly added User using email address " + "'" + SearchEmail + "\n");
		System.out.println("Searched for the newly added User using email address " + "'" + SearchEmail + "\n");
	}

	@Then("Verify new user added under Active Users {string}")
	public void verify_new_user_added_under_Active_Users(String string) {

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		String NewUserEmail = ec.getObjects("manageusers_email1") + Email + ec.getObjects("manageuser_email2");
		String formatXPATH = String.format(NewUserEmail);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(NewUserEmail)).isDisplayed());
		logger.info("Showing Newly added user " + "'" + string + "'" + " in Active Users" + "\n");
		System.out.println("Showing Newly added user " + "'" + string + "'" + " in Active Users" + "\n");
	}

	@Then("Verify new user added under Active Users")
	public void verify_new_user_added_under_Active_Users() {

		String Email = ManageUsersInviteANewUser.inviteEmail;
		String NewUserEmail = ec.getObjects("manageuser_email1") + Email + ec.getObjects("manageuser_email2");
		String formatXPATH = String.format(NewUserEmail);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(NewUserEmail)).isDisplayed());

		logger.info("Showing Newly added Admin user " + "'" + Email + "'" + " in Active Users" + "\n");
		System.out.println("Showing Newly added user " + "'" + Email + "'" + " in Active Users" + "\n");
	}

	@Then("Verify email received in new {string} user inbox with subject {string}")
	public void verify_email_received_in_new_user_inbox_with_subject(String role, String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");
		WaitClass.webDriverWait(original);

		String Email = role + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

//		String goBtn = ec.getObjects("mailinator_gobtn");

//		driver.findElement(By.xpath(goBtn)).click(); // click Go

		// find out the first line in the table

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Verify email received in new admin user inbox with subject {string}")
	public void verify_email_received_in_new_user_inbox_with_subject(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("maildrop_input");

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATH));

		JavascriptExecutor js = ((JavascriptExecutor) driver);

		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(EmailformatXPATH)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + " in new Admin user inbox" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + " in new Admin user inbox" + "\n");

	}

	@Then("^Click on Join Now link$")
	public void click_on_join_now_link() throws Throwable {

		if (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed()) {
			driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		} else {
			System.out.println("\n" + "Got It button not found" + "\n");
		}
		Thread.sleep(2000);
		driver.switchTo().frame("msg_body");
		Thread.sleep(3000);

		WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_btn")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		Thread.sleep(3000);

		WebElement icon = driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_btn")));

		ArrayList<WebElement> btn = new ArrayList<WebElement>(
				driver.findElements(By.xpath(ec.getObjects("mailinator_joinNow_btn"))));
		if (btn.size() > 0) {
			action.click(driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_btn"))));
			Actions ob = new Actions(driver);
			ob.moveToElement(icon);
			ob.click(icon).build().perform();
		} else {
			System.out.println("Join now button not found");
		}

		Thread.sleep(2000);

		driver.switchTo().parentFrame();

		String mailinatorHandle = driver.getWindowHandle();

		tabs.add(0, mailinatorHandle);

		logger.info("Clicked on Join Now Link" + "\n");
		System.out.println("Clicked on Join Now Link" + "\n");
		System.out.println("Clicked on Join Now Link" + "\n");

	}


	@Then("^Click on Register Now Link$")
	public void click_on_Register_now_link() throws Throwable {

		// if (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed()) {
		// 	driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// 	System.out.println("\n" + "Got It button not found" + "\n");
		// }
		// Thread.sleep(2000);
		// driver.switchTo().frame("msg_body");
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		// WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("mailinator_registerNow_btn")));
		// JavascriptExecutor js = ((JavascriptExecutor) driver);
		// js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		// Thread.sleep(3000);

		// WebElement icon = driver.findElement(By.xpath(ec.getObjects("mailinator_registerNow_btn")));
		
		// icon.click();

		String original = ec.getObjects("mailinator_joinNow_link");
		String registerbutton = String.format(original);
		driver.switchTo().frame(0);
		WaitClass.clickableWait(registerbutton);
		do {
		driver.findElement(By.xpath(registerbutton)).click();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		CorpRelationships obj = new CorpRelationships();
		obj.switch_to_something_tab("TYS Registration");
		}while(driver.getWindowHandles().size() == 1);

		//ArrayList<WebElement> btn = new ArrayList<WebElement>(
				//driver.findElements(By.xpath(ec.getObjects("mailinator_registerNow_btn"))));
		//if (btn.size() > 0) {
			//action.click(driver.findElement(By.xpath(ec.getObjects("mailinator_registerNow_btn"))));
			//Actions ob = new Actions(driver);
			//ob.moveToElement(icon);
			//ob.click(icon).build().perform();
		//} else {
			//System.out.println("Register now button not found");
		//}

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);


		String mailinatorHandle = driver.getWindowHandle();

		//tabs.add(0, mailinatorHandle);
		Base.handlesList.add(1, driver.getWindowHandle());

		logger.info("Clicked on Register Now Link" + "\n");
		System.out.println("Clicked on Register Now Link" + "\n");

	}

	@Then("^Enter Code in verification code field$")
	public void enter_code_in_verification_code_field() throws Throwable {
		String original = ec.getObjects("CH_invite_VCode_inputbox");
		WaitClass.webDriverWait(original);
		do {
		driver.findElement(By.xpath(original)).sendKeys(VerificationCode.get(0));
		
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		
		}while(driver.findElement(By.xpath(original)).getAttribute("value").equals(""));
		String NewTYSHandle = driver.getWindowHandle();

		tabs.add(1, NewTYSHandle);

		logger.info("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
		System.out.println("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
	}

	@Then("^Verify \"([^\"]*)\" from the Email$")
	public void verify_something_from_the_email(String string) throws Throwable {

		String original = ec.getObjects("CH_variable_Vcode") + string + "')]";
		String formatXPATH = String.format(original);

		driver.switchTo().frame(0);
		String VC = driver.findElement(By.xpath(formatXPATH)).getText();

		String Code = VC.substring(string.length()).trim();
		VerificationCode.add(0, Code);

		driver.switchTo().parentFrame();

		logger.info("Retrieved Verification Code: " + Code + "\n");
		System.out.println("Retrieved Verification Code: " + Code + "\n");
	}

	@Then("Close current tab")
	public void close_current_tab() {

		driver.close();
		driver.switchTo().window(tabs.get(0));
	}

	@Then("Click on Got It button")
	public void click_on_Got_It_button() throws Throwable {
		driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		Thread.sleep(2000);

	}

	@Then("Verify the Email Subject in Email Inbox {string}")
	public void verify_the_Email_Subject_in_Email_Inbox(String string) throws Throwable {
		String origina1 =ec.getObjects("subject") + string + "')]";

		WaitClass.webDriverWait(origina1);

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		assertTrue(driver.findElement(By.xpath(origina1)).getText().contains(string));

		logger.info("Received invitation Email in " + "'" + Email + "'" + "\n");
		System.out.println("Received invitation Email in " + "'" + Email + "'" + "\n");
	}

	@Then("Enter same buyer email in Email Address field")
    public void enter_same_buyer_email_in_email_address_field() throws Throwable {
        String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data" + " " + Email + " " + "in Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + " " + "in Email Address field" + "\n");
    }

	@Then("^Expand \"([^\"]*)\" in Filter$")
    public void expand_something_in_filter(String strArg1) throws Throwable {
        String original = ec.getObjects("manageuser_status");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Expanded Status" + "\n");
		System.out.println("Expanded Status" + "\n");
    }

	@Then("^Expand Role in Filter$")
    public void expand_role_in_filter() throws Throwable {
        String original = ec.getObjects("manageuser_Role");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Expanded Role" + "\n");
		System.out.println("Expanded Role" + "\n");
    }
	@Then("Click {string} checkbox under Filter By Role")
	public void click_checkbox_under_Filter_By_Role(String string) {
		  String original = ec.getObjects("corp_status1")+ string + ec.getObjects("corp_status2");

			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on"+ string + "Role" + "\n");
			System.out.println("Clicked on"+ string + "Role" + "\n");
	}

	@Then("^Click on Active Users checkbox under Filter By$")
    public void click_on_active_users_checkbox_under_filter_by() throws Throwable {
		String original = ec.getObjects("manageusers_activecheckbox");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Active Users checkbox under Filter By" + "\n");
		System.out.println("Clicked on Active Users checkbox under Filter By" + "\n");
    }

	@Then("^Click on Access Removed checkbox under Filter By$")
    public void click_on_access_removed_checkbox_under_filter_by() throws Throwable {
        String original = ec.getObjects("manageusers_accessremoved");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Access Removed checkbox under Filter By" + "\n");
		System.out.println("Clicked on Access Removed checkbox under Filter By" + "\n");
    }

	@Then("^Verify the status renamed to \"([^\"]*)\"$")
    public void verify_the_status_renamed_to_something(String string) throws Throwable {
        String original = ec.getObjects("manageusers_accessremoved_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Showing Status as" + "'" + string + "'" + " in manage Users" + "\n");
		System.out.println("Showing Status as " + "'" + string + "'" + " in manage Users" + "\n");
    }

	@And("^Click Close icon in apply filters$")
    public void click_close_icon_in_apply_filters() throws Throwable {
        String original = ec.getObjects("apply_filters_close");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on close icon in apply filters" + "\n");
		System.out.println("Clicked on close icon in apply filters" + "\n");
    }


}