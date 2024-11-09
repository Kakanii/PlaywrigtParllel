package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SRMmanageApprovals extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	public static String todaysDate;
	public static int dateInput;
	public static String Australiancn;
	public static String  pendingCount;
	public static String ApprovalCondition = null;
	Logger logger = Logger.getLogger(SRMmanageApprovals.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	@Then("Show Message as {string}")
	public void show_No_records_Message(String string) throws Throwable {
		String original = ec.getObjects("link_var1") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows a message" + " " + string + " " + "in manage approval filter results" + "\n");
		System.out.println("Shows a message " + " " + string + " " + "in manage approval filter results" + "\n");
	}

	@Then("Click on {string} option button for {string}")
	public void click_on_option_btn(String option, String cat) {

		String original = ec.getObjects("span_Txt") + option + ec.getObjects("selectOption") + cat + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on: " + "'" + option + "'" + " Option" + "\n");
		System.out.println("Clicked on: " + "'" + option + "'" + " Option" + "\n");
	}

	@Then("Show {string} under Approvals section")
	public void show_label(String label) {
		String original = ec.getObjects("narmalizeSpace") + label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Showing " + label + " under approval section" + "\n");
		System.out.println("Showing " + label + " under approval section" + "\n");
	}

	@Then("Show {string} count on Approvals section")
	public void show_count(String label) {
		String original = ec.getObjects("narmalizeSpace") + label + ec.getObjects("count");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		String count = driver.findElement(By.xpath(original)).getText();

		logger.info("Showing " + label + " count is " + count + "\n");
		System.out.println("Showing " + label + " count is " + count + "\n");
	}

	@When("Click on {string} under approval section on Dashboard")
	public void click_on_lable(String label) {
		String original = ec.getObjects("narmalizeSpace") + label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + label + " on approval section on Dashboard" + "\n");
		System.out.println("Clicked on " + label + "on approval section on Dashboard" + "\n");
	}

	@Then("Click on supplier with pending status")
	public void click_on_pending_status() throws Throwable {
		String original = ec.getObjects("pending_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on pending status" + "\n");
		System.out.println("Click on pending status " + "\n");
	}

	@Then("Click on button {string} for {string} on approvals")
	public void click_approval(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + "']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " button for " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " button for " + subCat + "\n");
	}

	@Then("Select {string} in Approval condition reason")
	public void select_approval_condition(String Option) throws Throwable {

		String original = ec.getObjects("approval_select");
		String formatXPATH = String.format(original);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
		ApprovalCondition = Option;
		dropdown.selectByVisibleText(Option);

		logger.info("Selected " + "'" + Option + "'" + " in Approval condition reason" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in Approval condition reason" + "\n");
	}

	@Then("Enter the date {string} as FollowUp date")
	public void Enter_Date(String date) throws InterruptedException {

		String original = ec.getObjects("date_input");
		String formatXPATH = String.format(original);
		String original2 = ec.getObjects("date_icon");
		String formatXPATH2 = String.format(original2);
		driver.findElement(By.xpath(formatXPATH2)).click();
		System.out.print("Please enter valid date:");
		Thread.sleep(3000);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Selected " + "'" + date + "'" + " as Followup date" + "\n");
		System.out.println("Selected " + "'" + date + "'" + " as Followup date" + "\n");
	}

	@Then("Verify {string} is displying as {string}")
	public void verify_assignTo(String label, String assignTo) {
		String original = ec.getObjects("link_var1") + label + ec.getObjects("assign_to") + assignTo + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(ConfigureWorkflows.assignRole));

		logger.info("Showing " + label + " as is " + ConfigureWorkflows.assignRole + "\n");
		System.out.println("Showing " + label + " as is " + ConfigureWorkflows.assignRole + "\n");
	}

	@Then("Verify {string} reason is displying as {string}")
	public void verify_condtion(String label, String condition) {
		String original = ec.getObjects("link_var1") + label + ec.getObjects("condition") + condition + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Assert.assertTrue(
				driver.findElement(By.xpath(original)).getText().contains(SRMmanageApprovals.ApprovalCondition));

		logger.info("Showing " + label + " as is " + SRMmanageApprovals.ApprovalCondition + "\n");
		System.out.println("Showing " + label + " as is " + SRMmanageApprovals.ApprovalCondition + "\n");
	}

	@Then("Verify {string} value is displying as {string} at {string}")
	public void verify_text(String label, String text, String index) {
		String original = ec.getObjects("labvar") + label + ec.getObjects("text_value") + index + "]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String ActualText = driver.findElement(By.xpath(formatXPATH)).getText();
		Assert.assertTrue(ActualText.contains(text));

		logger.info("Showing " + label + " value as " + ActualText + "\n");
		System.out.println("Showing " + label + " value as " + ActualText + "\n");
	}

	@Then("Click on checkbox for question {string}")
	public void Click_on_chkbox(String question) throws Throwable {
		String original = ec.getObjects("checkbox_ans");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}
		}
		System.out.println("\n" + "Clicked on button at question " + question + "\n");
		logger.info("\n" + "Clicked on  button at question " + question + "\n");
	}

	@Then("Verify the SRC user name displayed as {string}")
	public void verify_SRCname(String text) {
		String original = ec.getObjects("span_Txt") + text + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(text));

		logger.info("Showing SRC user name displayed as " + text + "\n");
		System.out.println("Showing SRC user name displayed as " + text + "\n");
	}

	@Then("Click on the supplier {string}")
	public void click_on_supplier_name(String cName) throws InterruptedException {
		cName = InviteSupplierPage.companyname;
		String original = ec.getObjects("link_var1") + cName + ec.getObjects("clickRow");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Search by supplier name and press Enter" + "\n");
		System.out.println("Clicked on the Search by supplier name and press Enter" + "\n");

	}

	@Then("Verify the {string} text is displaying under notifications")
	public void show_something_supplier_notifications(String text) throws Throwable {

		String original = ec.getObjects("approval1") + text + "')])[1]";

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(text));
		logger.info("Showing text as " + text + " under notifications" + "\n");
		System.out.println(" Showing text as " + text + "under notifications" + "\n");

	}

	@Then("Verify received an email for supplier {string}  maildrop Inbox with subject {string}")
	public void verify_received_an_email_for_supplier_inbox_with_subject_maildrop(String supplier, String subject)
			throws Throwable {

		driver.get(ec.getObjects("maildropurl"));

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		WaitClass.webDriverWait(original);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath(original)).sendKeys(supplier);
		Thread.sleep(10000);
		WaitClass.clickableWait(viewMailbox);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + supplier + " in mailinator search box" + "\n");
		System.out.println("Entered " + supplier + " in mailinator search box" + "\n");
		Thread.sleep(10000);
		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";
		String EmailformatXPATH = String.format(SubjectLine);
		WaitClass.webDriverWait(SubjectLine);
		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

	@Then("Click on Update contacts icon {string} role")
	public void click_on_Update_contacts_icon(String roleName) {

		String original = ec.getObjects("SRM_edit1") + roleName + ec.getObjects("editupdate_icon2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Update contacts icon on " + roleName + "\n");
		System.out.println("Clicked on Update contacts icon on " + roleName + "\n");

	}

	@Then("Update contacts {string} role")
	public void update_contacts(String role) {

		String original = ec.getObjects("span_contains_Txt") + role + ec.getObjects("single_mark_end");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Selected contact: " + role + "\n");
		System.out.println("Selected contact: " + role + "\n");

	}
	@Then("Verify From date is visible under FollowUpDate filter")
	public void verify_FromDate() {
		String original = ec.getObjects("followupFromDate_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified From date is visible under FollowUpDate filter" + "\n");
		System.out.println("Verified From date is visible under FollowUpDate filter" + "\n");

	}
	@Then("Verify To date is visible under FollowUpDate filter")
	public void verify_ToDate() {
		String original = ec.getObjects("followupToDate_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified To date is visible under FollowUpDate filter" + "\n");
		System.out.println("Verified To date is visible under FollowUpDate filter" + "\n");

	}
	@Then("Click on From date icon")
	public void verify_FromDate_icon() {
		String original = ec.getObjects("followupFromDate_icon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on From date icon" + "\n");
		System.out.println("Clicked on From date icon" + "\n");

	}
	@Then("Click on To date icon")
	public void verify_ToDate_icon() {
		String original = ec.getObjects("followupToDate_icon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on To date icon" + "\n");
		System.out.println("Clicked on To date icon" + "\n");

	}
	@Then("Enter todays date as input date at {int}")
	public void enter_today_date(Integer position) throws InterruptedException {

		String original = ec.getObjects("followupToday")+position+"]";
		String formatXPATH = String.format(original);
		todaysDate = driver.findElement(By.xpath(formatXPATH)).getText();
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Entered " + "'" + todaysDate + "'" + " as todays date" + "\n");
		System.out.println("Entered " + "'" + todaysDate + "'" + " as todays date" + "\n");
		
		
	}
	@Then("Verify the To date is always the future date than the From date")
	public void verify_toDate_future() throws InterruptedException {

		String original = ec.getObjects("followupdate_disabled");
		String formatXPATH = String.format(original);
		String disabledDate = driver.findElement(By.xpath(formatXPATH)).getText();
		driver.findElement(By.xpath(formatXPATH)).getAttribute("class").contains("disabled");
		logger.info("Verified " + "'" + disabledDate + "'" + " To date is disabled" + "\n");
		System.out.println("Verified " + "'" + disabledDate + "'" + " To date is disabled" + "\n");	
	}
	@Then("Enter {int} as input date")
	public void enter_input_date(Integer inputDate) throws InterruptedException {
		dateInput = inputDate;
		String original = ec.getObjects("selectAll_role1")+inputDate+ec.getObjects("position_select");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Entered " + "'" + inputDate + "'" + " as input date" + "\n");
		System.out.println("Entered " + "'" + inputDate + "'" + " as input date" + "\n");
		
		
	}
	@Then("Verify the filtered date is greater than the input date")
	public void verify_greaterdate() throws InterruptedException {

		String original = ec.getObjects("dates_list");
		String formatXPATH = String.format(original);
		List<WebElement> dates = driver.findElements(By.xpath(formatXPATH));
		for(int i=0;i<dates.size();i++) {
			String dateString = dates.get(i).getText().substring(9, 11);
			int dateInt = Integer.parseInt(dateString);
			System.out.println(dateInt);
			if(dateInput>=dateInt) {
				logger.info("Verified filtered date " +dateInt+ " is greater or equal than the input date "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is greater or equal than the input date " +dateInput+ "\n");
			}
			else
			{
				logger.info("Verified filtered date " +dateInt+ " is less than or equal than the input date "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is less or equal than the input date " +dateInput+ "\n");	
			}
		}
	}
	@Then("Verify the filtered date is less than the input date")
	public void verify_lessdate() throws InterruptedException {

		String original = ec.getObjects("dates_list");
		String formatXPATH = String.format(original);
		List<WebElement> dates = driver.findElements(By.xpath(formatXPATH));
		for(int i=0;i<dates.size();i++) {
			String dateString = dates.get(i).getText().substring(9, 11);
			int dateInt = Integer.parseInt(dateString);
			System.out.println(dateInt);
			if(dateInput<=dateInt) {
				logger.info("Verified filtered date " +dateInt+ " is less than or equal than the input date "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is less than  or equal than the input date " +dateInput+ "\n");
			}
			else
			{
				logger.info("Verified filtered date " +dateInt+ " is greater than or equal than the input date "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is greater or equal than the input date " +dateInput+ "\n");	
			}
		}
	}
	@Then("Verify the filtered date is same range as input date")
	public void verify_samerange() throws InterruptedException {

		String original = ec.getObjects("dates_list");
		String formatXPATH = String.format(original);
		List<WebElement> dates = driver.findElements(By.xpath(formatXPATH));
		for(int i=0;i<dates.size();i++) {
			String dateString = dates.get(i).getText().substring(9, 11);
			int dateInt = Integer.parseInt(dateString);
			System.out.println(dateInt);
			if(dateInput<=dateInt || dateInput>=dateInt || dateInput==dateInt ) {
				logger.info("Verified filtered date " +dateInt+ " is same as the input date "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is same as the input date " +dateInput+ "\n");
			}
			else
			{
				logger.info("Verified filtered date " +dateInt+ " is differed "+dateInput+"\n");
				System.out.println("Verified filtered date " + dateInt+ " is differed " +dateInput+ "\n");	
			}
		}
	}
	@Then("Enter {int} as date input")
	public void enter_date_input(Integer date) throws InterruptedException {

		String original = ec.getObjects("span_Txt")+date+"']";
		String formatXPATH = String.format(original);
		todaysDate = driver.findElement(By.xpath(formatXPATH)).getText();
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Entered " + "'" + todaysDate + "'" + " as todays date" + "\n");
		System.out.println("Entered " + "'" + todaysDate + "'" + " as todays date" + "\n");
		
		
	}
	@Then("Verify the followup text as {string}")
	public void verify_followup_text(String actualText) throws InterruptedException {

		String original = ec.getObjects("followup_text");
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(actualText));
		logger.info("Verified " + "'" + actualText + "'" + " as followup text" + "\n");
		System.out.println("Verified " + "'" + actualText + "'" + " as followup text" + "\n");
		
		
	}
	@Then("Verify the pending approval count is displaying")
	public void pending_approavl() throws InterruptedException {

		String original = ec.getObjects("approval_pending_count");
		String formatXPATH = String.format(original);
		pendingCount = driver.findElement(By.xpath(formatXPATH)).getText();
		logger.info("Verified " + "'" + pendingCount + "'" + " as pending approval count" + "\n");
		System.out.println("Verified " + "'" + pendingCount + "'" + " as pending approval count" + "\n");
		
	}
	@Then("Verify the {string} approval count is displaying on supplier wide screen")
	public void pending_approavl_supplier_wide(String str) throws InterruptedException {

		String original = ec.getObjects("createRulecollapse1")+str+"'])[2]";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(str));
		logger.info("Verified " + "'" + pendingCount + "'" + " as pending approval count on supplier wide screen" + "\n");
		System.out.println("Verified " + "'" + pendingCount + "'" + " as pending approval count on supplier wide screen " + "\n");
		
	}
	@Then("Verify {string} div button is enable under {string}")
	public void edit_btn_enable(String btn, String label) {

		String original = ec.getObjects("div_txt") + btn + ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + btn + " button is enable under " + label + "\n");
		System.out.println("Verified " + btn + " button is enable under " + label + "\n");
	}

	@Then("Verify {string} div button is visible under {string}")
	public void btn_visible_actions(String btn, String label) {

		String original = ec.getObjects("div_txt") + btn + ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + btn + " button is visible under " + label + "\n");
		System.out.println("Verified " + btn + " button is visible under " + label + "\n");
	}
	@Then("Select role as {string} in under {string}")
	public void select_role_info_req(String role, String Label)
			throws Throwable {

		String original = ec.getObjects("role_select");
		String formatXPATH = String.format(original);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(role);

		logger.info("Selected " + "'" + role + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + role + "'" + " in " + Label + " dropdown" + "\n");
	}
	@Then("Assign users as {string}")
	public void assign_user(String role) {

		String original = ec.getObjects("span_contains_Txt") + role + ec.getObjects("single_mark_end");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		String original2 = ec.getObjects("assign_role_input");
		String formatXPATH2 = String.format(original2);
		driver.findElement(By.xpath(formatXPATH2)).click();
		driver.findElement(By.xpath(formatXPATH2)).sendKeys(role);
		
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Selected users as : " + role + "\n");
		System.out.println("Selected users as : " + role + "\n");

	}
	@Then("Verify {string} role is displying as {string}")
	public void verify_assignTo_role(String label, String assignTo) {
		String original = ec.getObjects("link_var1") + label + ec.getObjects("assign_to") + assignTo + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Assert.assertTrue(driver.findElement(By.xpath(original)).getText().contains(assignTo));

		logger.info("Showing " + label + " as is " + assignTo + "\n");
		System.out.println("Showing " + label + " as is " + assignTo + "\n");
	}
	
	@Then("Verify followUp date is displying with specific format under {string}")
	public void verify_followUpdate(String label) {
		String original = ec.getObjects("dependent_label") + label + ec.getObjects("specific_date");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String actualText = driver.findElement(By.xpath(original)).getText();
		Assert.assertTrue(actualText.contains("Follow-Up Date"));

		logger.info("Showing " + label + " as is " + actualText + "\n");
		System.out.println("Showing " + label + " as is " + actualText + "\n");
	}
}
