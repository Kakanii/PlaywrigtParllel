package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import static org.testng.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.Base;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class questionnaires extends Base {

	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(ProfileContacts.class);

	@Then("Delete Questionnaire Group")
	public void delete_questionnaire_group() throws Throwable {
		String original = ec.getObjects("close_questionnaireGroup");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println(" Delete Questionnaire Group " + "\n");
	}

	@Then("Select the {string} group from the Questionnaire Group drop down")
	public void select_the_group_from_the_Questionnaire_Group_drop_down(String group) {
		String original = ec.getObjects("invitesupplier_QGdropdown");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("selectgroup") + group + ec.getObjects("selectgroupend");
		String formatXPATH1 = String.format(original);
		WaitClass.clickableWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		System.out.println("Selected the" + group + " Questionnaire group from the drop down" + "\n");
	}

	@Then("verify the visibility of the Supplier Questionnaire Group on Invite Modal {string}")
	public void verify_the_visibility_of_the_Supplier_Questionnaire_Group_on_Invite_Modal(String string) {
		String original = ec.getObjects("questionnaire_group");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out
				.println("Visibility of the Supplier Questionnaire Group on Invite Modal " + " " + string + " " + "\n");
	}

	@Then("Select the {string} Questionnaire group from the drop down in Invite Modal")
	public void select_the_something_questionnaire_group_from_the_drop_down_in_invite_modal(String string)
			throws Throwable {
		String original = ec.getObjects("qg_dropdown");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("qg_autoQues");
		String formatXPATH1 = String.format(original);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		System.out
				.println(" Selected the " + string + " Questionnaire group from the drop down in Invite Modal" + "\n");
	}

	@Then("Verify visibility of Assigned Questionnaires title in questionnaire page")
	public void verify_visibility_of_Assigned_Questionnaires_title_in_questionnaire_page() {
		String original = ec.getObjects("assignedQuestionnaire_Title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of Assigned Questionnaires button" + "\n");
	}

	@Then("Verify {string} tab visibility")
	public void verify_tab_visibility(String tab) {
		String original = ec.getObjects("pendingAndPublished_Tab_var1") + tab
				+ ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of " + tab + " tab in Questionnairs page" + "\n");
	}

	@Then("Verify {string} tab status")
	public void verify_tab_status(String tab) {
		String original = ec.getObjects("pendingAndPublished_Tab_var1") + tab
				+ ec.getObjects("pendingAndPublished_Tab_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled());
		System.out.println("verified " + tab + "tab is enabled in Questionnaires page" + "\n");
	}

	@Then("Verify {string} name visibility")
	public void verify_name_visibility(String name) {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + name
				+ ec.getObjects("availableQuestionnaire_name_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of " + name + " name in Questionnairs page" + "\n");
	}

	@Then("Verify count of questionnaires is {int}")
	public void verify_count_of_questionnaires_is(Integer count) {
		String original = ec.getObjects("questionnaireCount");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElements(By.xpath(original)).size() == count);
		System.out.println("count of questionnaires: " + count);
	}

	@Then("Verify Begin Questionnaire button visibility for {string}")
	public void verify_Begin_Questionnaire_button_visibility_for(String questionnairename) {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionnairename
				+ ec.getObjects("beginQuestionnairebutton_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("visibility of Begin Questionnaire button for " + questionnairename + "\n");
	}

	@Then("Verify Begin Questionnaire button status for {string}")
	public void verify_Begin_Questionnaire_button_status_for(String questionnairename) {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionnairename
				+ ec.getObjects("beginQuestionnairebutton_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled());
		System.out.println("verified Begin Questionnaire button is enabled for " + questionnairename + "\n");
	}

	@Then("Click on Begin Questionnaire button for {string}")
	public void click_on_Begin_Questionnaire_button_for(String questionnairename) {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionnairename
				+ ec.getObjects("beginQuestionnairebutton_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		// driver.findElement(By.xpath(original)).click();
		WebElement element = driver.findElement(By.xpath(original));
		JavascriptExecutor js = (JavascriptExecutor) driver;

		js.executeScript("arguments[0].click()", element);

		System.out.println("Clicked on Begin questionnaire button for " + questionnairename + "\n");
	}

	@Then("Verify visibility of question {int} is {string}")
	public void verify_visibility_of_question_is(Integer questionnumber, String questiontext)
			throws InterruptedException {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionnumber
				+ ec.getObjects("questionnaire_question_var2") + questiontext + ec.getObjects("questionnaire_last");
		System.out.println("Originaltext=" + original);
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		System.out.println("verified visibility of question text: " + questiontext + "\n");
	}

	@Then("Verify visibility of subtext is {string}")
	public void verify_visibility_of_subtext_is(String string) {
		String original = ec.getObjects("questionnaire_subtext");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("verified visibility of question subtext: " + string + "\n");
	}

	@Then("Verify visibility of note is {string}")
	public void verify_visibility_of_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_ConflictMinerals");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("click on radio button for question {string} is {string}")
	public void click_on_radio_button_for_question_is(String questionname, String radiobutton)
			throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("question_RadioButton_var1") + questionname
				+ ec.getObjects("question_RadioButton_var2") + radiobutton + ec.getObjects("question_RadioButton_var3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println(" Clicked on radio button for " + questionname + " is " + radiobutton + "\n");
	}

	@Then("Verify visibility of Diversity note is {string}")
	public void verify_visibility_of_Diversity_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_Diversity");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("click on checkbox for question {string} is {string}")
	public void click_on_checkbox_for_question_is(String questionname, String checkbox) {
		String original = ec.getObjects("question_RadioButton_var1") + questionname
				+ ec.getObjects("question_checkBox_diversity_var2") + checkbox
				+ ec.getObjects("question_RadioButton_var3");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on radio button for " + questionname + "is" + checkbox + "\n");
	}

	@Then("click on option for question {int}")
	public void click_on_option_for_question(Integer int1) {
		String original = ec.getObjects("question_check_opt");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on check box 3 for question 3 " + "\n");
	}

	@Then("Verify visibility of Government Relations note is {string}")
	public void verify_visibility_of_Government_Relations_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_governmentRelations");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("click on radio button {string}")
	public void click_on_radio_button(String string) {
		String original = ec.getObjects("question_RadioButton_importExportIBM");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println(
				"Clicked on radio button No - I cannot comply with global and country specific Supplier Shipping Instructions  "
						+ "\n");
	}

	@Then("Verify visibility of Information Security note is {string}")
	public void verify_visibility_of_Information_Security_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_informationSecurity");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("Verify visibility of PIF Integrity Training- IBM note is {string}")
	public void verify_visibility_of_PIF_Integrity_Training_IBM_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_PIF");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("Verify visibility of Social note is {string}")
	public void verify_visibility_of_Social_note_is(String string) {
		String original = ec.getObjects("questionnaire_note_social");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		System.out.println("questionnaire note visibility " + " " + string + " " + " on Questionnaire page" + "\n");
	}

	@Then("click on radio button for {string} with text {string}")
	public void click_on_radio_button_for_with_text(String question, String option) {
		String original = ec.getObjects("question_RadioButton_var1") + question
				+ ec.getObjects("question_radioButton_svar2") + option + ec.getObjects("question_radioButton_svar3");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on radio button for " + question + "with option" + option + "\n");
	}

	@Then("click on radio button for question {string} with text {string}")
	public void click_on_radio_button_for_question_with_text(String question, String option) {
		String original = ec.getObjects("question_RadioButton_var1") + question
				+ ec.getObjects("question_radioButton_svar2") + option + ec.getObjects("question_radioButton_svar3");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on radio button for " + question + "with option" + option + "\n");
	}

	@Then("click on Publish Questionnaire Button")
	public void click_on_Publish_Questionnaire_Button() throws Exception {
		String original = ec.getObjects("question_button_publish1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Publish Questionnaire button " + "\n");
		Thread.sleep(5000);
	}

	@Then("click on Publish Questionnaire")
	public void click_on_Publish_Questionnaire() {
		String original = ec.getObjects("question_button_publish2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Publish Questionnaire button " + "\n");
	}

	@Then("click on Publish Button")
	public void click_on_publish_button() throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("question_publish");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Publish button " + "\n");
		Thread.sleep(4000);
	}

	@Then("Enter the answer in the text box for {string}")
	public void enter_the_answer_in_the_text_box_for_something(String strArg1) throws Throwable {
		String original = ec.getObjects("textbox_co") + ec.getObjects("textbox_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys("Company Operations");
		System.out.println("Entered the answer in the text box" + "\n");
	}

	@Then("Select {string} from the drop down")
	public void select_something_from_the_drop_down(String string) throws Throwable {
		String original = ec.getObjects("question_ans_dropDown");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("ques_option");
		String formatXPATH1 = String.format(original);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		System.out.println(" Selected the " + string + " for Question " + "\n");

	}

	@Then("Enter textbox answer for question {string}")
	public void enter_textbox_answer_for_question_something(String string) throws Throwable {
		String original = ec.getObjects("question_RadioButton_var1") + string + ec.getObjects("question_textbox1")
				+ ec.getObjects("question_RadioButton_var3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		System.out.println(" Entered the answer " + string + " for " + "\n");
	}

	@Then("Enter {string} answer for question {string}")
	public void enter_something_answer_for_question_something(String strArg1, String strArg2) throws Throwable {
		String original = ec.getObjects("question_RadioButton_var1") + strArg2 + ec.getObjects("input_percentage");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(strArg1);
		System.out.println(" Entered the answer " + strArg1 + " for " + "\n");
	}

	@Then("Enter answer for question {int} as {string}")
	public void enter_answer_for_question_as_something(int questionno, String answer) throws Throwable {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionno
				+ ec.getObjects("question_textbox");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(answer);
		System.out.println(" Entered the answer: " + "'" + answer + "'" + "\n");
	}

	@Then("Enter Date of Expiration")
	public void enter_Date_of_Expiration() {
		String original = ec.getObjects("date_picker");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		// driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys("03/31/2030");
		System.out.println("Entered Date of Expiration" + "\n");
	}

	@Then("Enter Date of Expiration for question {string}")
	public void enter_Date_of_Expiration_for_question(String questionname) {
		String original = ec.getObjects("question_RadioButton_var1") + questionname + ec.getObjects("date_var1");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		// driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).sendKeys("03/31/2030");
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		System.out.println("Entered Date of Expiration" + "\n");
	}

	@Then("Upload {string} in {string} format in questionnaire")
	public void upload_something_in_something_format_in_questionnaire(String Label, String FileFormat)
			throws Throwable {
		String original = ec.getObjects("attachment");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + "." + FileFormat.toLowerCase();
		WebElement fileInput = driver.findElement(By.xpath(original));
		// Send key with path
		fileInput.sendKeys(filepath);
		System.out.println("Uploaded " + FileFormat + " at the " + Label + " Document" + "\n");
	}

	@Then("Upload {string} in {string} format for {string}")
	public void upload_something_in_something_format_for_something(String Label, String FileFormat, String questionname)
			throws Throwable {
		String original = ec.getObjects("attachment_var1") + questionname + ec.getObjects("attachment_var2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/sample" + FileFormat + "." + FileFormat.toLowerCase();
		WebElement fileInput = driver.findElement(By.xpath(original));
		// Send key with path
		fileInput.sendKeys(filepath);
		System.out.println("Uploaded " + FileFormat + " at the " + Label + "\n");
	}

	@Then("Click {string} button for {string}")
	public void click_button_for(String Label, String questionname) throws Throwable {
		String original = ec.getObjects("attachment_var1") + questionname + ec.getObjects("attachment_var2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		System.out.println("clicked");
	}

	@Then("Select {string} from drop down")
	public void select_something_from_drop_down(String string) throws Throwable {
		String original = ec.getObjects("ans_dropDown");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("ques_option_var2") + string + ec.getObjects("questionnaire_last");
		String formatXPATH1 = String.format(original);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		System.out.println(" Selected the " + string + " for Question " + "\n");
	}

	@Then("click on radio button for question {int} as {string}")
	public void click_on_radio_button_for_question_as(Integer questionno, String option) {
		String original = ec.getObjects("availableQuestionnaire_name_var1") + questionno + ec.getObjects("sust_var2")
				+ option + ec.getObjects("question_RadioButton_var3");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on radio button for " + questionno + "with option" + option + "\n");
	}

	@Then("click on Assign a Contact Button")
	public void click_on_Assign_a_Contact_Button() {
		String original = ec.getObjects("assign_contact");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Assign a Contact button " + "\n");
	}

	@Then("click on dropdown")
	public void click_on_dropdown() {
		String original = ec.getObjects("select");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on dropdown " + "\n");
	}

	@Then("Select the option {string} on the Assign a Contact modal")
	public void select_the_option_on_the_Assign_a_Contact_modal(String string) {
		String original = ec.getObjects("management_selectcontact");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("management_selectcontact"))));
		drpCompany.selectByVisibleText(string);
		System.out.println("selected" + " " + string + " "
				+ "from the drop down list  on the Assign a Contact to Management Team modal" + "\n");
	}

	@Then("click on Assign a Contact")
	public void click_on_Assign_a_Contact() {
		String original = ec.getObjects("assign_contact2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Assign a Contact button " + "\n");
	}

	@Then("click on Published tab")
	public void click_on_Published_tab() {
		String original = ec.getObjects("published_tab");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println("Clicked on Published Tab " + "\n");
	}

	@Then("Enter {string} in {string} Questionfield")
	public void enter_in_questionfield(String InputString, String question) throws Throwable {
		String original = ec.getObjects("attachment_var1") + question + ec.getObjects("input_percentage");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(InputString);

		System.out.println("Entered " + "'" + InputString + "'" + " in " + question + " field" + "\n");
	}

	@Then("select state from dropdown")
	public void select_state_from_dropdown() throws Throwable {
		String original = ec.getObjects("selectcountry_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("selectAP");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		System.out.println("Selected the AP State  from the drop down" + "\n");
	}

	@Then("Enter unique twelve digit number {string}")
	public void enter_unique_twelve_digit_number(String string) {
		String original = ec.getObjects("twelvedigit_input");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("twelvedigit_input"))).sendKeys(string);

		System.out.println("Enter valid text" + " " + string + "on Add Company Account Modal" + "\n");
	}

	@Then("click on radio button value for question {string} is {string}")
	public void click_on_radio_button_value_for_question_is_(String questionname, String radiobutton) throws Throwable {
		String original = ec.getObjects("question_RadioButton_var1") + questionname + ec.getObjects("radiovalue2")
				+ radiobutton + ec.getObjects("question_RadioButton_var3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		System.out.println(" Clicked on radio button for " + questionname + " is " + radiobutton + "\n");
	}

	@Then("Select {string} for question {string}")
	public void select_for_question(String strArg1, String questionname) {
		String original = ec.getObjects("invitesupplier_QGdropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("ques_option");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		System.out.println("Selected the" + questionname + " Questionnaire group from the drop down" + "\n");
	}
	// @Then("Enter Date of Expiry")
	// public void enter_Date_of_Expiry() {
	// String original = ec.getObjects("docdatepicker");
	// String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);

	// driver.findElement(By.xpath(original)).sendKeys("01/01/2041");
	// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

	// System.out.println("Entered Date of expiry" + "\n");
	// }

	@Then("Click on yes radiobutton")
	public void click_on_yes_radiobutton() throws Throwable {
		String original = ec.getObjects("yesoption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on yes radio button" + "\n");
	}

	@Then("Select {string} for question {int}")
	public void select_for_question(String option, Integer questionNumber) {

		String original = ec.getObjects("label_var") + questionNumber + ec.getObjects("questionnaire_select_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(option);

		System.out.println("Selected " + "'" + option + "'" + " in Question " + questionNumber + " dropdown" + "\n");
	}

	// Then Select "General Liability" from search and select drop down
	@Then("Select {string} from {string} search and select drop down")
	public void select_from_search_and_select_drop_down(String option, String fileName) {

		String original = ec.getObjects("search_select");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("label_var") + option + ec.getObjects("label_var2");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		System.out.println("Selected " + "'" + option + "'" + " from " + fileName + "dropdown" + "\n");
	}

	@Then("Verify the status as Published")
	public void verify_the_status_as_Published() {

		String original = ec.getObjects("publishedStatus");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).isDisplayed();

		System.out.println("verify the status as Published" + "\n");

	}

	@Then("Refresh the current webpage")
	public void refresh_the_current_webpage() throws InterruptedException {
		Thread.sleep(3000);
		driver.navigate().refresh();
		Thread.sleep(5000);

	}

	@Then("Click on the Action Center")
	public void click_on_the_Action_Center() {
		String original = ec.getObjects("actionCenter");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Action center" + "\n");
	}

	@Then("Click on the Company Operations under Approval Source")
	public void click_on_the_Company_Operations_under_Approval_Source() {
		String original = ec.getObjects("companyOpeationsLink");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Company Operations" + "\n");
	}

	@Then("Click on the Import Export Compliance - IBM under Approval Source")
	public void click_on_the_Import_Export_Compliance_IBM_under_Approval_Source() {
		String original = ec.getObjects("ImportExportComplianceIBM");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Import Export Compliance - IBM" + "\n");
	}

	@Then("Click on the Approve button")
	public void click_on_the_Approve_button() {
		String original = ec.getObjects("approve_button_A");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Approve button" + "\n");
	}

	@Then("Approve the Approval")
	public void Approve_the_Approval() {
		String original = ec.getObjects("Approve_approval");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Approve button" + "\n");
	}

	@Then("Click Approve")
	public void click_Approve() {
		String original = ec.getObjects("ApproveBtn");
		String formatXPATH1 = String.format(original);
		String original1 = ec.getObjects("ApprovalNotes");
		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys("Demo Description");
		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		System.out.println("Click on the Approve button" + "\n");

	}

	@Then("Enter the Notes under the Notes Box")
	public void enter_the_Notes_under_the_Notes_Box() {
		String original = ec.getObjects("notesBox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Demo1");

		System.out.println("Enter the Notes" + "\n");

	}

	@Then("Click Approve button")
	public void click_Approve_button() {
		String original = ec.getObjects("approval_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Enter the Notes" + "\n");
	}
	@Then("Click on the Approve button on approval")
	public void click_on_Approve_button() {
		String original = ec.getObjects("Approval_Approve_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Enter the Notes" + "\n");
	}

	@Then("Click on Click here Link under Full supplier company profile")
	public void click_on_Click_here_Link_under_Full_supplier_company_profile() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("clickHereLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on Click here Link under Full supplier company profile" + "\n");
	}

	@Then("Click on the D&B Supplier Diversity Data - D&B under Approval Source")
	public void click_on_the_D_B_Supplier_Diversity_Data_D_B_under_Approval_Source() {
		String original = ec.getObjects("dbSupplier1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the D&B Supplier Diversity Data - D&B under Approval Source" + "\n");
	}

	@Then("Click on the D&B Supplier Diversity Data - D&B under Approval Source{int}")
	public void click_on_the_D_B_Supplier_Diversity_Data_D_B_under_Approval_Source(Integer int1) {
		String original = ec.getObjects("dbSupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the D&B Supplier Diversity Data - D&B under Approval Source" + "\n");
	}

	@Then("Click on the Pre Invite Assessment under Approval Source")
	public void click_on_the_Pre_Invite_Assessment_under_Approval_Source() {

		String original = ec.getObjects("preInviteAssessmentLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Pre Invite Assessment under Approval Source" + "\n");

	}

	@Then("Click on the USL Search under Approval Source")
	public void click_on_the_USL_Search_under_Approval_Source() {
		String original = ec.getObjects("uslSearchLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the USL Search under Approval Source" + "\n");

	}

	@Then("Click on the Buyer Internal assessment under Approval Source page")
	public void click_on_the_Buyer_Internal_assessment_under_Approval_Source_page() {
		String original = ec.getObjects("buyerinternalassessmentLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Buyer Internal assessment under Approval Source page" + "\n");

	}

	@Then("Click on the Anti-Bribery Anti-Corruption Approval Source page")
	public void click_on_the_Anti_Bribery_Anti_Corruption_Approval_Source_page() {
		String original = ec.getObjects("AntiBriberyAntiCorruptionlink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Anti-Bribery Anti-Corruption under Approval Source page" + "\n");

	}

	@Then("Click on the Anti Bribery under Approval Source page")
	public void click_on_the_Anti_Bribery_under_Approval_Source_page() {
		String original = ec.getObjects("AntiBriberyLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Buyer Internal assessment under Approval Source page" + "\n");

	}

	@Then("Navigate back to supplier")
	public void navBack() {
		driver.navigate().back();
		System.out.println("Navigated back" + "\n");

	}

	@Then("Click on the Buyer Internal assessment under Approval Source")
	public void click_on_the_Buyer_Internal_assessment_under_Approval_Source() {
		String original = ec.getObjects("buyerInternalAssessmentLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Buyer Internal assessment under Approval Source" + "\n");

	}

	@Then("Click on the RBA EICC Contract under Approval Source")
	public void click_on_the_RBA_EICC_Contract_under_Approval_Source() {
		String original = ec.getObjects("RBAEICCContractlink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the Buyer Internal assessment under Approval Source" + "\n");

	}

	// UK localization
	@Then("Click on the {string} under Approval Source")
	public void click_Approval_Source(String label) {
		String original = ec.getObjects("diversity_tooltip1") + label + ec.getObjects("naicsvalue2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		try{
			driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
			driver.findElement(By.xpath(original)).click();
		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
					driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
	}

		logger.info("Clicked on  " + label + " Approval sounce " + "\n");
		System.out.println("Clicked on   " + label + " Approval sounce  " + "\n");

	}

	@Then("Click on {string} in Approval Source {string}")
	public void click_Sys_Approval_Source(String label, String value) throws InterruptedException {
		String original = ec.getObjects("approval1") + label + ec.getObjects("approval2") + value + "]";
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

	@Then("Click on {string} under Approval Source")
	public void click_on_under_Approval_Source(String label) {
		String original = ec.getObjects("BuyerInternalAssessment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on  " + label + " Approval sounce " + "\n");
		System.out.println("Clicked on   " + label + " Approval sounce  " + "\n");
	}

	@Then("Select {string} from search and select drop down")
	public void select_from_search_and_select_drop_down(String string) {
		String original = ec.getObjects("selectcountry_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("label_var") + "General Liability" + ec.getObjects("upload_btn_upload_var2");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys(Keys.ENTER);

		logger.info("Selected the General Liability from the drop down" + "\n");
		System.out.println("Selected the General Liability from the drop down" + "\n");
	}

	@Then("select attach documents from  Would you like to enter figures or attach documents?")
	public void select_attach_documents_from_Would_you_like_to_enter_figures_or_attach_documents()
			throws InterruptedException {
		String original = ec.getObjects("attachdocs");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Thread.sleep(3000);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Attach Documents check box is clicked " + "\n");
		System.out.println("Attach Documents check box is clicked " + "\n");

	}

	@Then("Select which types of Financial documents you would like to attach. Select one or more categories and attach documents for the last three fiscal years.")
	public void select_which_types_of_Financial_documents_you_would_like_to_attach_Select_one_or_more_categories_and_attach_documents_for_the_last_three_fiscal_years()
			throws InterruptedException {
		String original = ec.getObjects("annualreport");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Thread.sleep(3000);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("spice check box is clicked " + "\n");
		System.out.println("spice check box is clicked " + "\n");

	}

	@Then("select currency for question2:In what currency are your Financials reported?")
	public void select_currency_for_question_In_what_currency_are_your_Financials_reported() {
		String original = ec.getObjects("countrycurrency");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("US Dollar (USD)");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.TAB);
		logger.info("Selected the USA COuntry from the drop down" + "\n");
		System.out.println("Selected the USA Country from the drop down" + "\n");
	}

	@Then("Click on approval {string} button")
	public void click_nextpage_approval(String label) {
		String original = ec.getObjects("span_Txt") + label + ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on  " + label + " Approval sounce " + "\n");
		System.out.println("Clicked on   " + label + " Approval sounce  " + "\n");

	}

	@Then("click on NO radio button for question Do you currently purchase {int}% renewable electricity?")
	public void click_on_NO_radio_button_for_question_Do_you_currently_purchase_renewable_electricity(Integer int1)
			throws InterruptedException {

		Thread.sleep(2000);
		String original = ec.getObjects("elerennordbtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");

	}

	@Then("click on NO radio button for If you do not purchase hundred percent renewable electricity today")
	public void click_on_NO_radio_button_for_If_you_do_not_purchase_hundred_percent_renewable_electricity_today()
			throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("dntpurchseelerennordbtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");
	}

	@Then("click on NO radio button for question Do you have plans to source {int}% renewable electricity?")
	public void click_on_NO_radio_button_for_question_Do_you_have_plans_to_source_renewable_electricity(Integer int1)
			throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("planstosource");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + " radio button" + "\n");
		System.out.println("Clicked on " + "'" + " radio button" + "\n");

	}

	@Then("click on checkbox for question Displaced workers")
	public void click_on_checkbox_for_question_Displaced_workers() throws InterruptedException {

		String original = ec.getObjects("cmpemp");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Thread.sleep(3000);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Displaced workers is clicked " + "\n");
		System.out.println("Displaced workers is clicked " + "\n");

	}

	@Then("Do you maintain Quality certifications e.g. ISO {int}, ISO {int}, IATF {int}, GMP, HAACP, CMMI, SPICE, Other?")
	public void do_you_maintain_Quality_certifications_e_g_ISO_ISO_IATF_GMP_HAACP_CMMI_SPICE_Other(Integer int1,
			Integer int2, Integer int3) throws InterruptedException {
		String original = ec.getObjects("spicechkbox");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Thread.sleep(3000);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("spice check box is clicked " + "\n");
		System.out.println("spice check box is clicked " + "\n");

	}

	@Then("Click Attach Document button for Attach your SPICE certificate and enter expiration date.")
	public void click_Attach_Document_button_for_Attach_your_SPICE_certificate_and_enter_expiration_date()
			throws InterruptedException {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("attachdocumentbtn");
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
	}

	@When("Click on Begin Questionnaire button on Assigned Questionnaires")
	public void click_on_Begin_Questionnaire_button_on_Assigned_Questionnaires() {
		String original = ec.getObjects("all_generic_questions_begin_questionnaire_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on Begin Questionnaire button on Assigned Questionnaires" + "\n");
		System.out.println("Click on Begin Questionnaire button on Assigned Questionnaires" + "\n");
	}

	@When("Enter Question One List your major Customers")
	public void enter_Question_One_List_your_major_Customers() {
		String original = ec.getObjects("all_generic_questions_company_operations_Q1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).clear();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Pepsi, Sprit, Nokia");

		logger.info("Enter Question One List your major Customers" + "\n");
		System.out.println("Enter Question One List your major Customers" + "\n");
	}
	
	@Then("Enter subtier Suppliers and their contact information")
	public void enter_subtier_Suppliers_and_their_contact_information() 
	{
		String original = ec.getObjects("cp_questionnaire_description__Q5");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).clear();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("67546734569");

		logger.info("Entered subtier Suppliers and their contact information" + "\n");
		System.out.println("Entered subtier Suppliers and their contact information" + "\n");
	}

	@When("Click on Question Two Input Field and Select Countries")
	public void click_on_Question_Two_Input_Field_and_Select_Countries() throws Exception {
		String original = ec.getObjects("all_generic_questions_company_operations_Q2_input");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Iran");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);
		Thread.sleep(2000);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Iraq");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Click on Question Two Input Field and Select Countries" + "\n");
		System.out.println("Click on Question Two Input Field and Select Countries" + "\n");
	}

	@Then("Enter detailed explanation of the violation and what action was taken against the guilty employees in Question {string}")
	public void enter_detailed_explanation_of_the_violation_and_what_action_was_taken_against_the_guilty_employees_in_Question(
			String string) {
		String original = ec.getObjects("abac_questionnaire__Q11");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding Statement");

		logger.info(
				"Enter detailed explanation of the violation and what action was taken against the guilty employees in Question 11"
						+ "\n");
		System.out.println(
				"Enter detailed explanation of the violation and what action was taken against the guilty employees in Question11"
						+ "\n");
	}

	@When("Select countries host your Research & Development {string}")
	public void select_countries_host_your_Research_Development(String string) throws Exception {
		String original = ec.getObjects("cp_questionnaire__Q6");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("United States of America");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Select countries host your Research & Development" + "\n");
		System.out.println("Select countries host your Research & Development" + "\n");
	}
	@When("Select countries host where R&D is performed {string}")
	public void select_countries_host_where_R_D_is_performed(String string) 
	{
		String original = ec.getObjects("cp_questionnaire__Q7");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("United States of America");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Select countries host your Research & Development" + "\n");
		System.out.println("Select countries host your Research & Development" + "\n");
	}

	@When("Select locations where R&D is performed for the product in scope {string}")
	public void select_locations_where_R_D_is_performed_for_the_product_in_scope(String string) {
		String original = ec.getObjects("cp_questionnaire__Q7");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("United States of America");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Select locations where R&D is performed for the product in scope" + "\n");
		System.out.println("Select countries host your Research & Development" + "\n");
	}

	@Then("Enter the detailed explaination {string}")
	public void enter_the_detailed_explaination(String string) {
		String original = ec.getObjects("cp_questionnaire__Q3_No");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding some explaination");

		logger.info("Select locations where R&D is performed for the product in scope" + "\n");
		System.out.println("Select countries host your Research & Development" + "\n");
	}

	@When("Enter the additional information to support {string}")
	public void enter_the_additional_information_to_support(String string) {
		String original = ec.getObjects("cm_questionnaire__Q2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding some additional information");

		logger.info("Enter the additional information to support" + "\n");
		System.out.println("Enter the additional information to support" + "\n");
	}

	@Then("Click on the button {string} for questionare")
	public void click_on_the_button_for_questionare(String string) {
		String original = ec.getObjects("cm_questionnaire__pb");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the button {string} for questionare" + "\n");
		System.out.println("Click on the button {string} for questionare" + "\n");
	}

	@Then("Enter {string} in the Expiry Date field")
	public void enter_in_the_Expiry_Date_field(String string) {
		String original = ec.getObjects("questionnaire_document_datepicker");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Enter " + string + "in the expiry date field" + "\n");
		System.out.println("Enter " + string + "in the expiry date field" + "\n");
	}

	@Then("Click on the second {string} button")
	public void click_on_the_second_button(String string) {
		String original = ec.getObjects("questionnaire_second_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the second " + string + "button" + "\n");
		System.out.println("Click on the second " + string + "button" + "\n");
	}

	@Then("Enter the additional details in question {string}")
	public void enter_the_additional_details_in_question(String string) {
		String original = ec.getObjects("d_questionnaire__addinfo");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding an additional details in question");

		logger.info("Enter the additional details in question" + "\n");
		System.out.println("Enter the additional details in question" + "\n");
	}

	@Then("Enter the further details in question {string}")
	public void enter_the_further_details_in_question(String string) {
		String original = ec.getObjects("d_questionnaire__furtherdetails");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding further details in question");

		logger.info("Enter the further details in question" + "\n");
		System.out.println("Enter the further details in question" + "\n");
	}

	@Then("Enter the reporting procedure in question {string}")
	public void enter_the_reporting_procedure_in_question(String string) {
		String original = ec.getObjects("d_questionnaire__reportingprocedure");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter the reporting procedure in question" + "\n");
		System.out.println("Enter the reporting procedure in question" + "\n");
	}

	@Then("Enter your reporting procedure in question {string}")
	public void enter_your_reporting_procedure_in_question(String string) {
		String original = ec.getObjects("d_questionnaire__reportingprocedure2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter your reporting procedure in question" + "\n");
		System.out.println("Enter your reporting procedure in question" + "\n");
	}

	@Then("Enter your Policies or Procedures regarding Diversity and Inclusion in question {string}")
	public void enter_your_Policies_or_Procedures_regarding_Diversity_and_Inclusion_in_question(String string) {
		String original = ec.getObjects("d_questionnaire__policies");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter your Policies or Procedures regarding Diversity and Inclusion in question" + "\n");
		System.out.println("Enter your Policies or Procedures regarding Diversity and Inclusion in question" + "\n");
	}

	@Then("Enter your explaination in question {string}")
	public void enter_your_explaination_in_question(String string) {
		String original = ec.getObjects("is_questionnaire__explanation");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter your explaination in question" + "\n");
		System.out.println("Enter your explaination in question" + "\n");
	}

	@When("Selct the sertify body in question {string}")
	public void selct_the_sertify_body_in_question(String string) {
		String original = ec.getObjects("is_questionnaire__certifybody");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Select objSelect = new Select(driver.findElement(By.xpath(formatXPATH)));
		objSelect.selectByVisibleText("ISO27000:2018");

		logger.info("Selct the sertify body in question" + "\n");
		System.out.println("Selct the sertify body in question" + "\n");
	}

	@When("Enter sufficient details for Buyer to evaluate your response in question {string}")
	public void enter_sufficient_details_for_Buyer_to_evaluate_your_response_in_question(String string) {
		String original = ec.getObjects("ec_questionnaire__suffdetails");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter sufficient details for Buyer to evaluate your response in question" + "\n");
		System.out.println("Enter sufficient details for Buyer to evaluate your response in question" + "\n");
	}

	@Then("Enter the sufficient details for Buyer to evaluate your response in question {string}")
	public void enter_the_sufficient_details_for_Buyer_to_evaluate_your_response_in_question(String string) {
		String original = ec.getObjects("ec_questionnaire__suffdetails2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding reporting procedure details in question");

		logger.info("Enter the sufficient details for Buyer to evaluate your response in question" + "\n");
		System.out.println("Enter the sufficient details for Buyer to evaluate your response in question" + "\n");
	}

	@Then("Enter {string} in the target Date field")
	public void enter_in_the_target_Date_field(String string) {
		String original = ec.getObjects("ec_questionnaire__date");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Enter " + string + "in the target date field" + "\n");
		System.out.println("Enter " + string + "in the target date field" + "\n");
	}

	@When("click on {string} for question {string} in the question {string}")
	public void click_on_for_question_in_the_question(String string, String string2, String string3) {
		String original = ec.getObjects("questionnaire__q2a");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("click on " + string + "for question" + "\n");
		System.out.println("click on " + string + "for question" + "\n");
	}

	@When("click on the {string} for question {string} in the question {string}")
	public void click_on_the_for_question_in_the_question(String string, String string2, String string3) {
		String original = ec.getObjects("questionnaire__q2b");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("click on " + string + "for question" + "\n");
		System.out.println("click on " + string + "for question" + "\n");
	}

	@Then("click on the question {string} in question {string}")
	public void click_on_the_question_in_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2g");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the percentage migrat workers option" + "\n");
		System.out.println("Select the percentage migrat workers option" + "\n");
	}

	@When("Select Itinerant workers \\(including backpackers) for question {string} in the question {string}")
	public void select_Itinerant_workers_including_backpackers_for_question_in_the_question(String string,
			String string2) {
		String original = ec.getObjects("questionnaire__q2c");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Itinerant workers option" + "\n");
		System.out.println("Select the Itinerant workers option" + "\n");
	}

	@When("Select Prison workers for question {string} in the question {string}")
	public void select_Prison_workers_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2d");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Prison workers option" + "\n");
		System.out.println("Select the Prison workers option" + "\n");
	}

	@When("Select Young workers \\(under {int} years of age) for question {string} in the question {string}")
	public void select_Young_workers_under_years_of_age_for_question_in_the_question(Integer int1, String string,
			String string2) {
		String original = ec.getObjects("questionnaire__q2e");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Young workers option" + "\n");
		System.out.println("Select the Young workers option" + "\n");
	}

	@When("Select None for question {string} in the question {string}")
	public void select_None_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2f");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the None option" + "\n");
		System.out.println("Select the None option" + "\n");
	}

	@Then("Select Displayed Workers percenage in question {string}")
	public void select_Displayed_Workers_percenage_in_question(String string) {
		String original = ec.getObjects("questionnaire__q2k");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select Displayed Workers percenage in question" + "\n");
		System.out.println("Select Displayed Workers percenage in question" + "\n");
	}

	@Then("Select Itinerant Workers percenage in question {string}")
	public void select_Itinerant_Workers_percenage_in_question(String string) {
		String original = ec.getObjects("questionnaire__q2m");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select Itinerant Workers percenage in question" + "\n");
		System.out.println("Select Itinerant Workers percenage in question" + "\n");
	}

	@Then("Select Prison workers percenage in question {string}")
	public void select_Prison_Workers_percenage_in_question(String string) {
		String original = ec.getObjects("questionnaire__q2q");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select Prison Workers percenage in question" + "\n");
		System.out.println("Select Prison Workers percenage in question" + "\n");
	}

	@Then("Select Young workers percenage in question {string}")
	public void select_Young_Workers_percenage_in_question(String string) {
		String original = ec.getObjects("questionnaire__q2t");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select Young Workers percenage in question" + "\n");
		System.out.println("Select Young Workers percenage in question" + "\n");
	}

	@When("Enter {string} in the target Date field to implement a Quality Management Policy")
	public void enter_in_the_target_Date_field_to_implement_a_Quality_Management_Policy(String string) {
		String original = ec.getObjects("qm_questionnaire__date");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Enter " + string + "in the target Date field to implement a Quality Management Policy" + "\n");
		System.out.println(
				"Enter " + string + "in the target Date field to implement a Quality Management Policy" + "\n");
	}

	@When("Select ISO{int} for question {string} in the question {string}")
	public void select_ISO_for_question_in_the_question(Integer int1, String string, String string2) {
		String original = ec.getObjects("questionnaire__q2b");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("click on " + string + "for question" + "\n");
		System.out.println("click on " + string + "for question" + "\n");
	}

	@When("Select IATF{int} for question {string} in the question {string}")
	public void select_IATF_for_question_in_the_question(Integer int1, String string, String string2) {
		String original = ec.getObjects("questionnaire__q2c");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Itinerant workers option" + "\n");
		System.out.println("Select the Itinerant workers option" + "\n");
	}

	@Then("Click on the third {string} button")
	public void click_on_the_third_button(String string) {
		String original = ec.getObjects("questionnaire_third_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the third " + string + "button" + "\n");
		System.out.println("Click on the third " + string + "button" + "\n");
	}

	@When("Select GMP for question {string} in the question {string}")
	public void select_GMP_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2d");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Itinerant workers option" + "\n");
		System.out.println("Select the Itinerant workers option" + "\n");
	}

	@Then("Click on the fourth {string} button")
	public void click_on_the_fourth_button(String string) {
		String original = ec.getObjects("questionnaire_fourth_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the fourth " + string + "button" + "\n");
		System.out.println("Click on the fourth " + string + "button" + "\n");
	}

	@When("Select HAACP for question {string} in the question {string}")
	public void select_HAACP_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2e");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Itinerant workers option" + "\n");
		System.out.println("Select the Itinerant workers option" + "\n");
	}

	@Then("Click on the fifth {string} button")
	public void click_on_the_fifth_button(String string) {
		String original = ec.getObjects("questionnaire_fifth_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the fifth " + string + "button" + "\n");
		System.out.println("Click on the fifth " + string + "button" + "\n");
	}

	@When("Select CMMI for question {string} in the question {string}")
	public void select_CMMI_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2f");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the CMMI workers option" + "\n");
		System.out.println("Select the CMMI workers option" + "\n");
	}

	@Then("Click on the sixth {string} button")
	public void click_on_the_sixth_button(String string) {
		String original = ec.getObjects("questionnaire_sixth_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the sixth " + string + "button" + "\n");
		System.out.println("Click on the sixth " + string + "button" + "\n");
	}

	@When("Select SPICE for question {string} in the question {string}")
	public void select_SPICE_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2g");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the SPICE workers option" + "\n");
		System.out.println("Select the SPICE workers option" + "\n");
	}

	@Then("Click on the seventh {string} button")
	public void click_on_the_seventh_button(String string) {
		String original = ec.getObjects("questionnaire_seventh_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the seventh " + string + "button" + "\n");
		System.out.println("Click on the seventh " + string + "button" + "\n");
	}

	@When("Select Other for question {string} in the question {string}")
	public void select_Other_for_question_in_the_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2h");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the Other workers option" + "\n");
		System.out.println("Select the Other workers option" + "\n");
	}

	@Then("Select No visibility for question {string} in question {string}")
	public void select_No_visibility_for_question_in_question(String string, String string2) {
		String original = ec.getObjects("questionnaire__q2a");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select the No visibility workers option" + "\n");
		System.out.println("Select the No visibility workers option" + "\n");
	}

	@Then("Select best describes approach from the list")
	public void select_best_describes_approach_from_the_list() throws Exception {
		String original = ec.getObjects("questionnaire_approch");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Select best describes approach from the list" + "\n");
		System.out.println("Select best describes approach from the list" + "\n");

		Thread.sleep(5000);

		String original1 = ec.getObjects("questionnaire_approch_option");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("Select best describes approach option from the list" + "\n");
		System.out.println("Select best describes approach option from the list" + "\n");
	}

	@Then("Select Communicate Our Ethical Policies option")
	public void select_Communicate_Our_Ethical_Policies_option() {
		String original1 = ec.getObjects("questionnaire_communicate_option");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("Select Communicate Our Ethical Policies option" + "\n");
		System.out.println("Select Communicate Our Ethical Policies option" + "\n");
	}

	@Then("Select Suppliers report to their relationship manager via phone\\/email or at formal review meetings {string} in question {string}")
	public void select_Suppliers_report_to_their_relationship_manager_via_phone_email_or_at_formal_review_meetings_in_question(
			String string, String string2) {
		String original1 = ec.getObjects("questionnaire__q2j");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		logger.info("Select Suppliers report to their relationship manager via phone option" + "\n");
		System.out.println("Select Suppliers report to their relationship manager via phone option" + "\n");
	}

	@Then("Click on Assign a Contact button {string} in question {string}")
	public void click_on_Assign_a_Contact_button_in_question(String string, String string2) {
		String original = ec.getObjects("questionnaire_assign_contact_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on Assign a Contact button {string} in question" + "\n");
		System.out.println("Click on Assign a Contact button {string} in question" + "\n");
	}

	@Then("Select existing contact from the list {string} in question {string}")
	public void select_existing_contact_from_the_list_in_question(String string, String string2) {
		String original = ec.getObjects("questionnaire_select_existing_contact");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText("First Name Last Name - Director");

		logger.info("Select existing contact from the select list" + "\n");
		System.out.println("Select existing contact from the select list" + "\n");
	}

	@Then("Click on Save button on Assign a Contact modal {string} in question {string}")
	public void click_on_Save_button_on_Assign_a_Contact_modal_in_question(String string, String string2) {
		String original = ec.getObjects("questionnaire_select_contact_save_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on Save button on Assign a Contact modal in question" + "\n");
		System.out.println("Click on Save button on Assign a Contact modal in question" + "\n");
	}

	@Then("Click on {string} label checkbox in question {string}")
	public void click_label_input(String string, String string2) throws InterruptedException {
		String original = ec.getObjects("questionnaire9");
		String formatXPATH = String.format(original);

		String checkBox = ec.getObjects("li_txt") + string + "']";
		String formatcheckbox = String.format(checkBox);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		driver.findElement(By.xpath(formatcheckbox)).click();

		logger.info("Selected: " + string + "under question " + string2 + "\n");
		System.out.println("Selected: " + string + "under question " + string2 + "\n");
	}

	@Then("Select {string} option under {string} question {string}")
	public void select_option_from_select(String option, String quest, String quest_no) throws InterruptedException {
		String original = ec.getObjects("link_var1") + quest + ec.getObjects("select_question_option");
		String formatXPATH = String.format(original);

		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));

		se.selectByVisibleText(option);

		logger.info("Selected: " + option + "under question " + quest + "\n");
		System.out.println("Selected: " + option + "under question " + quest + "\n");
	}

	@Then("Enter {string} data in question {string}")
	public void enter_data_in_question(String data, String quest_no) {
		String original = ec.getObjects("quest1") + quest_no + ec.getObjects("input_quest");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(data);

		logger.info("Entered " + data + "under question " + quest_no + "\n");
		System.out.println("Entered " + data + "under question " + quest_no + "\n");
	}

	@Then("Click on {string} option checkbox under {string} for question {string}")
	public void click_checkbox_input(String checkbox, String quest, String quest_no) throws InterruptedException {
		String original = ec.getObjects("quest1") + quest_no + ec.getObjects("label_quest") + checkbox
				+ ec.getObjects("tnc_checkbox_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked : " + checkbox + "under question " + quest + "\n");
		System.out.println("Clicked: " + checkbox + "under question " + quest + "\n");
	}

	@Then("Enter Do you use sub-contractors in your waste management process {string}")
	public void enter_Do_you_use_sub_contractors_in_your_waste_management_process_in_question(String string) {
		String original = ec.getObjects("questionnaire_waste_manage_process");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding waste management process details in question");

		logger.info("Enter Do you use sub-contractors in your waste management process in question" + "\n");
		System.out.println("Enter Do you use sub-contractors in your waste management process in question" + "\n");
	}

	@Then("Enter Have you completed an assessment of all of your sub contractors including an annual validity {string}")
	public void enter_Have_you_completed_an_assessment_of_all_of_your_sub_contractors_including_an_annual_validity_in_question(
			String string) {
		String original = ec.getObjects("questionnaire_complete_assessment");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH))
				.sendKeys("Adding ssessment of all of your sub contractors including in question");

		logger.info(
				"Enter Have you completed an assessment of all of your sub contractors including an annual validity in question"
						+ "\n");
		System.out.println(
				"Enter Have you completed an assessment of all of your sub contractors including an annual validity in question"
						+ "\n");
	}

	@Then("Enter company retains all waste transfer {string}")
	public void enter_company_retains_all_waste_transfer_in_question(String string) {
		String original = ec.getObjects("questionnaire_company_retains");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("Adding company retains all waste transfer in question");

		logger.info("Enter company retains all waste transfer in question" + "\n");
		System.out.println("Enter company retains all waste transfer in question" + "\n");
	}

	@Then("Click on black space")
	public void click_on_blank_space() {

		Actions action = new Actions(driver);
		action.sendKeys(Keys.TAB).build().perform();

		logger.info("Clicked Tab" + "\n");
		System.out.println("Clicked Tab" + "\n");
	}

	@Then("Select {string} from Questionnaire drop down")
	public void select_from_Questionnaire_drop_down(String string) {
		String original = ec.getObjects("questionnairedpwn");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("questionnairedpwnval");
		String formatXPATH1 = String.format(original);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys(Keys.TAB);
		System.out.println(" Selected the " + string + " Select category from the drop down" + "\n");
	}

	@Then("Click on the eight {string} button")
	public void click_on_the_eight_button(String string) {
		String original = ec.getObjects("questionnaire_eight_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the eight " + string + "button" + "\n");
		System.out.println("Click on the eight " + string + "button" + "\n");
	}

	@Then("Click on the nine {string} button")
	public void click_on_the_nine_button(String string) {
		String original = ec.getObjects("questionnaire_nine_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the nine " + string + "button" + "\n");
		System.out.println("Click on the nine " + string + "button" + "\n");
	}

	@Then("Click on the ten {string} button")
	public void click_on_the_ten_button(String string) {
		String original = ec.getObjects("questionnaire_ten_document_attach");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Click on the ten " + string + "button" + "\n");
		System.out.println("Click on the ten " + string + "button" + "\n");
	}

	@Then("Select {string} for Q{double}")
	public void select_for_Q(String string, Double double1) {
		String original = ec.getObjects("questionnairedpwn");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		String original1 = ec.getObjects("questionnairedpwnval");
		String formatXPATH1 = String.format(original);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys(Keys.TAB);
		System.out.println(" Selected the " + string + " Select category from the drop down" + "\n");
	}
	@Then("Enter the Notes under notes for buyer Notes Box at {string}")
	public void enter_the_Notes_under_the_Notes_Bo(String pos) {
		String original = ec.getObjects("notes_section")+pos+"]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Demo1");

		logger.info("Entered the Notes" + "\n");

	}

}
