package stepdefinition;

import static org.testng.Assert.ARRAY_MISMATCH_TEMPLATE;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class RevalidationConfiguraiton extends DriverEngine{
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
	
	@Then("Verify page header {string} under Revalidation Configuration")
	public void remainder_PageTitle(String label) {
		String original = ec.getObjects("span_Txt")+label+"']";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));
		logger.info("Showing page title " + label + "\n");
		System.out.println("Showing page title " + label + "\n");

	}
	@Then("Verify the page title description {string} under Revalidation Configuration")
	public void remainder_description(String description) {

		String original = ec.getObjects("tnc_checkbox_var1") + description + ec.getObjects("btn2");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(description));

		logger.info("Clicked on " + description + "\n");
		System.out.println("Clicked on " + description + "\n");

	}
	@Then("Verify {string} field label visible under for {string}")
	public void filter_field_visible(String label,String subCat) {

		String original = ec.getObjects("label_registration") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} field label visible for {string}")
	public void div_field_visible(String label,String subCat) {

		String original = ec.getObjects("div_txt") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	
	@Then("Verify {string} legend field label visible for {string}")
	public void legend_field_visible(String label,String subCat) {

		String original = ec.getObjects("legend_txt") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} select input visible for {string}")
	public void select_input_visible(String label,String subCat) {

		String original = ec.getObjects("select_dropDown") + label + "']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} dropdown input visible for {string}")
	public void dropdown_input_visible(String label,String subCat) {

		String original = ec.getObjects("div_txt") + label + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} dropdown label input visible for {string}")
	public void dropdown_label_input_visible(String label,String subCat) {

		String original = ec.getObjects("label_registration") + label + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	
	
	@Then("Verify {string} select input enable for {string}")
	public void select_input_enable(String label,String subCat) {

		String original = ec.getObjects("select_dropDown") + label + "']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} dropdown input enable for {string}")
	public void dropdown_input_enable(String label,String subCat) {

		String original = ec.getObjects("div_txt") + label + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Verify {string} dropdown label input enable for {string}")
	public void dropdown_label_input_enable(String label,String subCat) {

		String original = ec.getObjects("label_registration") + label + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Show {string} Tooltip description as {string} in {string}")
	public void verify_tooltip_displyed(String Label, String TTexpected, String page) throws Throwable {
		String original = ec.getObjects("tooltip1") + Label + ec.getObjects("tooltip2");
		String tooltiptext = ec.getObjects("div_txt") + TTexpected + "']";
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		assertTrue(TTactual.contains(TTexpected.trim()));
		driver.findElement(By.xpath(formatXPATH)).click();
		

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");

	}
	
	@Then("Select {string} value from {string} category")
	public void select_diversity_category(String label,String subCat)  throws Throwable {
		String original = ec.getObjects("div_txt") + subCat + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);
		String dropDownText = ec.getObjects("input_field")+label+ec.getObjects("label_var2");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(label);
		Thread.sleep(4000);
		Actions action = new Actions(driver);
		action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();


		logger.info("Selected the " + label + " value from  "+subCat+"category" + "\n");
		System.out.println("Selected the" + label + " value from  "+ subCat+"category "+"\n");
	}
	
	@Then("Click on {string} div button")
	public void click_div_btn(String label) {

		String original = ec.getObjects("div_txt") + label + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked "+label+" button "+"\n");
		System.out.println("Clicked "+label+" fbutton " + "\n");
	}
	@Then("Enter the Notes under Initiate Revalidation note box")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("text_area");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Demo1");

		
		logger.info("Entered notes  "+"\n");
		System.out.println("Entered notes " + "\n");
	    
	}
	@Then("Verify status as {string} from buyer side")
	public void verify_status_buyer(String label) {

		String original = ec.getObjects("span_Txt") + label + "']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" status is displed "+ "\n");
		System.out.println("Verified "+label+" status is displed" + "\n");
	}
	
	@Then("Enter the Notes under notes for buyer Notes Box")
	public void enter_the_Notes_under_notes_for_buyer_Box() {
		String original = ec.getObjects("teat_area_buyer");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Accept");

		
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}
	@Then("Select {string} value from {string} custom fields")
	public void select_custom_fields_category(String label,String subCat)  throws Throwable {
		String original = ec.getObjects("label_registration") + subCat + ec.getObjects("inputText_var4");
		String formatXPATH = String.format(original);
		String dropDownText = ec.getObjects("input_field")+label+ec.getObjects("label_var2");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(label);
		Thread.sleep(4000);
		Actions action = new Actions(driver);
		action.sendKeys(Keys.ENTER).build().perform();
		//action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();


		logger.info("Selected the " + label + " value from  "+subCat+"category" + "\n");
		System.out.println("Selected the" + label + " value from  "+ subCat+"category "+"\n");
	}
	
	@Then("Click on {string} button for revalidation configuration")
	public void click_delete_btn_config(String label) {

		String original = ec.getObjects("delete_config");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked "+label+" button "+"\n");
		System.out.println("Clicked "+label+" fbutton " + "\n");
	}
	@Then("Verify periodic revalidation date")
	public void periodicrevalidationdate() {

		String original = ec.getObjects("periodic_Revalidation_date");
		String formatXPATH = String.format(original);

		String date=driver.findElement(By.xpath(formatXPATH)).getText();

		logger.info("Verified "+date+" is the next periodic revalidation date "+"\n");
		System.out.println("Verified "+date+" is the next periodic revalidation date " +"\n");
	}
}
