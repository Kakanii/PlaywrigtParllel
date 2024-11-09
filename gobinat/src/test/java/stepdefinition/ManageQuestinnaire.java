package stepdefinition;

import static org.testng.Assert.assertTrue;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.TimeoutException;
import org.openqa.selenium.WebElement;
//import org.testng.Assert;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ManageQuestinnaire extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public static WebDriverWait wait = new WebDriverWait(driver, 120);;
	Logger logger = Logger.getLogger(ManageQuestinnaire.class);

	Actions action = new Actions(driver);

	ArrayList<Object> risk = new ArrayList<Object>();
	CorpRelationships cr = new CorpRelationships();
	CommonStepDefs csd = new CommonStepDefs();
	MyBuyers mb = new MyBuyers();
	DependentQuestionnaires dq = new DependentQuestionnaires();

	@Then("Click on Manage Questionnaires tab")
	public void click_on_Manage_Questionnaires_tab() throws Throwable {
		String original = ec.getObjects("managequestionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Manage Questionnaire Tab" + "\n");
		System.out.println("Clicked on Manage Questionnaire Tab" + "\n");
		Thread.sleep(2000);
	}

	@Then("Show All Questionnaires title on Manage Questionnaires Page {string}")
	public void show_All_Questionnaires_title_on_Manage_Questionnaires_Page(String string) throws Throwable {
		String original = ec.getObjects("managequestionnaires_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Manage Questionnaire" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Manage Questionnaire" + "\n");
	}

	@Then("Show Manage Questionnaire Groups tab {string}")
	public void show_Manage_Questionnaire_Groups_tab(String string) throws Throwable {
		String original = ec.getObjects("managequestionnaire_group_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Manage Questionnaire Groups Tab visible on Manage Questionnaires page" + "\n");
		System.out.println("Manage Questionnaire Groups Tab visible on Manage Questionnaires page" + "\n");
	}

	@Then("Manage Questionnaire Groups tab clickable {string}")
	public void manage_Questionnaire_Groups_tab_clickable(String string) throws Throwable {
		String original = ec.getObjects("managequestionnaire_group_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Clicked on Manage Questionnaire Groups tab" + "\n");
		System.out.println("Clicked on Manage Questionnaire Groups tab " + "\n");
	}

	@Then("Show Add a Questionnaire Group button {string}")
	public void show_Add_a_Questionnaire_Group_button(String string) throws Throwable {
		String original = ec.getObjects("addaquestionnairegroupbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Add a Questionnaire Group button on Manage Questionnaire Groups page" + "\n");
		System.out.println("Show Add a Questionnaire Group button on Manage Questionnaire Groups page" + "\n");
	}

	@Then("Add a Questionnaire Group button clickable {string}")
	public void add_a_Questionnaire_Group_button_clickable(String string) throws Throwable {
		String original = ec.getObjects("addaquestionnairegroupbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Clicked on Add a Questionnaire Group tab" + "\n");
		System.out.println("Clicked on Add a Questionnaire Group tab " + "\n");
	}

	@Then("Click on Add a Questionnaire Group button")
	public void click_on_Add_a_Questionnaire_Group_button() throws Throwable {
		String original = ec.getObjects("addaquestionnairegroupbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Add a Questionnaire Group button on Manage Questionnaire Groups page" + "\n");
		System.out.println("Clicked on Add a Questionnaire Group button on Manage Questionnaire Groups page" + "\n");
	}

	@Then("Show Cancel button on Add a Questionnaire Group Modal {string}")
	public void show_Cancel_button_on_Add_a_Questionnaire_Group_Modal(String string) throws Throwable {
		String original = ec.getObjects("cancelbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Cancel button on Add a Questionnaire Group Modal" + "\n");
		System.out.println("Showing Cancel button on Add a Questionnaire Group Modal" + "\n");
	}

	@Then("Click on Manage Questionnaire Groups tab")
	public void click_on_Manage_Questionnaire_Groups_tab() throws Throwable {
		String original = ec.getObjects("managequestionnaire_group_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Manage Questionnaire Groups tab" + "\n");
		System.out.println("Clicked on Manage Questionnaire Groups tab" + "\n");
	}

	@Then("Click on Cancel button on Add a Quesitonnaire Group modal")
	public void click_on_cancel_button_on_add_a_questionnaire_group_modal() throws Throwable {
		String original = ec.getObjects("cancelbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Cancel button on Add a Questionnaire Group modal" + "\n");
		System.out.println("Clicked on Cancel button on Add a Questionnaire Group modal" + "\n");
	}

	@Then("Show Cancel button clickable on Add a Questionnaire Group Modal {string}")
	public void show_Cancel_button_clickable_on_Add_a_Questionnaire_Group_Modal(String string) throws Throwable {
		String original = ec.getObjects("cancelbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Cancel button clickable on Add a Questionnaire Group modal" + "\n");
		System.out.println("Cancel button clickable on Add a Questionnaire Group modal" + "\n");
	}

	@Then("Show title on Add a Questionnaire Group modal {string}")
	public void show_title_on_Add_a_Questionnaire_Group_modal(String string) throws Throwable {
		String original = ec.getObjects("addaquestionnairegrouptitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Add a Questionnaire Group modal " + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Add a Questionnaire Group modal " + "\n");
	}

	@Then("Show the message on Manage Questionnaire Groups {string}")
	public void show_the_message_on_Manage_Questionnaire_Groups(String string) throws Throwable {
		String original = ec.getObjects("managequestionnairegroupmsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows the message" + " " + string + " " + "on Manage Questionnaire Groups " + "\n");
		System.out.println("Shows the message" + " " + string + " " + "on Manage Questionnaire Groups " + "\n");
	}

	@Then("Show Save Questionnaire Group button on Add a Questionnaire Group Modal {string}")
	public void show_Save_Questionnaire_Group_button_on_Add_a_Questionnaire_Group_Modal(String string)
			throws Throwable {
		String original = ec.getObjects("savequestionnairegroupbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Save Questionnaire Group button on Add a Questionnaire Group Modal" + "\n");
		System.out.println("Showing Save Questionnaire Group button on Add a Questionnaire Group Modal" + "\n");
	}

	@Then("Show Save Questionnaire Group button clickable on Add a Questionnaire Group Modal {string}")
	public void show_Save_Questionnaire_Group_button_clickable_on_Add_a_Questionnaire_Group_Modal(String string) {
		String original = ec.getObjects("savequestionnairegroupbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Save Questionnaire Group button clickable on Add a Questionnaire Group modal" + "\n");
		System.out.println("Save Questionnaire Group button clickable on Add a Questionnaire Group modal" + "\n");
	}

	@Then("Enter value at Add a Questionnaire Group modal")
	public void enter_value_at_Add_a_Questionnaire_Group_modal() throws Throwable {
		String original = ec.getObjects("addinputqg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String riskname = "Risk" + Time;

		risk.add(0, riskname);
		driver.findElement(By.xpath(original)).sendKeys(riskname);

		logger.info("Entered value at Add a Questionnaire Group modal" + "\n");
		System.out.println("Entered value at Add a Questionnaire Group modal " + "\n");
	}

	@Then("Click on save Questionnaire Group button")
	public void click_on_save_Questionnaire_Group_button() throws Throwable {
		String original = ec.getObjects("savequestionnairegroupbtnonaddquestionnairegroupmodal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked saved button on Manage Questionnaire Groups modal" + "\n");
		System.out.println("Clicked saved button on Manage Questionnaire Groups modal" + "\n");
	}

	@Then("Click Action drop down present for added Questionnaire")
	public void click_Action_drop_down_present_for_added_Questionnaire() throws Throwable {
		String original = ec.getObjects("Actionsdp1") + risk.get(0) + ec.getObjects("Actionsdp2");

		System.out.println("original" + original + "\n");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked Action drop down present for added Questionnaire" + "\n");
		System.out.println("Clicked Action drop down present for added Questionnaire" + "\n");
	}

	@Then("Select the Remove option in the Action drop down")
	public void select_the_Remove_option_in_the_Action_drop_down() throws Throwable {
		String original = ec.getObjects("Actiondp_remove");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Selected the Remove option in the Action drop down" + "\n");
		System.out.println("Selected the Remove option in the Action drop down" + "\n");
	}

	@Then("Click in Delete button on the Delete Questionnaire Group")
	public void click_in_Delete_button_on_the_Delete_Questionnaire_Group() throws Throwable {
		String original = ec.getObjects("deleteqg_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked in Delete button on the Delete Questionnaire Group" + "\n");
		System.out.println("Clicked in Delete button on the Delete Questionnaire Group" + "\n");
	}

	@Then("Select the Update option in the Action drop down")
	public void select_the_Update_option_in_the_Action_drop_down() throws Throwable {
		String original = ec.getObjects("Actiondp_update");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Selected the Update option in the Action drop down" + "\n");
		System.out.println("Selected the Update option in the Action drop down" + "\n");
	}

	@Then("Enter the value in the Questionnaire Group Name for update")
	public void enter_the_value_in_the_Questionnaire_Group_Name_for_update() throws Throwable {
		String original = ec.getObjects("addinputqg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String riskname = "Risk" + Time;

		risk.add(0, riskname);
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(riskname);

		logger.info("Entered value at Add a Questionnaire Group modal" + "\n");
		System.out.println("Entered value at Add a Questionnaire Group modal " + "\n");
	}

	@Then("Click on Update button on the Update Questionnaire Group")
	public void click_on_Update_button_on_the_Update_Questionnaire_Group() throws Throwable {
		String original = ec.getObjects("updateqg_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Update button on the Update Questionnaire Group" + "\n");
		System.out.println("Clicked on Update button on the Update Questionnaire Group" + "\n");
	}

	@Then("Click on Update button to update the questionnaire")
	public void Click_on_Update_button_to_update_the_questionnaire() throws Throwable {
		String original = ec.getObjects("updateatquestionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Update button to update the questionnaire" + "\n");
		System.out.println("Clicked on Update button to update the questionnaire" + "\n");
	}

	@Then("Select the Make it default option in the Action drop down")
	public void select_the_Make_it_default_option_in_the_Action_drop_down() throws Throwable {
		String original = ec.getObjects("Actiondp_default");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Selected the Make it default option in the Action drop down" + "\n");
		System.out.println("Selected the Make it default option in the Action drop down" + "\n");
	}

	@Then("Click Action button on the High Risk")
	public void click_Action_button_on_the_High_Risk() throws Throwable {
		String original = ec.getObjects("Actions_highrisk");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked Action drop down present on High risk" + "\n");
		System.out.println("Clicked Action drop down present on High risk" + "\n");
	}

	@Then("Click Action drop down present on {string} risk")
	public void click_Action_drop_down_present_on_risk(String string) throws Throwable {
		String original = ec.getObjects("Actionsdp1") + string + ec.getObjects("Actionsdp2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked Action drop down present on dont delete risk" + "\n");
		System.out.println("Clicked Action drop down present on dont delete risk" + "\n");
	}

	@Then("verify the toast message {string} when trying to delete mapped questionnaire")
	public void verify_the_toast_message_when_trying_to_delete_mapped_questionnaire(String string) throws Throwable {
		String original = ec.getObjects("toast_siret");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("toast_siret"))).getText().contains(string));
		logger.info("Showing toast message" + " " + string + " " + "when trying to delete mapped questionnaire" + "\n");
		System.out.println(
				"Showing toast message" + " " + string + " " + "when trying to delete mapped questionnaire" + "\n");
		Thread.sleep(3000);
	}

	@Then("Show Update option in the Action drop down {string}")
	public void show_Update_option_in_the_Action_drop_down(String string) throws Throwable {
		String original = ec.getObjects("Actiondp_update");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Update option in the Action drop down" + "\n");
		System.out.println("Showing Update option in the Action drop down" + "\n");
	}

	@Then("Show Remove option in the Action drop down {string}")
	public void show_Remove_option_in_the_Action_drop_down(String string) throws Throwable {
		String original = ec.getObjects("Actiondp_remove");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Remove option in the Action drop down" + "\n");
		System.out.println("Showing Remove option in the Action drop down" + "\n");
	}

	@Then("Show Mark as default option in the Action drop down {string}")
	public void show_Mark_as_default_option_in_the_Action_drop_down(String string) throws Throwable {
		String original = ec.getObjects("Actiondp_default");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing  Mark as default option in the Action drop down " + "\n");
		System.out.println("Showing  Mark as default option in the Action drop down " + "\n");
	}

	@Then("Show Action drop down present for added Questionnaire {string}")
	public void show_Action_drop_down_present_for_added_Questionnaire(String string) throws Throwable {
		String original = ec.getObjects("Actionsdp1") + risk.get(0) + ec.getObjects("Actionsdp2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Action drop down present for added Questionnaire " + "\n");
		System.out.println("Showing Action drop down present for added Questionnaire " + "\n");
	}

	@Then("Show Question group drop down present on Invite supplier step two page {string}")
	public void show_Question_group_drop_down_present_on_Invite_supplier_step_two_page(String string) throws Throwable {
		// String original = ec.getObjects("invitesupplier_QGdropdown");
		String original = ec.getObjects("selectAutomationDropdown");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Question group drop down present on Invite supplier step two page " + "\n");
		System.out.println("Showing Question group drop down present on Invite supplier step two page " + "\n");
	}

	@Then("Click on Close button on Invite supplier step two page")
	public void click_on_Close_button_on_Invite_supplier_step_two_page() throws Throwable {
		// String original = ec.getObjects("invitesupplier2_closebutton");
		String original = ec.getObjects("discover_filter_close");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Close button on Invite supplier step two page" + "\n");
		System.out.println("Clicked on Close button on Invite supplier step two page" + "\n");
	}

	@Then("Show High Rsk Question group selected in the drop down present on Invite supplier step two page {string}")
	public void show_High_Rsk_Question_group_selected_in_the_drop_down_present_on_Invite_supplier_step_two_page(
			String string) throws Throwable {
		String original = ec.getObjects("invitesupplier2_highriskoption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(
				"Showing  High Rsk Question group selected in the drop down present on Invite supplier step two page "
						+ "\n");
		System.out.println(
				"Showing  High Rsk Question group selected in the drop down present on Invite supplier step two page "
						+ "\n");
	}

	@Then("Show the Questionnaire is populated {string}")
	public void show_the_Questionnaire_is_populated(String string) throws Throwable {
		String original = ec.getObjects("invitesupplier2_highriskqg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing the Questionnaire is populated  " + "\n");
		System.out.println("Showing the Questionnaire is populated " + "\n");
	}

	@Then("Select the {string} Questionnaire group from the drop down")
	public void select_the_Questionnaire_group_from_the_drop_down(String string) throws Throwable {
		String original = ec.getObjects("invitesupplier_QGdropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("qg_readingpanel_lowriskinput");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selectedthe " + string + " Questionnaire group from the drop down" + "\n");
		System.out.println("Selected the" + string + " Questionnaire group from the drop down" + "\n");
	}

	@Then("Show Donot delete test Question group selected in the drop down present on Invite supplier step two page {string}")
	public void show_Donot_delete_test_Question_group_selected_in_the_drop_down_present_on_Invite_supplier_step_two_page(
			String string) throws Throwable {
		String original = ec.getObjects("invitesupplier2_dontdeletetestoption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(
				"Showing  Donot delete test Question group selected in the drop down present on Invite supplier step two page "
						+ "\n");
		System.out.println(
				"Showing  Donot delete test Question group selected in the drop down present on Invite supplier step two page "
						+ "\n");
	}

	@Then("Show the {string} Questionnaire is populated {string}")
	public void show_the_Questionnaire_is_populated(String abc, String string) throws Throwable {
		// String original = ec.getObjects("invitesupplier2_lowriskqg");
		String original = ec.getObjects("filters1") + abc + ec.getObjects("filters2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing the" + abc + " Questionnaire is populated  " + "\n");
		System.out.println("Showing the" + abc + " Questionnaire is populated  " + "\n");
	}

	@Then("verify the Supplier Questinnaire group {string}")
	public void verify_the_Supplier_Questinnaire_group(String string) throws Throwable {
		String original = ec.getObjects("readpanel_qg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Questionnaire groups " + " " + string + " " + " showing on table" + "\n");
		System.out.println("Questionnaire groups  " + " " + string + " " + " showing on table" + "\n");
	}

	@Then("Show toast message displayed on invite supplier {string}")
	public void show_toast_message_displayed_on_invite_supplier(String string) throws Throwable {

		String original = ec.getObjects("toastclass_qg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed toast message displayed on invite supplier" + "\n");
		System.out.println("Showed toast message displayed on invite supplier" + "\n");
	}

	@Then("verify the visibility of the filter by Supplier Questionnaire Group {string}")
	public void verify_the_visibility_of_the_filter_by_Supplier_Questionnaire_Group(String string) throws Throwable {
		String original = ec.getObjects("supplierqg_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Visibility of new filter on supplier page" + " " + string + " " + "\n");
		System.out.println("Visibility of new filter on supplier page" + " " + string + " " + "\n");
	}

	@Then("verify the visibility of the column Supplier Questionnaire Group {string}")
	public void verify_the_visibility_of_the_column_Supplier_Questionnaire_Group(String string) throws Throwable {
		String original = ec.getObjects("supplierqg_columntitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Visibility of new Column on supplier page" + " " + string + " " + "\n");
		System.out.println("Visibility of new Column on supplier page" + " " + string + " " + "\n");
	}

	@Then("Click on filter by Supplier Questionnaire Group")
	public void click_on_filter_by_Supplier_Questionnaire_Group() throws Throwable {
		String original = ec.getObjects("supplierqg_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on filter by Supplier Questionnaire Group" + "\n");
		System.out.println("Clicked on filter by Supplier Questionnaire Group" + "\n");
	}

	@Then("select the High risk option in the Supplier Questionnaire Group filter")
	public void select_the_High_risk_option_in_the_Supplier_Questionnaire_Group_filter() throws Throwable {
		String original = ec.getObjects("qg_option_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("selected the High risk option in the Supplier Questionnaire Group filter" + "\n");
		System.out.println("selected the High risk option in the Supplier Questionnaire Group filter" + "\n");
	}

	@Then("Click on the Cancel button on the supplier group filter drop down")
	public void click_on_the_Cancel_button_on_the_supplier_group_filter_drop_down() throws Throwable {
		String original = ec.getObjects("qg_cancel_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the Cancel button on the supplier group filter drop down" + "\n");
		System.out.println("Clicked on the Cancel button on the supplier group filter drop down" + "\n");
	}

	@Then("Click on the Apply button on the supplier group filter drop down")
	public void click_on_the_Apply_button_on_the_supplier_group_filter_drop_down() throws Throwable {
		String original = ec.getObjects("qg_apply_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on the Apply button on the supplier group filter drop down" + "\n");
		System.out.println("Clicked on the Apply button on the supplier group filter drop down" + "\n");
	}

	@Then("Click on the Clear the Filter")
	public void click_on_the_Clear_the_Filter() throws Throwable {
		String original = ec.getObjects("qg_clearall_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);

		logger.info("Clicked on the Clear the Filter on supplier page" + "\n");
		System.out.println("Clicked on the Clear the Filter on supplier page" + "\n");
	}

	@Then("Click on the Supplier record in the supplier page")
	public void click_on_the_Supplier_record_in_the_supplier_page() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("qg_clickon_companyname");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		logger.info("Clicked on the Supplier Company name in the supplier page" + "\n");
		System.out.println("Clicked on the Supplier Company name in the supplier page" + "\n");
	}

	@Then("verify the visibility of the Supplier Questionnaire Group on reading panel {string}")
	public void verify_the_visibility_of_the_Supplier_Questionnaire_Group_on_reading_panel(String string)
			throws Throwable {
		String original = ec.getObjects("qg_readingpanel_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Visibility of the Supplier Questionnaire Group on reading panel " + " " + string + " " + "\n");
		System.out.println(
				"Visibility of the Supplier Questionnaire Group on reading panel " + " " + string + " " + "\n");
	}

	@Then("Select the {string} Questionnaire group from the drop down in reading panel")
	public void select_the_Questionnaire_group_from_the_drop_down_in_reading_panel(String type) throws Throwable {
		String original = ec.getObjects("qg_readingpanel_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
		se.selectByVisibleText(type);
		// String original1 = ec.getObjects("qg_readingpanel_lowriskinput");
		// String formatXPATH1 = String.format(original);

		logger.info("Selected the " + type + " Questionnaire group from the drop down in reading panel" + "\n");
		System.out.println("Selected the" + type + " Questionnaire group from the drop down in reading panel" + "\n");
	}

	@Then("Click on Save changes button under the Questionnaire group from the drop down in reading panel")
	public void click_on_Save_changes_button_under_the_Questionnaire_group_from_the_drop_down_in_reading_panel()
			throws Throwable {
		String original = ec.getObjects("qg_readingpanel_savechangesbutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Save changes button under the Questionnaire group from the drop down in reading panel"
				+ "\n");
		System.out.println(
				"Clicked on Save changes button under the Questionnaire group from the drop down in reading panel"
						+ "\n");
	}

	@Then("click on Yes button on the Update Questionnaire Assignment")
	public void click_on_Yes_button_on_the_Update_Questionnaire_Assignment() throws Throwable {
		String original = ec.getObjects("qg_readingpanel_yesbutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Yes button on the Update Questionnaire Assignment" + "\n");
		System.out.println("Clicked on Yes button on the Update Questionnaire Assignment" + "\n");
	}

	@Then("verify the toast message on Update Questionnaire Assignment {string}")
	public void verify_the_toast_message_on_Update_Questionnaire_Assignment(String string) throws Throwable {

		String original = ec.getObjects("toast_msg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showed the toast message on Update Questionnaire Assignment" + "\n");
		System.out.println("Showed the toast message on Update Questionnaire Assignment" + "\n");
	}

	@Then("Verify if High Risk existing Questionnaire group present {string}")
	public void verify_if_High_Risk_existing_Questionnaire_group_present(String string) throws Throwable {
		// high risk
		String original = ec.getObjects("qg_readingpanel_highriskexisting");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Visibility of the High Risk existing Questionnaire group present on reading panel " + " " + string
				+ " " + "\n");
		System.out.println("Visibility of the High Risk existing Questionnaire group present on reading panel " + " "
				+ string + " " + "\n");
	}

	@Then("Verify if Risk Questionnaire present {string}")
	public void verify_if_Risk_Questionnaire_present(String string) throws Throwable {
		String original = ec.getObjects("qg_readingpanel_lowriskquestionaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);

		logger.info("Visibility of the Risk Questionnaire present on reading panel " + " " + string + " " + "\n");
		System.out
				.println("Visibility of the Risk Questionnaire present on reading panel " + " " + string + " " + "\n");
	}

	@Then("Click on {string} cancel icon on the reading panel")
	public void click_on_cancel_icon_on_the_reading_panel(String string) throws Throwable {
		String original = ec.getObjects("qg_readingpanel_lowrisk_cancelicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on cancel icon on the reading panel" + "\n");
		System.out.println("Clicked on cancel icon on the reading panel" + "\n");
	}

	@Then("Select the Donot delete test Questionnaire group from the drop down in reading panel")
	public void select_the_Donot_delete_test_Questionnaire_group_from_the_drop_down_in_reading_panel()
			throws Throwable {
		// donot delete test
		int dontdeletecount = driver.findElements(By.xpath(ec.getObjects("qg_readingpanel_dontdeletetestexisting")))
				.size();
		if (dontdeletecount != 0) {

			System.out.println("Donot delete test risk exist to this supplier");
			// cancel icon
			String dontdelete_cancelicon = ec.getObjects("qg_readingpanel_dontdelete_cancelicon");
			String formatXPATHdontdelete_cancelicon = String.format(dontdelete_cancelicon);

			WaitClass.webDriverWait(formatXPATHdontdelete_cancelicon);
			driver.findElement(By.xpath(dontdelete_cancelicon)).click();
			// save button
			String savechangesbutton = ec.getObjects("qg_readingpanel_savechangesbutton");
			String formatXPATHsavechangesbutton = String.format(savechangesbutton);

			WaitClass.webDriverWait(formatXPATHsavechangesbutton);
			driver.findElement(By.xpath(savechangesbutton)).click();

			// switch
			driver.switchTo().activeElement();
			Thread.sleep(2000);

			// yes button
			String yesbutton = ec.getObjects("qg_readingpanel_yesbutton");
			String formatXPATHyesbutton = String.format(yesbutton);

			WaitClass.webDriverWait(formatXPATHyesbutton);
			driver.findElement(By.xpath(yesbutton)).click();

			// toast message
			String toastmesg_success = ec.getObjects("qg_readingpanel_toastmesg_success");
			String formatXPATHtoastmesg_success = String.format(toastmesg_success);

			WaitClass.webDriverWait(formatXPATHtoastmesg_success);
			assertTrue(driver.findElement(By.xpath(toastmesg_success)).isDisplayed(), "true");

			// Switch to the parent window
			driver.switchTo().defaultContent();
			Thread.sleep(2000);

		} else {
			System.out.println("Donot delete test risk doesnt exist to this supplier");
		}

		String originaldropdown1 = ec.getObjects("qg_readingpanel_title");
		String formatXPATHdropdown1 = String.format(originaldropdown1);
		WaitClass.webDriverWait(formatXPATHdropdown1);
		WebElement targetElement = driver.findElement(By.xpath(originaldropdown1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(false);", targetElement);

		Thread.sleep(3000);

		String originaldropdown = ec.getObjects("qg_readingpanel_dropdown");
		String formatXPATHdropdown = String.format(originaldropdown);
		WaitClass.webDriverWait(formatXPATHdropdown);
		driver.findElement(By.xpath(originaldropdown)).click();

		String dontdeleteinput = ec.getObjects("qg_readingpanel_dontdeleteinput");
		String formatXPATHdontdeleteinput = String.format(dontdeleteinput);

		WaitClass.webDriverWait(formatXPATHdontdeleteinput);

		driver.findElement(By.xpath(dontdeleteinput)).click();

		logger.info("Selected the  Questionnaire group from the drop down in reading panel" + "\n");
		System.out.println("Selected the Questionnaire group from the drop down in reading panel" + "\n");
	}

	@Then("Click on Donot delete test cancel icon on the reading panel")
	public void click_on_Donot_delete_test_cancel_icon_on_the_reading_panel() throws Throwable {
		String original = ec.getObjects("qg_readingpanel_dontdelete_cancelicon");
		String formatXPATH = String.format(original);
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", js);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Donot delete test  cancel icon on the reading panel" + "\n");
		System.out.println("Clicked on Donot delete test cancel icon on the reading panel" + "\n");
	}

	@Then("Click on Manage Questionnaire tab on Manage Questionnaires page")
	public void click_on_Manage_Questionnaire_tab_on_Manage_Questionnaires_page() throws Throwable {
		String original = ec.getObjects("managequestionnaire_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Manage Questionnaire tab on Manage Questionnaires page" + "\n");
		System.out.println("Clicked on Manage Questionnaire tab on Manage Questionnaires page" + "\n");
	}

	@Then("Click on the Drop down at Anti-Bribery, Anti-Corruption")
	public void click_on_the_Drop_down_at_Anti_Bribery_Anti_Corruption() throws Throwable {
		String original = ec.getObjects("default_qg_Anti_Bribery_Anti_Corruption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		logger.info("Clicked on the Drop down at Anti-Bribery, Anti-Corruption" + "\n");
		System.out.println("Clicked on the Drop down at Anti-Bribery, Anti-Corruption" + "\n");
	}

	@Then("Click on the Drop down at Canada Business and Tax Registration")
	public void click_on_the_Drop_down_at_Canada_Business_and_Tax_Registration() throws Throwable {
		String original = ec.getObjects("default_qg_CanadaBusinessandTaxRegistration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		logger.info("Clicked on the Drop down at Canada Business and Tax Registration" + "\n");
		System.out.println("Clicked on the Drop down at Canada Business and Tax Registration" + "\n");
	}

	@Then("Click on the drop down at Company Operations")
	public void click_on_the_drop_down_at_Company_Operations() throws Throwable {
		String original = ec.getObjects("default_qg_CompanyOperations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		logger.info("Clicked on the drop down at Company Operations" + "\n");
		System.out.println("Clicked on the drop down at Company Operations" + "\n");
	}

	@Then("Click on the drop down at Conflict Minerals")
	public void click_on_the_drop_down_at_Conflict_Minerals() throws Throwable {
		String original = ec.getObjects("default_qg_ConflictMinerals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(2000);
		logger.info("Clicked on the drop down at Conflict Minerals" + "\n");
		System.out.println("Clicked on the drop down at Conflict Minerals" + "\n");
	}

	@Then("Select the forautomation Questionnaire group from the drop down at Anti-Bribery, Anti-Corruption default questionnaire")
	public void select_the_forautomation_Questionnaire_group_from_the_drop_down_at_Anti_Bribery_Anti_Corruption_default_questionnaire()
			throws Throwable {
		// forautomation
		int forautomationcount = driver.findElements(By.xpath(ec.getObjects("default_qg_forautomationexisting")))
				.size();
		System.out.println("Checked If forautomation exist" + "\n");
		if (forautomationcount != 0) {

			System.out.println(
					"forautomation risk is present to the Anti-Bribery, Anti-Corruption default questionnaire");
			// cancel icon
			String forautomation_cancelicon = ec.getObjects("default_qg_forautomation_cancelicon");
			String formatXPATHforautomation_cancelicon = String.format(forautomation_cancelicon);

			WaitClass.webDriverWait(formatXPATHforautomation_cancelicon);
			driver.findElement(By.xpath(forautomation_cancelicon)).click();
			System.out.println("Clicked on the Cancel Icon on the forautomation" + "\n");

			// Scroll up
			JavascriptExecutor jse = (JavascriptExecutor) driver;
			jse.executeScript("scroll(0, -900);");

			// update button
			String updatebutton = ec.getObjects("updatebuttonon_Update_Default_Questionnaires");
			String formatXPATHupdatebutton = String.format(updatebutton);

			WaitClass.webDriverWait(formatXPATHupdatebutton);
			driver.findElement(By.xpath(updatebutton)).click();
			System.out.println("Clicked on the Update button" + "\n");

			// switch
			driver.switchTo().activeElement();
			Thread.sleep(2000);

			// Update
			String updatebuttononmodal = ec.getObjects("default_qg_updatebutton");
			String formatXPATHupdateonmodal = String.format(updatebuttononmodal);

			WaitClass.webDriverWait(formatXPATHupdateonmodal);
			driver.findElement(By.xpath(updatebuttononmodal)).click();
			System.out.println("Clicked on update button on the modal" + "\n");

			// // toast message
			// String toastmesg_success =
			// ec.getObjects("default_qg_forautomation__toastmesg_success");
			// String formatXPATHtoastmesg_success = String.format(toastmesg_success);

			// WaitClass.webDriverWait(formatXPATHtoastmesg_success);
			// assertTrue(driver.findElement(By.xpath(toastmesg_success)).isDisplayed(),
			// "true");
			// System.out.println("Toast message of update" + "\n");

			// Switch to the parent window
			driver.switchTo().defaultContent();
			Thread.sleep(2000);

		} else {
			System.out.println(
					"forautomation risk is not present to the Anti-Bribery, Anti-Corruption default questionnaire");
		}

		String originaldropdown = ec.getObjects("default_qg_Anti_Bribery_Anti_Corruption");
		String formatXPATHdropdown = String.format(originaldropdown);
		WaitClass.webDriverWait(formatXPATHdropdown);
		driver.findElement(By.xpath(originaldropdown)).click();
		System.out.println("Clicked on the text box to select" + "\n");

		String forautomationinput = ec.getObjects("default_qg_forautomation__forautomationinput");
		String formatXPATHdontforautomationinput = String.format(forautomationinput);

		WaitClass.webDriverWait(formatXPATHdontforautomationinput);

		driver.findElement(By.xpath(forautomationinput)).click();
		logger.info("Selected the forautomation risk" + "\n");
		System.out.println("Selected the forautomation risk" + "\n");
	}

	@Then("Click on Update button on the Default Questionnaires")
	public void click_on_Update_button_on_the_Default_Questionnaires() throws Throwable {
		String updatebutton = ec.getObjects("updatebuttonon_Update_Default_Questionnaires");
		String formatXPATHupdatebutton = String.format(updatebutton);

		WaitClass.webDriverWait(formatXPATHupdatebutton);
		driver.findElement(By.xpath(updatebutton)).click();

		logger.info("Clicked on the update button on the default questionnaires" + "\n");
		System.out.println("Clicked on the dupdate button on the default questionnaires " + "\n");
	}

	@Then("Click on the Update button on the Modal")
	public void click_on_the_Update_button_on_the_Modal() throws Throwable {
		Thread.sleep(2000);

		String updatebutton1 = ec.getObjects("default_qg_updatebutton");
		String formatXPATHupdatebutton1 = String.format(updatebutton1);

		WaitClass.webDriverWait(formatXPATHupdatebutton1);
		driver.findElement(By.xpath(updatebutton1)).click();
		logger.info("Clicked on the Update button on the modal " + "\n");
		System.out.println("Clicked on the Update button on the modal" + "\n");
	}

	@Then("verify the toast message on Update Default Questionnaires {string}")
	public void verify_the_toast_message_on_Update_Default_Questionnaires(String string) throws Throwable {
		String toastmesg_success = ec.getObjects("default_qg_forautomation__toastmesg_success");
		String formatXPATHtoastmesg_success = String.format(toastmesg_success);

		WaitClass.webDriverWait(formatXPATHtoastmesg_success);
		assertTrue(driver.findElement(By.xpath(toastmesg_success)).isDisplayed(), "true");
		logger.info("verified the toast message" + "\n");
		System.out.println("Verified the toast message" + "\n");

	}

	@Then("Click on forautomation Questionnaire group cancel icon at Anti-Bribery, Anti-Corruption default questionnaire")
	public void click_on_forautomation_Questionnaire_group_cancel_icon_at_Anti_Bribery_Anti_Corruption_default_questionnaire()
			throws Throwable {
		String forautomation_cancelicon = ec.getObjects("default_qg_forautomation_cancelicon");
		String formatXPATHforautomation_cancelicon = String.format(forautomation_cancelicon);

		WaitClass.webDriverWait(formatXPATHforautomation_cancelicon);
		driver.findElement(By.xpath(forautomation_cancelicon)).click();
		logger.info("Clicked on cancel icon of the forautomation at Anti bribery" + "\n");
		System.out.println("Clicked on cancel icon of the forautomation at Anti bribery" + "\n");
	}

	@Then("Deselect the {string} from the Questinnaire Group")
	public void deselect_the_from_the_Questinnaire_Group(String Group) throws Throwable {

		String original = ec.getObjects("grouppic_invite") + Group + ec.getObjects("group_invite");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on cancel icon of the Group at the invite supplier" + "\n");
		System.out.println("Clicked on cancel icon of the Group at the invite supplier" + "\n");
	}

	@Then("Select the {string} group from the Questinnaire Group drop down")
	public void select_the_group_from_the_Questinnaire_Group_drop_down(String group) {
		String original = ec.getObjects("invitesupplier_QGdropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("selectgroup") + group + ec.getObjects("label_var2");
		String formatXPATH1 = String.format(original);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		logger.info("Selected the " + group + " Questionnaire group from the drop down" + "\n");
		System.out.println("Selected the" + group + " Questionnaire group from the drop down" + "\n");
	}

	@Then("Click on {string} buton at the {string} Questionnaires")
	public void click_on_buton_at_the_Questionnaires(String button, String questionnaire) {

		String original = ec.getObjects("BeginQuestionnaire_button") + questionnaire
				+ ec.getObjects("BeginQuestionnaire2_button") + button + ec.getObjects("selectgroupend");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (TimeoutException e) {
			driver.navigate().refresh();

			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}
		logger.info("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
		System.out.println("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
	}

	@Then("Select the Yes answer Radio button at Import Export Compliance Question")
	public void select_the_yes_answer_radio_button_at_import_export_compliance_question() {
		String original = ec.getObjects("Yes_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
		System.out.println("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
	}

	@Then("Click on Publish Questionnaire button on questionaire acceptance page")
	public void Click_on_publish_questionnaire_button_on_questionaire_acceptance_page() throws Throwable {
		String original = ec.getObjects("publishquestionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement targetElement = driver.findElement(By.xpath(original));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(false);", targetElement);

		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
		System.out.println("Clicked on begin questionnaire button at the pending questionnaire" + "\n");
	}

	@Then("Click on the publish button for publishing")
	public void click_on_the_publish_button_for_publishing() throws Throwable {

		String original = ec.getObjects("reviewandpublish_publish");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		String xpathExpressionfirst = ec.getObjects("publish_questionnairetext");
		WaitClass.webDriverWait(xpathExpressionfirst);

		logger.info("Clicked on the publish button" + "\n");
		System.out.println("Clicked on the publish button" + "\n");

		// WebDriverWait wait = new WebDriverWait(driver,120);
		// wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("publish_popup"))));
	}

	@Then("Click on Yes for trade Compliance First question")
	public void click_on_yes_for_trade_compliance_first_question() {

		String original = ec.getObjects("question1_trade");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Yes for trade Compliance First question" + "\n");
		System.out.println("Click on Yes for trade Compliance First question" + "\n");
	}

	@Then("Click on No for trade Compliance Second question")
	public void click_on_no_for_trade_compliance_first_question() {

		String original = ec.getObjects("question2_trade");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Yes for trade Compliance First question" + "\n");
		System.out.println("Click on Yes for trade Compliance First question" + "\n");
	}

	@Then("Click on published tab at Assigned questionaire")
	public void click_on_published_tab_at_assigned_questionaire() {

		String original = ec.getObjects("publisedtab_assignedquestionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on published tab at Assigned questionaire" + "\n");
		System.out.println("Click on published tab at Assigned questionaire" + "\n");
	}

	@Then("Verify if {string} questionnaire present in the published tab")
	public void verify_if_questionnaire_present_in_the_published_tab(String string) throws Throwable {
		String original = ec.getObjects("BeginQuestionnaire_button") + string + ec.getObjects("selectgroupend");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Questionnaire groups " + " " + string + " " + " showing on table" + "\n");
		System.out.println("Questionnaire groups  " + " " + string + " " + " showing on table" + "\n");
	}

	@Then("Check {string} button visibility in pending questionaire {string}")
	public void check_button_visibility_in_pending_questionaire(String button, String string) throws Throwable {
		String original = ec.getObjects("savebutton_assignedquestionnaire") + button
				+ ec.getObjects("savebutton_assignedquestionnaire_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Checked button visible " + " " + string + " " + "in pending questionaire" + "\n");
		System.out.println("Checked button visible " + " " + string + " " + " in pending questionaire" + "\n");
	}

	@Then("Check {string} button clickable in pending questionaire {string}")
	public void check_button_clickable_in_pending_questionaire(String button, String string) throws Throwable {
		String original = ec.getObjects("savebutton_assignedquestionnaire") + button
				+ ec.getObjects("savebutton_assignedquestionnaire_end");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Checked button clickable " + " " + string + " " + " in pending questionaire" + "\n");
		System.out.println("Checked button clickable " + " " + string + " " + " in pending questionaire" + "\n");
	}

	@Then("Verify if {string} download questionnaire clickable")
	public void verify_if_download_questionnaire_clickable(String string) throws Throwable {

		String original = ec.getObjects("download_question");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Questionnaire groups " + " " + string + " " + " download questionnaire clickable" + "\n");
		System.out.println("Questionnaire groups  " + " " + string + " " + " download questionnaire clickable" + "\n");
	}

	@Then("Enter value at text area for Question")
	public void enter_value_at_text_area_for_Question() {
		String original = ec.getObjects("textareacustomername_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String customername = "Customer name" + Time;

		risk.add(0, customername);
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(customername);

		logger.info("Entered value at text area for Company Operations First Question" + "\n");
		System.out.println("Entered value at text area for Company Operations First Question " + "\n");
	}

	@Then("Select Country for Company Operations Second question")
	public void select_Country_for_Company_Operations_Second_question() throws Exception {
		String original = ec.getObjects("selectcountry_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("label_var") + "United States of America"
				+ ec.getObjects("upload_btn_upload_var2");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();
		driver.findElement(By.xpath(original1)).sendKeys(Keys.ENTER);
		// action.doubleClick(driver.findElement(By.xpath(formatXPATH1))).build().perform();
		// Actions action = new Actions(driver);
		// action.moveByOffset(0, 0).click().build().perform();

		logger.info("Selected the USA COuntry from the drop down" + "\n");
		System.out.println("Selected the USA Country from the drop down" + "\n");
	}

	@Then("Select {string} from multi select dropdown for Question {int}")
	public void select_from_multi_select_dropdown_for_Question(String string, Integer questionNumber) {

		String original = "(" + ec.getObjects("contains_label_var") + questionNumber
				+ ec.getObjects("questionnair_multiSelect_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		String original1 = ec.getObjects("label_var") + string + ec.getObjects("upload_btn_upload_var2");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		// driver.findElement(By.xpath(original1)).click();
		action.doubleClick(driver.findElement(By.xpath(formatXPATH1))).build().perform();

		logger.info("Selected " + string + " from the drop down for Question " + questionNumber + "\n");
		System.out.println("Selected " + string + " from the drop down for Question " + questionNumber + "\n");
	}

	@Then("Click on Yes for Company Operations Third question")
	public void click_on_Yes_for_Company_Operations_Third_question() {

		String original = ec.getObjects("question1_trade");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Yes for Company Operations Third question" + "\n");
		System.out.println("Click on Yes for Company Operations Third question" + "\n");
	}

	@Then("Click on No for Company Operations Fourth question")
	public void click_on_No_for_Company_Operations_Fourth_question() {

		String original = ec.getObjects("question2_trade");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Company Operations Third question" + "\n");
		System.out.println("Click on NO for Company Operations Third question" + "\n");
	}

	@Then("Click on No for Third question")
	public void click_on_No_for_Third_question() {
		String original = ec.getObjects("question2_trade");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Company Operations Third question" + "\n");
		System.out.println("Click on NO for Company Operations Third question" + "\n");
	}

	@Then("Click on No for Company Operations Fivth question")
	public void click_on_No_for_Company_Operations_Fivth_question() {

		String original = ec.getObjects("question3_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Company Operations fivth question" + "\n");
		System.out.println("Click on NO for Company Operations Fivth question" + "\n");
	}

	@Then("Click on No for Company Operations Sixth question")
	public void click_on_No_for_Company_Operations_Sixth_question() {

		String original = ec.getObjects("question6_companyoperations");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on NO for Company Operations fivth question" + "\n");
		System.out.println("Click on NO for Company Operations Fivth question" + "\n");
	}

	@Then("Click on Actions button on reading panel")
	public void click_on_Actions_button_on_reading_panel() throws Throwable {

		Thread.sleep(3000);
		String original = ec.getObjects("actionbutton_readingpanel");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement targetElement = driver.findElement(By.xpath(original));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(false);", targetElement);

		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Actions button on reading panel" + "\n");
		System.out.println("Clicked on Actions button on reading panel" + "\n");
	}

	@Then("Select {string} from Actions options")
	public void select_from_Actions_options(String string) {

		String original = ec.getObjects("actionbutton_onboardsupplier") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Actions button on reading panel" + "\n");
		System.out.println("Clicked on Actions button on reading panel" + "\n");
	}

	@Then("Enter notes in the onboard supplier modal")
	public void enter_notes_in_the_onboard_supplier_modal() {

		String original = ec.getObjects("Notes_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		/*
		 * Date date = new Date(); long time = date.getTime(); String Time =
		 * Long.toString(time); String Notes = "Notes" + Time;
		 * 
		 * risk.add(0, Notes); driver.findElement(By.xpath(original)).clear();
		 */
		driver.findElement(By.xpath(original)).sendKeys("Notes");

		logger.info("Entered Notes in Onbaord pop-up" + "\n");
		System.out.println("Entered Notes in Onbaord pop-up" + "\n");
	}

	@Then("Enter notes in the Decline text area")
	public void enter_notes_in_the_Decline_text_area() {

		String original = ec.getObjects("decline_textarea");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String Notes = "Notes" + Time;

		risk.add(0, Notes);
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(Notes);

		logger.info("Entered notes in the Decline text area" + "\n");
		System.out.println("Entered notes in the Decline text area" + "\n");
	}

	@Then("Enter reason for decline in the onboard supplier modal")
	public void enter_reason_for_decline_in_the_onboard_supplier_modal() {

		String original = ec.getObjects("decline_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Date date = new Date();
		long time = date.getTime();
		String Time = Long.toString(time);
		String Notes = "Decline" + Time;

		risk.add(0, Notes);
		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(Notes);

		logger.info("Entered reason for decline in Onbaord pop-up" + "\n");
		System.out.println("Entered reason for decline in Onbaord pop-up" + "\n");
	}

	@Then("Click on Onboard button on onboarding supplier")
	public void click_on_Onboard_button_on_onboarding_supplier() {

		String original = ec.getObjects("onboardbutton_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Onboard button" + "\n");
		System.out.println("Clicked on Onboard button" + "\n");
	}

	@Then("Upload the file for Attach a file on onboarding supplier")
	public void upload_the_file_for_Attach_a_file_on_onboarding_supplier() throws Throwable {
		String original = ec.getObjects("fileattach_onboardingsupplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions
				.visibilityOfElementLocated(By.xpath(ec.getObjects("fileattach_onboardingsupplier"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("fileattach_onboardingsupplier")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");
	}

	@Then("Click on {string} button at the {string} Internal Due Diligence Questionnaires")
	public void click_on_button_at_the_Internal_Due_Diligence_Questionnaires(String button, String strong) throws InterruptedException {
		// //strong[contains(text(),'PIF
		// Indicator')]//following-sibling::button[contains(text(),'Begin')]
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
	//	String original = ec.getObjects("BeginQuestionnaire_button") + strong + ec.getObjects("workflow_btn") + button
	//			+ "']";
		String original = ec.getObjects("BeginQuestionnaire_button") + strong + "')]";
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
		logger.info("Clicked on Begin for IDD Questionnaire in reading panel" + "\n");
		System.out.println("Clicked on Begin for IDD Questionnaire in reading panel" + "\n");
	}

	public void click_on_No_for_First_question() throws InterruptedException {

		String original = ec.getObjects("No_Answer");
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

		logger.info("Click on NO for First question" + "\n");
		System.out.println("Click on NO for First question" + "\n");
	}

	@Then("Click on the NO for First question")
	public void click_on_the_NO_for_First_question() throws InterruptedException {
		String original = ec.getObjects("click_NO");
		String formatXPATH = String.format(original);
		try {
			WaitClass.webDriverWait(formatXPATH);
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();

		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}
		logger.info("Click on NO for First question" + "\n");
		System.out.println("Click on NO for First question" + "\n");
	}

	@Then("Click on the NO for First question in PIF Indicator")
	public void click_on_the_NO_for_First_question_in_PIF_Indicator() {
		String original = ec.getObjects("click_NO_PIF_Indicator");
		String formatXPATH = String.format(original);
		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}
		logger.info("Click on NO for First question in PIF Indicator" + "\n");
		System.out.println("Click on NO for First question in PIF Indicator" + "\n");
	}

	@Then("Click on the YES for First question")
	public void click_on_the_YES_for_First_question() throws InterruptedException {
		String original = ec.getObjects("click_YES");
		String formatXPATH = String.format(original);

		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Click on the YES for First question" + "\n");
		System.out.println("Click on the YES for First question" + "\n");
	}

	@Then("Enter the {string} for Second question")
	public void enter_the_for_Second_question(String string) throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("secondQARBAEICCContract");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter the answer for Second question" + "\n");
		System.out.println("Enter the answer for Second question" + "\n");

	}

	@Then("Click {string} for the First Question")
	public void click_for_the_First_Question(String string) throws InterruptedException {
		String original = ec.getObjects("firstQuestionExport");
		String formatXPATH = String.format(original);
		try {
			Thread.sleep(5000);
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}
		logger.info("Click on the NO for First question" + "\n");
		System.out.println("Click on the NO for First question" + "\n");
	}

	@Then("Click {string} for the Second Question")
	public void click_for_the_Second_Question(String string) throws InterruptedException {
		String original = ec.getObjects("secondQuestionExport");
		String formatXPATH = String.format(original);
		try {
			Thread.sleep(5000);
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}

		logger.info("Click on the NO for Second question" + "\n");
		System.out.println("Click on the NO for Second question" + "\n");
	}

	@Then("Click {string} for the Third Question")
	public void click_for_the_Third_Question(String string) throws InterruptedException {
		String original = ec.getObjects("thirdQuestionExport");
		String formatXPATH = String.format(original);
		try {
			Thread.sleep(5000);
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}
		logger.info("Click on the NO for Third question" + "\n");
		System.out.println("Click on the NO for Third question" + "\n");
	}

	@Then("Enter the {string} for Second question in S&EMS Record created")
	public void enter_the_for_Second_question_in_S_EMS_Record_created(String string) throws InterruptedException {
		String original = ec.getObjects("secondQAS&EMSRecordcreated");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter the answer for Second question" + "\n");
		System.out.println("Enter the answer for Second question" + "\n");
	}

	@Then("Enter the {string} for Second question in RBA\\/EICC Contract")
	public void enter_the_for_Second_question_in_RBA_EICC_Contract(String string) {
		String original = ec.getObjects("secondQARBAEICCContract");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter the answer for Second question" + "\n");
		System.out.println("Enter the answer for Second question" + "\n");
	}
	@Then("Enter the {string} for Second question in Post Onboarding")
	public void enter_the_for_Second_question_in_Post_Onboarding(String string) {
		String original = ec.getObjects("secondPostOnboarding");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter the answer for Second question" + "\n");
		System.out.println("Enter the answer for Second question" + "\n");
	}

	@Then("Click on Submit button on my supplier")
	public void click_on_Submit_button_on_my_supplier() {

		String original = ec.getObjects("submitIDD");
		String formatXPATH = String.format(original);

		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Click on Submit button on my supplier Questionnairs")
	public void click_on_Submit_button_on_my_supplier_Questionnairs() {

		String original = ec.getObjects("submitIDD1");
		String formatXPATH = String.format(original);

		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Click on the Submit button in DPL Search")
	public void click_on_the_Submit_button_in_DPL_Search() {
		String original = ec.getObjects("submitDPL1");
		String formatXPATH = String.format(original);
		((JavascriptExecutor) driver).executeScript("window.scrollTo(document.body.scrollHeight, 0)");

		try {
			driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Click Submit button in DPL Search")
	public void click_Submit_button_in_DPL_Search() {
		String original = ec.getObjects("submitDPL2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Click on the Submit")
	public void click_on_the_Submit() {
		String original = ec.getObjects("submitPreInvite");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		// driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Click on the Submit button for submitting questionaire")
	public void click_on_the_Submit_button_for_submitting_questionaire() {

		String original = ec.getObjects("submitbutton_submitquestionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}

	@Then("Upload the file for Attach a file at first question")
	public void upload_the_file_for_Attach_a_file_at_first_question() throws Throwable {
		String original = ec.getObjects("firstques_uploadfile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("firstques_uploadfile"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("firstques_uploadfile")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");
	}

	@Then("Upload the file for Attach a file at Second question")
	public void upload_the_file_for_Attach_a_file_at_Second_question() throws Throwable {
		String original = ec.getObjects("secques_uploadfile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("secques_uploadfile"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("secques_uploadfile")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");
	}

	@Then("Upload the file for Attach a file at Third question")
	public void upload_the_file_for_Attach_a_file_at_Third_question() throws Throwable {
		String original = ec.getObjects("thirdques_uploadfile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("thirdques_uploadfile"))));

		String workingDir = System.getProperty("user.dir");
		String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";

		logger.info("filepath" + " " + filepath + "\n");

		WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("thirdques_uploadfile")));
		// Send key with path
		fileInput.sendKeys(filepath);
		Thread.sleep(3000);
		logger.info("Uploading file at" + " " + "Attach a file" + "\n");
		System.out.println("Uploading file at" + " " + "Attach a file" + "\n");
	}

	@Then("Click on ALL tab under the Approval Requests")
	public void click_on_ALL_tab_under_the_Approval_Requests() throws Throwable {

		String original = ec.getObjects("ALLtab_Approverequest");
		String formatXPATH = String.format(original);

		String original1 = ec.getObjects("Actionsbuttons_Approverequest");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);
		do {
			driver.findElement(By.xpath(original)).click();
			Thread.sleep(6000);
		} while (driver.findElements(By.xpath(formatXPATH1)).size() == 0);

		logger.info(" Clicked on ALL tab under the Approval Requests" + "\n");
		System.out.println("Clicked on ALL tab under the Approval Requests" + "\n");
	}

	@Then("Approve all the Request under the Approval Requests section")
	public void approve_all_the_Request_under_the_Approval_Requests_section() throws Throwable {

		Thread.sleep(3000);
		String original = ec.getObjects("Actionsbuttons_Approverequest");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Thread.sleep(3000);
		List<WebElement> myListToCheck = driver.findElements(By.xpath(formatXPATH));
		int samexpathCount = myListToCheck.size();
		System.out.println("samexpathCount" + samexpathCount + "\n");

		if (samexpathCount > 0) {
			// loop samexpathCount times
			for (int i = 1; i <= samexpathCount; i++) {
				// click on action button
				// Change the path
				String changepath = "(" + original + ")[" + i + "]";

				String formatXPATHchangepath = String.format(changepath);

				WaitClass.clickableWait(formatXPATHchangepath);

				driver.findElement(By.xpath(changepath)).click();

				// Approve button
				String original3 = ec.getObjects("Approveoption_Actionbuton_Approverequest");
				String formatXPATH3 = String.format(original3);

				WaitClass.clickableWait(formatXPATH3);

				driver.findElement(By.xpath(original3)).click();

				// Active window
				driver.switchTo().activeElement();
				Thread.sleep(2000);

				// Note, upload file
				// enter_notes_in_the_onboard_supplier_modal();
				String original5 = ec.getObjects("Note_approvalrequest");
				String formatXPATH5 = String.format(original5);
				WaitClass.clickableWait(formatXPATH5);
				driver.findElement(By.xpath(original5)).clear();
				driver.findElement(By.xpath(original5)).sendKeys("Notes");

				// upload_the_file_for_Attach_a_file_on_onboarding_supplier();

				String original6 = ec.getObjects("CH_variable_button") + "Attach a file" + "')]";
				String formatXPATH6 = String.format(original6);
				WaitClass.clickableWait(formatXPATH6);
				driver.findElement(By.xpath(original6)).click();

				String original7 = ec.getObjects("label_var") + "Upload Document"
						+ ec.getObjects("upload_btn_upload_var2");
				String formatXPATH7 = String.format(original7);
				WaitClass.clickableWait(formatXPATH7);
				String workingDir7 = System.getProperty("user.dir");
				String filepath7 = workingDir7 + "/testdata/fileextension/sample" + "PDF" + "." + "pdf";
				logger.info("filepath" + " " + filepath7 + "\n");
				WebElement fileInput = driver.findElement(By.xpath(original7));
				// Send key with path
				fileInput.sendKeys(filepath7);

				String original8 = ec.getObjects("CH_variable_button") + "Confirm" + "')]";
				String formatXPATH8 = String.format(original8);
				WaitClass.clickableWait(formatXPATH8);
				driver.findElement(By.xpath(original8)).click();

//			String original6 = ec.getObjects("fileupload_approvalrequest");
//			String formatXPATH6 = String.format(original6);
//
//			WaitClass.webDriverWait(formatXPATH6);
//			WebDriverWait wait = new WebDriverWait(driver, 120);
//			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("fileupload_approvalrequest"))));
//
//			String workingDir = System.getProperty("user.dir");
//			String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
//
//			logger.info("filepath" + " " + filepath + "\n");
//
//			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("fileupload_approvalrequest")));
//			// Send key with path
//			fileInput.sendKeys(filepath);
//			Thread.sleep(3000);

				// Approve
				String original2 = ec.getObjects("Approvebutton_Approvalrequestmodal");
				String formatXPATH2 = String.format(original2);
				WaitClass.clickableWait(formatXPATH2);
				driver.findElement(By.xpath(original2)).click();
				WebDriverWait wait = new WebDriverWait(driver, 120);
				wait.until(ExpectedConditions.invisibilityOf(driver.findElement(By.xpath(formatXPATH2))));
				// Switch to parent
				stepdefinition.InviteSupplierPage obj1 = new stepdefinition.InviteSupplierPage();
				obj1.switch_to_the_parent_window();

				if (i >= 1) {
					// ALL tab
					click_on_ALL_tab_under_the_Approval_Requests();

				}
				// if(i == samexpathCount){
				// System.out.println("i value is same as the samexpathCount ##############" + i
				// + "\n");
				// // check the next
				// String original9 = ec.getObjects("Next_navigate");
				// String formatXPATH9 = String.format(original9);

				// WaitClass.webDriverWait(formatXPATH9);
				// assertTrue(driver.findElement(By.xpath(original9)).isEnabled(),"true");

				// if (driver.findElement(By.xpath(original9)).isEnabled()){
				// driver.findElement(By.xpath(original9)).click();

				// approve_all_the_Request_under_the_Approval_Requests_section();
				// }

				// }

			}

		} else if (samexpathCount == 0) {

			// block of code to be executed if the condition1 is false and condition2 is
			// true
		} else {
			System.out.println("Else cases     ##############" + "\n");
			// Click on action -> onbaord supplier --> note and upload file and onboard
			// if we use while loop then ...break; can be used for this case

		}
	}

	@Then("Verify if the status is {string} on the supplier")
	public void verify_if_the_status_is_on_the_supplier(String string) throws Throwable {

		Thread.sleep(3000);

		driver.navigate().refresh();

		String original = ec.getObjects("onboarded_status");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(string));

		logger.info("Showing onboarded status on the supplier" + "\n");
		System.out.println("Showing onboarded status on the supplier" + "\n");

	}

	@Then("Click {string} for Question {string}")
	public void click_for_Question(String Radio, String QuestionNum) {
		String original = ec.getObjects("question_option_var1") + QuestionNum + ec.getObjects("question_option_var2")
				+ Radio + ec.getObjects("question_option_var3");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "'" + Radio + "'" + " for Question " + "'" + QuestionNum + "'" + "\n");
		System.out.println("Clicked on " + "'" + Radio + "'" + " for Question " + "'" + QuestionNum + "'" + "\n");
	}

	@Then("Click on {string} button at the {string} Questionnaires")
	public void Click_on_button_at_the_Questionnaires(String button, String Question) {
		String original = ec.getObjects("open_label1") + Question + ec.getObjects("common6") + button
				+ ec.getObjects("GLEIF_Name2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "'" + button + "'" + " for Question " + "'" + Question + "'" + "\n");
		System.out.println("Clicked on " + "'" + button + "'" + " for Question " + "'" + Question + "'" + "\n");
	}

	@Then("Click on back arrow button")
	public void Click_on_back_arrow_button() {
		String original = ec.getObjects("backarrow");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on back arrow button" + "\n");
		System.out.println("Clicked on back arrow button" + "\n");
	}

	@Then("Show {string} questionnaire on the Questinnaire component {string}")
	public void show_questionnaire_on_the_Questinnaire_component(String string, String string1) {
		String original = ec.getObjects("buyeragentsvg1") + string + ec.getObjects("select_option2");
		String formatXPATH = String.format(original);

		if (string1.equalsIgnoreCase("true")) {
			assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string1);
		} else if (driver.findElements(By.xpath(original)).size() == 0) {
			assertTrue(driver.findElements(By.xpath(original)).size() == 0);
		}

		logger.info("Showed contact on the contact component" + "\n");
		System.out.println("Showed contact on the contact component" + "\n");
	}

	// Perform the Add update remove operatios on "State and SEZ GST Information
	// (India)" questionnaire
	@Then("Perform the Add update remove operatios on {string} questionnaire")
	public void Perform_the_Add_update_remove_operatios_on_questionnaire(String questionnaire) throws Throwable {
		// Check if the questionnaire is present in the ALL questionnaire
		String original = ec.getObjects("managequestionnaires_title") + ec.getObjects("common3") + "//*"
				+ ec.getObjects("Questionnaire_add1") + questionnaire + ec.getObjects("GLEIF_Name2");
		String formatXPATH = String.format(original);
		if (driver.findElements(By.xpath(original)).size() == 1) {
			// add that to default
			String original1 = ec.getObjects("Questionnaire_add1") + questionnaire + ec.getObjects("GLEIF_Name2")
					+ ec.getObjects("common4") + ec.getObjects("addtodefaults");
			String formatXPATH1 = String.format(original1);
			WaitClass.clickableWait(formatXPATH1);
			driver.findElement(By.xpath(formatXPATH1)).click();
			// update
			click_on_Update_button_on_the_Default_Questionnaires();
			click_on_the_Update_button_on_the_Modal();
			// Remove from the default
			String original4 = ec.getObjects("Questionnaire_add1") + questionnaire + ec.getObjects("GLEIF_Name2")
					+ ec.getObjects("common4") + ec.getObjects("commonremove");
			String formatXPATH4 = String.format(original4);
			WaitClass.clickableWait(formatXPATH4);
			driver.findElement(By.xpath(formatXPATH4)).click();

			// Switch to parent
			stepdefinition.MySuppliers obj1 = new stepdefinition.MySuppliers();
			obj1.scroll_the_page();
			// update
			click_on_Update_button_on_the_Default_Questionnaires();
			click_on_the_Update_button_on_the_Modal();
		} else if (driver.findElements(By.xpath(original)).size() == 0) {
			// if the questionnaire is present in the Default questionnaire
			String original3 = ec.getObjects("defaultquestionnaire") + ec.getObjects("common5")
					+ ec.getObjects("Questionnaire_add1") + questionnaire + ec.getObjects("GLEIF_Name2");
			String formatXPATH3 = String.format(original3);
			if (driver.findElements(By.xpath(original3)).size() == 1) {
				// Remove from the default
				String original4 = ec.getObjects("Questionnaire_add1") + questionnaire + ec.getObjects("GLEIF_Name2")
						+ ec.getObjects("common4") + ec.getObjects("commonremove");
				String formatXPATH4 = String.format(original4);
				WaitClass.clickableWait(formatXPATH4);
				driver.findElement(By.xpath(formatXPATH4)).click();
				// Switch to parent
				stepdefinition.MySuppliers obj1 = new stepdefinition.MySuppliers();
				obj1.scroll_the_page();
				// update
				click_on_Update_button_on_the_Default_Questionnaires();
				click_on_the_Update_button_on_the_Modal();
			}
		} else {
			System.out.println("You dont have the questionanire for this Buyer" + "\n");
		}

		logger.info("Verify the Quesitonnaire is present and verify checking Add update and remove Operations " + "\n");
		System.out.println(
				"Verify the Quesitonnaire is present and verify checking Add update and remove Operations" + "\n");
	}

	@Then("verify buyer is able to view the questionnaire group pill as {string} on {string}")
	public void verify_buyer_is_able_to_view_the_questionnaire_group_pill_as(String sta, String abc) throws Throwable {
		String original = ec.getObjects("Appr_status1") + sta + ec.getObjects("filterby_role_multiple2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		// driver.findElement(By.xpath(original)).click();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Verified " + sta);
		System.out.println("Verified" + sta);
	}

	@Then("Click on manage Quesitonnaire Group dropdown modal")
	public void click_on_manage_questionnaire_group_modal() throws Throwable {
		String original = ec.getObjects("manage_QDG_DD");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Cancel button on Add a Questionnaire Group modal" + "\n");
		System.out.println("Clicked on Cancel button on Add a Questionnaire Group modal" + "\n");
	}

	@Then("Verify {string} questionnaire label visible under {string}")
	public void filter_field_visible(String label, String subCat) {

		String original = ec.getObjects("Value1") + label + ec.getObjects("Value2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + label + " field label visible under " + subCat + "\n");
		System.out.println("Verified " + label + " field label visible under " + subCat + "\n");
	}

	@Then("Click on Questionnaire Group on profile screen")
	public void click_on_Questionnaire_Group_on_profile_screen() throws Throwable {
		String original = ec.getObjects("QG_dd");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on filter by Supplier Questionnaire Group" + "\n");
		System.out.println("Clicked on filter by Supplier Questionnaire Group" + "\n");
	}
	@Then("Click on Checklist Questionnaires and answer")
	public void answer_Questionnaires() throws Throwable {
		// //strong[contains(text(),'PIF
		// Indicator')]//following-sibling::button[contains(text(),'Begin')]
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		String original = ec.getObjects("begin_quest");
		String formatXPATH = String.format(original);
		String noBtn = ec.getObjects("click_NO");
		String formatnoBtn = String.format(noBtn);
		String atchBtn = ec.getObjects("attachmentBtn");
		String formatatchBtn = String.format(atchBtn);
		String explainReason = ec.getObjects("explain_reason");
		String formatexplainReason = String.format(explainReason);
		List<WebElement> begins = driver.findElements(By.xpath(formatXPATH));
		WebElement btn = null;
		try {
		for(int i=0;i<begins.size();i++) {
			btn = begins.get(i);
			begins.get(i).click();
			driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
			for (int j = 0; j < driver.findElements(By.xpath(noBtn)).size(); j++) {
				driver.findElements(By.xpath(noBtn)).get(j).click();
				if (driver.findElements(By.xpath(formatatchBtn)).size() > 0) {
					cr.click_button("Attach Document");
					csd.upload_under("PDF", "Upload Document");
					csd.enter_in_Expiry_Date_field("01/02/2021");
					mb.add_label_as("VATDOCUMENT");
					csd.click_on_the_Confirm_button();
				}
				if (driver.findElements(By.xpath(formatexplainReason)).size() > 0) ;
				{
					dq.enter_the_explaintext("Sample");
				}
			}
			click_on_the_Submit_button_in_DPL_Search();
			click_Submit_button_in_DPL_Search();
			driver.switchTo().activeElement();
			driver.switchTo().defaultContent();
		}
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int k = 0; k < 10; k++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions
							.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(btn.toString()))));
					Thread.sleep(5000);
					btn.click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}
		} catch (ElementClickInterceptedException e2) {
		logger.info("Recovering from ElementClickInterceptedException " + "\n");
		System.out.println("Recovering from ElementClickInterceptedException " + "\n");
		for (int k = 0; k < 10; k++) {
			try {
				WebDriverWait wait = new WebDriverWait(driver, 120);
				wait.until(ExpectedConditions.elementToBeClickable(By.xpath(btn.toString())));
				Thread.sleep(5000);
				btn.click();
				break;
			} catch (ElementClickInterceptedException e1) {
				logger.info("Recovering from ElementClickInterceptedException " + "\n");
				System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			}
		}
	}
		logger.info("Clicked on Begin for IDD Questionnaire in reading panel" + "\n");
		System.out.println("Clicked on Begin for IDD Questionnaire in reading panel" + "\n");
	}
	@Then("Click on the Submit button in USL Search")
	public void click_on_the_Submit_button_in_USL_Search() {
		String original = ec.getObjects("submitUSL1");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}
	@Then("Click on the Submit button in SEMS Search")
	public void click_on_the_Submit_button_in_SEMS_Search() {
		String original = ec.getObjects("submitDPL1");
		String formatXPATH = String.format(original);

		try {
			driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
			//WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (StaleElementReferenceException e1) {
					logger.info("Recovering from StaleElementReferenceException " + "\n");
					System.out.println("Recovering from StaleElementReferenceException " + "\n");
				}
			}

		} catch (ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}

		logger.info("Clicked on Submit button on my supplier" + "\n");
		System.out.println("Clicked on Submit button on my supplier" + "\n");
	}
}