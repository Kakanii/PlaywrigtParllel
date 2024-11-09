package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class WorkflowDropdown extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public static String Australiancn;

	Logger logger = Logger.getLogger(WorkflowDropdown.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	@Then ("Verify {string} button is not displaying under {string}")
	public void verify_dependentQuestionaire_btn_visible(String Label, String subCat) {

		String original = ec.getObjects("workFlowDropdowns");
		String formatXPATH = String.format(original);
		List<WebElement> dropdowns = driver.findElements(By.xpath(formatXPATH));
		for(int i=0;i<dropdowns.size();i++) {
			if(!dropdowns.get(i).getText().contains(Label)) {
				logger.info("Verified " + "'" + Label + "'" + " label is not displyed under " + subCat + "\n");
				System.out.println("Verified " + "'" + Label + "'" + " label is not displyed under " + subCat + "\n");
		}
		}
		
	}

	@Then("Verify No checklist message {string}")
	public void no_checklist_message(String string) throws Throwable {
		String original = ec.getObjects("link_var1") + string + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows a message" + " " + string + " " + "in checklist message" + "\n");
		System.out.println("Shows a message " + " " + string + " " + "in checklist messages" + "\n");
	}
}
