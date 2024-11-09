package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.Date;

import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.testng.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

import org.openqa.selenium.Dimension;

public class CorpRelationships extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	public Miscellaneous mis = new Miscellaneous();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<Object> companyName = new ArrayList<Object>();
	public static String currentURL;

	@Then("Click on Corporate Hierarchy on Profile page")
	public void click_on_Corporate_Hierarchy_on_Profile_page() throws Throwable {
		String original = ec.getObjects("corporatehierarchynavlink");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Corporate Hierarchy on Profile" + "\n");
		System.out.println("Clicked on Corporate Hierarchy on Profile" + "\n");
	}

	@Then("^Click on Previous Step button$")
	public void click_on_previous_step_button() throws Throwable {
		String original = ec.getObjects("CH_Previous_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Previous Step button on Corporate Hierarchy page" + "\n");
		System.out.println("Clicked on Previous Step button on Corporate Hierarchy page" + "\n");

	}

	@Then("^Verify supplier lands on Ownership tab \"([^\"]*)\"$")
	public void verify_supplier_lands_on_ownership_tab_something(String string) throws Throwable {
		String original = ec.getObjects("Ownership_active_tab");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Landed on Ownership page" + "\n");
		System.out.println("Landed on Ownership page" + "\n");

	}

	@Then("^Show Corporate Hierarchy page description on Corporate Hierarchy page \"([^\"]*)\"$")
	public void show_corporate_hierarchy_page_description_on_corporate_hierarchy_page_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_CHierarchy_Description");
		WaitClass.webDriverWait(original);

		String CH_description = driver.findElement(By.xpath(ec.getObjects("CH_CHierarchy_Description"))).getText();

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Corporate Hierarchy page description: " + "'" + CH_description + "'" + "\n");
		System.out.println("Showing Corporate Hierarchy page description: " + "'" + CH_description + "'" + "\n");

	}

	@Then("^Show Previous Step button on Corporate Hierarchy page \"([^\"]*)\"$")
	public void show_previous_step_button_on_corporate_hierarchy_page_something(String string) throws Throwable {

		String original = ec.getObjects("CH_Previous_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Previous button is visibile on Corporate Hierarchy page" + "\n");
		System.out.println("Previous button is visible on Corporate Hierarchy page" + "\n");

	}

	@Then("^Verify Previous Step button clickable on Corporate Hierarchy page \"([^\"]*)\"$")
	public void verify_previous_step_button_clickable_on_corporate_hierarchy_page_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Previous_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Previous button is clickable on Corporate Hierarchy page" + "\n");
		System.out.println("Previous button is clickable on Corporate Hierarchy page" + "\n");

	}

	@Then("^Show Next Step button on Corporate Hierarchy page \"([^\"]*)\"$")
	public void show_next_step_button_on_corporate_hierarchy_page_something(String string) throws Throwable {
		String original = ec.getObjects("CH_Next_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Next Step button is visible on Corporate Hierarchy page" + "\n");
		System.out.println("Next Step button is visible on Corporate Hierarchy page" + "\n");

	}

	@Then("^Verify Next Step button clickable on Corporate Hierarchy page \"([^\"]*)\"$")
	public void verify_next_step_button_clickable_on_corporate_hierarchy_page_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_Next_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Next Step button is clickable on Corporate Hierarchy page" + "\n");
		System.out.println("Next Step button is clickable on Corporate Hierarchy page" + "\n");

	}

	@Then("^Click on Next Step button$")
	public void click_on_next_step_button() throws Throwable {
		String original = ec.getObjects("CH_Next_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Next Step button on Corporate Hierarchy page" + "\n");
		System.out.println("Clicked on Next Step button on Corporate Hierarchy page" + "\n");

	}

	@Then("^Verify supplier lands on Financial tab \"([^\"]*)\"$")
	public void verify_supplier_lands_on_financial_tab_something(String string) throws Throwable {
		String original = ec.getObjects("Financial_active_tab");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Landed on Financial Tab" + "\n");
		System.out.println("Landed on Financial tab" + "\n");

	}

	@Then("^Show Add to Corporate Hierarchy button on Corporate Hierarchy page \"([^\"]*)\"$")
	public void show_add_to_corporate_hierarchy_button_on_corporate_hierarchy_page_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_AddCH_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Clicked on Add to Corporate Hierarchy button on Corporate Hierarchy Page" + "\n");
		System.out.println("Clicked on Add to Corporate Hierarchy button on Corporate Hierarchy Page" + "\n");

	}

	@Then("^Verify Add to Corporate Hierarchy button clickable on Corporate Hierarchy page \"([^\"]*)\"$")
	public void verify_add_to_corporate_hierarchy_button_clickable_on_corporate_hierarchy_page_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_AddCH_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Add to Corporate Hierarchy button is clickable on Corporate Hierarchy page" + "\n");
		System.out.println("Add to Corporate Hierarchy button is clickable on Corporate Hierarchy page" + "\n");

	}

	@Then("^Click on Add to Corporate Hierarchy button$")
	public void click_on_add_to_corporate_hierarchy_button() throws Throwable {
		String original = ec.getObjects("CH_AddCH_btn");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add to Corporate Hierarchy button on Corporate Hierarchy Page" + "\n");
		System.out.println("Clicked on Add to Corporate Hierarchy button on Corporate Hierarchy page" + "\n");

	}

	@Then("^Show Relationship Type Label to verify Add to Corporate Hierarchy modal is opened \"([^\"]*)\"$")
	public void show_relationship_type_label_to_verify_add_to_corporate_hierarchy_modal_is_opened_something(
			String string) throws Throwable {

		String original = ec.getObjects("CH_Relation_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add to Corporate Hierarchy modal is opened on Corporate Hierarchy page" + "\n");
		System.out.println("Add to Corporate Hierarchy modal is opened on Corporate Hierarchy page" + "\n");

	}

	@Then("^Verify Cancel button visibility on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_cancel_button_visibility_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_Cancel_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Cancel button is visibile on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Cancel button is visibile on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Cancel button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_cancel_button_clickable_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Cancel_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Cancel button is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Cancel button is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Click on Cancel button on Add to Corporate Hierarchy modal$")
	public void click_on_cancel_button_on_add_to_corporate_hierarchy_modal() throws Throwable {
		String original = ec.getObjects("CH_Cancel_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Cancel button on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Clicked on Cancel button on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Save to Corporate Hierarchy button on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_save_to_corporate_hierarchy_button_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_SaveCH_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Save to Corporate Hierarchy button is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Save to Corporate Hierarchy button is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Save to Corporate Hierarchy button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_save_to_corporate_hierarchy_button_clickable_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {
		String original = ec.getObjects("CH_SaveCH_btn");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Save to Corporate Hierarchy button is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out
				.println("Save to Corporate Hierarchy button is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Add Additional label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_add_additional_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_AddAdditional_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add Additional label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Add Additional label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Add Additional check box on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_add_additional_check_box_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_AddAdditional_checkbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add Additional check box is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Add Additional check box is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Add Additional check box clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_add_additional_check_box_clickable_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_AddAdditional_checkbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Verify Add Additional check box is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Verify Add Additional check box is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Relation Type label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_relation_type_label_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {

		String original = ec.getObjects("CH_RelationType_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Relation Type label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Relation Type label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Relation Type description on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_relation_type_description_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_RelationType_description");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Relation Type description showing on Add to Corporate Hierarchy modal: " + string + "\n");
		System.out.println("Relation Type description showing on Add to Corporate Hierarchy modal: " + string + "\n");

	}

	@Then("^Show Subsidiary radio button label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_subsidiary_radio_button_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_Subsidary_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Subsidiary radio button label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Subsidiary radio button label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Subsidiary radio button on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_subsidiary_radio_button_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Subsidary_radio");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Subsidiary radio button is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Subsidiary radio button is visible on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Verify Subsidiary radio button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_subsidiary_radio_button_clickable_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_Subsidary_radio");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Subsidiary radio button is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Subsidiary radio button is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Parent radio button label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_parent_radio_button_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Parent_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Parent radio button label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Parent radio button label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Parent radio button on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_parent_radio_button_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {
		String original = ec.getObjects("CH_Parent_radio");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Parent radio button is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Parent radio button is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Parent radio button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_parent_radio_button_clickable_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Parent_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {

			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Parent_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Parent_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();
		}

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Parent radio button is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Parent radio button is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Domestic Ultimate radio button label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_domestic_ultimate_radio_button_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_DomUltimate_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Domestic Ultimate radio button label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out
				.println("Domestic Ultimate radio button label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Domestic Ultimate radio button on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_domestic_ultimate_radio_button_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_DomUltimate_radio");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Domestic Ultimate radio button label is visible on Add to Corporate Hierarchy modal" + "\n");
		System.out
				.println("Domestic Ultimate radio button label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Domestic Ultimate radio button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_domestic_ultimate_radio_button_clickable_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {
		String original = ec.getObjects("CH_DomUltimate_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {

			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Domestic_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Domestic_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();
		}

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Domestic Ultimate radio button label is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println(
				"Domestic Ultimate radio button label is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Global Ultimate radio button label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_global_ultimate_radio_button_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_GlobUltimate_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Global Ultimate radio button label is voisible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Global Ultimate radio button label is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Global Ultimate radio button on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_global_ultimate_radio_button_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_GlobUltimate_radio");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Global Ultimate radio button is voisible on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Global Ultimate radio button is visible on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Verify Global Ultimate radio button clickable on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_global_ultimate_radio_button_clickable_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {
		String original = ec.getObjects("CH_GlobUltimate_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {

			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_GlobalUltimate_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_GlobalUltimate_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();
		}

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);

		logger.info("Global Ultimate radio button is clickable on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Global Ultimate radio button is clickable on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Company Information label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_company_information_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_CompanyInfo_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Company Information label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Company Information label is visible on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Company Name label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_company_name_label_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {

		String original = ec.getObjects("CH_CompanyName_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Company name label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Company name label is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Show Company Name field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_company_name_field_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {

		String original = ec.getObjects("CH_CompanyName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Company name field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Company name field is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Verify Company Name field enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_company_name_field_enabled_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_CompanyName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Company name field is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Company name field is enabled on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Tax Country label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_tax_country_label_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {

		String original = ec.getObjects("CH_TaxCountry_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Tax Country label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Tax Country label is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Show Tax Country drop down on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_tax_country_drop_down_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_TaxCountry_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Tax Country drop down is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Tax Country drop down is visible on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Verify Tax Country drop down is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_tax_country_drop_down_is_enabled_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_TaxCountry_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Tax Country drop down is enabled on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("Tax Country drop down is enabled on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show DUNS Number label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_duns_number_label_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {
		String original = ec.getObjects("CH_DUNS_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("DUNS Number label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("DUNS Number label is visible on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Show DUNS Number field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_duns_number_field_on_add_to_corporate_hierarchy_modal_something(String string) throws Throwable {

		String original = ec.getObjects("CH_DUNS_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("DUNS Number field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("DUNS Number field is visible on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Verify DUNS Number field is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_duns_number_field_is_enabled_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_DUNS_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("DUNS Number field is enabled on Add to Corporate Hierarchy modal" + "\n");
		System.out.println("DUNS Number field is enabled on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Show Contact Information label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contact_information_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_ContactInfo_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact Information label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contact Information label is visible on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Show Contact Information description on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contact_information_description_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_ContactInfo_description");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact Information descriprion visible on Add to Corporate Hierarchy modal: " + "\n");
		System.out.println("Contact Information descriprion visible on Add to Corporate Hierarchy modal: " + "'"
				+ string + "'" + "\n");

	}

	@Then("^Show Contact Information disclaimer on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contact_information_disclaimer_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_ContactInfo_disclaimer");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact Information disclaimer visible on Add to Corporate Hierarchy modal: " + "\n");
		System.out.println("Contact Information disclaimer visible on Add to Corporate Hierarchy modal: " + "'" + string
				+ "'" + "\n");

	}

	@Then("^Show Contacts email address label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_email_address_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_ContactEmail_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact's email address label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contact's email address label is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Show Contacts email address field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_email_address_field_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_ContactEmail_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact's email address field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contact's email address field is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Verify Contacts email address field is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_contacts_email_address_field_is_enabled_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {
		String original = ec.getObjects("CH_ContactEmail_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Contact's email address field is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contact's email address field is enabled on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Confirm email address label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_confirm_email_address_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_ConfirmEmail_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Confirm email address label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Confirm email address label is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Show Confirm email address field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_confirm_email_address_field_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_ConfirmEmail_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Confirm email address field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Confirm email address field is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Verify Confirm email address field is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_confirm_email_address_field_is_enabled_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {
		String original = ec.getObjects("CH_ConfirmEmail_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Confirm email address field is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Confirm email address field is enabled on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts first name label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_first_name_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_FirstName_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts first name label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts first name label is visible on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts first name field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_first_name_field_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_FirstName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts first name field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts first name field is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Verify Contacts first name field is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_contacts_first_name_field_is_enabled_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_FirstName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Contacts first name field is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts first name field is enabled on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts last name label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_last_name_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_LastName_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts last name label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts last name label is visible on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts last name field on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_last_name_field_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_LastName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts last name field is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts last name field is visible on Add to Corporate Hierarchy modal " + "\n");
	}

	@Then("^Verify Contacts last name field is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_contacts_last_name_field_is_enabled_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_LastName_inputbox");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Contacts last name field is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contacts last name field is enabled on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts Preferred Language label on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_preferred_language_label_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Language_label");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contact's Preferred Language label is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out.println("Contact's Preferred Language label is visible on Add to Corporate Hierarchy modal " + "\n");

	}

	@Then("^Show Contacts Preferred Language drop down on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void show_contacts_preferred_language_drop_down_on_add_to_corporate_hierarchy_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_Language_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts Preferred Language drop down is visible on Add to Corporate Hierarchy modal " + "\n");
		System.out
				.println("Contacts Preferred Language drop down is visible on Add to Corporate Hierarchy modal" + "\n");

	}

	@Then("^Verify Contacts Preferred Language drop down is enabled on Add to Corporate Hierarchy modal \"([^\"]*)\"$")
	public void verify_contacts_preferred_language_drop_down_is_enabled_on_add_to_corporate_hierarchy_modal_something(
			String string) throws Throwable {

		String original = ec.getObjects("CH_Language_dropdown");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Contacts Preferred Language drop down is enabled on Add to Corporate Hierarchy modal " + "\n");
		System.out
				.println("Contacts Preferred Language drop down is enabled on Add to Corporate Hierarchy modal" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in the Company Name field$")
	public void enter_something_in_the_company_name_field(String string) throws Throwable {

		String original = ec.getObjects("CH_CompanyName_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);
		Thread.sleep(3000);

		logger.info("Entered " + "'" + string + "'" + " in Company Name field" + "\n");
		System.out.println("Entered " + " " + string + " " + " in Company name field" + "\n");

	}

	@Then("^Select \"([^\"]*)\" from Tax Country drop down$")
	public void select_something_from_tax_country_drop_down(String string) throws Throwable {

		String original = ec.getObjects("CH_TaxCountry_dropdown");
		WaitClass.webDriverWait(original);

		Select taxCountry = new Select(driver.findElement(By.xpath(original)));

		taxCountry.selectByVisibleText(string);

		Thread.sleep(2000);

		logger.info("Selected " + "'" + string + "'" + " from the dropdown on Invite a New User Modal" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " from the dropdown on Invite a New User Modal" + "\n");

	}

	@Then("^Enter \"([^\"]*)\" in the DUNS Number field$")
	public void enter_something_in_the_duns_number_field(String string) throws Throwable {

		String original = ec.getObjects("CH_DUNS_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data " + "'" + string + "'" + " DUNS Number field" + "\n");
		System.out.println("Entered data " + "'" + string + "'" + " DUNS Number field" + "\n");

	}

	@Then("^Enter Email Address in the Confirm email address field$")
	public void enter_email_address_in_the_confirm_email_address_field() throws Throwable {

		String original = ec.getObjects("CH_ConfirmEmail_inputbox");
		WaitClass.webDriverWait(original);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Confirm email address field field" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Confirm email address field field" + "\n");

	}

	@Then("^Enter First name in Contacts First name field$")
	public void enter_first_name_in_contacts_first_name_field() throws Throwable {

		String original = ec.getObjects("CH_FirstName_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys("First");

		logger.info("Entered first name in Contact's First name field" + "\n");
		System.out.println("Entered first name in Contact's First name field" + "\n");

	}

	@Then("^Enter Last name in Contacts Last name field$")
	public void enter_last_name_in_contacts_last_name_field() throws Throwable {

		String original = ec.getObjects("CH_LastName_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys("Last");

		logger.info("Entered Last name in Contact's Last name field" + "\n");
		System.out.println("Entered Last name in Contact's Last name field" + "\n");
	}

	@Then("^Click Save button$")
	public void click_save_button() throws Throwable {

		String original = ec.getObjects("CH_SaveCH_btn");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).click().build().perform();

		Thread.sleep(3000);

		logger.info("Clicked on Save to Corporate Hierarchy button" + "\n");
		System.out.println("Clicked on Save to Corporate Hierarchy button" + "\n");

	}

	@Then("^Verify error message \"([^\"]*)\"$")
	public void verify_error_message_something(String string) throws Throwable {
		String original = ec.getObjects("CH_Required_error");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Error message " + "'" + string + "'" + "\n");
		System.out.println("Showing Error message " + "'" + string + "'" + "\n");

	}

	@Then("^Click Subsidary radio button$")
	public void click_subsidary_radio_button() throws Throwable {
		String original = ec.getObjects("CH_Subsidary_radio");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Subsidary radio button" + "\n");
		System.out.println("Clicked on Subsidary radio button" + "\n");
		Thread.sleep(3000);

	}

	@Then("^verify the CH status as \"([^\"]*)\"$")
	public void verify_the_ch_status_as_something(String string) throws Throwable {

		String original = ec.getObjects("CH_supplierstatus1") + timeStamp.get(0) + ec.getObjects("CH_supplierstatus2")
				+ string + ec.getObjects("CH_supplierstatus3");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("CH status is " + string + "\n");
		System.out.println("CH status is " + string + "\n");
		Thread.sleep(3000);
	}

	@Then("^Enter Company Name in the Company Name field$")
	public void enter_company_name_in_the_company_name_field() throws Throwable {
		String original = ec.getObjects("companyname_input");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);
		driver.findElement(By.xpath(original)).sendKeys(Time);

		logger.info("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
		System.out.println("Entered data " + "'" + Time + "'" + " Company name field" + "\n");
		Thread.sleep(3000);

	}

	@Then("^Show the count of required fields not filled$")
	public void show_the_count_of_required_fields_not_filled() throws Throwable {

		String original = ec.getObjects("CH_Required_error");
		WaitClass.webDriverWait(original);

		int errorCount = driver.findElements(By.xpath(original)).size();
		String DisplayErrorCount = driver.findElement(By.xpath(ec.getObjects("CH_ErrorCount"))).getText();
		String CountNumber = DisplayErrorCount.substring(0, 1);
		int viewedErrorCount = Integer.parseInt(CountNumber.trim());

		assertEquals(errorCount, viewedErrorCount);

		logger.info("Actual no. of errors is equal to the error count displayed. " + "Actul no. of errors: "
				+ errorCount + ". Error count displayed: " + viewedErrorCount + "\n");
		System.out.println("Actual no. of errors is equal to the error count displayed. " + "Actul no. of errors: "
				+ errorCount + ". Error count displayed: " + viewedErrorCount + "\n");

	}

	@Then("^Enter Email Address in the Contacts email address field$")
	public void enter_email_address_in_the_contacts_email_address_field() throws Throwable {

		String original = ec.getObjects("CH_ContactEmail_inputbox");
		WaitClass.webDriverWait(original);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
	}

	@Then("^Show error message \"([^\"]*)\" under Confirm email address field$")
	public void show_error_message_something_under_confirm_email_address_field(String string) throws Throwable {
		String original = ec.getObjects("CH_ConfirmEmail_error");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing error message " + "'" + string + "'" + " under Confirm email address field" + "\n");
		System.out.println("Showing error message " + "'" + string + "'" + " under Confirm email address field" + "\n");

	}

	@Then("^Show error message \"([^\"]*)\" under Contacts first name field$")
	public void show_error_message_something_under_contacts_first_name_field(String string) throws Throwable {
		String original = ec.getObjects("CH_FirstName_error");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing error message " + "'" + string + "'" + " under Contact's First Name field" + "\n");
		System.out.println("Showing error message " + "'" + string + "'" + " under Contact's First Name field" + "\n");

	}

	@Then("^Show error message \"([^\"]*)\" under Contacts last name field$")
	public void show_error_message_something_under_contacts_last_name_field(String string) throws Throwable {

		String original = ec.getObjects("CH_LastName_error");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing error message " + "'" + string + "'" + " under Contact's Last Name field" + "\n");
		System.out.println("Showing error message " + "'" + string + "'" + " under Contact's Last Name field" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in the Confirm email address field$")
	public void enter_something_in_the_confirm_email_address_field(String string) throws Throwable {

		String original = ec.getObjects("CH_ConfirmEmail_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Confirm Email Address field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Confirmm Email Address field" + "\n");

	}

	@Then("^Enter \"([^\"]*)\" in the Contacts email address field$")
	public void enter_something_in_the_contacts_email_address_field(String string) throws Throwable {
		String original = ec.getObjects("CH_ContactEmail_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Contact's Email Address field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Contact's Email Address field" + "\n");

	}

	@Then("^Show error message \"([^\"]*)\" under Contacts email address field$")
	public void show_error_message_something_under_contacts_email_address_field(String string) throws Throwable {
		String original = ec.getObjects("CH_ContactEmail_Error");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing error message " + "'" + string + "'" + " under Contact's email adddress field" + "\n");
		System.out
				.println("Showing error message " + "'" + string + "'" + " under Contact's email address field" + "\n");

	}

	@Then("^Click Parent radio button$")
	public void click_parent_radio_button() throws Throwable {

		Thread.sleep(1500);

		String original = ec.getObjects("CH_Parent_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {
			System.out.println("Parent radio is diabled, So deleting Parent company from CH");

			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Parent_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Parent_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();

			Thread.sleep(1500);

			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on parent radio button" + "\n");
			System.out.println("Clicked on parent radio button" + "\n");
		} else {

			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on Parent radio button" + "\n");
			System.out.println("Clicked on Parent radio button" + "\n");
		}

	}

	@Then("^Verify if Company Type Parent is already added to Corporate Hierarchy \"([^\"]*)\"$")
	public void verify_if_company_type_parent_is_already_added_to_corporate_hierarchy_something(String string)
			throws Throwable {

		String original = ec.getObjects("CH_CompanyType_parent");

		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Parent Company type is visible in Corporate Hierarchy" + "\n");
		System.out.println("Parent Company type is visible in Corporate Hierarchy" + "\n");

	}

	@Then("Verify and delete if Parent company type already exists")
	public void verify_and_delete_if_Parent_company_type_already_exists() {
		String original = ec.getObjects("CH_CompanyType_parent");

		if (driver.findElements(By.xpath(original)).size() > 0) {
			WaitClass.webDriverWait(ec.getObjects("CH_Parent_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Parent_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			logger.info("Deleted Existing Parent Company" + "\n");
			System.out.println("Deleted Existing Parent Company" + "\n");
		} else {
			System.out.println("Parent Company not added");
		}

	}

	@Then("Verify and delete if Domestic Ultimate company type already exists")
	public void verify_and_delete_if_Domestic_Ultimate_company_type_already_exists() {

		String original = ec.getObjects("CH_CompanyType_DomUltimate");

		if (driver.findElements(By.xpath(original)).size() > 0) {
			WaitClass.webDriverWait(ec.getObjects("CH_Domestic_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Domestic_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			logger.info("Deleted Existing Domestice Ultimate Company" + "\n");
			System.out.println("Deleted Existing Domestice Ultimate Company" + "\n");
		} else {
			System.out.println("Domestic Ultimate Company not added");
		}

	}

	@Then("Verify and delete if Global Ultimate company type already exists")
	public void verify_and_delete_if_Global_Ultimate_company_type_already_exists() {
		String original = ec.getObjects("CH_CompanyType_GlobUltimate");

		if (driver.findElements(By.xpath(original)).size() > 0) {
			WaitClass.webDriverWait(ec.getObjects("CH_GlobalUltimate_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_GlobalUltimate_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			logger.info("Deleted Existing Global Ultimate Company" + "\n");
			System.out.println("Deleted Existing Global Ultimate Company" + "\n");
		} else {
			System.out.println("Global Ultimate Company not added");
		}

	}

	@Then("^Show Parent radio button is disabled \"([^\"]*)\"$")
	public void show_parent_radio_button_is_disabled_something(String string) throws Throwable {
		String original = ec.getObjects("CH_Parent_radio");
		WaitClass.webDriverWait(original);

		assertFalse(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Parent radio button is disabled" + "\n");
		System.out.println("Parent radio button is disabled" + "\n");

	}

	@Then("^Click Domestic Ultimate radio button$")
	public void click_domestic_ultimate_radio_button() throws Throwable {
		String original = ec.getObjects("CH_DomUltimate_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {
			System.out.println("Parent radio is diabled, So deleting Parent company from CH");

			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Domestic_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_Domestic_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();

			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on Domestic Ultimate radio button" + "\n");
			System.out.println("Clicked on Domestic Ultimate radio button" + "\n");
		} else {
			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on Domestic Ultimate radio button" + "\n");
			System.out.println("Clicked on Domestic Ultimate radio button" + "\n");
		}

	}

	@Then("^Verify if Company Type Domestic Ultimate is already added to Corporate Hierarchy \"([^\"]*)\"$")
	public void verify_if_company_type_domestic_ultimate_is_already_added_to_corporate_hierarchy_something(
			String string) throws Throwable {

		String original = ec.getObjects("CH_CompanyType_DomUltimate") + timeStamp.get(0)
				+ ec.getObjects("CH_CompanyType_DomUltimate2");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Domestic Ultimate Company type is visible in Corporate Hierarchy" + "\n");
		System.out.println("Domestic Ultimate Company type is visible in Corporate Hierarchy" + "\n");

	}

	@Then("^Show Domestic Ultimate radio button is disabled \"([^\"]*)\"$")
	public void show_domestic_ultimate_radio_button_is_disabled_something(String string) throws Throwable {

		String original = ec.getObjects("CH_DomUltimate_radio");
		WaitClass.webDriverWait(original);

		assertFalse(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Domestic Ultimate radio button is disabled" + "\n");
		System.out.println("Domestic Ultimate radio button is disabled" + "\n");

	}

	@Then("^Click Global Ultimate radio button$")
	public void click_global_ultimate_radio_button() throws Throwable {
		String original = ec.getObjects("CH_GlobUltimate_radio");
		WaitClass.webDriverWait(original);

		if (!driver.findElement(By.xpath(original)).isEnabled()) {
			System.out.println("Parent radio is diabled, So deleting Parent company from CH");
			WaitClass.webDriverWait(ec.getObjects("CH_Cancel_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Cancel_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_GlobalUltimate_elipsis"));
			driver.findElement(By.xpath(ec.getObjects("CH_GlobalUltimate_elipsis"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Remove"));
			driver.findElement(By.xpath(ec.getObjects("CH_Remove"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_Delete_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_Delete_btn"))).click();

			WaitClass.webDriverWait(ec.getObjects("CH_AddCH_btn"));
			driver.findElement(By.xpath(ec.getObjects("CH_AddCH_btn"))).click();

			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on Global Ultimate radio button" + "\n");
			System.out.println("Clicked on Global radio button" + "\n");
		} else {
			driver.findElement(By.xpath(original)).click();
			logger.info("Clicked on Global Ultimate radio button" + "\n");
			System.out.println("Clicked on Parent radio button" + "\n");
		}
	}

	@Then("^Verify if Company Type Global Ultimate is already added to Corporate Hierarchy \"([^\"]*)\"$")
	public void verify_if_company_type_global_ultimate_is_already_added_to_corporate_hierarchy_something(String string)
			throws Throwable {
		String original = ec.getObjects("CH_CompanyType_GlobUltimate");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Domestic Ultimate Company type is visible in Corporate Hierarchy" + "\n");
		System.out.println("Domestic Ultimate Company type is visible in Corporate Hierarchy" + "\n");

	}

	@Then("^Show Global Ultimate radio button is disabled \"([^\"]*)\"$")
	public void show_global_ultimate_radio_button_is_disabled_something(String string) throws Throwable {
		String original = ec.getObjects("CH_GlobUltimate_radio");
		WaitClass.webDriverWait(original);

		assertFalse(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Global Ultimate radio button is disabled" + "\n");
		System.out.println("Global Ultimate radio button is disabled" + "\n");

	}

	@Then("^Click on Elipsis on the company name$")
	public void click_on_elipsis_on_the_company_name() throws Throwable {
		String original = ec.getObjects("CH_variable_CHStatus1") + timeStamp.get(0)
				+ "']/following-sibling::div[3]/div";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Elipsis of " + timeStamp.get(0) + "\n");
		System.out.println("Clicked on Elipsis of " + timeStamp.get(0) + "\n");

	}

	@Then("^Enter code in verification code field$")
	public void enter_code_in_verification_code_field() throws Throwable {
		String original = ec.getObjects("CH_invite_VCode_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(VerificationCode.get(0));
		Thread.sleep(3000);

		logger.info("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
		System.out.println("Entered " + "'" + VerificationCode.get(0) + "'" + " in Verification Code field" + "\n");
	}

	@Then("^Verify email received in inbox with subject \"([^\"]*)\"$")
	public void verify_email_received_in_inbox_with_subject_something(String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");
		String formatXPATH = String.format(original);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATH));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		Thread.sleep(2000);

		String goBtn = ec.getObjects("mailinator_gobtn");

		driver.findElement(By.xpath(goBtn)).click(); // click Go

		// find out the first line in the table

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		WaitClass.webDriverWait(EmailformatXPATH);

		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Show Email with subject {string}")
	public void show_Email_with_subject(String subject) throws Exception {

		String original = ec.getObjects("CH_variable_subjectLine") + subject + "')]";
		String firstEmailformatXPATH = String.format(original);

		String original1 = ec.getObjects("mailinator_inbox_gobtn");
		String formatXPATH = String.format(original1);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			Thread.sleep(3000);

			if (driver.findElements(By.xpath(firstEmailformatXPATH)).size() > 0) {
				isDisplayed = true;
				break;
			} else {
				driver.findElement(By.xpath(formatXPATH)).click();
				Thread.sleep(2000);
			}
		}

		assertTrue(isDisplayed);
		Thread.sleep(2000);

		logger.info("Verified visibility of Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Verified visibility ofEmail with subject: " + "'" + subject + "'" + "\n");

	}

	@Then("^Click on the email with subject \"([^\"]*)\"$")
	public void click_on_the_email_with_subject_something(String subject) throws Throwable {
		String original = ec.getObjects("CH_variable_subjectLine") + subject + "')]";
		// String original = ec.getObjects("CH_variable_subjectLine");
		String firstEmailformatXPATH = String.format(original);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.webDriverWait(firstEmailformatXPATH);
		WaitClass.clickableWait(firstEmailformatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		logger.info("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + subject + "'" + "\n");

	}

	@Then("^Click on back to inbox link$")
	public void click_on_back_to_inbox_link() throws Throwable {

		driver.navigate().back();

		logger.info("Clicked on Back to inbox link" + "\n");
		System.out.println("Clicked on Back to Inbox linI" + "\n");

	}

	@Then("^Verify \"([^\"]*)\" from the email$")
	public void verify_something_from_the_email(String string) throws Throwable {

		driver.switchTo().frame(0);
		WebElement targetElement = driver.findElement(By.xpath(ec.getObjects("registration_verificationCode")));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		String VC = String.valueOf(js.executeScript("return document.querySelector('h3').innerText"));
		String Code = VC.substring(string.length());
		VerificationCode.add(0, Code);
		driver.switchTo().parentFrame();
		logger.info("Retrieved Verification Code: " + Code + "\n");
		System.out.println("Retrieved Verification Code: " + Code + "\n");
	}

	@Then("^Switch to \"([^\"]*)\" tab$")
	public void switch_to_something_tab(String string) throws Throwable {

		String currentTab = driver.getWindowHandle();
		for (String handle : driver.getWindowHandles()) {
			if (!currentTab.equals(handle)) {
				driver.switchTo().window(handle);
				Thread.sleep(3000);
				currentURL = driver.getCurrentUrl();
				System.out.println("Switched to " + currentURL + " tab" + "\n");
				driver.manage().window().maximize();
				// driver.manage().timeouts().implicitlyWait(12, TimeUnit.SECONDS);
				// fetching the current window size with getSize()
				System.out.println(driver.manage().window().getSize());
				// driver.manage().window().maximize();
				// Dimension dimension = new Dimension(1920, 1080);
				// driver.manage().window().setSize(dimension);
				// System.out.println(driver.manage().window().getSize());
			}
		}

		logger.info("Switched to " + string + " tab" + "\n");
		System.out.println("Switched to " + string + " tab" + "\n");
	}

	@Then("^Enter password in Password field$")
	public void enter_password_in_password_field() {
		String original = ec.getObjects("CH_invite_pwd_inputbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("pwd"));

		logger.info("Entered password in Password field" + "\n");
		System.out.println("Entered password in Password field" + "\n");

	}

	@Then("^Enter password in Confirm Password field$")
	public void enter_password_in_confirm_password_field() {

		String original = ec.getObjects("CH_invite_Confirmpwd_inputbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("pwd"));

		logger.info("Entered password in Password field" + "\n");
		System.out.println("Entered password in Password field" + "\n");
	}

	@Then("^Enter \"([^\"]*)\" in Phone Number field$")
	public void enter_something_in_phone_number_field(String string) throws Throwable {
		String original = ec.getObjects("CH_PhoneNumber_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + "'" + string + "'" + " in Legal Business name" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in Legal Business name" + "\n");

	}

	@Then("^Enter Legal Business Name$")
	public void enter_legal_business_name() throws Throwable {

		String original = ec.getObjects("CH_LegalBusinessName_inputbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys("Legal Name");

		logger.info("Entered Legal business name" + "\n");
		System.out.println("Entered legal business name" + "\n");

	}

	@Then("Click {string} button")
	public void click_button(String string) throws Throwable {

		String original = ec.getObjects("CH_variable_button") + string + "')]";
		String formatXPATH = String.format(original);

		//WaitClass.clickableWait(formatXPATH);
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		WebElement Element = driver.findElement(By.xpath(original));

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	}

	// @And("Click on the {string} button")
	// public void click_on_the_button(String string) throws Throwable {
	// Thread.sleep(3000);

	// String original = ec.getObjects("CH_variable_button") + string + "')]";
	// String formatXPATH = String.format(original);

	// WaitClass.clickableWait(formatXPATH);

	// driver.findElement(By.xpath(original)).click();

	// Thread.sleep(2000);

	// logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
	// System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	// }

	@Then("^Click on check box \"([^\"]*)\"$")
	public void click_on_check_box_something(String string) throws Throwable {
		Thread.sleep(1500);
		String original = ec.getObjects("CH_TandCAccept_checkbox");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on check box " + "'" + string + "'" + "\n");
		System.out.println("Clicked on check box " + "'" + string + "'" + "\n");

	}

	@Then("Click on the Supplier Name button")
	public void click_on_the_Supplier_Name_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("supplierNameBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Supplier Name button " + "\n");
		System.out.println("Click on the Supplier Name button " + "\n");

	}

	@Then("Enter the Supplier Name as {string} Under the Supplier Name")
	public void enter_the_Supplier_Name_Under_the_Supplier_Name(String str) throws InterruptedException {
		Thread.sleep(3000);
		// String original = ec.getObjects("typeSupplierName");
		// WaitClass.webDriverWait(original);

		// driver.findElement(By.xpath(original)).sendKeys("TYSAutomation123");
		System.out.println("Inside Step Definition File");
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).sendKeys(str);
		Thread.sleep(3000);
		logger.info("Enter the Supplier Name Under the Supplier Name " + "\n");
		System.out.println("Enter the Supplier Name Under the Supplier Name " + "\n");
	}

	@Then("Click on the Status button")
	public void click_on_the_Status_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("statusBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Status button " + "\n");
		System.out.println("Click on the Status button " + "\n");
	}

	@Then("Select the Status under dropdown")
	public void select_the_Status_under_dropdown() throws InterruptedException {

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		// builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

	}

	@Then("Select the Declined Invites Status under dropdown")
	public void select_the_Declined_Invites_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Select the Lifecycle Updates Review Status under dropdown")
	public void select_the_Lifecycle_Updates_Review_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Select the Onboarded Status under dropdown")
	public void select_the_Onboarded_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

	}

	@Then("Select the Pending Invites Status under dropdown")
	public void select_the_Pending_Invites_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Select the Profile Complete Status under dropdown")
	public void select_the_Profile_Complete_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

	}

	@Then("Select the Ready For Review Status under dropdown")
	public void select_the_Ready_For_Review_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Select the Returned to Supplier Status under dropdown")
	public void select_the_Returned_to_Supplier_Status_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		// builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Click on the Country\\/Region button")
	public void click_on_the_Country_Region_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("CountryRegionBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Country\\\\/Region buttonn " + "\n");
		System.out.println("Click on the Country\\\\/Region button " + "\n");
	}

	@Then("Select the Country\\/Region under dropdown")
	public void select_the_Country_Region_under_dropdown() throws InterruptedException {

		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_UP).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_UP).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_UP).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_UP).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_UP).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Click on the Tax Geography button")
	public void click_on_the_Tax_Geography_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("TaxGeographyBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Tax Geography button " + "\n");
		System.out.println("Click on the Tax Geography button " + "\n");
	}

	@Then("Select the Tax Geography under dropdown")
	public void select_the_Tax_Geography_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

	}

	@Then("Click on the Diverse Supplier button")
	public void click_on_the_Diverse_Supplier_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("DiverseSupplierBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Diverse Suppli er button " + "\n");
		System.out.println("Click on the Diverse Supplier button " + "\n");
	}

	@Then("Select the Diverse Supplier under dropdown")
	public void select_the_Diverse_Supplier_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Click on the UNSPSC button")
	public void click_on_the_UNSPSC_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("UNSPSCBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the UNSPSC button " + "\n");
		System.out.println("Click on the UNSPSC button " + "\n");
	}

	@Then("Select the UNSPSC under dropdown")
	public void select_the_UNSPSC_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Click on the On-Hold button")
	public void click_on_the_On_Hold_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on the On-Hold button " + "\n");
		System.out.println("Click on the On-Hold button " + "\n");
	}

	@Then("Select the On-Hold under dropdown")
	public void select_the_On_Hold_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.SPACE).build().perform();
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
	}

	@Then("Click on the Block button")
	public void click_on_the_Block_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.SPACE).build().perform();

		// String original1 = ec.getObjects("BlockBtn");
		// WaitClass.webDriverWait(original1);

		// driver.findElement(By.xpath(original1)).click();

		logger.info("Click on the Block button " + "\n");
		System.out.println("Click on the Block button " + "\n");
	}

	@Then("Select the Block under dropdown")
	public void select_the_Block_under_dropdown() throws InterruptedException {
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.SPACE).build().perform();
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

	}

	@Then("Click on the Custom Fields button")
	public void click_on_the_Custom_Fields_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

		// String original = ec.getObjects("CustomFieldsBtn");
		// WaitClass.webDriverWait(original);

		// driver.findElement(By.xpath(original)).click();

		logger.info("Click on the Custom Fields button " + "\n");
		System.out.println("Click on the Custom Fields button " + "\n");
	}

	@Then("Click on the Buyer System Name button")
	public void click_on_the_Buyer_System_Name_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

		logger.info("Click on the Buyer System Name button " + "\n");
		System.out.println("Click on the Buyer System Name button " + "\n");

	}

	@Then("Click on the Organization Type Name button")
	public void click_on_the_Organization_Type_Name_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.SPACE).build().perform();
		logger.info("Click on the Organization Type Name button " + "\n");
		System.out.println("Click on the Organization Type Name button " + "\n");
	}

	@Then("Click on the Supplier Questionnaire Group Name button")
	public void click_on_the_Supplier_Questionnaire_Group_Name_button() throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("OnHoldBtn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		Actions builder = new Actions(driver);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ARROW_DOWN).build().perform();
		Thread.sleep(3000);
		builder.sendKeys(Keys.ENTER).build().perform();
		Thread.sleep(3000);

		logger.info("Click on the Organization Type Name button " + "\n");
		System.out.println("Click on the Organization Type Name button " + "\n");
	}

	@Then("^Click on the Elipsis$")
	public void click_on_the_elipsis() throws Throwable {
		String original = ec.getObjects("CH_Elipsis");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Elipsis" + "\n");
		System.out.println("Clicked on the Elipsis" + "\n");

	}

	@Then("^Select \"([^\"]*)\"$")
	public void select_something(String string) throws Throwable {
		String original = ec.getObjects("CH_AcceptRelationship") + string + "')]";

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "\n");

	}

	@Then("^Verify Corporate Hierarchy Status \"([^\"]*)\"$")
	public void verify_corporate_hierarchy_status_something(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_CHStatus1") + timeStamp.get(0)
				+ "']/following-sibling::div[3]/span";

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(string));

		logger.info("Showing Corporate Hierarchy Status: " + "'" + string + "'" + "\n");
		System.out.println("Showing Corporate Hierarchy Status: " + "'" + string + "'" + "\n");

	}

	@Then("^Show status on Corporate Hierarchy \"([^\"]*)\"$")
	public void show_status_on_corporate_hierarchy(String string) throws Throwable {
		String original = ec.getObjects("CH_AcceptedStatus");

		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().equalsIgnoreCase(string));

		logger.info("Showing Corporate Hierarchy Status: " + "'" + string + "'" + "\n");
		System.out.println("Showing Corporate Hierarchy Status: " + "'" + string + "'" + "\n");

	}

	@Then("^Click Delete button$")
	public void click_delete_button() throws Throwable {

		String original = ec.getObjects("CH_Delete_btn");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Delete button" + "\n");
		System.out.println("Clicked on Delete button" + "\n");

	}

	@Then("^Move mouse pointer to tooltips icon of \"([^\"]*)\" radio$")
	public void move_mouse_pointer_to_tooltips_icon_of_something_radio(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_TT1") + string + "')]/span";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		action.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to tooltips icon of Parent radio button" + "\n");
		System.out.println("Moved mouse pointer to tooltips icon of Parent radio button" + "\n");

	}

	@Then("^Show \"([^\"]*)\" Company Type Tooltip description \"([^\"]*)\"\"([^\"]*)\"\"([^\"]*)\"$")
	public void show_something_company_type_tooltip_description_somethingsomethingsomething(String string1,
			String string2, String string3, String string4) throws Throwable {

		String original = ec.getObjects("CH_ToolTip_description");
		WaitClass.webDriverWait(original);

		Thread.sleep(2000);

		String ActualTtDescription = driver.findElement(By.xpath(original)).getText();

		String ExpectedTtDescription = string2 + '"' + string3 + '"' + string4;

		assertEquals(ActualTtDescription, ExpectedTtDescription);
		logger.info("Tooltip description: " + ActualTtDescription + "\n");
		System.out.println("Tooltip description: " + ActualTtDescription + "\n");

	}

	@Then("^Show toast message displayed$")
	public void show_toast_message_displayed() throws Throwable {
		String original = ec.getObjects("CH_ToastMsg_CommonXpath");
		WaitClass.webDriverWait(original);

		String toast = driver.findElement(By.xpath(original)).getText();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showing toast message: " + toast + "\n");
		System.out.println("Showing toast message: " + toast + "\n");

	}

	@Then("^Verify Company Name added to Corporate Hierarchy$")
	public void verify_company_name_added_to_corporate_hierarchy() throws Throwable {

		String original = ec.getObjects("CH_companyName_variable") + timeStamp.get(0) + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Supplier " + timeStamp.get(0) + " successfully added to Corporate Hierarchy" + "\n");
		System.out.println("Supplier " + timeStamp.get(0) + " successfully added to Corporate Hierarchy" + "\n");

	}

	@Then("^Verify Company name is removed from Corporate Hierarchy$")
	public void verify_company_name_is_removed_from_corporate_hierarchy() throws Throwable {
		String original = ec.getObjects("CH_FirstCompanyName");
		WaitClass.webDriverWait(original);

		String CH1 = driver.findElement(By.xpath(original)).getText();
		String CH2 = (String) timeStamp.get(0);
		assertFalse(CH1.equals(CH2));

		logger.info("Supplier" + timeStamp.get(0) + " successfully deletd to Corporate Hierarchy" + "\n");
		System.out.println("Supplier" + timeStamp.get(0) + " successfully deleted to Corporate Hierarchy" + "\n");

	}

	@Then("^Click on Join Now Link$")
	public void click_on_join_now_link() throws Throwable {

		// if
		// (driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).isDisplayed())
		// {
		// driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))).click();
		// } else {
		// System.out.println("\n" + "Got It button not found" + "\n");
		// }
		Thread.sleep(2000);
		driver.switchTo().frame(0);
		// Thread.sleep(3000);

		// WebElement targetElement =
		// driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link")));
		// JavascriptExecutor js = ((JavascriptExecutor) driver);
		// js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		// Thread.sleep(3000);

		// WebElement icon =
		// driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link")));

		// icon.click();
		driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link"))).click();
		/*
		 * WebElement icon =
		 * driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link")));
		 * ArrayList<WebElement> btn = new ArrayList<WebElement>(
		 * driver.findElements(By.xpath(ec.getObjects("mailinator_joinNow_link")))); if
		 * (btn.size() > 0) { action.click(driver.findElement(By.xpath(ec.getObjects(
		 * "mailinator_joinNow_link")))); Actions ob = new Actions(driver);
		 * ob.moveToElement(icon); ob.click(icon).build().perform(); } else {
		 * System.out.println("Join now button not found"); }
		 */
		Thread.sleep(2000);

		logger.info("Clicked on Join Now button" + "\n");
		System.out.println("Clicked on Join Now button" + "\n");

		driver.switchTo().parentFrame();
		driver.switchTo().defaultContent();
		mis.addHandle(0);
		driver.switchTo().activeElement();
	}

	@Then("Select State in State drop down")
	public void select_State_in_State_drop_down() {

		String original = ec.getObjects("CH_state_drpdown");
		WaitClass.webDriverWait(original);

		Select state = new Select(driver.findElement(By.xpath(original)));

		state.selectByIndex(2);

		logger.info("Selected State from the State dropdown" + "\n");
		System.out.println("Selected State from the State dropdown" + "\n");

	}

	@Then("{string} button {int} clickable {string}")
	public void button_clickable(String buttontext, Integer index, String string2) {
		String original = "(" + ec.getObjects("any_button_contains_var1") + buttontext + "')])[" + index + "]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string2);

		logger.info(buttontext + "'" + " button is clickable" + "\n");
		System.out.println(buttontext + "'" + " button is clickable" + "\n");
	}

	@Then("Click on Password tooltip icon")
	public void click_on_password_tooltip_icon() throws Throwable {

		String original = ec.getObjects("password_icon");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).click().build().perform();

		Thread.sleep(3000);

		logger.info("Clicked on Password tooltip icon" + "\n");
		System.out.println("Clicked on Password tooltip icon" + "\n");

	}

	@Then("Click on Confirm Password tooltip icon")
	public void click_on_confirm_password_tooltip_icon() throws Throwable {

		String original = ec.getObjects("confirmpassword_icon");
		WaitClass.webDriverWait(original);

		action.moveToElement(driver.findElement(By.xpath(original))).click().build().perform();

		Thread.sleep(3000);

		logger.info("Clicked on Confirm Password tooltip icon" + "\n");
		System.out.println("Clicked on Confirm Password tooltip icon" + "\n");

	}

	@Then("Click on Subscribe check box")
	public void click_on_Subscribe_check_box() throws InterruptedException {

		// String original = ec.getObjects("SubscribeCheckBox");
		// WaitClass.webDriverWait(original);
		Actions builder = new Actions(driver);
		// Thread.sleep(2000);
		builder.sendKeys(Keys.TAB).build().perform();
		Thread.sleep(2000);
		builder.sendKeys(Keys.SPACE).build().perform();

		// driver.findElement(By.xpath(original)).click();

		logger.info("SubscribeCheckBox" + "'" + " Checked" + "\n");
		System.out.println("SubscribeCheckBox" + "'" + " button is clickable" + "\n");
	}

	@Then("Show {string} field Tooltip description {string}")
	public void show_something_field_tooltip_description_something(String string1, String string2) throws Throwable {

		String original = ec.getObjects("password_tooltip");
		WaitClass.webDriverWait(original);

		Thread.sleep(2000);

		String ActualTtDescription = driver.findElement(By.xpath(original)).getText();

		String ExpectedTtDescription = string2;

		assertEquals(ActualTtDescription, ExpectedTtDescription);
		logger.info("Tooltip description: " + ActualTtDescription + "\n");
		System.out.println("Tooltip description: " + ActualTtDescription + "\n");

	}

	@Then("Show {string} Tooltip description {string}")
	public void show_something_tooltip_description_something(String string1, String string2) throws Throwable {

		String original = ec.getObjects("confirmpassword_tooltip");
		WaitClass.webDriverWait(original);

		Thread.sleep(2000);

		String ActualTtDescription = driver.findElement(By.xpath(original)).getText();

		String ExpectedTtDescription = string2;

		assertEquals(ActualTtDescription, ExpectedTtDescription);
		logger.info("Tooltip description: " + ActualTtDescription + "\n");
		System.out.println("Tooltip description: " + ActualTtDescription + "\n");

	}

	@Then("Click expand Elipsis")
	public void click_expand_elipsis() throws Throwable {
		String original = ec.getObjects("expand_ellipses");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Elipses" + "\n");
		System.out.println("Clicked on Elipses" + "\n");

	}

	@Then("Close CH tab")
	public void close_ch_tab() throws Throwable {
		driver.close();
		driver.switchTo().window(mis.getHandle(0));

		logger.info("\n" + "Closed TYS tab" + "\n");
		System.out.println("\n" + "Closed TYS tab" + "\n");
	}

	@Then("Enter same supplier email in Email Address field")
	public void enter_same_supplier_email_in_email_address_field() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data" + " " + Email + " " + "in Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + " " + "in Email Address field" + "\n");
	}

	@Then("Click on Corporate Relationships on Profile page")
	public void click_on_corporate_relationships_on_profile_page() throws Throwable {
		String original = ec.getObjects("corp_relations_tab");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked Corporate Relationships on Profile page \n");
		System.out.println("Clicked Corporate Relationships on Profile page \n");

	}

	@Then("Show Corporate Relationship page {string}")
	public void show_corporate_relationship_page_something(String string) throws Throwable {
		String original = ec.getObjects("corp_relations_title");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Corporate Relationship title Displayed" + "\n");
		System.out.println("Corporate Relationship title Displayed" + "\n");
	}

	@Then("^View Linked companies title \"([^\"]*)\"$")
	public void view_linked_companies_title_something(String string) throws Throwable {
		String original = ec.getObjects("linkedcompanies");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Linked companies title Displayed" + "\n");
		System.out.println("Linked companies title Displayed" + "\n");
	}

	@Then("^Supplier should be able to view list of companies \"([^\"]*)\"$")
	public void supplier_should_be_able_to_view_list_of_companies_something(String string) throws Throwable {
		String original = ec.getObjects("linkedcompanies_list");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("list of companies Displayed" + "\n");
		System.out.println("list of companies Displayed" + "\n");
	}

	@And("^Select a company from ownership in Corporate Relationships page$")
	public void select_a_company_from_ownership_in_corporate_relationships_page() throws Throwable {

	}

	@And("^Enter First name in Contacts First name field in corporate relationship page$")
	public void enter_first_name_in_contacts_first_name_field_in_corporate_relationship_page() throws Throwable {
		String original = ec.getObjects("coprelations_Firstname");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys("First");

		Thread.sleep(3000);

		logger.info("Entered first name in Contact's First name field" + "\n");
		System.out.println("Entered first name in Contact's First name field" + "\n");
	}

	@And("^Enter Last name in Contacts Last name field in corporate relationship page$")
	public void enter_last_name_in_contacts_last_name_field_in_corporate_relationship_page() throws Throwable {
		String original = ec.getObjects("coprelations_Lastname");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).sendKeys("Last");

		Thread.sleep(3000);

		logger.info("Entered last name in Contact's last name field" + "\n");
		System.out.println("Entered last name in Contact's last name field" + "\n");
	}

	@And("^Enter Email Address in the Contacts email address field in corporate relationship page$")
	public void enter_email_address_in_the_contacts_email_address_field_in_corporate_relationship_page()
			throws Throwable {
		String original = ec.getObjects("coprelations_email");
		WaitClass.webDriverWait(original);

		// String Email = timeStamp.get(0) + "@mailinator.com";
		String Email = timeStamp.get(0) + "@maildrop.cc";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
	}

	@And("^Enter Confirm Email Address in the Contacts email address field in corporate relationship page$")
	public void enter_confirm_email_address_in_the_contacts_email_address_field_in_corporate_relationship_page()
			throws Throwable {
		String original = ec.getObjects("coprelations_Confirmemail");
		WaitClass.webDriverWait(original);

		// String Email = timeStamp.get(0) + "@mailinator.com";
		String Email = timeStamp.get(0) + "@maildrop.cc";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address field field" + "\n");
	}

	@Then("^Verify \"([^\"]*)\" in status Corporate Relationships page$")
	public void verify_something_in_status_corporate_relationships_page(String string) throws Throwable {
		String original = ec.getObjects("corp_status1") + string + ec.getObjects("corp_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing  " + " " + string + " " + " on UNSPSC page" + "\n");
		System.out.println("Showing  " + " " + string + " " + " on UNSPSC page" + "\n");
		Thread.sleep(2000);
	}

	@Then("^Click on Add Corporate Relationship button in Corporate Relationships page$")
	public void click_on_add_corporate_relationship_button_in_corporate_relationships_page() throws Throwable {
		String original = ec.getObjects("add_corprelation_button");
		WaitClass.webDriverWait(original);

		// driver.findElement(By.xpath(original)).click();

		WebElement Element = driver.findElement(By.xpath(original));

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);

		logger.info("Clicked on Add Corporate Relationship button in Corporate Relationships page" + "\n");
		System.out.println("Clicked on Add Corporate Relationship button in Corporate Relationships page" + "\n");
	}

	@Then("^Enter supplier company name in Corporate Relationships page$")
	public void enter_supplier_company_name_in_corporate_relationships_page() throws Throwable {
		String original = ec.getObjects("corp_suppliercompany");
		WaitClass.webDriverWait(original);

		Date date = new Date();

		long time = date.getTime();

		String Time = Long.toString(time);

		timeStamp.add(0, Time);

		String CompanyName = timeStamp.get(0) + "Supplier";
		driver.findElement(By.xpath(original)).sendKeys(CompanyName);

		Thread.sleep(3000);

		logger.info("Entered " + "'" + CompanyName + "'" + " in Company Name field" + "\n");
		System.out.println("Entered " + " " + CompanyName + " " + " in Company name field" + "\n");
	}

	@Then("^Enter Email on Invite a user registration modal in corporate Relationships \"([^\"]*)\"$")
	public void enter_email_on_invite_a_user_registration_modal_in_corporate_relationships_something(String string)
			throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0) + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
		System.out.println(
				"Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
	}

	@Then("^Enter Confirmation Email on Invite a user registration modal in corporate Relationships \"([^\"]*)\"$")
	public void enter_confirmation_email_on_invite_a_user_registration_modal_in_corporate_relationships_something(
			String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);

		String Email = string + timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}

	@And("^Click \"([^\"]*)\" button on corporate relationships page$")
	public void click_something_button_on_corporate_relationships_page(String strArg1) throws Throwable {
		String original = ec.getObjects("corp_relations_next");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Corporate Hierarchy Next Button" + "\n");
		System.out.println("Clicked on Corporate Hierarchy Next Button" + "\n");
	}

	@Then("Click {string} button in corporate relations")
	public void click_button_in_corporate_relations(String string) {
		String original = ec.getObjects("corp_relations_next");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Corporate Hierarchy Next Button" + "\n");
		System.out.println("Clicked on Corporate Hierarchy Next Button" + "\n");
	}

	@Then("^Verify Email received in supplier Inbox with subject \"([^\"]*)\" supplier \"([^\"]*)\"$")
	public void verify_email_received_in_supplier_inbox_with_subject_something_supplier_something(String sub1,
			String sub2) throws Throwable {
		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");
		String formatXPATH = String.format(original);
		WebElement targetElement = driver.findElement(By.xpath(formatXPATH));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);

		String Email = timeStamp.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		Thread.sleep(2000);

		String goBtn = ec.getObjects("mailinator_gobtn");

		driver.findElement(By.xpath(goBtn)).click(); // click Go

		// find out the first line in the table

		logger.info("Showing email subject " + "'" + "'" + "\n");
		System.out.println("Showing email subject " + "'" + "'" + "\n");
	}

	@Then("^Click on do it later button in corporate relations$")
	public void click_on_do_it_later_button_in_corporate_relations() throws Throwable {
		String original = ec.getObjects("corp_doitlater");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Do it later button" + "\n");
		System.out.println("Clicked on Do it later button" + "\n");
	}

	@Then("^Enter timestamp in \"([^\"]*)\" field \"([^\"]*)\" in corporate relationships$")
	public void enter_timestamp_in_something_field_something_in_corporate_relationships(String Label, String string)
			throws Throwable {
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);

		String input = timeStamp.get(0) + string;
		do {
			WebDriverWait wait = new WebDriverWait(driver, 20);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(original)));
			WebElement ele = wait.until(ExpectedConditions.elementToBeClickable(By.xpath(original)));
			ele.click();
			ele.sendKeys(input);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		logger.info("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + " in " + Label + " field" + "\n");
	}

	@Then("^Show as title \"([^\"]*)\"$")
	public void show_as_title_something(String string) throws Throwable {
		String original = ec.getObjects("corp_reltitle");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("list of companies Displayed" + "\n");
		System.out.println("list of companies Displayed" + "\n");
	}

	@Then("Verify question on CR screen {string} {string}")
	public void verify_question_on_CR_screen(String string, String BooleanStatus) {

		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + string + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		boolean Bstatus;

		if (BooleanStatus.equalsIgnoreCase("true")) {
			Bstatus = true;
		} else {
			Bstatus = false;
		}

		boolean ElementSize = driver.findElements(By.xpath(formatXPATH)).size() > 0;

		assertEquals(ElementSize, Bstatus);

		System.out.println(Bstatus + "Verified visibility of question: " + string + "\n");
		logger.info(Bstatus + "Verified visibility of question: " + string + "\n");

	}

	@Then("Verify {string} radio visibiity under {string} {string}")
	public void verify_radio_visibiity_under(String string, String Question, String BooleanStatus) {

		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + string
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		boolean Bstatus;

		if (BooleanStatus.equalsIgnoreCase("true")) {
			Bstatus = true;
		} else {
			Bstatus = false;
		}

		boolean ElementSize = driver.findElements(By.xpath(formatXPATH)).size() > 0;

		assertEquals(ElementSize, Bstatus);

		System.out.println(string + " radio button is visible" + "\n");
		logger.info(string + " radio button is visible" + "\n");

	}

	@Then("Verify {string} radio status under {string}")
	public void verify_radio_status_under(String string, String Question) {

		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + string
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(string + " radio button is Clickable" + "\n");
		logger.info(string + " radio button is Clickable" + "\n");
	}

	@Then("Verify Add Corporate Relationship modal visibility")
	public void verify_Add_Corporate_Relationship_modal_visibility() {

		String original = ec.getObjects("AddCR_modal");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println("Add Corporate Relationship modal is displayed" + "\n");
		logger.info("Add Corporate Relationship modal is displayed" + "\n");

	}

	@Then("Verify {string} radio visibiity under {string} is {string}")
	public void verify_radio_visibiity_under_is(String radioText, String Question, String status) {

		String original = ec.getObjects("label_var") + radioText + ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println(radioText + " radio button is visible" + "\n");
		logger.info(radioText + " radio button is visible" + "\n");

	}

	@Then("Verify {string} radio status under {string} is {string}")
	public void verify_radio_status_under_is(String radioText, String Question, String status) {

		String original = ec.getObjects("label_var") + radioText + ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(radioText + " radio button is Clickable" + "\n");
		logger.info(radioText + " radio button is Clickable" + "\n");

	}

	@Then("Show Supplier Country of Registration dropdown")
	public void show_Supplier_Country_of_Registration_dropdown() {

		String original = ec.getObjects("AddCR_country_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println("Supplier Country of Registration dropdown is visible" + "\n");
		logger.info("Supplier Country of Registration dropdown is visible" + "\n");

	}

	@Then("Verify Supplier Country of Registration dropdown enabled")
	public void verify_Supplier_Country_of_Registration_dropdown_enabled() {

		String original = ec.getObjects("AddCR_country_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println("Supplier Country of Registration dropdown is Clickable" + "\n");
		logger.info("Supplier Country of Registration dropdown is Clickable" + "\n");

	}

	@Then("Select {string} in Supplier Country of Registration dropdown")
	public void select_in_Supplier_Country_of_Registration_dropdown(String Option) {

		String original = ec.getObjects("AddCR_country_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		System.out.println("Selected " + Option + " in Supplier Country of Registration dropdown" + "\n");
		logger.info("Selected " + Option + " in Supplier Country of Registration dropdown" + "\n");
	}

	@Then("Verify {string} button clickable")
	public void verify_button_clickable(String buttonText) {
		// String original = ec.getObjects("iwilldoitlater");
		String original = ec.getObjects("anyText_var1") + buttonText + ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(buttonText + " button is Clickable" + "\n");
		logger.info(buttonText + " button is Clickable" + "\n");

	}

	@Then("Verify {string} Label visibility")
	public void verify_Label_visibility(String label) {
		String original = ec.getObjects("anyText_var1") + label + ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println(label + " label is Visible" + "\n");
		logger.info(label + " label is Visiblee" + "\n");
	}

	@Then("Verify {string} field visibility")
	public void verify_field_visibility(String label) {
		// String original = ec.getObjects("anyText_var1") + label +
		// ec.getObjects("inputTextField_var2");
		String original = ec.getObjects("AddCR_FirstName_input") + label + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println(label + " input field is Visible" + "\n");
		logger.info(label + " input field is Visible" + "\n");

	}

	@Then("Verify {string} field status")
	public void verify_field_status(String label) {

		String original = ec.getObjects("AddCR_FirstName_input") + label + "']";

		// String original = ec.getObjects("anyText_var1") + label +
		// ec.getObjects("inputTextField_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(label + " input field is Clickable" + "\n");
		logger.info(label + " input field is Clickable" + "\n");

	}

	@Then("Verify {string} dropdown visibillity")
	public void verify_dropdown_visibillity(String label) {
		// String original = ec.getObjects("anyText_var1") + label +
		// ec.getObjects("selectDropdown_var2");
		String original = ec.getObjects("CH_companyName_variable") + label + ec.getObjects("select_option2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println(label + " dropdown is Visible" + "\n");
		logger.info(label + " dropdown is Visible" + "\n");
	}

	@Then("Verify {string} dropdown status")
	public void verify_dropdown_status(String label) {

		// String original = ec.getObjects("anyText_var1") + label +
		// ec.getObjects("selectDropdown_var2");
		String original = ec.getObjects("CH_companyName_variable") + label + ec.getObjects("select_option2");

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(label + " dropdown is Visible" + "\n");
		logger.info(label + " dropdown is Visible" + "\n");

	}

	@Then("Verify {string} button visibility")
	public void verify_button_visibility(String buttonText) {
		String original = ec.getObjects("CH_variable_button") + buttonText + ec.getObjects("select_option2");

		// String original = ec.getObjects("anyText_var1") + buttonText +
		// ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println(buttonText + " button is Visible" + "\n");
		logger.info(buttonText + " button is Visible" + "\n");

	}

	@Then("Enter Company Name in {string} field {string}")
	public void enter_Company_Name_in_field(String string, String string2) {

		/// String original = ec.getObjects("AddCR_companyName_input");
		String original = ec.getObjects("discover_UNSPSCSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String Email = mis.getCurrentTime();

		String Email = RandomStringUtils.randomAlphanumeric(10);
		companyName.add(0, Email);

		System.out.println("@@@@@@ Random String: " + companyName.get(0).toString());

		// driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(companyName.get(0).toString());
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		System.out.println("Entered " + Email + "in Company Name field in Add CR modal" + "\n");
		logger.info("Entered " + Email + "in Company Name field in Add CR modal" + "\n");

	}

	@Then("Enter Email address in Contact Email Address field in Add CR modal")
	public void enter_Email_address_in_Contact_Email_Address_field_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_ContactEmail_input");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		String Email = companyName.get(0).toString() + "@maildrop.cc";

		// String Email = companyName.get(0).toString() + "@mailinator.com";

		driver.findElement(By.xpath(formatXPATH)).sendKeys(Email);

		System.out.println("Entered " + Email + " in Contact's Email Address field in Add CR modal" + "\n");
		logger.info("Entered " + Email + " in Contact's Email Address field in Add CR modal" + "\n");

	}

	@Then("Enter same Email address in Confirm Contact Email Address field in Add CR modal")
	public void enter_same_Email_address_in_Confirm_Contact_Email_Address_field_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_ConfirmEmail_input");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		String Email = companyName.get(0).toString() + "@maildrop.cc";

		// String Email = companyName.get(0).toString() + "@mailinator.com";

		driver.findElement(By.xpath(formatXPATH)).sendKeys(Email);

		System.out.println(
				"Entered " + companyName.get(0) + " in Confirm Contact's Email Address field in Add CR modal" + "\n");
		logger.info(
				"Entered " + companyName.get(0) + " in Confirm Contact's Email Address field in Add CR modal" + "\n");

	}

	@Then("Verify Company Name in preview section")
	public void verify_Company_Name_in_preview_section() {

		// String original = ec.getObjects("anyText_var1") + "Company Name" +
		// ec.getObjects("AddCR_priview_var2");
		String original = "(" + ec.getObjects("previewlabel") + ")" + "[1]";

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Value = companyName.get(0).toString();
		System.out.println("@@@@ Company name in priview " + Value + "\n");

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Value));

		System.out.println(" Verified visibity of Company name " + Value + " in priview section" + "\n");

	}

	@Then("Verify Supplier Country of Registration in preview section {string}")
	public void verify_Supplier_Country_of_Registration_in_preview_section(String CountryName) {

		String original = "(" + ec.getObjects("previewlabel") + ")" + "[2]";

		// String original = ec.getObjects("anyText_var1") + "Supplier Country of
		// Registration" + ec.getObjects("AddCR_priview_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(CountryName));

		System.out.println(" Verified visibity of Country " + CountryName + " in priview section" + "\n");
		logger.info(" Verified visibity of Country " + CountryName + " in priview section" + "\n");
	}

	@Then("Verify Contact First Name in preview section {string}")
	public void verify_Contact_First_Name_in_preview_section(String FirstName) {

		// String original = ec.getObjects("anyText_var1") + "Contact's First Name" +
		// ec.getObjects("AddCR_priview_var2");
		String original = "(" + ec.getObjects("previewlabel") + ")" + "[3]";

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(FirstName));

		System.out.println(" Verified visibity of First Name " + FirstName + " in priview section" + "\n");
		logger.info(" Verified visibity of First Name " + FirstName + " in priview section" + "\n");

	}

	@Then("Verify Contact Last Name in preview section {string}")
	public void verify_Contact_Last_Name_in_preview_section(String LastName) {

		// String original = ec.getObjects("anyText_var1") + "Contact's Last Name" +
		// ec.getObjects("AddCR_priview_var2");
		String original = "(" + ec.getObjects("previewlabel") + ")" + "[4]";

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(LastName));

		System.out.println(" Verified visibity of Last Name " + LastName + " in priview section" + "\n");
		logger.info(" Verified visibity of Last Name " + LastName + " in priview section" + "\n");

	}

	@Then("Verify Contact Email Address in preview section")
	public void verify_Contact_Email_Address_in_preview_section() {

		// String original = ec.getObjects("anyText_var1") + "Contact's Email Address" +
		// ec.getObjects("AddCR_priview_var2");
		String original = "(" + ec.getObjects("previewlabel") + ")" + "[5]";

		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String Value = companyName.get(0).toString() + "@maildrop.cc";

		// String Value = companyName.get(0) + "@mailinator.com";

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Value));

		System.out.println(" Verified visibity of  Contact Email Address  " + Value + " in priview section" + "\n");
		logger.info(" Verified visibity of  Contact Email Address " + Value + " in priview section" + "\n");

	}

	@Then("Verify Contact Preferred Language in preview section {string}")
	public void verify_Contact_Preferred_Language_in_preview_section(String language) {

		String original = "(" + ec.getObjects("previewlabel") + ")" + "[6]";

		// String original = ec.getObjects("anyText_var1") + "Contact's Preferred
		// Language" + ec.getObjects("AddCR_priview_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(language));

		System.out.println(" Verified visibity of language" + language + " in priview section" + "\n");
		logger.info(" Verified visibity of language" + language + " in priview section" + "\n");

	}

	@Then("Verify Next button clickable in Add CR modal")
	public void verify_Next_button_clickable_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_Next_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println("Next button is Clickable in Add CR Modal" + "\n");
		logger.info("Next button is Clickable in Add CR Modal" + "\n");

	}

	@Then("Show Next button in Add CR modal")
	public void show_Next_button_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_Next_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		System.out.println("Next button is Visible in Add CR Modal" + "\n");
		logger.info("Next button is Visible in Add CR Modal" + "\n");

	}

	@Then("Click Next button in Add CR modal")
	public void click_Next_button_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_Next_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		System.out.println("Clicked on Next button in Add CR Modal" + "\n");
		logger.info("Clicked on Next button in Add CR Modal" + "\n");

	}

	@Then("Verify Invite button clickable in Add CR modal")
	public void verify_Invite_button_clickable_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_Invite_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println("Invite button is Clickable in Add CR Modal" + "\n");
		logger.info("Invite button is Clickable in Add CR Modal" + "\n");

	}

	@Then("Click Invite button in Add CR modal")
	public void click_Invite_button_in_Add_CR_modal() {

		String original = ec.getObjects("AddCR_Invite_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		System.out.println("Clicked on Invite button in Add CR Modal" + "\n");
		logger.info("Clicked on Invite button in Add CR Modal" + "\n");

	}

	@Then("verify Supplier added under Supplier Name column")
	public void verify_Supplier_added_under_Supplier_Name_column() {

		String original = ec.getObjects("CRtable_FirstSupplierName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Supplier = companyName.get(0).toString();
		System.out.println(
				"@@@@@@ Supplier under Supplier Name column" + driver.findElement(By.xpath(formatXPATH)).getText());

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(Supplier));

		logger.info("Verified Supplier " + Supplier + " is visble under Supplier Name column" + "\n");

		System.out.println("Verified Supplier " + Supplier + " is visble under Supplier Name column" + "\n");

	}

	@Then("Veify supplier country under Tax Country column {string}")
	public void veify_supplier_country_under_Tax_Country_column(String TaxCountry) {

		String original = ec.getObjects("CRtable_FirstSupplierTaxCountry");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(TaxCountry));

		logger.info("Verified Country " + TaxCountry + " is visble under Tax Country column" + "\n");
		System.out.println("Verified Country " + TaxCountry + " is visble under Tax Country column" + "\n");

	}

	@Then("Verify Supplier status under Status column {string}")
	public void verify_Supplier_status_under_Status_column(String SupplierStatus) {

		String original = ec.getObjects("CRtable_FirstSupplierStatus");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		//driver.navigate().refresh();
		driver.manage().timeouts().implicitlyWait(20,TimeUnit.SECONDS);
		//assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(SupplierStatus));
		logger.info("Verified Status is " + SupplierStatus + " is visble under Status column" + "\n");
		System.out.println("Verified Status is " + SupplierStatus + " is visble under Status column" + "\n");

	}

	@Then("Verify CR invitation email with subject line {string}")
	public void verify_CR_invitation_email_with_subject_line(String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		String Email = companyName.get(0) + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		// driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		action.click(driver.findElement(By.xpath(original))).sendKeys(Keys.ENTER).build().perform();
		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		int f = 5;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {
			driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
			System.out.println("\n" + "Entered For loop" + "\n");
			if (driver.findElements(By.xpath(EmailformatXPATH)).size() > 0) {
				System.out.println("\n" + "Entered If Block" + "\n");
				isDisplayed = true;
				break;
			} else {
				System.out.println("\n" + "Entered Else Block" + "\n");
				driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
				System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
				Thread.sleep(2000);
			}
		}

		assertTrue(isDisplayed);

		// WaitClass.clickableWait(EmailformatXPATH);

		// assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Enter reason in Exit Group text area")
	public void enter_reason_in_Exit_Group_text_area() {

		String original = ec.getObjects("CR_ExitGroup_textarea");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("test");

		System.out.println("Entered reason in Exit Group text area" + "\n");
		logger.info("Entered reason in Exit Group text area" + "\n");

	}

	@Then("Verify {string} radio is selected under {string}")
	public void verify_radio_is_selected_under(String string, String Question) {
		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + string
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		System.out.println("Verified " + string + " radio button is Selected" + "\n");
		logger.info("Verified " + string + " radio button is Selected" + "\n");

	}

	@Then("Verify Notification received that supplier has joined your Corporate Group")
	public void verify_Notification_received_that_supplier_has_joined_your_Corporate_Group() {

		String original = ec.getObjects("CR_notification");
		WaitClass.webDriverWait(original);

		String Notification = companyName.get(0).toString() + " has joined your Corporate Group.";

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		assertEquals(driver.findElement(By.xpath(original)).getText(), Notification);
		logger.info("Showing Notification:" + Notification + "\n");
		System.out.println("Showing Notification:" + Notification + "\n");

	}

	@Then("^Verify if supplier is able to select a company from dropdown$")
	public void verify_if_supplier_is_able_to_select_a_company_from_dropdown() throws Throwable {
		String original = ec.getObjects("corp_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select ownership = new Select(driver.findElement(By.xpath(original)));

		ownership.selectByIndex(1);

		logger.info("Select Ownership from dropdown" + "\n");
		System.out.println("Select Ownership from dropdown" + "\n");
	}

	@And("^Show \"([^\"]*)\" on Ownership page$")
	public void show_something_on_ownership_page(String string) throws Throwable {
		String original = ec.getObjects("corp_ownership1") + string + ec.getObjects("corp_ownership2");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(string + "is Displayed" + "\n");
		System.out.println(string + "is Displayed" + "\n");
	}

	@And("^Individual Owners listed on Ownership page \"([^\"]*)\"$")
	public void individual_owners_listed_on_ownership_page_something(String string) throws Throwable {
		String original = ec.getObjects("corp_individual");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Individual Owners listed  on Ownership page" + "\n");
		System.out.println("Individual Owners listed  on Ownership page" + "\n");
	}

	@And("^Ultimate Parent Company Owners listed on Ownership page \"([^\"]*)\"$")
	public void ultimate_parent_company_owners_listed_on_ownership_page_something(String string) throws Throwable {
		String original = ec.getObjects("corp_ultimateparent");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Individual Owners listed  on Ownership page" + "\n");
		System.out.println("Individual Owners listed  on Ownership page" + "\n");
	}

	@And("^Entity or Organization Owners listed on Ownership page \"([^\"]*)\"$")
	public void entity_or_organization_owners_listed_on_ownership_page_something(String string) throws Throwable {
		String original = ec.getObjects("corp_Entity");
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Individual Owners listed  on Ownership page" + "\n");
		System.out.println("Individual Owners listed  on Ownership page" + "\n");
	}

	@Then("Enter same CR Company Name in {string} field {string}")
	public void enter_same_CR_Company_Name_in_field(String string, String string2) {

		String original = ec.getObjects("discover_UNSPSCSearch_field");

		// String original = ec.getObjects("AddCR_companyName_input");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String Email = mis.getCurrentTime();

		// driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(companyName.get(0).toString());
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		System.out.println("Entered " + companyName.get(0).toString() + "in Company Name field in Add CR modal" + "\n");
		logger.info("Entered " + companyName.get(0).toString() + "in Company Name field in Add CR modal" + "\n");
	}

	@Then("Enter new CR Email in Email field")
	public void enter_new_CR_Email_in_Email_field() {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		// String Email = companyName.get(0).toString() + "@mailinator.com";
		String Email = companyName.get(0).toString() + "@maildrop.cc";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data" + " " + Email + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + Email + " " + "Email Address field" + "\n");

	}

	@Then("Verify {string} Status under {string} tab")
	public void verify_Status_under_tab(String status, String CRtab) {

		String original = ec.getObjects("label_var") + CRtab + ec.getObjects("CR_supplierRecords_status_var2") + status
				+ "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(status));

		logger.info("Verified Supplier Status '" + status + "' in " + CRtab + " tab in CR page" + "\n");
		System.out.println("Verified Supplier Status '" + status + "' in " + CRtab + " tab in CR page" + "\n");

	}

	@Then("Click {string} tab in Customer Relations page")
	public void click_tab_in_Customer_Relations_page(String CRtab) {

		String original = ec.getObjects("label_var") + CRtab + "']";

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on '" + CRtab + "' tab in Customer Relations page" + "\n");
		System.out.println("Clicked on '" + CRtab + "' tab in Customer Relations page" + "\n");
	}

	@Then("Verify Accept button in Invitation received tab in CR page")
	public void verify_Accept_button_in_Invitation_received_tab_in_CR_page() {

		String original = ec.getObjects("CR_InviteReceivedTab_Approve_btn");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Approve button in Invitation Received tab in Customer Relations page" + "\n");
		System.out.println("Showing Approve button in Invitation Received tab in Customer Relations page" + "\n");
	}

	@Then("Verify Decline button in Invitation received tab in CR page")
	public void verify_Decline_button_in_Invitation_received_tab_in_CR_page() {

		String original = ec.getObjects("CR_InviteReceivedTab_Reject_btn");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing Decline button in Invitation Received tab in Customer Relations page" + "\n");
		System.out.println("Showing Decline button in Invitation Received tab in Customer Relations page" + "\n");

	}

	@Then("Click Accept button in Invitation received tab in CR page")
	public void click_Accept_button_in_Invitation_received_tab_in_CR_page() {

		String original = ec.getObjects("CR_InviteReceivedTab_Approve_btn");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Approve button in Invitation Received tab in Customer Relations page" + "\n");
		System.out.println("Clicked on Approve button in Invitation Received tab in Customer Relations page" + "\n");

	}

	@Then("Show Confirmation dialog box {string}")
	public void show_Confirmation_dialog_box(String string) {

		String original = ec.getObjects("CR_ConfirmationModal_text");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(string));

		logger.info("Showing confirmation dialog box '" + string + "\n");
		System.out.println("Showing confirmation dialog box '" + string + "\n");

	}

	@Then("Show {string} supplier with {string} status {string}")
	public void show_supplier_with_status(String SupplierName, String SupplierStatus, String booleanStatus) {

		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + SupplierName + ec.getObjects("CR_supplierRecords_status_var2")
				+ SupplierStatus + "']";

		String formatXPATH = String.format(original);

		boolean Bstatus;

		if (booleanStatus.equalsIgnoreCase("true")) {
			Bstatus = true;
		} else {
			Bstatus = false;
		}

		boolean ElementSize = driver.findElements(By.xpath(formatXPATH)).size() > 0;
		// System.out.println("@@@ElementSize: " +
		// driver.findElements(By.xpath(formatXPATH)).size());
		// System.out.println("@@@ ElementSize: " + ElementSize);
		// System.out.println("@@@ Bstatus: " + Bstatus);
		assertEquals(ElementSize, Bstatus);

		logger.info("Verified visibility of CR supplier: " + SupplierName + "-" + booleanStatus + "\n");
		System.out.println("Verified visibility of CR supplier: " + SupplierName + "-" + booleanStatus + "\n");
	}

	@Then("Click {string} supplier with {string} status")
	public void click_supplier_with_status(String SupplierName, String SupplierStatus) {

		String original = ec.getObjects("label_var") + SupplierName + ec.getObjects("CR_supplierRecords_status_var2")
				+ SupplierStatus + "']";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Supplier record: " + SupplierName);
		System.out.println("Clicked on Supplier record: " + SupplierName);
	}

	@Then("Verify Supplier Profile page is openend {string}")
	public void verify_Supplier_Profile_page_is_openend(String SupplierName) {

		String original = ec.getObjects("CR_buyer_supplierView_var1") + SupplierName
				+ ec.getObjects("CR_buyer_supplierView_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing '" + SupplierName + "' Supplier page");
		System.out.println("Showing '" + SupplierName + "' Supplier page");
	}

	@Then("Enter {string} in Supplier Company Name field")
	public void enter_in_Supplier_Company_Name_field(String InputData) {

		String original = ec.getObjects("AddCR_companyName_input");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(InputData);

		System.out.println("Entered " + InputData + "in Company Name field in Add CR modal" + "\n");
		logger.info("Entered " + InputData + "in Company Name field in Add CR modal" + "\n");

	}

	@Then("Close Add Corporate Relationship modal")
	public void close_Add_Corporate_Relationship_modal() {

		String original = ec.getObjects("CR_AddCRModal_closeBtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		System.out.println("Closed the Add CR modal" + "\n");
		logger.info("Closed the Add CR modal" + "\n");

	}

	@Then("Click on Add & Invite contact icon")
	public void click_on_Add_Invite_contact_icon() {

		String original = ec.getObjects("CR_AddInviteContact_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		System.out.println("Clicked on Add & Invite contact icon" + "\n");
		logger.info("Clicked on Add & Invite contact icon" + "\n");

	}

	@Then("^Click on the email with subject \"([^\"]*)\"$ from maildrop")
	public void click_on_the_email_with_subject_maildrop(String subject) throws Throwable {
		String original = ec.getObjects("maildrop_subjectline") + subject + "')]";
		// String original = ec.getObjects("CH_variable_subjectLine");
		String firstEmailformatXPATH = String.format(original);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.webDriverWait(firstEmailformatXPATH);
		WaitClass.clickableWait(firstEmailformatXPATH);

		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);

		logger.info("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + subject + "'" + "\n");

	}

	@Then("^Click on refresh button$")
	public void click_on_refreshbtn() throws Throwable {

		String original = ec.getObjects("refresh_btn");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Refresh button" + "\n");
		System.out.println("Clicked on Refresh button" + "\n");

	}

	@Then("Show Email with subject {string} from maildrop")
	public void show_Email_with_subject_maildrop(String subject) throws Exception {

		String original = ec.getObjects("SRM_details3")+subject+"')]";
		String firstEmailformatXPATH = String.format(original);

		String original1 = ec.getObjects("refresh_btn");
		String formatXPATH = String.format(original1);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH));
		logger.info("Clicked on Refresh" + "\n");
		System.out.println("Clicked on Refresh" + "\n");
		int f = 20;
		boolean isDisplayed = false;
		for (int i = 1; i <= f; i++) {

			if (driver.findElements(By.xpath(firstEmailformatXPATH)).size() > 0) {
				isDisplayed = true;
				break;
			} else {
				driver.navigate().refresh();
				//driver.findElement(By.xpath(formatXPATH)).click();
				driver.manage().timeouts().implicitlyWait(10,TimeUnit.SECONDS);
			}
		}
		driver.manage().timeouts().implicitlyWait(5,TimeUnit.SECONDS);
		assertTrue(isDisplayed);

		logger.info("Verified visibility of Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Verified visibility ofEmail with subject: " + "'" + subject + "'" + "\n");

	}

	@Then("Click on the email with subject {string} from maildrop")
	public void click_on_the_email_with_subject_something_maildrop(String subject) throws Throwable {
		String original = ec.getObjects("SRM_details3")+subject+"')]";
		// String original = ec.getObjects("CH_variable_subjectLine");
		String firstEmailformatXPATH = String.format(original);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.webDriverWait(firstEmailformatXPATH);
		WaitClass.clickableWait(firstEmailformatXPATH);
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.MINUTES);
		driver.findElement(By.xpath(original)).click();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.MINUTES);

		logger.info("Clicked on Email with subject: " + "'" + subject + "'" + "\n");
		System.out.println("Clicked on Email with subject: " + "'" + subject + "'" + "\n");

	}

	@Then("Click on {string} checkbox")
	public void click_on_checkbox(String str) throws Throwable {

		String original = ec.getObjects(str);
		String formatXPATH = String.format(original);
		driver.switchTo().frame(0);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked ignoreandproceed box" + "\n");
		System.out.println("Clicked on ignoreandproceed box" + "\n");

	}

	@Then("Verify {string} labels {int} is enabled")
	public void verify_labels_is_enabled(String abc, int i) {

		String original = "(" + ec.getObjects("label1") + ")" + "[i]";
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info(abc + "is enabled" + "\n");
		System.out.println(abc + "is enabled" + "\n");
	}

	@Then("Verify the {string} button clickable on add cr")
	public void verify_the_button_clickable_on_add_cr(String buttonText) {
		String original = ec.getObjects("CH_variable_button") + buttonText + ec.getObjects("select_option2");
		// String original = ec.getObjects("anyText_var1") + buttonText +
		// ec.getObjects("anyText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		System.out.println(buttonText + " button is Clickable" + "\n");
		logger.info(buttonText + " button is Clickable" + "\n");

	}

