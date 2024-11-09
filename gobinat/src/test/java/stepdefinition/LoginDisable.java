package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class LoginDisable extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(LoginPage.class);
	
	ArrayList<Object> timeStamp = new ArrayList<Object>();

	@Then("^Verify Password field is Enabled \"([^\"]*)\"$")
	public void verify_password_field_is_enabled_something(String string) throws Throwable {
		String original = ec.getObjects("password");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("password"))).isEnabled(), string);
		logger.info("Sign In button clickable on Login page" + "\n");
		System.out.println("Sign In button clickable on Login page" + "\n");

	}

	@Then("^Click on I am not a robot check box$")
	public void click_on_i_am_not_a_robot_check_box() throws Throwable {

		String original = ec.getObjects("ReCapcha_CheckBox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on ReCapcha CheckBox on Reset Password page" + "\n");
		System.out.println("Clicked on ReCapcha CheckBox on Reset Password page" + "\n");
		Thread.sleep(2000);
	}

	@Then("^Click Send Button on Reset Password Page$")
	public void click_send_button_on_reset_password_page() throws Throwable {
		String original = ec.getObjects("Reset_pwd_Send_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);

		logger.info("Clicked on Send button on Reset Password page" + "\n");
		System.out.println("Clicked on Send button on Reset Password page" + "\n");
		Thread.sleep(2000);

	}

	@Then("^Show Reset your Password Label on Reset your Password page \"([^\"]*)\"$")
	public void show_reset_you_password_label_on_reset_your_password_page_something(String string) throws Throwable {

		String original = ec.getObjects("ResetPwd_header");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Reset your passsword header visible on Reset Your Password page" + "\n");
		System.out.println("Reset your passsword header visible on Reset Your Password page" + "\n");

	}
	
	@Then("Enter First Name on Invite a New User Modal")
	public void enter_First_Name_on_Invite_a_New_User_Modal() {
		String original = ec.getObjects("inviteanewuserfirstname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys("First Name");
		
		logger.info("Enter First name in First Name field on Invite a New User Modal"+"\n"); 
		System.out.println("Enter First name in First Name field on Invite a New User Modal"+"\n");

	}

	@Then("Enter Last Name on Invite a New User Modal")
	public void enter_Last_Name_on_Invite_a_New_User_Modal() {


		String original = ec.getObjects("inviteanewuserlastname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys("Last Name");
		
		logger.info("Enter Last name in Last Name field on Invite a New User Modal"+"\n"); 
		System.out.println("Enter Last name in Last Name field on Invite a New User Modal"+"\n");
		
	}
	
	@Then("Enter Email on Invite a New User Modal")
	public void enter_Email_on_Invite_a_New_User_Modal() {
	    
		String original = ec.getObjects("inviteanewuseremail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);
		
		String Email = Time+"@mailinator.com";
		
		driver.findElement(By.xpath(original)).sendKeys(Time);
		
		logger.info("Enter text in Email field "+ "'"+ Email +"'"+" on Invite a New User Modal"+"\n"); 
		System.out.println("Enter text in Email field "+ "'"+ Email +"'"+" on Invite a New User Modal"+"\n");
	}
	
	@Then("Enter Confirmation Email on Invite a New User Modal")
	public void enter_Confirmation_Email_on_Invite_a_New_User_Modal() {
		String original = ec.getObjects("inviteanewuserconfirmationemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String Email = (String) timeStamp.get(0);
		driver.findElement(By.xpath(original)).sendKeys(Email);
		
		logger.info("Enter text in Confirmation Email field "+ " "+ Email +" "+" on Invite a New User Modal"+"\n"); 
		System.out.println("Enter text in Confirmation Email field "+ " "+ Email +" "+" on Invite a New User Modal"+"\n");
	
	}
}