package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.testng.Assert;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class ConfigureWorkflows extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();
	
	public static String assignRole=null;
	
	@Then ("Verify label name {string} is displying under {string}")
	public void verify_configureWorkflow_label(String Label, String subCat) {

		String original = ec.getObjects("tabs_panel") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then ("Verify label text {string} is displying under {string}")
	public void verify_configureWorkflow_label_text(String Label, String subCat) {

		String original = ec.getObjects("legend_txt") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then ("Click on label button {string} under for {string}")
	public void click_label_button(String Label, String subCat) {

		String original = ec.getObjects("tabs_panel") + Label +"']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");

		//To Select 50 value from items dropdown
		//String PageDorpDown = ec.getObjects("PageDropdown");
		//String selectDdValue = ec.getObjects("selectDdValue");
		//driver.findElement(By.xpath(PageDorpDown)).click();
		///driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		//driver.findElement(By.xpath(selectDdValue)).click();
		//driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
	}
	@Then ("Verify label button {string} is displying under {string}")
	public void verify_suppProfile_label_button(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label button is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label button is displyed under " + subCat + "\n");
	}
	@Then ("Verify label downarrow button {string} is displying under {string}")
	public void verify_suppProfile_label_downarrow_button(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("downarrow_configure");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label button is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label button is displyed under " + subCat + "\n");
	}
	@Then("Verify {string} TYS specific questionnaire count is {int}")
	public void buyer_TYS_specific_count(String buyer,Integer count) throws Throwable {
		String original = ec.getObjects("div_id") + buyer +ec.getObjects("allQuest");
		String formatXPATH = String.format(original);
		List<WebElement> buyers = driver.findElements(By.xpath(formatXPATH));
		int size = buyers.size();
		Integer intObj = new Integer(count);
		int intcount=intObj.intValue();
		Assert.assertEquals(size,intcount);
		logger.info("Verified the "+buyer+" TYS specific count is "+count+"\n");
		System.out.println("Verified the " +buyer+ " TYS specific count is "+count+"\n");
		for(int i=0;i<size;i++) {
			String questionnaireName = buyers.get(i).getText();
			System.out.println("TYS Generic Questionnaires : "+questionnaireName);
		}
	}
	@Then ("Click on {string} radio button for question {string}")
	public void click_radio_button_approvalreq(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("approval_ans2")+Ans+ec.getObjects("approval_ans3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
		System.out.println("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
	}
	@Then ("Click on {string} radio button for answer question {string}")
	public void click_radio_button_ans_approvalreq(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("approval_ans4")+Ans+ec.getObjects("approval_ans3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		/*
		 * WebElement element = driver.findElement(By.xpath(formatXPATH));
		 * JavascriptExecutor js = (JavascriptExecutor) driver;
		 * js.executeScript("arguments[0].click();", element);
		 */

		logger.info("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
		System.out.println("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
	}
	@Then ("Click on {string} radio button for approval question {string}")
	public void click_radio_button_approvalquest(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("Approval_ans5")+Ans+ec.getObjects("approval_ans3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
		System.out.println("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
	}
	@Then ("Enter {string} as description for approval question {string}")
	public void enter_desc_approvalquest(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("input_value");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(Ans);

		logger.info("Entered " + "'" + Ans + "'" + " under " + Quest + "\n");
		System.out.println("Entered " + "'" + Ans + "'" + " under " + Quest + "\n");
	}
	@Then ("Click on {string} dropdown button for approval requests role {string}")
	public void click_approvalreq_role(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("assign_dropDown");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
		System.out.println("Clicked " + "'" + Ans + "'" + " button under " + Quest + "\n");
	}
	@Then ("Select {string} as assiging approval requests role for {string}")
	public void select_approvalreq_role(String Ans, String Quest) {

		String original = ec.getObjects("link_var1") + Quest +ec.getObjects("assign_role_config")+Ans+"']";
		String formatXPATH = String.format(original);
		assignRole = Ans;
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		/*
		 * WebElement element = driver.findElement(By.xpath(formatXPATH));
		 * JavascriptExecutor js = (JavascriptExecutor) driver;
		 * js.executeScript("arguments[0].click();", element);
		 */

		logger.info("Selected " + "'" + Ans + "'" + " under " + Quest + "\n");
		System.out.println("Selected " + "'" + Ans + "'" + " under " + Quest + "\n");
	}
	@Then("Scroll Down to element {string} is visible")
	public void scroll_down_element(String ele) throws Throwable {
		for(int i=0;i<5;i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
			}
		logger.info("Scrolled to view " + ele + "\n");
		System.out.println("Scrolled to view " + ele + "\n");
	}
	@Then ("Click on label button {string} under {string}")
	public void click_suppProfile_label_button(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("approval_nxt_btn");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
	}
	@Then ("Click on button {string} at {string}")
	public void click_suppProfile_label_button_for(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +"']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " label button under " + subCat + "\n");
	}
	
	@Then("Select input dropdown as {string} for {string}")
	public void select_answer_dependenet(String ans,String quest) {

		String original = ec.getObjects("select_fields_input");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ans);
		String original2 = ec.getObjects("input_field")+ans+ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + ans +" as "+quest+ "\n");
		System.out.println("Selected " + ans + " as "+quest+ "\n");
	}
	
	@Then ("Click on radio button {string} under for {string}")
	public void click_radio_button_for_action(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("select_actions");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + Label + "'" + " radio button under " + subCat + "\n");
		System.out.println("Clicked " + "'" + Label + "'" + " radio button under " + subCat + "\n");
	}
	@Then("Show {string} tooltip as {string} for {string}")
	public void show_tooltip_in(String Label, String TTexpected, String SubCat) {

		String original = ec.getObjects("span_Txt") + Label +"']//span";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title");

		// assertTrue(TTactual.equalsIgnoreCase(TTexpected));

		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");

	}
	@Then("Verify {string} input dropdown is displayed under {string}")
	public void drpdonwn_display_supplierProfile(String role, String label) {

		String original = ec.getObjects("span_Txt") + role +ec.getObjects("dropDown_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + role + " input value is displyed under " + label + "\n");
		System.out.println("Verified " + role + " input value is displyed under " + label + "\n");
	}
	@Then("Verify {string} input dropdown is enable under {string}")
	public void drpdonwn_enable_supplierProfile(String role, String label) {

		String original = ec.getObjects("span_Txt") + role +ec.getObjects("dropDown_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + role + " input value is enable under " + label + "\n");
		System.out.println("Verified " + role + " input value is enable under " + label + "\n");
	}
	@Then("Verify {string} input dropdown is displayed for {string}")
	public void section_drpdonwn_display_supplierProfile(String role, String label) {

		String original = ec.getObjects("remainder_dropdown1") + role +ec.getObjects("dropDown_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + role + " input value is displyed under " + label + "\n");
		System.out.println("Verified " + role + " input value is displyed under " + label + "\n");
	}
	@Then("Verify {string} input dropdown is enable for {string}")
	public void section_drpdonwn_enable_supplierProfile(String role, String label) {

		String original = ec.getObjects("remainder_dropdown1") + role +ec.getObjects("dropDown_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + role + " input value is enable under " + label + "\n");
		System.out.println("Verified " + role + " input value is enable under " + label + "\n");
	}
	@Then("Verify {string} input discription is displayed for {string}")
	public void input_discription_display_supplierProfile(String role, String label) {

		String original = ec.getObjects("remainder_dropdown1") + role +ec.getObjects("discription_inut");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + role + " input value is displyed under " + label + "\n");
		System.out.println("Verified " + role + " input value is displyed under " + label + "\n");
	}
	@Then("Verify {string} input discription is enable for {string}")
	public void input_discription_enable_supplierProfile(String role, String label) {

		String original = ec.getObjects("remainder_dropdown1") + role +ec.getObjects("discription_inut");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + role + " input value is enabled under " + label + "\n");
		System.out.println("Verified " + role + " input value is enabled under " + label + "\n");
	}
	@Then ("Verify label radio button {string} is displying under {string}")
	public void verify_label_radio_button(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " radio button is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " radio button is displyed under " + subCat + "\n");
	}
	@Then ("Verify label radio button {string} is enable under {string}")
	public void verify_label_radio_button_enable(String Label, String subCat) {

		String original = ec.getObjects("span_Txt") + Label +"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " radio button is enable under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " radio button is enable under " + subCat + "\n");
	}
	@Then("Enter input as {string} for {string}")
	public void enter_input(String ans,String quest) {

		String original = ec.getObjects("select_fields_input");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ans);
		logger.info("Entered " + ans +" as "+quest+ "\n");
		System.out.println("Entered " + ans + " as "+quest+ "\n");
	}
	@Then ("Verify Required {string} error message for {string}")
	public void verify_label_req(String req, String Label) {

		String original = ec.getObjects("label_Txt") + Label +ec.getObjects("req_mes")+req+"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(req));

		logger.info("Verified " + "'" + req + "'" + " is displyed under " + Label + "\n");
		System.out.println("Verified " + "'" + req + "'" + " is displyed under " + Label + "\n");
	}
	@Then ("Verify Required {string} error message for role {string}")
	public void verify_label_req_role(String req, String Label) {

		String original = ec.getObjects("span_Txt") + Label +ec.getObjects("req_mes")+req+"']";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(req));

		logger.info("Verified " + "'" + req + "'" + " is displyed under " + Label + "\n");
		System.out.println("Verified " + "'" + req + "'" + " is displyed under " + Label + "\n");
	}
	@Then("Select input dropdown {string} for {string}")
	public void select_assign_role(String ans,String quest) {

		String original = ec.getObjects("span_Txt") + ans +ec.getObjects("dropDown_input");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(quest);
		String original2 = ec.getObjects("input_field")+quest+ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + ans +" as "+quest+ "\n");
		System.out.println("Selected " + ans + " as "+quest+ "\n");
	}
	@Then("Enter {string} input discription is for {string}")
	public void enter_input_discription_supplierProfile(String desc, String data) {

		String original = ec.getObjects("remainder_dropdown1") + desc +ec.getObjects("discription_inut");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(data);

		logger.info("Entered " + data + " input value is enabled under " + desc + "\n");
		System.out.println("Entered " + data + " input value is enabled under " + desc + "\n");
	}
	@Then ("Click on up arrow for supplier profile")
	public void click_upArrow() {

		String original = ec.getObjects("upArrow_supp_profile");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on up arrow for supplier profile "+"\n");
		System.out.println("Clicked on up arrow for supplier profile"+ "\n");
	}
	@Then ("Click on down arrow for supplier profile")
	public void click_downArrow() {

		String original = ec.getObjects("downArrow_supp_profile");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on down arrow for supplier profile "+"\n");
		System.out.println("Clicked on down arrow for supplier profile"+ "\n");
	}
	@Then ("Click on up arrow for configure profile")
	public void click_upArrow_configProfile() {

		String original = ec.getObjects("upArrow_configure");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on up arrow for supplier profile "+"\n");
		System.out.println("Clicked on up arrow for supplier profile"+ "\n");
	}
	//weekly sanity
	@Then("Click on save button")
	public void click_button() throws Throwable {
		Thread.sleep(3000);

		String original = ec.getObjects("save_to_delete");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement Element = driver.findElement(By.xpath(original));
		
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);

		logger.info("Clicked on Save button" + "\n");
		System.out.println("Clicked on Save button" + "\n");
	}
}
