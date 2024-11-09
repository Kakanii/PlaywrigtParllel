package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class Thirdparty extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();
	public static String newSupplierName;

	Logger logger = Logger.getLogger(Thirdparty.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();
	
	@Then("Click on {string} suitable selection")
	public void click_on_suitable_selection(String strvalue) throws Exception {

		String original = ec.getObjects("filteredstatus") + strvalue + ec.getObjects("filteredstatuspre");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on: " + strvalue + "\n");
		System.out.println("Clicked on: " + strvalue + "\n");
	}
	

	@Then("Click on {string} button on External Identifiers")
	public void click_on_button_on_External_Identifiers(String btn) throws Exception {

		String original = ec.getObjects("create_config_btn") + btn + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on: " + btn + "\n");
		System.out.println("Clicked on: " + btn + "\n");
	}
	
	@Then("Verify {string} Label in Basic Information")
	public void verify_Label_in_Basic_Information(String strvalue) 
	{
		String original = ec.getObjects("filteredstatus") + strvalue + ec.getObjects("filteredstatuspre");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertfalse(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Showing Number input text under Corporate Relations "+ "\n");
		System.out.println("Showing Number input text under Corporate Relations " + "\n");
	}


	private void assertfalse(boolean enabled) {
		// TODO Auto-generated method stub
		
	}
	
	@Then("Click on Edit Icon on External identifiers")
	public void clickFindID() throws Throwable {

		String original = ec.getObjects("Editicononexternalid");
		String formatXPATH = String.format(original);
		/*
		 * for (int k = 0; k < 4; k++) try {
		 * driver.findElement(By.xpath(formatXPATH)).click(); break; } catch
		 * (StaleElementReferenceException e) { WebDriverWait wait = new
		 * WebDriverWait(driver, 120); wait.until(ExpectedConditions
		 * .refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(
		 * formatXPATH))))); logger.info("Trying to recover from a stale element :" +
		 * e.getMessage() + "\n");
		 * System.out.println("Trying to recover from a stale element :" +
		 * e.getMessage()); }
		 */
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on edit Find ID" + "\n");
		System.out.println("Clicked on edit Find ID" + "\n");
	}
	@Then("Click on search feild on Market place")
	public void click_on_search_feild_on_Market_place() throws Exception {
		String original = ec.getObjects("MPsearch");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(200);
		logger.info("Click on " + "search" + " button on ");
		System.out.println("Click on " + "search"  + " button on ");
	}

	@When("Enter {string} in Search Market place")
	public void enter_in_Search_Market_place(String string) 
	{
		//driver.switchTo().frame("iFrameResizer1");
		//ystem.out.println("Switched to Iframe" + "\n"); 
		
		String original = ec.getObjects("MPsearch");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		driver.findElement(By.xpath(original)).sendKeys(Keys.BACK_SPACE);

		logger.info("Enetered"+ string + "in App Name Search field on market place" + "\n");
		System.out.println("Enetered"+ string + "in App Name Search field on market place" + "\n"); 
	}
	@Then("Click on app on Market place")
	public void click_on_app_on_Market_place() throws Exception {
		String original = ec.getObjects("appcard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(200);
		logger.info("Click on " + "search" + " button on ");
		System.out.println("Click on " + "search"  + " button on ");
	}
	@Then("Verify {string} attibute visibility")
	public void verify_attibute_visibility(String tab) {
		String original = ec.getObjects("invite_user_error1") + tab + ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of " + tab + " attibutes on app" +"\n");
	}
	
	@Then("Verify the {string} is visible under Approval Source")
	public void Verify_the_is_visible_under_Approval_Source(String label) {
		String original = ec.getObjects("diversity_tooltip1")+label+ec.getObjects("naicsvalue2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("verified" + label + " Approval sounce "+ "\n");
		System.out.println("verified"  + label + " Approval sounce  "+ "\n");
	
	}
	
	@Then("Verify the {string} on Approval details screen")
	public void Verify_the_on_Approval_details_screen(String strArg1) throws Throwable {

		String original = ec.getObjects("any_button_var1") + strArg1 + "')]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified the" + strArg1 +"on Approval details screen" + "\n");
		System.out.println("Verified the" + strArg1 +"on Approval details screen" + "\n");
	}
	@Then("Verify the {string} label on Approval details screen")
	public void Verify_the_label_on_Approval_details_screen(String strArg1) throws Throwable {

		String original = ec.getObjects("label123") + strArg1 + "')]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified the" + strArg1 +"on Approval details screen" + "\n");
		System.out.println("Verified the" + strArg1 +"on Approval details screen" + "\n");
	}
	
	@Then("Verify {string} tab visibility on App")
	public void verify_tab_visibility_on_App(String tab) {
		String original = ec.getObjects("custom_fld_btn1") + tab + ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of " + tab + " tab in app store" +"\n");
	}
	
	@Then("Verify the {string} label on App")
	public void Verify_the_label_on_App(String strArg1) throws Throwable {

		String original = ec.getObjects(strArg1);
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified the" + strArg1 +"on Approval details screen" + "\n");
		System.out.println("Verified the" + strArg1 +"on Approval details screen" + "\n");
	}
	@Then("Click on {string} on the app")
	public void click_on_the_app(String appname) throws Throwable
	{
		String original = ec.getObjects(appname);		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on App"+"\n");
		System.out.println("Clicked on Appl"+"\n"); 
		Thread.sleep(10000);
	}
	
	@Then("click on {string} tab visibility on App")
	public void click_on_tab_visibility_on_App(String tab) {
		String original = ec.getObjects("custom_fld_btn1") + tab + ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();		
		System.out.println("verified visibility of " + tab + " tab in app store" +"\n");
	}
	@Then("Click on {string} tab on appconfig")
    public void Click_on_tab_on_appconfig(String strArg1) throws Throwable {
		String original = ec.getObjects("custom_fld_btn1") + strArg1 + ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
	
		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on" + strArg1 + "" + "\n");
		System.out.println("clicked on" + strArg1 + "" + "\n");

    }
	
	
}
