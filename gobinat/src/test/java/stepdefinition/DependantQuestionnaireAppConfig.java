package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class DependantQuestionnaireAppConfig extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	Logger logger = Logger.getLogger(DependantQuestionnaireAppConfig.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();
	
	@Then("Click on {string} installed app button")
	public void installed_app_click(String app) throws Exception {
		
		String original = ec.getObjects("headLabel_var") + app + ec.getObjects("app_row");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + app + " installed app button"+"\n");
		System.out.println("Clicked on " + app + " installed app button"+"\n");
	}
	@Then("Verify the page title description {string} under Dependent Questionnaire Third party")
	public void remainder_description(String description) {

		String original = ec.getObjects("page_description");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(description));

		logger.info("Verified page description as " + description + "\n");
		System.out.println("Verified page description as" + description + "\n");

	}
	@Then("Verify the page title {string} under Dependent Questionnaire Third party")
	public void pagetitle_description(String title) {

		String original = ec.getObjects("corp_ownership1") + title + "')]";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(title));

		logger.info("Verified page title as " + title + "\n");
		System.out.println("Verified page title as" + title + "\n");

	}
	@Then("Verify {string} button is visible under {string} at {string}")
	public void verify_createConfig_btn_visible(String Label, String subCat,String btnno) {

		String original = ec.getObjects("createrule_btn") + Label + "')])["+btnno+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " button is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button is displyed under" + subCat + "\n");
	}
	@Then("Verify {string} label is displaying under {string} at {string}")
	public void verify_label_btn_visible(String Label, String subCat,String btnNo) {

		String original = ec.getObjects("createRulecollapse1") + Label + "'])["+btnNo+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} button is enabled under {string} at {string}")
	public void verify_createConfig_btn_enable(String Label, String subCat,String btnno) {

		String original = ec.getObjects("createrule_btn") + Label + "')])["+btnno+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " button is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button is enabled under" + subCat + "\n");
	}
	@Then("Verify {string} label is enabled under {string} at {string}")
	public void verify_label_btn_enable(String Label, String subCat,String btnNo) {

		String original = ec.getObjects("createRulecollapse1") + Label + "'])["+btnNo+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
	}
	
	@Then("Select value {string} from criteria")
	public void select_the_option_for_assigncontact(String string) throws Throwable {

		String original = ec.getObjects("select_criteria");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(formatXPATH)));
		drpCompany.selectByVisibleText(string);
		logger.info("Selected " + " " + string + " " + " for criteria" + "\n");
		System.out.println("selected" + " " + string + " " + " for criteria" + "\n");
	}
	@Then("Verify {string} error message for {string} on app config at {string}")
	public void verify_workflow_configure(String error, String Label,String no) {

		String original = ec.getObjects("dependent_label") + Label + ec.getObjects("stockExchange_radio_var2")+error+"'])["+no+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(error.trim()));

		logger.info("Verifyed " + "'" + error + "'" + " label under " + Label + "\n");
		System.out.println("Verifyed " + "'" + error + "'" + " label under " + Label + "\n");
	}
	@Then("Click {string} label button under for {string}")
	public void click_delete_config_btn(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + ec.getObjects("delete_config1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
	}
	@Then("Select value {string} from second criteria")
	public void select_the_option_for_assigncontactSecond(String string) throws Throwable {

		String original = ec.getObjects("select_criteria2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(formatXPATH)));
		drpCompany.selectByVisibleText(string);
		logger.info("Selected " + " " + string + " " + " for criteria" + "\n");
		System.out.println("selected" + " " + string + " " + " for criteria" + "\n");
	}
	@Then("Select {string} option for {string} in Configure Dependent Questionnaire at {string} for add more at {string}")
	public void select_answer_dependenet(String ans,String quest,String cat,String secondCount) {

		String original = ec.getObjects("dependent_label2") + quest +ec.getObjects("dropdown_dependent_quest2")+cat+"'])["+secondCount+"]";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ans);
		String original2 = ec.getObjects("input_field")+ans+ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + ans +" as "+quest+ "\n");
		System.out.println("Selected " + ans + " as "+quest+ "\n");
	}
	
}
