package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.*;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SRM4 extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	public static String Email;
	public String cName;
	public static String Australiancn;
	public static String firstSupplier;
	public static String legalBusinessName;
	public static String Expected_req_ID;
	public static String Expected_req_by;
	public static String Expected_req_time;
	public static String getSupID;
	public WebDriverWait wait = new WebDriverWait(driver, 120);
	public Map<String, String> supplierRequest = new HashMap<String, String>();
	Logger logger = Logger.getLogger(SRM4.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	@Then("Verify visibility of page title as {string}")
	public void verify_visibility_of_page_title(String title) {
		String original = ec.getObjects("h4_text") + title + "'])[2]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
	}

	@Then("Select country as {string} in {string} dropdown")
	public void select_in_dropdown(String Option, String Label) throws Throwable {

		String original = ec.getObjects("select_criteria");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}

	@Then("Show {string} input text field under for {string}")
	public void show_input_text_field_at(String inputfield, String SubCat) {

		String original = ec.getObjects("maildroplabel") + inputfield + ec.getObjects("input_field_SRM4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + inputfield + "'" + " input text field in " + SubCat + "\n");
	}

	@Then("Verify {string} input text field enable under for {string}")
	public void show_input_text_field_enable(String inputfield, String SubCat) {

		String original = ec.getObjects("maildroplabel") + inputfield + ec.getObjects("input_field_SRM4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());
		logger.info("Verified " + "'" + inputfield + "'" + " input text field enabled " + SubCat + "\n");
	}

	@Then("Enter Random Supplier Company Name on Invite Supplier modal")
	public void enter_Supplier_Company_Name_on_Invite_Supplier_modal() throws Throwable {
		String original = ec.getObjects("companyNameid");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		InviteSupplierPage.companyname = RandomStringUtils.randomAlphanumeric(9) + " pvt ltd";
		timeStamp.add(0, InviteSupplierPage.companyname);

		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.companyname);

		logger.info("Entered : " + "'" + InviteSupplierPage.companyname + "'" + " in Company Name field" + "\n");
	}

	@Then("Show tooltip {string} in {string} under {string}")
	public void show_tooltip_diverisity(String tooltip, String label, String subCat) throws InterruptedException {

		String original = ec.getObjects("filters1") + label + "')]//div";
		String original2 = ec.getObjects("password_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(original2);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		WaitClass.clickableWait(formatXPATH2);
		assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(tooltip));
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + label + "' tooltip: " + tooltip + "under " + subCat + "\n");

	}

	@Then("Show {string} error message under {string} field")
	public void show_required_err(String req, String field) {

		String original = ec.getObjects("Value1") + field + ec.getObjects("required2");
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(req.trim()));
		logger.info("Error message " + req + " is displayed under " + field + " field" + "\n");

	}

	@Then("Enter Contact Email Address on Supplier contacts from maildrop")
	public void enter_Contact_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("contactEmail2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String email = InviteSupplierPage.companyname.trim().replaceAll("\\s", "");
		Email = email + "@maildrop.cc";
		// String email = RandomStringUtils.randomAlphanumeric(3);

		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered : " + "'" + Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Click radio button {string} under {string} for Request Assessment")
	public void click_customRadio_segment(String button, String subcat) throws Throwable {
		String original = ec.getObjects("p_input1") + subcat + ec.getObjects("segment_radio_btn") + button + "']";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("clicked on " + button + " for" + subcat + "\n");
	}

	@Then("Click on the Same supplier name after request and press Enter")
	public void click_on_the_supplier_name_and_press_Enter() throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("span_Txt") + cName + ec.getObjects("click_row2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Same supplier name" + "\n");

	}

	@Then("Verify Edit button is visible for same user login")
	public void edit_attri_btn_visible() {

		String original = ec.getObjects("edit_attribute_button");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified Edit button is visible for same user login " + "\n");
	}

	@Then("Enter other user in Email Address field")
	public void enter_data_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("otherUser"));
		logger.info("Entered data" + " " + ec.getObjects("otherUser") + " " + "Email Address field" + "\n");
	}

	@Then("Verify Edit button is not visible for other user login")
	public void edit_attri_btn_not_visible() {

		String original = ec.getObjects("edit_buttons");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains("Edit Attributes"));

		logger.info("Verified Edit button is not visible for other user login " + "\n");
	}

	@Then("Click on the {string} under Assigned Assessments")
	public void click_assignAssessment(String label) {
		String original = ec.getObjects("td_text") + label + ec.getObjects("assignAssesment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on  " + label + " Questionnaire  " + "\n");

	}

	@Then("Click on Edit button for same user login")
	public void click_edit_attri_btn() {

		String original = ec.getObjects("edit_attribute_button");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Edit button for same user login" + "\n");
	}

	@Then("Verify {string} and {string} buttons not visible")
	public void save_draft_btn_not_visible(String saveBtn, String proceedBtn) {

		String original = ec.getObjects("buttons_layer");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains(saveBtn));
		assertTrue(!allstr.contains(proceedBtn));

		logger.info(
				"Verified " + saveBtn + " and" + proceedBtn + " buttons are not visible when click on edit " + "\n");
	}

	@Then("Verify {string} input text field not enabled under for {string}")
	public void show_input_text_field_not_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("maildroplabel") + inputfield + ec.getObjects("input_field_SRM4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(!driver.findElement(By.xpath(formatXPATH)).isEnabled());
		logger.info("Verified " + "'" + inputfield + "'" + " input text not field enabled " + SubCat + "\n");
	}

	@Then("Verify {string} input field not enabled under for {string}")
	public void show_input_field_not_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("select_criteria");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(!driver.findElement(By.xpath(formatXPATH)).isEnabled());
		logger.info("Verified " + "'" + inputfield + "'" + " input text not field enabled " + SubCat + "\n");
	}

	@Then("Show {string} input text field displayed in {string}")
	public void show_input_text_field_in(String inputfield, String SubCat) {

		String original = ec.getObjects("firstinputbox") + inputfield + ec.getObjects("lable_input_SRM4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing " + "'" + inputfield + "'" + " input text field displayed in " + SubCat + "\n");
	}

	@Then("Verify {string} input text field is enabled for {string}")
	public void show_input_text_field_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("firstinputbox") + inputfield + ec.getObjects("lable_input_SRM4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + inputfield + "'" + " input text field is enabled in " + SubCat + "\n");
	}

	@Then("Verify the value entered in {string} field is populated as {string}")
	public void preview_value_entered_is(String nameField, String value) {
		String original = ec.getObjects("discover_filter_variable") + nameField + ec.getObjects("lable_input_SRM4");
		String formatXPATH = String.format(original);
		String actualValue = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		assertTrue(actualValue.contains(value));
		logger.info("Verified " + "'" + nameField + "'" + " input text field is populated as " + actualValue + "\n");
	}

	@Then("Verify the text value entered in {string} field is populated as {string}")
	public void show_input_field_enabled(String nameField, String value) {

		String original = ec.getObjects("firstinputbox") + nameField + ec.getObjects("lable_input_SRM4");
		String formatXPATH = String.format(original);

		String actualValue = driver.findElement(By.xpath(formatXPATH)).getAttribute("value");
		assertTrue(actualValue.contains(value));
		logger.info("Verified " + "'" + nameField + "'" + " input text field is populated as " + actualValue + "\n");
	}

	@Then("Click on {string} permission for {string} security module")
	public void click_on_permission_under_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermission") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		if (!driver.findElement(By.xpath(original)).isSelected()) {

			driver.findElement(By.xpath(original)).click();
			logger.info("selected " + label + "under" + page + "\n");
		} else {
			logger.info("Already selected " + label + "under" + page + "\n");
		}

	}

	@Then("Click on {string} permission when selected {string} security module")
	public void click_on_permission_when_security_module(String label, String page) {
		String original = ec.getObjects("labelvalue") + page + ec.getObjects("anyText_var2")
				+ ec.getObjects("siblingpermission") + label + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		if (driver.findElement(By.xpath(original)).isSelected()) {

			driver.findElement(By.xpath(original)).click();
		} else {
			logger.info("Already unselected " + label + "under" + page + "\n");
		}
		logger.info("Already unselected" + label + "under" + page + "\n");
	}

	@Then("Enter export user in Email Address field")
	public void enter_data_in_external_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("exportUser"));
		logger.info("Entered data" + " " + ec.getObjects("otherUser") + " " + "Email Address field" + "\n");
	}

	@Then("Verify {string} label is not displying under {string} for {string}")
	public void verify_dependentQuestionaire_label(String Label, String subCat, String cat) {

		String original = ec.getObjects("link_var1") + Label + "']";
		String formatXPATH = String.format(original);

		Assert.assertFalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is not displyed under " + subCat + "\n");
	}

	@Then("Verify {string} button is not visible")
	public void save_draft_btn_not_visible(String segmentBtn) {

		String original = ec.getObjects("segment_button");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains(segmentBtn));

		logger.info("Verified " + segmentBtn + " button is not visible when click on edit " + "\n");

	}

	@Then("Show error message {string} at {string} field")
	public void show_required_field(String req, String field) {

		String original = ec.getObjects("label_Txt") + field + ec.getObjects("error_msgSRM4");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(req.trim()));
		logger.info("Error message is displayed under " + field + " field" + "\n");

	}

	@Then("Verify {string} flag is not displayed")
	public void flag_not_displayed(String flag) throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("span_Txt") + cName + ec.getObjects("pending_sgment_SRM4");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains(flag));

		logger.info("Verified " + flag + " flag is not visible " + "\n");

	}

	@Then("Verify {string} flag is displayed")
	public void flag_displayed(String flag) throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("span_Txt") + cName + ec.getObjects("pending_sgment_SRM4");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(allstr.contains(flag));

		logger.info("Verified " + flag + " flag is visible " + "\n");

	}

	@Then("Verify {string} label button is displying under {string}")
	public void verify_label_btn(String Label, String subCat) {

		String original = ec.getObjects("link_var1") + Label + "']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " button is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} label button is displying under {string} at {string}")
	public void verify_label_btn(String Label, String subCat,String count) {

		String original = ec.getObjects("dependent_label") + Label + "'])["+count+"]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " button is displyed under " + subCat + "\n");
	}
	@Then("Enter connected Supplier Company Name on Invite Supplier modal")
	public void enter_COnnected_Supplier_Company_Name_on_Invite_Supplier_modal() throws Throwable {
		String original = ec.getObjects("companyNameid");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.companyname);

		logger.info("Entered : " + "'" + InviteSupplierPage.companyname + "'" + " in Company Name field" + "\n");
	}

	@Then("Click on Businessname from Supplier Request")
	public void click_on_business_name() throws InterruptedException {
		String original = ec.getObjects("td_text") + InviteSupplierPage.companyname
				+ ec.getObjects("connected_supplier_SRM4");
		String formatXPATH = String.format(original);
		Actions builder = new Actions(driver);
		builder.moveToElement(driver.findElement(By.xpath(formatXPATH))).click().build().perform();
		logger.info("Clicked on  Businessname from Supplier Request " + "\n");
	}

	@Then("Verify the {string} status updated to {string}")
	public void verify_the_table_view_status(String label, String status) {
		String original = ec.getObjects("question_option_var1") + label + ec.getObjects("connected_action_center")
				+ status + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(status));
		logger.info("Verified the Supplier requests status updated to " + status + "\n");
	}

	@Then("Click on first supplier from connected supplier")
	public void click_on_firstsupplier() throws InterruptedException {
		String original = ec.getObjects("connected_preload");
		String formatXPATH = String.format(original);
		InviteSupplierPage.companyname = driver.findElement(By.xpath(formatXPATH)).getText();
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on  first supplier from connected supplier " + "\n");
	}

	@Then("Select re-assign role to {string}")
	public void select_reassign_role(String role) throws Throwable {

		String original = ec.getObjects("srm4_select_role");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(role);
		logger.info("Selected re-assign role as : " + role + "\n");
	}

	@Then("Click on the preloaded supplier name after request and press Enter")
	public void click_on_the_preloaded_supplier_name_and_press_Enter() throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("link_var1") + cName + ec.getObjects("preload_supplier");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Same supplier name" + "\n");

	}

	@Then("Click on the {string} as assigned role")
	public void assigne_role(String str) throws InterruptedException {

		String original = ec.getObjects("createRulecollapse1") + str + "'])[2]";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on " + "'" + str + "'" + " as assigned role" + "\n");

	}

	@Then("Enter {int} alpha numeric data in {string} field")
	public void enter_digit_alpha_numeric_data(Integer stringLeangth, String Label) {
		String original = ec.getObjects("Note_approvalrequest");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String string = "ABCDEFGHIJ1234567890";
		String random = RandomStringUtils.random(stringLeangth, string);
		mis.clearText(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(random);

		logger.info("Entered " + "'" + random + "'" + " in " + Label + " field" + "\n");

	}
	@Then("Show error message {string} at {string} field for create approval")
	public void show_required_field_approval(String req, String field) {

		String original = ec.getObjects("div_txt") + field +ec.getObjects("req_mes")+req+"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(req));

		logger.info("Verified " + "'" + req + "'" + " is displyed under " + field + "\n");

	}
	@Then("Click on the {string} under Assigned Assessments at {string}")
	public void click_assignAssessment(String label,String count) {
		String original = ec.getObjects("td_txt2") + label + ec.getObjects("approval_SRM4")+count+"]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on  " + label + " Questionnaire  " + "\n");

	}
	@Then("Verify {string} button is not enabled under for {string}")
	public void show_input_button_not_enabled(String inputfield, String SubCat) {

		String original = ec.getObjects("button_disable_SRM4") + inputfield + "'])[2]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(!driver.findElement(By.xpath(formatXPATH)).isEnabled());
		logger.info("Verified " + "'" + inputfield + "'" + " button is not enabled " + SubCat + "\n");
	}
	@Then ("Click on {string} link button")
	public void clickLinkBtn(String btn) {

		String original = ec.getObjects("link_var1") + btn +"']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on  " + "'" + btn + "'" + " link button "+"\n");
	}
	@Then("Verify {string} text is displying under {string}")
	public void text_display(String text, String SubCat) {

		String original = ec.getObjects("div_txt") + SubCat + ec.getObjects("text_SRM4")+text+"']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(text));

		logger.info("Verified " + "'" + text + "'" + " text is displayed in " + SubCat + "\n");
	}
	@Then("Verify {string} button is not displying")
	public void btn_not_displying(String Btn) {

		String original = ec.getObjects("btn_tag");
		String formatXPATH = String.format(original);
		List<WebElement> lists = driver.findElements(By.xpath(formatXPATH));
		List<String> allstr = new ArrayList<String>();
		for (int i = 0; i < lists.size(); i++) {
			String strText = lists.get(i).getText();
			allstr.add(strText);
		}
		assertTrue(!allstr.contains(Btn));

		logger.info("Verified " + Btn + " button is not displying " + "\n");

	}
	@Then ("Click on {string} link button at {int}")
	public void clickLinkBtn(String btn,Integer count) {

		String original = ec.getObjects("link_varcount") + btn +"'])["+count+"]";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on  " + "'" + btn + "'" + " link button "+"\n");
	}
	@Then("Enter the Notes under complete request")
	public void enter_the_Notes_under_complete_request() {
		String original = ec.getObjects("complete_reason");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Complete");
		logger.info("Entered the Notes" + "\n");
	}
	@Then("verify the status for Questionnaire Name for {string} as {string}")
	public void verify_the_status_as(String qName,String status) throws Throwable {
		String original = ec.getObjects("srm4_tdTxt") + qName + ec.getObjects("srm4_tdtxt2");
		// String original = ec.getObjects("mysupplier_userstatus_readyforreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(status));
		logger.info("Status  " + " " + status + " " + " showing on Company name in buyer view" + "\n");
	}
	@Then("Click on supplier requests row")
	public void click_supplierRow() throws InterruptedException {
		String original = ec.getObjects("srm4_clickRow");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on  supplier requests row " + "\n");
	}
	@Then("Verify the request ID is displaying in action center")
	public void verify_reqID() {
		String original = ec.getObjects("srm4_reqID");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(SRM4.Expected_req_ID));
		logger.info("Verified the request ID is displaying in action center "+"\n");
	}
	@Then("Save the request ID")
	public void save_req_ID() {
		String original = ec.getObjects("srm4_reqID_save");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Expected_req_ID = driver.findElement(By.xpath(original)).getText();
		logger.info("Saved request ID is: "+Expected_req_ID+"\n");
	}
	@Then("Save the requested by from supplier request")
	public void save_supplier_details() {
		String original = ec.getObjects("srm4_supplier_requestedBy");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Expected_req_by = driver.findElement(By.xpath(original)).getText();

		logger.info("Saved requested by is : "+Expected_req_by+"\n");
	}
	@Then("Verify the request by is displaying in action center")
	public void verify_reqBy() {
		String original = ec.getObjects("srm4_action_req_by");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(SRM4.Expected_req_by));
		logger.info("Verified the request by is displaying in action center "+"\n");
	}
	@Then("Save the requested time from supplier request")
	public void save_supplier_req_time() {
		String original = ec.getObjects("srm4_supplier_reqtime");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Expected_req_time = driver.findElement(By.xpath(original)).getText();

		logger.info("Saved requested time is : "+Expected_req_time+"\n");
	}
	@Then("Verify the request time is displaying in action center")
	public void verify_action_reqtime() {
		String original = ec.getObjects("srmm4_action_req_time");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(SRM4.Expected_req_time));
		logger.info("Verified the request by is displaying in action center "+"\n");
	}
	@Then("Enter the Notes {string} under justification Notes Box")
	public void enter_the_Notes_under_justification(String text) {
		String original = ec.getObjects("srm4_quest_sEMS");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(text);

		logger.info("Entered the Notes" + "\n");
	}
	@Then("Verify {string} under {string} in action center")
	public void verify_label_display(String expected,String label) {
		String original = ec.getObjects("label_registration")+label+ec.getObjects("srm4_lable_display")+expected+"']";
		String formatXPATH = String.format(original);
		String actual = driver.findElement(By.xpath(formatXPATH)).getText();
		assertTrue(actual.equalsIgnoreCase(expected));

		logger.info("Verified "+actual+ "is displyed "+ "\n");
	}
	@Then("Verify link under {string}")
	public void verify_link(String string) throws Throwable {
		String original = ec.getObjects("link_var1") + string + ec.getObjects("link_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");
		logger.info("Verified  " + " " + string + " " + " Link is showing" + "\n");
	}
	@Then("Verify {string} as {string} under Approval details")
	public void verify_approval_desc(String label,String desc) throws Throwable {
		String original = ec.getObjects("question_option_var1") + label + ec.getObjects("srm4_app_desc")+desc+"']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(desc));
		logger.info("Verified  " + " " + desc + " " + " Description is showing" + "\n");
	}
	@Then("Click on {string} manage approval after filter")
	public void click_manage_approval(String approval) {
		String original = ec.getObjects("span_Txt")+approval+ec.getObjects("srm4_app_filter");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on manage approvals"+"\n");
	}

	@Then("Verify {string} and {string} are displaying on manage approval after filter")
	public void verify_manage_approval(String filter1,String filter2) {
		String original = ec.getObjects("srm4_filter_all");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified supplier assessment names are displying"+"\n");
	}

	@Then("Verify {string} questionnaire name displyed under assigned assessments")
	public void verify_assessments(String label) {
		String original = ec.getObjects("td_text") + label + ec.getObjects("assignAssesment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Verified  " + label + " questionnaire name displyed under assigned assessments  " + "\n");

	}
	@Then("Verify assigned role is showing as {string}")
	public void verify_the_table_view_status(String role) {
		String original = ec.getObjects("td_text")+role+"']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(role));
		logger.info("Verified assigned role showing as "+role + "\n");
	}

	@Then("Verify {string} button is visible for {string} at {string}")
	public void verify_btn_visible(String Label, String subCat,String pos) {

		String original = ec.getObjects("createrule_btn") + Label + "')])["+pos+"]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " button is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} div label is displayed under {string}")
	public void label_visible(String btn, String label) {

		String original = ec.getObjects("div_txt") + btn + "']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " label is displayed under " + label + "\n");
	}
	@Then("Verify {string} select input option is displayed under {string}")
	public void btn_visible_remainder(String btn, String label) {

		String original = ec.getObjects("srm4_select_role");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " select input option is displayed " + label + "\n");
	}
    @Then("Select user {string} under {string}")
    public void select_(String text, String subcat) throws Throwable {
        String original = ec.getObjects("cc_role_input");
        String formatXPATH = String.format(original);
        String dropDownText = ec.getObjects("diversity_tooltip1") + text + "')]";
        WaitClass.webDriverWait(formatXPATH);
        driver.findElement(By.xpath(original)).sendKeys(text);

        Actions action = new Actions(driver);
        try {
            WaitClass.clickableWait(formatXPATH);

            action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();
        } catch (StaleElementReferenceException e) {
            wait.until(ExpectedConditions
                    .refreshed(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH)))));
            WaitClass.clickableWait(formatXPATH);

            action.moveToElement(driver.findElement(By.xpath(dropDownText))).click().build().perform();
        }

        logger.info("Selected the " + text + "under " + subcat + "\n");
    }
    @Then("Enter same internal user in Email Address field")
    public void enter_data_internalusersame() throws Throwable {
        String original = ec.getObjects("email");
        String formatXPATH = String.format(original);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

        driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("sameinternaluser"));
        logger.info("Entered data" + " " + ec.getObjects("otherUser") + " " + "Email Address field" + "\n");
    }
	@Then("Verify {string} select dropdown is not enabled")
	public void show_input_text_field_not_enabled(String inputfield) {

		String original = ec.getObjects("srm4_select_role");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(!driver.findElement(By.xpath(formatXPATH)).isEnabled());
		logger.info("Verified " + "'" + inputfield + "'" + " input text not field enabled"+ "\n");
	}
	@Then("Verify notification has been sent to recipient as {string}")
	public void verifyprimaryrecipient(String subject) {
		String original = ec.getObjects("filters1") + subject +"')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Verified primary notification " +subject + "\n");
		System.out.println("Verified primary notification " + subject + "\n");
	}
	@Then("Click on the edit button for {string} role")
	public void clickOnEdit(String role) {
		String original = ec.getObjects("td_contains_Txt") + role +ec.getObjects("editRole");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " +role + "\n");
	}
	@Then("Click on the Check button for {string} role")
	public void clickOnCheck(String role) {
		String original = ec.getObjects("td_contains_Txt") + role +ec.getObjects("SRCCheckbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " +role + "\n");
	}
	@Then("Enter requester user in Email Address field")
	public void enter_requester_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("srcOnboardnotifications"));
		logger.info("Entered data" + " " + ec.getObjects("srcOnboardnotifications") + " " + "Email Address field" + "\n");
	}
	@Then("Verify notification has been sent to as {string}")
	public void verifyprimaryrecip(String subject) {

		String original = ec.getObjects("diversity_tooltip1") + "Supplier Request for "+InviteSupplierPage.companyname+" (Supplier Request ID: "+ SRM4.getSupID +") "+subject+" automation user')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Verified primary notification " +subject + "\n");
		System.out.println("Verified primary notification " + subject + "\n");
	}
	@Then("Save Supplier ID")
	public void saveSuppID() throws Throwable {
		String supID = ec.getObjects("SRM5_reqID");
		String formatsupID = String.format(supID);
		getSupID = driver.findElement(By.xpath(formatsupID)).getText();
		logger.info("Saved Supplier ID is "+getSupID+ "\n");
	}
	@Then("Verify notification is sent as {string}")
	public void verifyapprovednotification(String subject) {

		String original = ec.getObjects("diversity_tooltip1") + "Supplier Request for "+InviteSupplierPage.companyname+" (Supplier Request ID: "+ SRM4.getSupID +") "+subject+"')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Verified primary notification " +subject + "\n");
		System.out.println("Verified primary notification " + subject + "\n");
	}
    @Then("Verify notification has been sent to {string}")
    public void verifynotification(String InterBuyer) {

        String original = ec.getObjects("td_contains_Txt") + "A new Approval Request has been created for "+InviteSupplierPage.companyname+" to "+InterBuyer+"')]";
        String formatXPATH = String.format(original);
        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(InterBuyer));

        logger.info("Verified primary notification sent to " +InterBuyer + "\n");
    }
	@Then("Verify notification sent to as {string}")
	public void verifycompletenotify(String subject) {

		String original = ec.getObjects("diversity_tooltip1") + "Supplier Request (Supplier Request ID: "+ SRM4.getSupID +") for "+InviteSupplierPage.companyname+" is completed by "+subject+"')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Verified primary notification " +subject + "\n");
		System.out.println("Verified primary notification " + subject + "\n");
	}

	@Then("Verify notification has sent to as {string}")
	public void verifyprimaryinprogress(String subject) {

		String original = ec.getObjects("diversity_tooltip1") + "Supplier Request (Supplier Request ID: "+SRM4.getSupID+") status for "+InviteSupplierPage.companyname+subject+"')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Verified primary notification " +subject + "\n");
		System.out.println("Verified primary notification " + subject + "\n");
	}

	@Then("Click on {string} in Approval requests {string}")
	public void click_Sys_Approval_Source(String label, String value) throws InterruptedException {
		String original = ec.getObjects("Notifi_seresult") + label + ec.getObjects("approval2") + value + "]";
		String formatXPATH = String.format(original);
//		try {
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
//		} catch (ElementClickInterceptedException e) {
//			logger.info("Recovering from ElementClickInterceptedException " + "\n");
//			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
//			for (int i = 0; i < 10; i++) {
//				try {
//					WebDriverWait wait = new WebDriverWait(driver, 120);
//					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
//					Thread.sleep(5000);
//					driver.findElement(By.xpath(original)).click();
//					break;
//				} catch (ElementClickInterceptedException e1) {
//					logger.info("Recovering from ElementClickInterceptedException " + "\n");
//					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
//				}
//			}
//		} catch (StaleElementReferenceException e) {
//			logger.info("Recovering from StaleElementReferenceException " + "\n");
//			System.out.println("Recovering from StaleElementReferenceException " + "\n");
//			for (int i = 0; i < 10; i++) {
//				try {
//					WebDriverWait wait = new WebDriverWait(driver, 120);
//					wait.until(ExpectedConditions
//							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
//					Thread.sleep(5000);
//					driver.findElement(By.xpath(original)).click();
//					break;
//				} catch (StaleElementReferenceException e1) {
//					logger.info("Recovering from StaleElementReferenceException " + "\n");
//					System.out.println("Recovering from StaleElementReferenceException " + "\n");
//				}
//			}
		//	}
		logger.info("Clicked on  " + label + " Approval sounce " + "\n");
		System.out.println("Clicked on   " + label + " Approval sounce  " + "\n");

	}

	@Then("verify the supplier status as {string}")
	public void verify_the_supplier_status_as(String string) throws Throwable {
		String original = ec.getObjects("contacttyp1") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");
		logger.info("Status  " + " " + string + " " + " showing on supplier view" + "\n");
	}
	@Then("Verify {string} error is showing under {string}")
	public void req_error_display(String btn, String label) {

		String original = ec.getObjects("re_error_srm4");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " button is displayed under " + label + "\n");
		System.out.println("Verified " + btn + " button is displayed under " + label + "\n");
	}

	@Then("Show attached document for {string} {string}")
	public void show_attached_document_under(String Label, String file) {
		String ViewDoc = ec.getObjects("label_var") + Label + ec.getObjects("srm4_viewDoc_var3");

		String formatViewDoc = String.format(ViewDoc);

		WaitClass.webDriverWait(formatViewDoc);

		assertTrue(driver.findElement(By.xpath(formatViewDoc)).isDisplayed());

		logger.info("Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");
		System.out.println(
				"Showing Uploaded " + file + " at the " + Label + " document on the Basic information page" + "\n");

	}
}
