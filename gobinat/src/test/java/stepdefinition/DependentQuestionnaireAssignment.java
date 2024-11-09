package stepdefinition;

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class DependentQuestionnaireAssignment extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	
	public static String Australiancn;

	Logger logger = Logger.getLogger(DependentQuestionnaireAssignment.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();
	
	
	@Then("Enter the Notes under the questionnaire")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("ethics_notes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Accept");

		
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}
	@Then("Show the tooltip text {string} for dependent questionnnaire is not displayed")
	public void verify_workflow_configure(String Label) {

		//String original = ec.getObjects("span_Txt") + Label +"']";
		String original = ec.getObjects("dependent_tooltiptext2");
		String formatXPATH = String.format(original);
		try {
		assertFalse(driver.findElement(By.xpath(formatXPATH)).getText().contains(Label));

		logger.info("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire " + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire " + "\n");
		}
		catch(Exception e) {
			logger.info("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire is not displyed" + "\n");
			System.out.println("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire is not displyed" + "\n");
		}
	}
		
		@Then("Click on button {string} for questionare {string}")
		public void Click_begin_quest(String btn,String quest) throws Throwable 
		{
			driver.switchTo().activeElement();
			String original = ec.getObjects("question_option_var1")+quest+ec.getObjects("question_btn2")+btn+"']";
			String formatXPATH = String.format(original);
			Thread.sleep(4000);
			driver.findElement(By.xpath(original)).click();

			System.out.println("\n" + "Clicked on "+btn+" button for "+quest + "\n");
			logger.info("\n" + "Clicked on "+btn+" button for " +quest + "\n");
		}
		
		@Then("Enter data in Email Address field for vodafone buyer")
		public void enter_data_in_Email_Address_field_nokia() throws Throwable {
			Thread.sleep(300);
			String original = ec.getObjects("email");
			String formatXPATH = String.format(original);
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("vodafonebuyer"));
			logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
			System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
		}
		@Then("Verify questionnaire message {string} is displyed")
		public void questionnaire_msg(String text) throws Throwable {
			String original = ec.getObjects("link_var1")+text+"']";
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).getText().contains(text));

			logger.info("Showing the message: " + text + " on questionnaire" + "\n");
			System.out.println("Showing the message: " + text + " on questionnaire" + "\n");

		}
		@Then("Scroll up the page")
		public void scroll_up_the_page() 
		{
			for(int i=0;i<=40;i++) {
			action.sendKeys(Keys.ARROW_UP).build().perform();
			}
			logger.info("Scrolled up the page" + "\n");
			System.out.println("Scrolled up the page" + "\n");
		}
}
