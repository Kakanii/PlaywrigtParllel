package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.commons.lang.RandomStringUtils;
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
import org.openqa.selenium.support.ui.Select;

public class RemainderSettings extends DriverEngine {

	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);
	public String reminderName;
	public static String republishbusinessName;

	@Then("Verify page header {string} under Reminder settings")
	public void remainder_PageTitle(String label) {
		String original = ec.getObjects("page_title")+label+"']";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));

		logger.info("Showing page title " + label + "\n");
		System.out.println("Showing page title " + label + "\n");

	}

	@Then("Verify the page title description {string} under Remainder settings")
	public void remainder_description(String description) {

		String original = ec.getObjects("tnc_checkbox_var1") + description + ec.getObjects("btn2");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(description));

		logger.info("Clicked on " + description + "\n");
		System.out.println("Clicked on " + description + "\n");

	}

	@Then("Click on {string} button from buyer side")
	public void click_adminAction(String label) {

		String original = ec.getObjects("input_field") + label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + label + "\n");
		System.out.println("Clicked on " + label + "\n");

	}

	@Then("Verify {string} button is visible under {string}")
	public void verify_createConfig_btn_visible(String Label, String subCat) {

		String original = ec.getObjects("btn1") + Label + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " button is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button is displyed under" + subCat + "\n");
	}

	@Then("Verify {string} button is enabled under {string}")
	public void verify_createConfig_btn_enable(String Label, String subCat) {

		String original = ec.getObjects("btn1") + Label + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " button is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button is enabled under" + subCat + "\n");
	}

	@Then("Click on {string} button under admin actions")
	public void click_remainderSettings(String label) {

		String original = ec.getObjects("tnc_checkbox_var1") + label + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + label + "\n");
		System.out.println("Clicked on " + label + "\n");

	}

	@Then("Verify input text field is visible under {string}")
	public void input_txt_field_visible(String label) {

		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified input text field is visible under " + label + "\n");
		System.out.println("Verified input text field is visible under " + label + "\n");
	}

	@Then("Verify {string} button is visible for {string}")
	public void nbr_incre_btn_visible_startDay(String btn, String label) {

		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("reminder_input2")
				+ ec.getObjects("upDownNumber") + btn + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+btn+" button is visible under "+label+" " + "\n");
		System.out.println("Verified "+btn+" button is visible under "+label+ "\n");
	}

	
	@Then("Show {string} label in Create configuration")
	public void show_remainder_lable(String Label) {

		String original = ec.getObjects("remainder_name");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + Label + "'" + " label in Create configuration" + "\n");
		System.out.println("Showing " + "'" + Label + "'" + " label in Create configuration" + "\n");
	}

	@Then("Verify Edit button is visible in {string}")
	public void edit_btn_visible(String label) {

		String original = ec.getObjects("edit_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified Verify Edit button is visible in " + label + "\n");
		System.out.println("Verified Verify Edit button is visible in " + label + "\n");
	}

	@Then("Verify {string} button is displayed under {string}")
	public void btn_visible_remainder(String btn, String label) {

		String original = ec.getObjects("btn1") + btn + "')]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " button is displayed under " + label + "\n");
		System.out.println("Verified " + btn + " button is displayed under " + label + "\n");
	}

	@Then("Verify {string} dropdown value is visible under {string} input for {string}")
	public void remainder_dropdown(String label, String SubCat, String dropDown) {

		String original = ec.getObjects("remainder_dropdown1") + SubCat + ec.getObjects("remainder_dropdown2")
				+ dropDown + ec.getObjects("remainder_dropdown3") + label + ec.getObjects("remainder_dropdown4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + dropDown + " is displayed under " + label + "\n");
		System.out.println("Verified " + dropDown + " is displayed under " + label + "\n");
	}

	@Then("Verify CC role input filed is visible")
	public void input_CC_visible() {

		String original = ec.getObjects("cc_role_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified CC role input filed is visible " + "\n");
		System.out.println("Verified CC role input filed is visible" + "\n");
	}

	@Then("Verify Edit button is enable in {string}")
	public void edit_btn_enable(String label) {

		String original = ec.getObjects("edit_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified Verify Edit button is enable in " + label + "\n");
		System.out.println("Verified Verify Edit button is enable in " + label + "\n");
	}

	@Then("Verify {string} button is enable under {string}")
	public void btn_enable_remainder(String btn, String label) {

		String original = ec.getObjects("btn1") + btn + "')]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " button is enable under " + label + "\n");
		System.out.println("Verified " + btn + " button is enable under " + label + "\n");
	}

	@Then("Scroll to the element")
	public void scroll_to_element() throws InterruptedException {
		String original = ec.getObjects("edit_btn");
		String formatXPATH = String.format(original);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
	}

	@Then("Select {string} value from {string} label")
	public void select_dropdownValue(String value, String SubCat) {

		String original = ec.getObjects("select_dropDown") + SubCat + "']";
		String formatXPATH = String.format(original);
		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(value);

		logger.info("Selected " + value + " under " + SubCat + "\n");
		System.out.println("Selected " + value + " under " + SubCat + "\n");
	}

	@Then("Click on {string} button for {string}")
	public void btn_click_remainder(String btn, String label) {

		String original = ec.getObjects("create_config_btn") + btn + "']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + btn + " button for " + label + "\n");
		System.out.println("Clicked " + btn + " button for " + label + "\n");
	}

	@Then("Show {string} error message for {string}")
	public void error_msg_dropdown(String error, String label) {

		String original = ec.getObjects("error_Req1") + label + ec.getObjects("error_req2");
		String formatXPATH = String.format(original);
		Assert.assertEquals(error, driver.findElement(By.xpath(formatXPATH)).getText().trim());
		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + error + " is displayed under " + label + "\n");
		System.out.println("Verified " + error + " is displayed under " + label + "\n");
	}

	@Then("Show {string} error message for input value {string}")
	public void errorMsg_input(String error, String label) {

		String original = ec.getObjects("error_input_req1") + label + ec.getObjects("error_input_req2");
		String formatXPATH = String.format(original);
		Assert.assertEquals(error, driver.findElement(By.xpath(formatXPATH)).getText().trim());
		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + error + " is displayed under " + label + "\n");
		System.out.println("Verified " + error + " is displayed under " + label + "\n");
	}

	@Then("Enter input value {string} in {string} field")
	public void enter_input(String input, String label) {
		republishbusinessName = input;
		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).clear();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);

		logger.info("Entered input " + input + "under" + label + "\n");
		System.out.println("Entered input " + input + " under" + label + "\n");
	}

	@Then("Verify error message {string} is displyed under {string}")
	public void maxErrorMsg_input(String error, String label) {

		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("error_input_req2");
		String formatXPATH = String.format(original);
		Assert.assertEquals(error, driver.findElement(By.xpath(formatXPATH)).getText().trim());
		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + error + " is displayed under " + label + "\n");
		System.out.println("Verified " + error + " is displayed under " + label + "\n");
	}

	@Then("Verify no data entered under {string} field")
	public void noInputEntered(String label) {

		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);
		// Assert.assertEquals(error,
		// driver.findElement(By.xpath(formatXPATH)).getText().trim());
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equalsIgnoreCase(""));

		logger.info("Verified no data entered under " + label + "\n");
		System.out.println("Verified no data entered under " + label + "\n");
	}

	@Then("Verify data entered in {string} field {string}")
	public void noInputEntered(String label, String value) {

		String original = ec.getObjects("reminder_input1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);
		// Assert.assertEquals(error,
		// driver.findElement(By.xpath(formatXPATH)).getText().trim());
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equalsIgnoreCase(value));

		logger.info("Verified  data entered under " + label + "is " + value + "\n");
		System.out.println("Verified  data entered under " + label + "is " + value + "\n");
	}
	@Then("Click Edit button in {string}")
	public void clickEdit_btn(String label) {

		String original = ec.getObjects("edit_btn");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Edit button in " + label + "\n");
		System.out.println("Clicked Edit button in " + label + "\n");
	}
	@Then("Enter random reminder name")
	public void enter_reminder_input() {

		String original = ec.getObjects("reminder_name_change");
		String formatXPATH = String.format(original);
		reminderName = RandomStringUtils.randomAlphabetic(10);
		driver.findElement(By.xpath(formatXPATH)).clear();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(reminderName);

		logger.info("Entered input " + reminderName + " under reminder "+"\n");
		System.out.println("Entered input " + reminderName + " under reminder" + "\n");
	}
	@Then("Select {string} value from CC role")
	public void select_diversity_category(String text)  throws Throwable {
		String original = ec.getObjects("cc_role_input");
		String formatXPATH = String.format(original);
		String dropDownText = ec.getObjects("input_field")+text+ec.getObjects("label_var2");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);
		Thread.sleep(4000);
		Actions action = new Actions(driver);
		action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();


		logger.info("Selected the " + text + " value from CC role" + "\n");
		System.out.println("Selected the" + text + " value from CC role" + "\n");
	}
	@Then("Click {string} button for the remainder")
	public void btn_click_afterRemainder(String btn) {
		
		String original = ec.getObjects("question_option_var1") + reminderName +ec.getObjects("deleteBtnUpdated")+btn+ec.getObjects("deleteBtn2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + btn + " button for " + reminderName + "\n");
		System.out.println("Clicked " + btn + " button for " + reminderName + "\n");
	}
	@Then("Click reminder arrow before {string} button for the remainder")
	public void arrowBtnRemainder(String btn) {
		
		String original = ec.getObjects("input_field_tag") + reminderName +ec.getObjects("deleteBtnUpdated")+btn+ec.getObjects("reminderArrow");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + btn + " button for " + reminderName + "\n");
		System.out.println("Clicked " + btn + " button for " + reminderName + "\n");
	}
	@Then("Click {string} button on {string}")
	public void clickEditBtnRemainder(String btn,String label) {
		
		String original = ec.getObjects("question_option_var1") + reminderName +ec.getObjects("deleteBtn1")+btn+ec.getObjects("editBtn1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + btn + " button for " + reminderName + "\n");
		System.out.println("Clicked " + btn + " button for " + reminderName + "\n");
	}
	@Then("Verify page header {string} for reminder")
	public void reviewRemainder(String label) {
		String original = ec.getObjects("headLabel_var")+label+"']";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));

		logger.info("Showing page header " + label + "\n");
		System.out.println("Showing page header " + label + "\n");

	}
	@Then("Verify reminder preview category is {string}")
	public void reviewRemainderCategory(String label) {
		String original = ec.getObjects("reminderPreview_category");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));

		logger.info("Showing reminder category " + label + "\n");
		System.out.println("Showing reminder category " + label + "\n");

	}
	@Then("Click close {string} for reminder")
	public void closeBtnRemainderPreview(String label) {
		
		String original = ec.getObjects("headLabel_var")+label+"']" +ec.getObjects("close_reminderPreview");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked close " + label + " button for " + reminderName + "\n");
		System.out.println("Clicked close " + label + " button for " + reminderName + "\n");
	}
	@Then("Click reminder up arrow")
	public void RemainderPreviewUp() {
		
		String original = ec.getObjects("reminderUpArrow");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked reminder up button for " + reminderName + "\n");
		System.out.println("Clicked up button for " + reminderName + "\n");
	}
}
