package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class DependentQuestionnaires extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	@Then("Click on {string} for {string}")
	public void click_tab(String btn,String subCat) throws Exception {
		
		String original = ec.getObjects("span_Txt") + btn + ec.getObjects("questionnaire_type");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);

		logger.info("Clicked on " + btn + " button for" +subCat +"\n");
		System.out.println("Clicked on " + btn + " button for" + subCat+"\n");
	}
	@Then("Verify {string} label is displaying under {string}")
	public void verify_label_btn_visible(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} button is diplaying for {string}")
	public void verify_workflow_btn_visible(String Label, String subCat) {

		String original = ec.getObjects("corp_status1") + subCat + ec.getObjects("updatedWorkflow_btn")+Label+ec.getObjects("workflow_btn2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	
	@Then("Verify {string} label is enabled under {string}")
	public void verify_label_btn_enable(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
	}
	@Then("Verify {string} button is enabled for {string}")
	public void verify_workflow_btn_enable(String Label, String subCat) {

		String original = ec.getObjects("span_contains_Txt") + subCat + ec.getObjects("workflow_btn")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
	}
	@Then("Click on {string} button for {string} in {string}")
	public void click_workflow_btn(String Label, String subCat,String cat) {

		String original = ec.getObjects("span_contains_Txt") + subCat + ec.getObjects("approval_config4")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then ("Verify {string} button is displaying under {string}")
	public void verify_dependentQuestionaire_btn_visible(String Label, String subCat) {

		String original = ec.getObjects("diversity_text") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then ("Verify {string} button is enable under for {string}")
	public void verify_dependentQuestionaire_btn_enable(String Label, String subCat) {

		String original = ec.getObjects("diversity_text") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " label is enable under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is enable under " + subCat + "\n");
	}
	@Then("Click {string} button under for {string}")
	public void click_dependent_quest(String Label, String subCat) {

		String original =  ec.getObjects("diversity_text") + Label +ec.getObjects("same_supplier2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then("Scroll to page end")
	public void scroll_to_view_field_under() {
		for(int i=0;i<10;i++) {
		action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		logger.info("Scrolled to end " + "\n");
		System.out.println("Scrolled to end " + "\n");

	}
	@Then("Click on {string} button for dependent questionnaire {string}")
	public void click_create_rule(String btn, String quest) {

		String original =  ec.getObjects("p_input1") + quest +ec.getObjects("create_rule")+btn+"']";
		String formatXPATH = String.format(original);
		String originaldeleteBtn = ec.getObjects("delete_all_config");
		String confrimbtn = ec.getObjects("confirm_button");

		List<WebElement> elements = driver.findElements(By.xpath(originaldeleteBtn));

		if (elements.size() > 0)
		{
			System.out.println("Delete All button exists");
			logger.info("Delete All button exists");
			driver.findElement(By.xpath(originaldeleteBtn)).click();
			driver.manage().timeouts().implicitlyWait(3,TimeUnit.SECONDS);
			driver.findElement(By.xpath(confrimbtn)).click();
			System.out.println("Clicked on Delete All button");
			logger.info("Clicked on Delete All button");
		} else
		{
			System.out.println("Delete All button does not exist");
			logger.info("Delete All button does not exist");
		}
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + btn + "'" + " for question " + quest + "\n");
		System.out.println("Clicked " + "'" + btn + "'" + " for question " + quest + "\n");
	}
	@Then ("Verify {string} label is displying under {string} for {string}")
	public void verify_dependentQuestionaire_label(String Label, String subCat,String cat) {

		String original = ec.getObjects("link_var1") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then ("Verify {string} dropdown input field is displying under {string} for {string}")
	public void verify_dependentQuestionaire_dropdown(String Label, String subCat,String cat) {

		String original = ec.getObjects("dependent_label") + Label +ec.getObjects("dropdown_dependent_quest")+cat+"]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " input field is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " input field displyed under " + subCat + "\n");
	}
	@Then ("Verify {string} dropdown input field is enabled under {string} for {string}")
	public void verify_dependentQuestionaire_dropdown_enable(String Label, String subCat,String cat) {

		String original = ec.getObjects("dependent_label") + Label +ec.getObjects("dropdown_dependent_quest")+cat+"]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " input field is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " input field is enabled under " + subCat + "\n");
	}
	@Then("Verify {string} label is displaying under for {string}")
	public void verify_delte_config_visible(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + ec.getObjects("delete_config1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} label is enabled under for {string}")
	public void verify_delte_config_enable(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label + ec.getObjects("delete_config1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is enabled under " + subCat + "\n");
	}
	@Then("Select {string} option for {string} in Configure Dependent Questionnaire at {string}")
	public void select_answer_dependenet(String ans,String quest,String cat) {

		String original = ec.getObjects("dependent_label") + quest +ec.getObjects("dropdown_dependent_quest")+cat+"]";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(ans);
		String original2 = ec.getObjects("input_field")+ans+ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + ans +" as "+quest+ "\n");
		System.out.println("Selected " + ans + " as "+quest+ "\n");
	}
	@Then("^Click on \"([^\"]*)\" button for create rule$")
	public void click_on_something_button(String string) throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("createrule_btn") + string + ec.getObjects("createrule_btn2");
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
		Thread.sleep(2000);
	}
	@Then("Verify {string} is displaying under {string} for Configure Workflows")
	public void verify_workflow_configure(String Label, String subCat) {

		String original = ec.getObjects("span_contains_Txt") + subCat + ec.getObjects("approval_config5")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Label.trim()));

		logger.info("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
	}
	
	@Then("Select value {string} from assign contact dropdown")
	public void select_the_option_for_assigncontact(String string) throws Throwable {

		String original = ec.getObjects("assign_cantact");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("assign_cantact"))));
		drpCompany.selectByVisibleText(string);
		//drpCompany.selectByIndex(3);
		//drpCompany.selectByIndex(0);

		logger.info("Selected " + " " + string + " " + " for assign contact" + "\n");
		System.out.println("selected" + " " + string + " " + " for assign contact" + "\n");
	}
	@Then("Show the tooltip text {string} for dependent questionnnaire")
	public void verify_workflow_configure(String Label) {

		//String original = ec.getObjects("span_Txt") + Label +"']";
		String original = ec.getObjects("dependent_tooltiptext2");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Label));

		logger.info("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire " + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " for dependent questionnnaire " + "\n");
	}
	@Then("Scroll Down to the element {string}")
	public void scroll_down_to_the(String btn) throws Throwable {

		String original = ec.getObjects("btn1")+btn+ec.getObjects("btn2");
		String formatXPATHdropdo = String.format(original);

		WaitClass.webDriverWait(formatXPATHdropdo);

		// driver.findElement(By.xpath(original)).click();

		WebElement targetElement = driver.findElement(By.xpath(formatXPATHdropdo));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		targetElement.click();
		logger.info("Scrolled to view " + btn + "\n");
		System.out.println("Scrolled to view " + btn + "\n");
	}
	@Then("^Click on \"([^\"]*)\" button for save contact$")
	public void click_on_savecontact_button(String string) throws Throwable {
		String original = ec.getObjects("save_contact");
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
		Thread.sleep(2000);
	}
	@Then("Enter {string} for explain reason")
	public void enter_the_explaintext(String string) {
		String original = ec.getObjects("explain_reason");
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Entered " +string+ "\n");
		System.out.println("Entered " +string+ "\n");
	}
	@Then("Scroll Down to element visible {string}")
	public void scroll_down_element(String ele) throws Throwable {
		for(int i=0;i<3;i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
			}
		action.sendKeys(Keys.PAGE_UP).build().perform();
		logger.info("Scrolled to view " + ele + "\n");
		System.out.println("Scrolled to view " + ele + "\n");
	}
	@Then("Click on edit button for question {string}")
	public void click_edit_rule(String quest) {

		String original =  ec.getObjects("link_var1") + quest +ec.getObjects("create_rule_edit_btn");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked edit for question " + quest + "\n");
		System.out.println("Clicked edit for question " + quest + "\n");
	}
	@Then("Click on close icon for create rule")
	public void click_on_close() {

		String original =  ec.getObjects("create_rule_close_icon");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on close icon "+"\n");
		System.out.println("Clicked on close icon "+"\n");
	}
	@Then("Click on create rule {string} button")
	public void click_collapse_btn(String collapse) {

		String original =  ec.getObjects("createRulecollapse1") + collapse +ec.getObjects("createRulecollapse2");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked edit for question " + collapse + "\n");
		System.out.println("Clicked edit for question " + collapse + "\n");
	}
	@Then("Verify create rule edit button displayed for {string}")
	public void edit_rule_btn_display(String quest) {

		String original =  ec.getObjects("link_var1") + quest +ec.getObjects("create_rule_edit_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Edit button is displayed " + quest + "\n");
		System.out.println("Edit button is displayed " + quest + "\n");
	}
	@Then ("Verify {string} is showing as {string} for dependent questionnaire")
	public void verify_dependentQuestionaire_update(String Label, String subCat) {

		String original = ec.getObjects("diversity_text") + Label +ec.getObjects("quest_update");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subCat));

		logger.info("Verified " + "'" + Label + "'" + " label is displyaing as " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyaing as " + subCat + "\n");
	}
	@Then("Scroll to {string} element for system update")
	public void scrollto_sysytemUpdated(String Label) {
		String original = ec.getObjects("diversity_text") + Label +ec.getObjects("quest_update");
		String formatXPATH = String.format(original);
		String backbtn = ec.getObjects("backwarbtn");
		driver.findElement(By.xpath(backbtn)).click();
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView();", driver.findElement(By.xpath(formatXPATH)));
		logger.info("Scrolled to element " + Label + " field" + "\n");
		System.out.println("Scrolled to element " + Label + " field" + "\n");

	}
	@Then("Navigate page back")
	public void naviagate_back_page() throws Throwable {

		driver.navigate().back();

		logger.info("Navigated page back" + "\n");
		System.out.println("Navigated page back" + "\n");
	}
	
	@Then("Verify {string} Buyer specific questionnaire count is {int}")
	public void buyer_specific_count(String buyer,Integer count) throws Throwable {
		String original = ec.getObjects("diversity_tooltip1") + buyer +ec.getObjects("trade3_req3");
		String formatXPATH = String.format(original);
		List<WebElement> buyers = driver.findElements(By.xpath(formatXPATH));
		int size = buyers.size();
		Integer intObj = new Integer(count);
		int intcount=intObj.intValue();
		Assert.assertEquals(size,intcount);
		logger.info("Verified the "+buyer+"Buyer specific count is "+count+"\n");
		System.out.println("Verified the " +buyer+ "Buyer specific count is "+count+"\n");
		for(int i=0;i<size;i++) {
			String questionnaireName = buyers.get(i).getText();
			System.out.println("Buyer Specific Questionnaires : "+questionnaireName);
		}
	}
	
	@Then("Select {string} option for {string} in Configure Dependent Questionnaire")
	public void select_answer_depen(String ans,String quest) {

		String original = ec.getObjects("select_answer");
		String formatXPATH = String.format(original);

		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByValue(ans);
		logger.info("Selected " + ans +" as "+quest+ "\n");
		System.out.println("Selected " + ans + " as "+quest+ "\n");
	}
	@Then("Click on {string} for {string} in {string}")
	public void click_workf_bn(String Label, String subCat,String cat) {

		String original = ec.getObjects("td_contains_Txt") + subCat + ec.getObjects("workflow_btn")+Label+ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then("Click on the {string} button for {string} in {string}")
	public void click_workflow_btttt(String Label, String subCat,String cat) {

		String original = ec.getObjects("span_contains_Txt") + subCat + ec.getObjects("approval_config4")+Label+"']";
		//String original = ec.getObjects("span_Txt") + subCat + ec.getObjects("dependant_btn")+Label+ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then("Click {string} button for {string} in {string}")
	public void click_workflow_btn_approvals(String Label, String subCat,String cat) {

		String original = ec.getObjects("td_contains_Txt") + subCat + ec.getObjects("approval_config3")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then("Verify {string} displaying under {string} for Configure Workflows")
	public void verify_approval_configure(String Label, String subCat) {

		String original = ec.getObjects("td_text") + subCat + ec.getObjects("approval_config3")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Label.trim()));

		logger.info("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
	}
	@Then("Verify {string} is displaying under {string}")
	public void verify_span_display(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Label.trim()));

		logger.info("Verifyed " + "'" + Label + "'" + " displayed under " + subCat + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " displayed under " + subCat + "\n");
	}
	@Then("Verify {string} displaying {string} for Configure Workflows")
	public void verify_approval_confi(String Label, String subCat) {

		String original = ec.getObjects("td_text") + subCat + ec.getObjects("approvl_config4")+Label+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Label.trim()));

		logger.info("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
	}
	//////////////////////************RD****************////////////////////
	
	@Then("Select {string} role for {string} in Configure Dependent Questionnaire")
	public void select_role_for_in_configure_dependent_questionnaire(String rolename,String quest) {

		String original = ec.getObjects("rolepick");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(rolename);
		//String original2 = ec.getObjects("input_field")+rolename+ec.getObjects("label_var2");
		//String formatXPATH2 = String.format(original2);
		//action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + rolename +" for "+quest+ "\n");
		System.out.println("Selected " + rolename + " as "+quest+ "\n");
	}
	@Then("Click {string} for {string} in {string}")
	public void click_workflow_buttonn(String Label, String subCat,String cat) {

		String original = ec.getObjects("span_contains_Txt") + subCat + ec.getObjects("dependant_btn")+Label+ec.getObjects("workflow_btn2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	//To Select 50 value from items dropdown
	@Then("Select page records")
	public void select_page_records() {
		String PageDorpDown = ec.getObjects("PageDropdown");
		String selectDdValue = ec.getObjects("selectDdValue");
		driver.findElement(By.xpath(PageDorpDown)).click();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		driver.findElement(By.xpath(selectDdValue)).click();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		logger.info("Selected page records"+"\n");
}
	@Then("Click on {string} button for app config")
	public void click_button_app(String string) throws Throwable {

		String original = ec.getObjects("CH_variable_button") + string + "')]";
		String formatXPATH = String.format(original);
		String delete_btn = ec.getObjects("delete_all_config");

		//WaitClass.clickableWait(formatXPATH);
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		WebElement Element = driver.findElement(By.xpath(original));

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	}
}