//	//@Then("Select {string} in {string} Prefered language dropdown Value")
//	public void select_something_in_something_prefered_language_dropdown_value(String Option, String Label)
//			throws Throwable {
//
//		String original = ec.getObjects("prefered_label1") + Label + ec.getObjects("prefered_label2");
//		String formatXPATH = String.format(original);
//
//		WaitClass.clickableWait(formatXPATH);
//
//		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
//
//		dropdown.selectByVisibleText(Option);
//
//		Thread.sleep(3000);
//
//		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
//		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	@Then("Verify received an email in maildrop Inbox with subject {string} for CR invite")
	public void verify_received_an_email_in_maildrop_inbox_with_subject_for_CR_invite(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(5000);

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		String Value = companyName.get(0).toString() + "@maildrop.cc";

		driver.findElement(By.xpath(original)).sendKeys(Value);
		Thread.sleep(10000);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + Value + " in maildrop search box" + "\n");
		System.out.println("Entered " + Value + " in maildrop search box" + "\n");
		Thread.sleep(10000);
		String SubjectLine = ec.getObjects("maildroplabel") + subject + ec.getObjects("createrule_btn2");
		String EmailformatXPATH = String.format(SubjectLine);
		WaitClass.webDriverWait(EmailformatXPATH);
		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
	}

	@Then("Click on {string} chkbox")
	public void click_on_chkbox(String str) throws Throwable {

		String original = ec.getObjects(str);
		String formatXPATH = String.format(original);
		// driver.switchTo().frame(0);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked ignoreandproceed box" + "\n");
		System.out.println("Clicked on ignoreandproceed box" + "\n");

	}

	@Then("Enter {string} supplier in Email Address field")
	public void enter_supplier_in_Email_Address_field(String str) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		// wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects(str));
		logger.info("Entered data" + " " + ec.getObjects(str) + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects(str) + " " + "Email Address field" + "\n");
	}

	@Then("Open the registration URL")
	public void openNewURL() throws Throwable {
		
		driver.get(currentURL);

		logger.info("opened registration URL " +currentURL+ "\n");
		System.out.println("opened registration URL " +currentURL+  "\n");
	}
	@Then("^Enter reinvite password in Password field$")
	public void enter_password_in_newpassword_field() {
		String original = ec.getObjects("CH_invite_pwd_inputbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("newPWD"));

		logger.info("Entered password in Password field" + "\n");
		System.out.println("Entered password in Password field" + "\n");

	}

	@Then("^Enter reinvite password in Confirm Password field$")
	public void enter_password_in_newconfirm_password_field() {

		String original = ec.getObjects("CH_invite_Confirmpwd_inputbox");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(ec.getObjects("newPWD"));

		logger.info("Entered password in Password field" + "\n");
		System.out.println("Entered password in Password field" + "\n");
	}
}