package stepdefinition;

import static org.testng.Assert.assertFalse;

import static org.testng.Assert.assertTrue;
import org.testng.Assert;


import java.util.ArrayList;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
//import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import java.util.List;
import org.openqa.selenium.WebElement;

public class SRM2 extends DriverEngine {
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

	@Then("Click on {string} icon for {string} role on {string}")
	public void Click_on_icon_for_role_on(String action, String Label, String page) {

		String original = ec.getObjects("verify_notification12") + Label + ec.getObjects("verify_notification2")
				+ ec.getObjects("siblinglabel") + ec.getObjects("corp_status1") + action
				+ ec.getObjects("parentbutton");
		// td[contains(text(),'Export
		// Regulations')]/following-sibling::td[2]//span[contains(text(),'Edit')]
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on " + "'" + action + "'" + " on " + page + "\n");
		System.out.println("clicked on " + "'" + action + "'" + " on " + page + "\n");

	}

	@Then("Verify {string} security module is displayed on {string}")
	public void verify_security_module_is_displayed(String label, String page) {
		String original = ec.getObjects("labelvalue") + label + ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Able to view the " + label + "on " + "Edit permission page" + "\n");
		System.out.println("Able to view the " + label + " on " + "Edit permission page" + "\n");
	}

	@Then("Verify {string} is displayed under {string} security module")
	public void verify_is_displayed_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingsmalltetx") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(label));
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Able to view the " + label + "under" + page + "\n");
		System.out.println("Able to view the " + label + "under" + page + "\n");
	}

	@Then("Verify {string} permission is displayed under {string} security module")
	public void verify_permission_is_displayed_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermission") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(label));
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Able to view the " + label + "under" + page + "\n");
		System.out.println("Able to view the " + label + "under" + page + "\n");
	}

	@Then("Click on {string} permission is displayed under {string} security module")
	public void click_on_permission_is_displayed_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermission") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on" + label + "under" + page + "\n");
		System.out.println("clicked on" + label + "under" + page + "\n");
	}

	@Then("Verify {string} permission is selected under {string} security module")

	public void verify_permission_is_selected_under_security_module(String label, String page) {
		// String original =
		// ec.getObjects("labelvalue")+page+ec.getObjects("anyText_var2")+ec.getObjects("siblingpermission")+label+ec.getObjects("corp_status2");
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermissionlabel") + label + ec.getObjects("anyText_var2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isSelected());
		// assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Able to view the " + label + "under" + page + "\n");
		System.out.println("Able to view the " + label + "under" + page + "\n");
	}

	@Then("Verify {string} permission is unselected under {string} security module")

	public void verify_permission_is_unselected_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermission") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isSelected());
		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Able to view the " + label + "under" + page + "\n");
		System.out.println("Able to view the " + label + "under" + page + "\n");
	}

	@Then("Verify the {string} on {string} screen")
	public void Verify_the_on_screen(String strArg1, String abc) throws Throwable {

		String original = ec.getObjects("any_button_var1") + strArg1 + "')]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified the" + strArg1 + "on" + abc + "screen" + "\n");
		System.out.println("Verified the" + strArg1 + "on" + abc + "screen" + "\n");
	}

	@Then("Click on {string} permission under {string} security module")
	public void click_on_permission_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermissionlabel") + label + ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on" + label + "under" + page + "\n");
		System.out.println("clicked on" + label + "under" + page + "\n");
	}

	@Then("Enter {string} in the {string} Box")
	public void enter_in_the_Box(String label, String abc) {
		String original = ec.getObjects(abc);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(label);

		System.out.println("Enter the Notes" + "\n");

	}

	@Then("Select {string} option under {string}")
	public void select_option_under(String fieldName, String quest) {

		String original = ec.getObjects("input_by_placeholder") + quest + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(fieldName);
		driver.findElement(By.xpath(original)).click();

		logger.info("Selected " + fieldName + " under " + quest + "\n");
		System.out.println("Selected " + fieldName + " under " + quest + "\n");
	}

	@Then("Verify visibility of {string} on the approval parameters settings page")
	public void verify_visibility_of_on_the_approval_parameters_settings_page(String fieldName) {
		String original = ec.getObjects(fieldName);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of " + fieldName + "on the approval parameters settings page" + "\n");
	}

	@Then("Click on the {string} role option on RA on Configureworkflows")
	public void click_on_the_role_option_on_RA_on_Configureworkflows(String string) throws Throwable {
		String original = ec.getObjects("rolesonRA") + string + ec.getObjects("inputfield_end");

		// String original = ec.getObjects("LocationCard");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("Verify {string} is visible")
	public void Verify_is_visible(String str) throws Throwable {

		String original = ec.getObjects(str);
		String formatXPATH = String.format(original);
		// driver.switchTo().frame(0);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("verified" + str + "\n");
		System.out.println("verified" + "\n");

	}

	@Then("Change row per page on internal assessment to {string}")
	public void change_row_per_page_to_internal_assessment(String rows) throws Throwable {
		String original = ec.getObjects(rows);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select rowsPerPage = new Select(driver.findElement(By.xpath(ec.getObjects(rows))));
		rowsPerPage.selectByVisibleText(rows);

		logger.info("Selected Rows per page" + "on My Suppliers page" + "\n");
		System.out.println("Selected Rows per page " + " on My Suppliers page" + "\n");

		Thread.sleep(3000);

	}

	@Then("verify {string} tab is visible")
	public void verify_tab_is_visible(String tab) {
		String original = ec.getObjects("listofbuttonunderaa");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
	assertTrue(allstr.contains(tab));
			logger.info("Verified " + "Configure Workflow" + " buttons are visible" + "\n");
	
	}
	
	@Then("verify {string} tab is not visible")
	public void verify_tab_is_not_visible(String tab) {
		String original = ec.getObjects("listofbuttonunderaa");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains(tab));
		logger.info("Verified " + "Configure Workflow" + " buttons are not visible" + "\n");
	}

	@Then("verify {string} tab visibility or not")
	public void verifyButton(String label) {

		String OriginalExp = ec.getObjects("sideBar_tabs_var1") + label + ec.getObjects("inputfield_end");

		System.out.println(OriginalExp);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(String.valueOf(OriginalExp))));
		boolean flag = driver.findElement(By.xpath(String.valueOf(OriginalExp))).isDisplayed();

		System.out.println(flag);
		if (flag) {
			Assert.assertTrue(true, "label is displayed");
			logger.info(label + "Label is displayed ");
		} else {
			System.out.println("Label not displayed");
			logger.info(label + "Label is not displayed ");
		}
	}

	
	
	
	
}
