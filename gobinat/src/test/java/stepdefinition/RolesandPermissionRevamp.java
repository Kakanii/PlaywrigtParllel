package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class RolesandPermissionRevamp extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	public static String Australiancn;
	public static String ApprovalCondition = null;
	Logger logger = Logger.getLogger(SRM2.class);
    WebDriverWait wait = new WebDriverWait(driver, 300);


	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

			
		@Then("Verify visibility of {string} permission under {string} security module")

		public void verify_visibility_of_permission_under_security_module(String label, String page) {
		
			
			String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
			+ ec.getObjects("siblingpermissionlabel") + label + ec.getObjects("anyText_var2");
	       String formatXPATH = String.format(original);

			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
			System.out.println("verified visibility of " + label + "under" + page + "security module" + "\n");
		}
		
		
		@Then("Verify {string} displayed under {string} on action center")
		public void verify_displayed_under_on_action_center(String label, String page) {
			String original = ec.getObjects("contentxpath") + label + ec.getObjects("Value2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

			logger.info("Able to view the " + label + "under " + page + "on action center page" + "\n");
			System.out.println("Able to view the " + label + "under " + page + "on action center page" + "\\n");
		}
		
		@Then("Verify {string} edit button is enabled under {string}")
		public void Verify_edit_button_is_enabled_under(String label, String subCat) {

			String original = ec.getObjects(label);
			String formatXPATH = String.format(original);

			WaitClass.clickableWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(original)).isEnabled());
			logger.info("Able to view the " + "Edit button enabled" + "under " + subCat + "on action center page" + "\n");
			System.out.println("Able to view the " + "Edit button enabled" + "under " + subCat + "on action center page" + "\\n");
		}
		
		@Then("Click on {string} edit button under {string}")
		public void Click_on_edit_button_under(String label, String subCat) {

			String original = ec.getObjects(label);
			String formatXPATH = String.format(original);

			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
			logger.info("Able to click the " + "Edit button" + "under " + subCat + "on action center page" + "\n");
			System.out.println("Able to click the " + "Edit button" + "under " + subCat + "on action center page" + "\\n");
		}
		
		@Then("click on {string} on Connected Suppliers page record")
		public void click_on_on_Connected_Suppliers_page_record(String label) 
		{
			String original = ec.getObjects("buyer_search")+label+ec.getObjects("selectAll_role2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();

			logger.info("clicked on"+label +" on Connected Suppliers page" + "\n");
			System.out.println("clicked on"+label +" on Connected Suppliers page" + "\n");
		}

		@Then("Verify {string} which is {string} is not visible on page")
		public void Verify_which_is_is_not_visible_on_page(String mngquest, String manglabel) {

			String original = ec.getObjects(mngquest);
			String formatXPATH = String.format(original);
			List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
			List<String> allstr = new ArrayList<String>();
			for (int i = 0; i < lists.size(); i++) {
				String strText = lists.get(i).getText();
				allstr.add(strText);
			}
			assertTrue(!allstr.contains(manglabel));

			logger.info("Verified " +manglabel+" is not visible for other user login " + "\n");
		}
		
		@Then("Click on {string} on the {string} questionaire in managequestionnaire screen")
		public void Click_on_on_the_questionaire_in_managequestionnaire_screen(String button, String questionnaire) throws Throwable {
			String original = ec.getObjects("open_label1") + questionnaire + ec.getObjects("mquestionnairescrn") + button +"')]";
			String formatXPATH = String.format(original);
			driver.findElement(By.xpath(original)).click();

			logger.info("\n" + "Clicked on" +button+ " on the manage questionnaire screen" + "\n");
		}
	}


