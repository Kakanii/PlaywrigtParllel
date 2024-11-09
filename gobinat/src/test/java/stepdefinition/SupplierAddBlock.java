package stepdefinition;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SupplierAddBlock extends DriverEngine{
	
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	
	public static String Australiancn;

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	
	@Then("Enter other reason under other reason Notes Box")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("other_reason");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Accept");

		
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}
	@Then("Click on the publish button for lifecycle updates review")
	public void click_on_the_publish_button_lifecycle() throws Throwable {

		String original = ec.getObjects("reviewandpublish_publish");
		String formatXPATH = String.format(original);
		try {
		WaitClass.clickableWait(formatXPATH);	
		driver.findElement(By.xpath(original)).click();
		}
		catch (StaleElementReferenceException e) {
			WaitClass.stalenessWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Clicked on the publish button" + "\n");
		System.out.println("Clicked on the publish button" + "\n");
	}

}
