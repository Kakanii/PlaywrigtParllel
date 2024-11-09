package stepdefinition;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class versionHistory extends DriverEngine {
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

	@Then("Verify field name {string} is displaying in Version History tab at {string}")
	public void version_history(String fieldName, String row) throws Throwable {

		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(fieldName));

		logger.info("Field names are " + fieldName + " in Version History" + "\n");
		System.out.println("Field names are " + fieldName + " in Version History" + "\n");
	}

	@Then("Verify Onboadred value for {string} field is {string} at {string}")
	public void version_history_onboarded(String fieldName, String value, String row) throws Throwable {

		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(value));

		logger.info("Onboarded value for the field " + fieldName + " is " + value + "\n");
		System.out.println("Onboarded value for the field " + fieldName + " is " + value + "\n");
	}

	@Then("Verify Republished value for {string} field is {string} at {string}")
	public void version_history_Republished(String fieldName, String value, String row) throws Throwable {

		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(value));

		logger.info("Republished value for the field " + fieldName + " is " + value + "\n");
		System.out.println("Republished value for the field " + fieldName + " is " + value + "\n");
	}

	@Then("Verify Onboadred value for {string} field is at {string}")
	public void version_history_onboardCompany(String fieldName, String row) throws Throwable {
		String companyName = InviteSupplierPage.companyname;
		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(companyName));

		logger.info("Onboadred value for the field " + fieldName + " is " +companyName+ "\n");
		System.out.println("Onboadred value for the field " + fieldName + " is " + companyName+ "\n");
	}
	
	@Then("Verify Republished business name value for {string} field is {string} at {string}")
	public void version_history_Republished_businessname(String fieldName, String value, String row) throws Throwable {

		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		String businessName = InviteSupplierPage.companyname+value;
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(businessName));

		logger.info("Republished value for the field " + fieldName + " is " + businessName + "\n");
		System.out.println("Republished value for the field " + fieldName + " is " + businessName + "\n");
	}
	
	@Then("Click on the Search by supplier name and press Enter for businessname")
	public void click_on_the_Search_by_supplier_name_and_press_Enter() throws InterruptedException {
		  String businessName = InviteSupplierPage.companyname+RemainderSettings.republishbusinessName;
          String original = ec.getObjects("link_var1")+businessName+ec.getObjects("clickRow");
          String formatXPATH = String.format(original);
          WaitClass.clickableWait(formatXPATH);
          Thread.sleep(3000);
          driver.findElement(By.xpath(original)).click();
          Thread.sleep(3000);
           logger.info("Clicked on the Search by supplier name and press Enter" + "\n");
           System.out.println("Clicked on the Search by supplier name and press Enter" + "\n");

	    }
	
	@Then("Verify Onboadred value for legal business name field is at {string}")
	public void version_history_onboardlegalbusiness(String row) throws Throwable {
		String legalBuinessName = CommonStepDefs.legalBusinessName;
		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(legalBuinessName));

		logger.info("Onboadred value for the field legal business name is " +legalBuinessName+ "\n");
		System.out.println("Onboadred value for the field legal business name is " + legalBuinessName+ "\n");
	}
	@Then("Verify Republished legal business name field is {string} at {string}")
	public void version_history_Republished_businessname(String value, String row) throws Throwable {

		String original = ec.getObjects("republished") + row + "]";
		String formatXPATH = String.format(original);
		String businessName = CommonStepDefs.legalBusinessName+value;
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(businessName));

		logger.info("Republished value for legal business name is " + businessName + "\n");
		System.out.println("Republished value for legal business name is " + businessName + "\n");
	}
	
	@Then("Enter legal business name {string} field {string}")
	public void enter_legalBusinessName(String input,String Label) throws Throwable {

		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		logger.info("Entered legal business name is " + input + "\n");
		System.out.println("Entered legal business name is " + input + "\n");
	}
	@Then("Click on Ownership body")
	public void ownership_body() throws Throwable {

		String original = ec.getObjects("ownership_body");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on Ownership body "+"\n");
		System.out.println("Clicked on Ownership body " + "\n");
	}
	@Then("Click on Accept alert")
	public void accepth_alert() throws Throwable {

		driver.switchTo().alert().accept();
		logger.info("Clicked on Accept "+"\n");
		System.out.println("Clicked on Accept " + "\n");
	}
	@Then("Verify Republished {string} field is {string} as {string}")
	public void version_history_Republished_management_contact(String fieldName,String value, String subField) throws Throwable {

		String original = ec.getObjects("question_option_var1") + value + "']";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(value.trim()));

		logger.info("Republished field  " + value +"as "+subField+ "\n");
		System.out.println("Republished field  " + value +"as "+subField+ "\n");
	}
	@Then("Select the UNSPSC codes on the Basic information page for republish")
	public void select_the_UNSPSC_codes_on_the_Basic_information_page() throws Throwable {
		
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, -1000);");

		String originalsegment = ec.getObjects("addUNSPSC_segment_minaral");
		String formatXPATHsegment = String.format(originalsegment);

		WaitClass.webDriverWait(formatXPATHsegment);

		driver.findElement(By.xpath(originalsegment)).click();

		Thread.sleep(2000);

		String originalfamily = ec.getObjects("basicinfo_UNSPSC_family");
		String formatXPATHfamily = String.format(originalfamily);

		WaitClass.webDriverWait(formatXPATHfamily);

		driver.findElement(By.xpath(originalfamily)).click();

		Thread.sleep(3000);

		String originalclass = ec.getObjects("basicinfo_UNSPSC_calss");
		String formatXPATHclass = String.format(originalclass);

		WaitClass.webDriverWait(formatXPATHclass);

		driver.findElement(By.xpath(originalclass)).click();

		Thread.sleep(3000);

		String originalcommodity = ec.getObjects("basicinfo_UNSPSC_commodity");
		String formatXPATHcommodity = String.format(originalcommodity);

		WaitClass.webDriverWait(formatXPATHcommodity);

		driver.findElement(By.xpath(originalcommodity)).click();

		Thread.sleep(3000);

		String addbutton = ec.getObjects("basiinfo_unspsc_add");
		String formatXPATHadd = String.format(addbutton);

		WaitClass.webDriverWait(formatXPATHadd);

		driver.findElement(By.xpath(addbutton)).click();

		

		Thread.sleep(1000);

		String originalconfirm = ec.getObjects("basicinfo_unspsc_confirm");
		String formatXPATHconfirm = String.format(originalconfirm);

		WaitClass.webDriverWait(formatXPATHconfirm);

		driver.findElement(By.xpath(originalconfirm)).click();

		Thread.sleep(1000);

		logger.info("Click on the UNSPSC codes on the Basic information page " + "\n");
		System.out.println("Click onthe UNSPSC codes on the Basic information page" + "\n");
	}
}
