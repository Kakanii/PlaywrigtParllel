package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SupplierOhHold extends DriverEngine{
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
	String cName;
	
	@Then("Click on the same supplier name elipses button")
	public void click_on_the_Search_elipses_button() throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("link_var1")+cName+ec.getObjects("elipse_Button");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the same supplier name elipses button" + "\n");
		System.out.println("Clicked on the same supplier name elipses button" + "\n");
	}
	@Then ("Click on button {string} for {string}")
	public void click_suppProfile_label_btn(String Label, String subCat) {

		String original = ec.getObjects("div_txt") + Label +"']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " button for " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " button for " + subCat + "\n");
	}
	@Then("Verify the supplier is {string}")
	public void verify_supplier_onHold(String text) throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("link_var1")+cName+ec.getObjects("on_hold")+text+"']";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(text));
		logger.info("Clicked on the same supplier name elipses button" + "\n");
		System.out.println("Clicked on the same supplier name elipses button" + "\n");
	}
	@Then ("Verify the supplier On-Hold {string} selected is {string}")
	public void verified_sipplier_reason(String reason,String Label) {

		String original = ec.getObjects("div_txt") + Label +"']";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Label));
		logger.info("Verified supplier On-Hold "+reason+"selected is " + "'" + Label + "\n");
		System.out.println("Verified supplier On-Hold "+reason+" selected is " + "'" + Label + "\n");
	}
	@Then ("Verify button {string} is visible for {string}")
	public void verify_btn_is_visible(String Label, String subCat) {

		String original = ec.getObjects("div_txt") + Label +"']";
		String formatXPATH = String.format(original);

		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verify button " + "'" + Label + "'" + " is visible for " + subCat + "\n");
		System.out.println("Verify button " + "'" + Label + "'" + " is visible for " + subCat + "\n");
	}
	@Then ("Scroll horizontally")
	public void set_zoom() {

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(500,0)");

		logger.info("set Zoom level"+"\n");
		System.out.println("set zoom level "+"\n");
	}
	@Then ("Verify radio button {string} is enabled for {string}")
	public void reason_radioBtn(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("select_actions");
		String formatXPATH = String.format(original);

		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " radio button enable " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " radio button enable " + subCat + "\n");
	}
	@Then ("Show {string} error message {string} is diplaying")
	public void erro_ohHold(String Label, String subCat) {

		String original = ec.getObjects("div_txt") + Label +ec.getObjects("req_error_on_Hold")+subCat+"']";
		String formatXPATH = String.format(original);

		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subCat));

		logger.info("Verified " + "'" + Label + "'" + " message is displaying " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " message is displaying " + subCat + "\n");
	}
	
	@Then("Show tooltip {string} for the label documents {string}")
	public void show_tooltip_teams(String Label, String tooltip) throws InterruptedException {

		String original = ec.getObjects("div_txt") + Label + ec.getObjects("doc_tooltip");
		String original2 = ec.getObjects("link_var1") + tooltip + "']";
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(original2);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		WaitClass.clickableWait(formatXPATH2);
		assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(tooltip));
		//driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + Label + "' tooltip: " + tooltip + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + tooltip + "\n");

	}

}
