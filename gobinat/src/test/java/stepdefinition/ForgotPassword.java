package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;
import io.cucumber.java.en.Then;

public class ForgotPassword extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ForgotPassword.class);
	
	@Then("^Show Send button on Reset your Password page \"([^\"]*)\"$")
    public void show_send_button_on_reset_your_password_page_something(String message) throws Throwable 
	{
		String original = ec.getObjects("send_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("send_btn"))).isDisplayed(),message);
		logger.info("Send button visible "+ " "+ message +" "+" on Reset your Password page"+"\n"); 
		System.out.println("Send button visible "+ " "+ message +" "+" on Reset your Password page"+"\n"); 
    }
	
	@Then("Send button clickable on Reset your Password  page {string}")
	public void send_button_clickable_on_Reset_your_Password_page(String string) throws Throwable 
	{
		String original = ec.getObjects("send_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("send_btn"))).isEnabled(),string);
		logger.info("Send button enabled "+ " "+ string +" "+" on Reset your Password page"+"\n"); 
		System.out.println("Send button enabled "+ " "+ string +" "+" on Reset your Password page"+"\n"); 
    }
	
    @Then("^Click on Send button on Reset your Password page$")
    public void click_on_send_button_on_reset_your_password_page() throws Throwable 
    {
    	String original = ec.getObjects("send_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("send_btn"))).click();
    	logger.info("Click on Send button on Reset your Password page"+"\n");  
    	System.out.println("Click on Send button on Reset your Password page"+"\n");  
    }

    @Then("^Show error message for Email Address field \"([^\"]*)\"$")
    public void show_error_message_for_email_address_field_something(String string) throws Throwable 
    {
    	String original = ec.getObjects("email_reset_error_msg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
    	
    	assertTrue(driver.findElement(By.xpath(ec.getObjects("email_reset_error_msg"))).getText().contains(string));
    	logger.info("Shows the error" +" "+ string + " "+ "on Reset your Password page"+"\n");
    	System.out.println("Shows the error" +" "+ string + " "+ "on Reset your Password page"+"\n");
        
    }

    @Then("Show error message for Captcha {string}")
    public void show_error_message_for_Captcha(String string) throws Throwable 
    {
    	String original = ec.getObjects("captcha_reset_error_msg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("captcha_reset_error_msg"))).getText().contains(string));
    	logger.info("Shows the error" +" "+ string + " "+ "on Reset your Password page"+"\n");
    	System.out.println("Shows the error" +" "+ string + " "+ "on Reset your Password page"+"\n");
       
    }
    
    @Then("Show Back to sign in button on Reset your Password page {string}")
    public void show_Back_to_sign_in_button_on_Reset_your_Password_page(String string) throws Throwable 
    {
    	String original = ec.getObjects("back_to_signin_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("back_to_signin_btn"))).isDisplayed(),string);
		logger.info("Back to sign in button visible "+ " "+ string +" "+" on Reset your Password page"+"\n");
		System.out.println("Back to sign in button visible "+ " "+ string +" "+" on Reset your Password page"+"\n");
    }
    
    @Then("Back to sign in button clickable on Reset your Password page {string}")
    public void back_to_sign_in_button_clickable_on_Reset_your_Password_page(String string) throws Throwable 
    {
    	String original = ec.getObjects("back_to_signin_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("back_to_signin_btn"))).isEnabled(),string);
		logger.info("Back to sign in button enabled "+ " "+ string +" "+" on Reset your Password page"+"\n");
		System.out.println("Back to sign in button enabled "+ " "+ string +" "+" on Reset your Password page"+"\n");
    }
    
    @Then("^Click on Back to sign in button on Reset your Password page$")
    public void click_on_back_to_sign_in_button_on_reset_your_password_page() throws Throwable 
    {
    	String original = ec.getObjects("back_to_signin_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("back_to_signin_btn"))).click();
    	logger.info("Click on Back to sign in button on Reset your password page"+"\n"); 
    	System.out.println("Click on Back to sign in button on Reset your password page"+"\n"); 
    }
    
    @Then("^Enter invalid email address \"([^\"]*)\"$")
    public void enter_invalid_email_address_something(String message) throws Throwable 
    {
    	String original = ec.getObjects("email");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).clear();
		
		driver.findElement(By.xpath(ec.getObjects("email"))).sendKeys(message);
    	logger.info("Enter invalid text in email address" +" "+ message +"on Reset your password page"+"\n"); 
    	System.out.println("Enter invalid text in email address" +" "+ message +"on Reset your password page"+"\n"); 
    }
    
    @Then("Show an message for Email Address field {string}")
    public void show_an_message_for_Email_Address_field(String string) throws Throwable 
    {
    	String original = ec.getObjects("reset_msg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("reset_msg"))).getText().contains(string));
    	logger.info("Shows the message" +" "+ string + " "+ "on Reset your Password page"+"\n");
    	System.out.println("Shows the message" +" "+ string + " "+ "on Reset your Password page"+"\n");
    }

}
