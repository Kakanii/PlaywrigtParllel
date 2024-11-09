package stepdefinition;

import static org.testng.Assert.assertTrue;

import io.cucumber.java.en.And;
import org.openqa.selenium.Keys;

import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;

import io.cucumber.java.en.Then;
import org.openqa.selenium.support.ui.Select;
import utility.*;
import org.openqa.selenium.JavascriptExecutor;

public class ManageSupplierLiasion extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();


	Logger logger = Logger.getLogger(Dashboard.class);
	

	@Then("Show My Supplier Extracts tab on Dashboard page {string}")
	public void show_My_Supplier_Extracts_tab_on_Dashboard_page(String string) {

		String original1 = ec.getObjects("supplierextracts");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("supplierextracts"))).isDisplayed(), string);
		logger.info("my supplier extracts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("my supplier extracts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Manage Contact tab on Dashboard page {string}")
	public void Show_Manage_Contact_tab_on_Dashboard_page(String string) throws InterruptedException {

		String original1 = ec.getObjects("managecontacts");
		String formatXPATH1 = String.format(original1);
		Thread.sleep(10000);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("managecontacts"))).isDisplayed(), string);
		driver.findElement(By.xpath(ec.getObjects("managecontacts"))).click();
		Thread.sleep(10000);
		logger.info("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show contacts in extract page on Dashboard page {string}")
	public void Show_contacts_in_extract_page_on_Dashboard_page(String string) throws InterruptedException {

		String original1 = ec.getObjects("managecontactsextract");
		String formatXPATH1 = String.format(original1);
		Thread.sleep(10000);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("managecontactsextract"))).isDisplayed(), string);
		driver.findElement(By.xpath(ec.getObjects("managecontactsextract"))).click();
		Thread.sleep(10000);
		logger.info("managecontacts extract tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("managecontacts extract tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Supplier Contact tab on Dashboard page {string}")
	public void Show_Supplier_Contact_tab_on_Dashboard_page(String string) throws InterruptedException {

		String original1 = ec.getObjects("suppliercontactstab");
		String formatXPATH1 = String.format(original1);
		Thread.sleep(1000);
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(ec.getObjects("suppliercontactstab"))).click();

		assertTrue(driver.findElement(By.xpath(ec.getObjects("suppliercontactstab"))).isDisplayed(), string);
		driver.findElement(By.xpath(ec.getObjects("suppliercontactstab"))).click();
		Thread.sleep(10000);
		logger.info("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify new contact in mangement contact {string}")
	public void Verify_new_contact_in_mangement_contact(String string) throws InterruptedException {
		String original = ec.getObjects("Stringsuppliersearch_bar");
		String formatXPATH = String.format(original);

		// String original1 = ec.getObjects("suppliercontactname");
		// String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(ec.getObjects("Stringsuppliersearch_bar"))).click();
		driver.findElement(By.xpath(ec.getObjects("Stringsuppliersearch_bar"))).clear();
		driver.findElement(By.xpath(ec.getObjects("Stringsuppliersearch_bar"))).sendKeys(string);
		driver.findElement(By.xpath(ec.getObjects("Stringsuppliersearch_bar"))).sendKeys(Keys.RETURN);
		
		Thread.sleep(1000);
		WaitClass.webDriverWait(formatXPATH);
		logger.info(string + " contact visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println(string + " contact visible " + " " + string + " " + " on Dashboard page" + "\n");

//		assertTrue(var.contains(string));
//		logger.info(string +" contact visible " + " " + string + " " + " on Dashboard page" + "\n");
//		System.out.println(string +" contact visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify manage contact column {string}")
	public void Show_Verify_manage_contact_column_Dashboard_page(String string) {

		String original1 = ec.getObjects(string);
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects(string))).isDisplayed(), string);
		logger.info(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify contact type in mangement contact {string}")
	public void Verify_contact_type_in_mangement_contact(String string) {

		String original1 = ec.getObjects("contacttypemanagecontact");
		WaitClass.webDriverWait(original1);
		String str = driver.findElement(By.xpath(ec.getObjects(original1))).getText();
		System.out.println(str);
		assertTrue(str.contains(string));
		logger.info(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify contact type segment {string}")
	public void Verify_contact_type_segment(String string) {

		String original1 = ec.getObjects("contacttypesegment");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		String str1 = driver.findElement(By.xpath(ec.getObjects("contacttypesegment"))).getAttribute(formatXPATH1);
		// int str1=Integer.parseInt( str.charAt(1));
		logger.info(str1 + " visible on Dashboard page" + "\n");
		System.out.println(str1 + " visible on Dashboard page" + "\n");
		//assertTrue(str.equals("(" + string + ")"));
	
		assertTrue(str1.equals("Accounts Receivable Contact"));
		logger.info(str1 + " visible on Dashboard page" + "\n");
		System.out.println(str1 + " visible on Dashboard page" + "\n");
	}

	@Then("Click on contact type segment")
	public void Click_contact_type_segment() {

		String original1 = ec.getObjects("contacttypesegment");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("contacttypesegment"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("contacttypesegment"))).click();
		// logger.info(string+" visible " + " " + string + " " + " on Dashboard page" +
		// "\n");
		// System.out.println(string+" visible " + " " + string + " " + " on Dashboard
		// page" + "\n");
	}

	@Then("Verify contact type segment list")
	public void verify_contact_type_segment_list() {

		// String original1 = ec.getObjects("contacttypemanagecontact");
		String formatXPATH1 = ec.getObjects("contacttyp1");
		String formatXPATH2 = ec.getObjects("contacttyp1");
		String formatXPATH3 = ec.getObjects("contacttyp1");
		String formatXPATH4 = ec.getObjects("contacttyp1");
		String formatXPATH5 = ec.getObjects("contacttyp1");
		// WaitClass.webDriverWait(formatXPATH1);
		// System.out.println(formatXPATH1);
		String str[] = { "Customer Relationship Contact", "Chief Executive Officer or Equivalent",
				"Chief Financial Officer or Equivalent", "Director of Sales or Equivalent",
				"Government Relations Contact" };
		formatXPATH1 = formatXPATH1 + str[0] + "']";
		System.out.println(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		String str1 = driver.findElement(By.xpath(formatXPATH1)).getText();

		assertTrue(str1.equals(str[0]));

		formatXPATH2 = formatXPATH2 + str[1] + "']";

		assertTrue(driver.findElement(By.xpath(formatXPATH2)).isDisplayed());

		String str2 = driver.findElement(By.xpath(formatXPATH2)).getText();

		assertTrue(str2.equals(str[1]));

		formatXPATH3 = formatXPATH3 + str[2] + "']";

		assertTrue(driver.findElement(By.xpath(formatXPATH3)).isDisplayed());

		String str3 = driver.findElement(By.xpath(formatXPATH3)).getText();

		assertTrue(str3.equals(str[2]));

		formatXPATH4 = formatXPATH4 + str[3] + "']";

		assertTrue(driver.findElement(By.xpath(formatXPATH4)).isDisplayed());

		String str4 = driver.findElement(By.xpath(formatXPATH4)).getText();

		assertTrue(str4.equals(str[3]));

		formatXPATH5 = formatXPATH5 + str[4] + "']";

		assertTrue(driver.findElement(By.xpath(formatXPATH5)).isDisplayed());
		String str5 = driver.findElement(By.xpath(formatXPATH5)).getText();

		assertTrue(str5.equals(str[4]));

		String original2 = ec.getObjects("closecontactypepopup");

		// WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(original2)).isDisplayed());
		driver.findElement(By.xpath(original2)).click();

		// logger.info(string+" visible " + " " + string + " " + " on Dashboard page" +
		// "\n");
		// System.out.println(string+" visible " + " " + string + " " + " on Dashboard
		// page" + "\n");
	}

	@Then("Verify contact type segment list buyer2")
	public void verify_contact_type_segment_list_buyer2() {

		// String original1 = ec.getObjects("contacttypemanagecontact");
		String formatXPATH1 = ec.getObjects("contacttyp1");
		// String formatXPATH5 = ec.getObjects("contacttyp1");
		// WaitClass.webDriverWait(formatXPATH1);
		// System.out.println(formatXPATH1);
		String str[] = { "Customer Relationship Contact" };
		formatXPATH1 = formatXPATH1 + str[0] + "']";
		System.out.println(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		String str1 = driver.findElement(By.xpath(formatXPATH1)).getText();

		assertTrue(str1.equals(str[0]));

		// formatXPATH5=formatXPATH5+str[4]+"']";

		// assertTrue(driver.findElement(By.xpath(formatXPATH5)).isDisplayed());
		// String str5= driver.findElement(By.xpath(formatXPATH5)).getText();

		// assertTrue(str5.equals(str[4]));

		String original2 = ec.getObjects("closecontactypepopup");

		// WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(original2)).isDisplayed());
		driver.findElement(By.xpath(original2)).click();

		// logger.info(string+" visible " + " " + string + " " + " on Dashboard page" +
		// "\n");
		// System.out.println(string+" visible " + " " + string + " " + " on Dashboard
		// page" + "\n");
	}

	@Then("Verify Greentickmark after contact type")
	public void Verify_Greentickmark_after_contact_type() {

		String original1 = ec.getObjects("verifiedbutton");

		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("verifiedbutton"))).isDisplayed());
		logger.info("verified button displayed " + " on Dashboard page" + "\n");
		System.out.println(" verified button displayed " + " on Dashboard page" + "\n");
	}

	@Then("Click on contactall check box")
	public void Click_on_contactall_check_box() {

		String original1 = ec.getObjects("managecontactAll");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("managecontactAll"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("managecontactAll"))).click();
		logger.info("Clicked on Contact all check box " + " on Dashboard page" + "\n");
		System.out.println(" Clicked on Contact all check box " + " on Dashboard page" + "\n");
	}

	@Then("Click on YOB check box")
	public void Click_on_YOB_check_box() {

		String original1 = ec.getObjects("YobCheckbox");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("YobCheckbox"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("YobCheckbox"))).click();
		logger.info("Clicked on YobCheckbox " + " on Dashboard page" + "\n");
		System.out.println(" Clicked on YobCheckbox " + " on Dashboard page" + "\n");
	}

	@Then("Enter job title in management {string}")
	public void Enter_Job_Title(String input) throws Throwable {

		String original = ec.getObjects("jobTitleManagement");
		// String original = ec.getObjects("website_info");
		String formatXPATH = String.format(original);
		// String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		Thread.sleep(2000);

		// Thread.sleep(2000);
		do {
			driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		} while (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));

		logger.info("Entered job title");
		System.out.println("Entered Job title");
	}

	@Then("Click on filters on managecontacts")
	public void Click_on_filters_on_managecontacts() {

		String original1 = ec.getObjects("ManageContactsfilterby");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("ManageContactsfilterby"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("ManageContactsfilterby"))).click();
		logger.info("Clicked on filterby " + " on Manage Contact page" + "\n");
		System.out.println(" Clicked on filterby " + " on Manage Contact page" + "\n");
	}

	@Then("Verify user is able to see Contact Type as 1st accordion in Manage Contact filters")
	public void Verify_user_is_able_to_see_Contact_Type_as_1st_accordion_in_Manage_Contact_filters() {

		String original1 = ec.getObjects("Contacttypefilter");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("Contacttypefilter"))).isDisplayed());

		logger.info("Contact Type displayedb as 1st accordion" + " on Manage Contact filters" + "\n");
		System.out.println("Contact Type displayedb as 1st accordion" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify User able to see search and multi-select dropdown list for all the contact types in Contact type field")
	public void Verify_User_able_to_see_search_and_multi_select_dropdown_list_for_all_the_contact_types_in_Contact_type_field() {

		String original1 = ec.getObjects("Contacttypefilter");
		// String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(original1);
		// assertTrue(driver.findElement(By.xpath(ec.getObjects("Contacttypefilter"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("Contacttypefilter"))).click();
		String original = ec.getObjects("Contacttypedropdown");
		// String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("Contacttypedropdown"))).isDisplayed());

		logger.info("select dropdown list for all the contact types displayed" + " on Manage Contact filters" + "\n");
		System.out.println(
				"select dropdown list for all the contact types displayed" + " on Manage Contact filters" + "\n");
	}

	@Then("Click on Search button on filterby in manage contact screen")
	public void Click_on_Search_button_on_filterby_in_manage_contact_screen() {

		String original = ec.getObjects("ManagecontactSearch");

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("ManagecontactSearch"))).isDisplayed());

		logger.info("Clicked on Search button" + " on Manage Contact filters" + "\n");
		System.out.println("Clicked on Search button" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify User should be able to select multiple list of contact type in Contact type field in Filters")
	public void Verify_User_should_be_able_to_select_multiple_list_of_contact_type_in_Contact_type_field_in_Filters()
			throws InterruptedException {

		String original2 = ec.getObjects("ManageSearchandSelect");
		WaitClass.webDriverWait(original2);
		driver.findElement(By.xpath((original2))).click();
		Thread.sleep(1000);
		String original = ec.getObjects("Contacttypecheckbox");
		original = original + "[1]";
		WaitClass.webDriverWait(original);
		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath((original))).click();
		Thread.sleep(1000);
		String original1 = ec.getObjects("Contacttypecheckbox");
		original1 = original1 + "[2]";
		WaitClass.webDriverWait(original1);
		driver.findElement(By.xpath((original1))).click();

		logger.info("user is able to select multiple list of contact type" + " on Manage Contact filters" + "\n");
		System.out
				.println("user is able to select multiple list of contact type" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify if user able to see all the other Connected Suppliers screen filters in Manage contact filters")
	public void Verify_if_user_able_to_see_all_the_other_Connected_Suppliers_screen_filters_in_Manage_contact_filters() {

		String[] list = { "Accounts Receivable Contact", "Chief Executive Officer or Equivalent",
				"Chief Financial Officer or Equivalent", "Conflict Minerals Contact", "Customer Relationship Contact",
				"Health & Safety Issue Manager", "Privacy Contact"};

		for (int i = 0; i < list.length; i++) {

			String original = ec.getObjects("Connectedsupplierlist");
			original = original + "'" + list[i] + "'" + "]";
			WaitClass.webDriverWait(original);
			assertTrue(driver.findElement(By.xpath((original))).isDisplayed());
		}

		logger.info("Connected supplier list" + " on Manage Contact filters" + "\n");
		System.out.println("Connected supplier list" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify A black bar on the top of the table")
	public void Verify_A_black_bar_on_the_top_of_the_table() {

		String original = ec.getObjects("blackbarmanagecontacts1");

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("blackbarmanagecontacts1"))).isDisplayed());

		logger.info("Black bar is present" + " on Manage Contact filters" + "\n");
		System.out.println("Black bar is present" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify A black bar on the top of the table disappear")
	public void Verify_A_black_bar_on_the_top_of_the_table_disappear() {

		String original = ec.getObjects("blackbarmanagecontacts");

		WaitClass.webDriverWait(original);
		assertTrue((driver.findElement(By.xpath(ec.getObjects("blackbarmanagecontacts"))).isDisplayed()));

		logger.info("Black bar is not present" + " on Manage Contact filters" + "\n");
		System.out.println("Black bar is not present" + " on Manage Contact filters" + "\n");
	}

	@Then("Click on multiple contactall check box {string}")
	public void Click_on_multiple_contactall_check_box(String string) {

		String original = ec.getObjects(string);
		original = original + "tr[1]//td[1]";
		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath((original))).isDisplayed());
		driver.findElement(By.xpath((original))).click();
		String original1 = ec.getObjects(string);
		original1 = original1 + "tr[2]//td[1]";
		WaitClass.webDriverWait(original1);
		assertTrue(driver.findElement(By.xpath((original1))).isDisplayed());
		driver.findElement(By.xpath((original1))).click();
		String original2 = ec.getObjects("selectedcontactnumber");

		WaitClass.webDriverWait(original2);
		assertTrue(driver.findElement(By.xpath((original2))).isDisplayed());
		logger.info("Selected contact number is displayed" + " on Manage Contact page" + "\n");
		System.out.println("Selected contact number is displayed" + " on Manage Contact page" + "\n");
	}

	@Then("User is able to see Export Selected on black bar")
	public void User_is_able_to_see_Export_Selected_on_black_bar() {

		String original = ec.getObjects("ManagecontactsExportselected");

		WaitClass.webDriverWait(original);
		assertTrue((driver.findElement(By.xpath(ec.getObjects("ManagecontactsExportselected"))).isDisplayed()));

		logger.info("Export Selected is present" + " on Manage Contact filters" + "\n");
		System.out.println("Export Selected is present" + " on Manage Contact filters" + "\n");
	}

	@Then("Verify If user able to view supplier Contacts screen")
	public void Verify_If_user_able_to_view_supplier_Contacts_screen() throws InterruptedException {

		String original = ec.getObjects("suppliercontactstab");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath((original))).click();
		Thread.sleep(1000);
		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath((original))).isDisplayed());
//		String original1 = ec.getObjects("Reviewandpublishsupplier");	
//		WaitClass.webDriverWait(original1);
		// driver.findElement(By.xpath((original1))).click();
//		Thread.sleep(1000);
//		WaitClass.webDriverWait(original);
		// assertTrue(!(driver.findElement(By.xpath((original1))).isEnabled()));
		logger.info("Contacts tab" + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Contacts tab" + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Verify if user able to view  add or modify the contact information")
	public void Verify_if_user_able_to_view_add_or_modify_the_contact_information() {

		String original = ec.getObjects("viewcontactsupplier");

		WaitClass.webDriverWait(original);
		driver.findElement(By.xpath((original))).click();
		driver.switchTo().activeElement();
		String original1 = ec.getObjects("updatecontactsupplier");
		WaitClass.webDriverWait(original1);
		assertTrue(driver.findElement(By.xpath((original1))).isDisplayed());
		String original2 = ec.getObjects("suppliercontactsecondaryph");
		WaitClass.webDriverWait(original2);
		assertTrue(driver.findElement(By.xpath((original2))).isDisplayed());
		String original3 = ec.getObjects("suppliercontactalternateemail");
		WaitClass.webDriverWait(original3);
		assertTrue(driver.findElement(By.xpath((original3))).isDisplayed());
		String original4 = ec.getObjects("suppliercontactupdatelocation");
		WaitClass.webDriverWait(original4);
		assertTrue(driver.findElement(By.xpath((original4))).isDisplayed());
		driver.findElement(By.xpath((original4))).click();
		logger.info("Contacts view and modify secondary phone, alternate email location" + " "
				+ " on supplier Dashboard page" + "\n");
		System.out.println("Contacts view and modify secondary phone, alternate email location" + " "
				+ " on supplier Dashboard page" + "\n");
	}

	@Then("Click on overflow button on supplier contact")
	public void Click_on_overflow_button_on_supplier_contact() throws InterruptedException {

		String original = ec.getObjects("suppliercontactupdatedelete");

		WaitClass.webDriverWait(original);
		Thread.sleep(1000);
		driver.findElement(By.xpath((original))).click();

		logger.info("Click on overflow button" + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Click on overflow button" + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Click on Cancel Update")
	public void Click_on_Cancel_Update() throws InterruptedException {

		String original = ec.getObjects("updatecancel");

		WaitClass.webDriverWait(original);
		Thread.sleep(1000);
		driver.findElement(By.xpath((original))).click();

		logger.info("Click on updatecancel button" + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Click on updatecancel button" + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Verify update and delete option on supplier contact")
	public void Verify_update_and_delete_option_on_supplier_contact() {

		String original = ec.getObjects("supplierupdatecontact");

		WaitClass.webDriverWait(original);
		assertTrue(driver.findElement(By.xpath((original))).isDisplayed());

		String original1 = ec.getObjects("supplierdeletecontact");

		WaitClass.webDriverWait(original1);
		assertTrue(driver.findElement(By.xpath((original1))).isDisplayed());

		logger.info("Verify update and cancel option" + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Verify update and cancel option" + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Verify delete option on supplier contact {string}")
	public void Verify_delete_option_on_supplier_contact(String string) throws InterruptedException {

		// String original = ec.getObjects("suppliercontactupdatedelete");
		// String formatXPATH1 = String.format(original);
		driver.findElement(By.xpath(ec.getObjects("suppliercontactsearch"))).sendKeys(string);
		driver.findElement(By.xpath(ec.getObjects("suppliercontactsearch"))).sendKeys(Keys.RETURN);
		System.out.println(" Entered required supplier name to modify or delete");
		Thread.sleep(1000);

//		Actions action = new Actions(driver);
		// WebElement	element = 
		driver.findElement(By.xpath(ec.getObjects("ellipsetomodifycontact")));
//		action.moveToElement(element).build().perform();
//		action.click(element);
		driver.findElement(By.xpath(ec.getObjects("ellipsetomodifycontact"))).click();
		System.out.println("Clicked on ellipse to delete or modify");
		Thread.sleep(1000);

		driver.findElement(By.xpath(("supplierdeletecontact"))).click();
		logger.info("Verify Delete option" + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Verify Delete option" + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Verify {string} button on Supplier contact page")
	public void Verify_Elements_On_Supplier_Contactpage(String string) {

		String original1 = ec.getObjects(string);

		WaitClass.webDriverWait(original1);
		assertTrue(driver.findElement(By.xpath((original1))).isDisplayed());

		logger.info(string + " is displayed" + " on supplier Contact page" + "\n");
		System.out.println(string + " is displayed" + " on supplier Contact page" + "\n");
	}

	@Then("Click on {string} button on supplier contact page")
	public void Click_on_Elements_On_Supplier_Contactpage(String string) {

		String original1 = ec.getObjects(string);

		WaitClass.webDriverWait(original1);
		driver.findElement(By.xpath((original1))).click();
		logger.info(string + " is Clicked" + " on supplier Contact page" + "\n");
		System.out.println(string + " is Clicked" + " on supplier Contact page" + "\n");
	}

	@Then("Enter {string} on supplier contact page {string}")
	public void Enter_on_Elements_On_Supplier_Contactpage(String in, String stg1) throws InterruptedException {

		String original1 = ec.getObjects(in);
		WebElement targetElement = driver.findElement(By.xpath(original1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);
		WaitClass.webDriverWait(original1);
		//driver.findElement(By.xpath(ec.getObjects(original1))).sendKeys(Keys.CONTROL + "a");
		//driver.findElement(By.xpath(ec.getObjects(original1))).clear();
		driver.findElement(By.xpath((original1))).sendKeys(stg1);
		logger.info(stg1 + " is entered" + " on supplier Contact page" + "\n");
		System.out.println(stg1 + " is entered" + " on supplier Contact page" + "\n");
	}

	@Then("Verify Mandatory fields on supplier update contact")
	public void Verify_Mandatory_fields_on_supplier_update_contact() throws InterruptedException {

		String original1 = ec.getObjects("suppliercontactsave");

		WaitClass.webDriverWait(original1);
		driver.findElement(By.xpath((original1))).click();
		Thread.sleep(1000);

		String original2 = ec.getObjects("supplierupdatetitleerror");

		WaitClass.webDriverWait(original2);
		assertTrue(driver.findElement(By.xpath((original2))).isDisplayed());

		String original3 = ec.getObjects("supplierupdateprimaryphoneerror");

		WaitClass.webDriverWait(original3);
		assertTrue(driver.findElement(By.xpath((original3))).isDisplayed());

		logger.info("Mandatory error for title and primary phone are displayed" + " on supplier Contact page" + "\n");
		System.out.println("Mandatory error for title and primary phone are displayed" + " on supplier Contact page" + "\n");
	}

	@Then("Click on the Lenovo record")
	public void click_on_the_Lenovo_record() {

		String original = ec.getObjects("buyers_Lenovo_status_var1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Lenovo record" + "\n");
		System.out.println("Clicked on Lenovo record" + "\n");
	}

	@Then("Click Acceptbutton for multibuyer")
	public void Click_Acceptbutton_for_multibuyer() {

		String original = ec.getObjects("lenovo_Acceptbutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Accept" + "\n");
		System.out.println("Clicked on Accept " + "\n");
	}

/////RDwritings/////

	@Then("Click {string} find Id")
	public void click_find_Id(String string) throws Throwable {
		Thread.sleep(3000);

		String original = ec.getObjects("find_Id1") + string + "')]" + ec.getObjects("find_Id2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement Element = driver.findElement(By.xpath(original));

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(3000);

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
	}

	@Then("Select {string} on Starting month of the fiscal year field")
	public void Select_on_Starting_month_of_the_fiscal_year_field(String string) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("fiscal_month");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);

///Month picker
		String original1 = ec.getObjects("month_picker") + string + "')]";
		Thread.sleep(3000);
		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);

		driver.findElement(By.xpath(formatXPATH1)).click();

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);

		logger.info("Clicked on " + "'" + string + "'" + " month" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " month" + "\n");

	}

	@Then("Click on {string} button on leftmenu")
	public void click_on_something_button_on_leftmenu(String string) throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("save_next") + string + "']";
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");
		Thread.sleep(2000);

	}

	@Then("Enter Contact {string} on bank account contact window")
	public void enter_Contact_on_bank_account_contact_window(String string) throws Throwable {

		String original = ec.getObjects("bank_contact") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered Contact" + string + "field" + "\n");
		System.out.println("Entered Contact" + string + "field" + "\n");

	}

	@Then("Enter Contact {string} on bank account contact window page")
	public void enter_Contact_on_bank_account_contact_window_page(String string) throws Throwable {

		String original = ec.getObjects("bank_contact") + string + "']";
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		String email = RandomStringUtils.randomAlphanumeric(3);
		String Email = "ramauseribm" + email + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);
		logger.info("Entered Email Contact" + string + "field" + "\n");
		System.out.println("Entered Email Contact" + string + "field" + "\n");

	}

	@Then("click on save button on bank account contact window")
	public void click_on_save_button_on_bank_account_contact_window() throws Throwable {

		String original = ec.getObjects("save_contwindow");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("clicked on save button" + "\n");
		System.out.println("clicked on save button" + "\n");

	}

	@Then("Click on {string} button on page")
	public void Click_on_button_on_page(String string) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("Publish_button");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

	@Then("Enter {string} as {string} on management window")
	public void enter_as_on_management_window(String string, String input) throws Throwable {

		String original = ec.getObjects("manage_contact") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		// String email = RandomStringUtils.randomAlphanumeric(3);
		// String Email = "ramauseribm" + email + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(input);

		logger.info("Entered Contact" + string + "as" + input + "field" + "\n");
		System.out.println("Entered Contact" + string + "as" + input + "field" + "\n");

	}

	@Then("Click on clear input button on manage contacts")
	public void Click_on_clear_input_button_on_manage_contacts() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("clear_searchinput");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

	@Then("click on manage contact column {string}")
	public void click_on_manage_contact_column_Dashboard_page(String string) {

		String original1 = ec.getObjects(string);
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(ec.getObjects(string))).click();
		logger.info(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println(string + " visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("verify the toast message on exporting contacts {string}")
	public void verify_the_toast_message_exporting_contacts(String string) {
		String original = ec.getObjects("managecont_toast");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Shows Toast message " + " " + string + " " + "on Action center page" + "\n");
		System.out.println("Shows Toast message  " + " " + string + " " + "on Action center page" + "\n");
	}

	@Then("Show Manage Contact tab on Dashboard page on supplier {string}")
	public void Show_Manage_Contact_tab_on_Dashboard_page_on_supplier(String string) throws InterruptedException {

		String original1 = ec.getObjects("supplierdashboardcont");
		String formatXPATH1 = String.format(original1);
		Thread.sleep(10000);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("supplierdashboardcont"))).isDisplayed(), string);
		driver.findElement(By.xpath(ec.getObjects("supplierdashboardcont"))).click();
		Thread.sleep(10000);
		logger.info("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("managecontacts tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify {string} manage contact column")
	public void Show_Verify_manage_contact_column(String inp) {

		String original = ec.getObjects("supcntcol");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("supcntcol"))).isDisplayed(), inp);
		logger.info(inp + " visible " + " " + inp + " " + " on Dashboard page" + "\n");
		System.out.println(inp + " visible " + " " + inp + " " + " on Dashboard page" + "\n");
	}

	@Then("Verify supplier is able to Update supplier contact {string}")
	public void Verify_supplier_is_able_to_Update_supplier_contact(String string) throws InterruptedException {

		driver.findElement(By.xpath(ec.getObjects("suppliercontactsearch"))).sendKeys(string);
		driver.findElement(By.xpath(ec.getObjects("suppliercontactsearch"))).sendKeys(Keys.RETURN);
		System.out.println(" Entered required supplier name to update");
		Thread.sleep(1000);
		driver.findElement(By.xpath(ec.getObjects("ellipsetomodifycontact"))).click();
		System.out.println("Clicked on ellipse to Update");
		Thread.sleep(1000);

		logger.info("Verify and Clicked on Update" + "\n");
		System.out.println("Verify and Clicked on Update" + "\n");
	}

	@Then("Enter {string} as {string} on update contact screen")
	public void enter_as_on_update_contact_screen(String ring, String input) throws Throwable {

		String original = ec.getObjects("bank_contact") + ring + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(original)).sendKeys(Keys.DELETE);

		
		driver.findElement(By.xpath(original)).sendKeys(input);

		logger.info("Entered Contact" + ring + "as" + input + "field" + "\n");
		System.out.println("Entered Contact" + ring + "as" + input + "field" + "\n");

	}

	@Then("Verify supplier upon clicking on row it shouold show Update supplier contact")
	public void Verify_supplier_upon_clicking_on_row_it_shouold_show_Update_supplier_contact()
			throws InterruptedException {

		driver.findElement(By.xpath(ec.getObjects("clickonrow"))).click();
		System.out.println("Clicked on row to update contact");
		Thread.sleep(1000);
	}
	
	
		
	@Then("Verify {string} contact type")
	public void verify_contact_type(String name) {

		
		String formatXPATH1 = ec.getObjects("contacttyp1");
		
		String str[] = { name };
		formatXPATH1 = formatXPATH1 + str[0] + "']";
		System.out.println(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		String str1 = driver.findElement(By.xpath(formatXPATH1)).getText();

		assertTrue(str1.equals(str[0]));
	
	}
	
	
	
	@Then("Verify as a buyer is able to view right drawer upon clicking on row")
	public void Verify_as_a_buyer_is_able_to_view_right_drawer_upon_clicking_on_row() {

		String original = ec.getObjects("contact_row");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on contacts row" + "\n");
		System.out.println("Clicked on contacts row" + "\n");
	}
	
	@Then("Verify the first name content in the right drawer {string}")
public void verify_the_first_name_content_in_the_right_drawer(String name) {

		
		String formatXPATH1 = ec.getObjects("contacttable");
		
		System.out.println(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		String str1 = driver.findElement(By.xpath(formatXPATH1)).getText();
		System.out.println(str1);
		
		String original1 = ec.getObjects("//p[@class='bx--modal-header__label bx--type-delta']");
		
		String formatXPATH = String.format(original1);
		driver.findElement(By.xpath(formatXPATH)).click();
		String str2 = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(str2);

		assertTrue(str1.equals(str2));
	
	}
	
	@Then("Verify the email in the right drawer {string}")
	public void verify_the_email_content_in_the_right_drawer(String name) {

			
			String formatXPATH1 = ec.getObjects("contacttable");
			
			System.out.println(formatXPATH1);
			assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

			String str1 = driver.findElement(By.xpath(formatXPATH1)).getText();
			System.out.println(str1);
			
			String original1 = ec.getObjects("//p[@class='bx--modal-header__label bx--type-delta']");
			
			String formatXPATH = String.format(original1);
			driver.findElement(By.xpath(formatXPATH)).click();
			String str2 = driver.findElement(By.xpath(formatXPATH)).getText();
			System.out.println(str2);

			assertTrue(str1.equals(str2));
		
		}
	
	@Then("Click on Resend button on leftmenu")
	public void click_on_Resend_button_on_leftmenu() throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("resend_invite");
		String formatXPATH = String.format(original);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "resendinvite" + " button" + "\n");
		System.out.println("Clicked on " + "resendinvite" +" button" + "\n");
		Thread.sleep(2000);

	}
	
	@Then("verify the {string} button is enabled")
	public void verify_the_button_is_enabled(String string) {
		String original = ec.getObjects("resend_invite");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("resend_invite"))).isDisplayed());

		logger.info(string + "button is visible " + "\n");
		System.out.println(string + "button is visible " + "\n");
	}	
	
	
	@Then("^Click on Join Now Link in maildrop$")
	public void click_on_join_now_link_in_maildrop() throws Throwable {

		
        Thread.sleep(2000);
        driver.switchTo().frame(0);
		
		driver.findElement(By.xpath(ec.getObjects("mailinator_joinNow_link1"))).click();
		
		Thread.sleep(2000);
		
        logger.info("Clicked on Join Now button" + "\n");
        System.out.println("Clicked on Join Now button" + "\n");
		
		driver.switchTo().parentFrame();
		driver.switchTo().defaultContent();
		
		driver.switchTo().activeElement();
	}
	
	@Then("verify the {string} questionnaire is displayed")
	public void verify_the_questionnaire_is_displayed(String string) {
		String original = ec.getObjects("question_RadioButton_var1") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info(string + "questionnaire is visible " + "\n");
		System.out.println(string + "questionnaire is visible " + "\n");
	}	
	
	@Then("Verify {string} tab is displayed")
	public void verify_tab_is_displayed(String abc) throws Throwable {
		
		
		//String original = ec.getObjects(abc);
		//String formatXPATH = String.format(original);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects(abc))).isDisplayed());

		logger.info( abc + "isdisplayed" + "\n");

		System.out.println( abc + "isdisplayed" + "\n");
	}
	
	@Then("Click on {string} tab on conatcslocation screen")
	public void click_on_tab_on_conatcslocation_screene(String abc) throws Throwable {
		//String original = ec.getObjects(abc);
		//String formatXPATH = String.format(original);
		
//		String original = ec.getObjects("contloc_tab") + abc + "']";
		
	driver.findElement(By.xpath(ec.getObjects(abc))).click();
		logger.info("Clicked on " + abc + " on Login page" + "\n");
		System.out.println("Clicked on " + abc + " on Login page" + "\n");
	}

	
	@Then("click on the {string} tab")
	public void click_on_the_tab(String xyz) {
		String original = ec.getObjects("buttons_normalize") + xyz + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("clicked on the " + xyz + "\n");
		System.out.println("clicked on the " + xyz + "\n");
	}
	
	@Then("Click on Delete button on location screen")
	public void click_on_delete_button_on_location_screen() throws Throwable {
		Thread.sleep(3000);

		String original1 = ec.getObjects("Delete_bttn");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		Thread.sleep(3000);

		logger.info("Clicked on Delete button on Location Card" + "\n");
		System.out.println("Clicked on Delete button on Location Card" + "\n");

	}
	@Then("Click on {string} button on popup location Modal")
	public void click_on_button_on_popup_location_Modal(String abc) throws Throwable
	{
		String original = ec.getObjects("btn1") +abc+ ec.getObjects("btn2") ;		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on" + abc + "button on location modal"+"\n");
        System.out.println("Clicked on" + abc + "button on location Contact modal"+"\n");
        
	}
	
	@Then("Click on accept status")
	public void Click_on_accept_status() {

		String original1 = ec.getObjects("click_pendingquest");
		//click_accinvite
		
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("click_pendingquest"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("click_pendingquest"))).click();
		
	}
	
	
	@Then("Click on customerrelatioship contact")
	public void Click_on_customerrelatioship_contact() {

		String original1 = ec.getObjects("customerrelaship");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(ec.getObjects("customerrelaship"))).isDisplayed());
		driver.findElement(By.xpath(ec.getObjects("customerrelaship"))).click();
		
	}
	
	@Then("Click on Multiselect dropdown contact")
	public void Click_on_Multiselect_dropdown_contact() throws InterruptedException {

		String original1 = ec.getObjects("team_searchand_select");
		String formatXPATH1 = String.format(original1);
		
		Actions actions = new Actions(driver);
						
		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(ec.getObjects("team_searchand_select"))).click();
		Thread.sleep(3000);	
		System.out.println("Clicked ondropdown");
		driver.findElement(By.xpath(ec.getObjects("team_searchand_select"))).sendKeys("rosy");
		
		actions.moveToElement(driver.findElement(By.xpath(ec.getObjects("dropselect")))).click().build().perform();
		System.out.println("selected contact");
		Thread.sleep(3000);		
		
		
	}
	
	@Then("select the {int} option in dropdown")
	public void select_the_option_in_dropdown(int a) {

		//String original1 = ec.getObjects("selecctopt") + a + ec.getObjects("selecctopt1");
		//String formatXPATH1 = String.format(original1);

		//WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(ec.getObjects("selecc"))).click();
		
	}
	
	@Then("Click on save option on crc")
	public void Click_on_save_option_on_crc() {

		String original1 = ec.getObjects("savebuton_crc");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);
		driver.findElement(By.xpath(ec.getObjects("savebuton_crc"))).click();
		System.out.println("Clicked on save button");
		
	}
	@Then("Update CRC")
	public void Update_crc() {

		String original1 = ec.getObjects("cancelcrc");
		String formatXPATH1 = String.format(original1);
		Actions actions = new Actions(driver);

		WaitClass.webDriverWait(formatXPATH1);
		//driver.findElement(By.xpath(ec.getObjects(original1))).click();
		actions.moveToElement(driver.findElement(By.xpath(ec.getObjects("cancelcrc")))).click().build().perform();
		System.out.println("Clicked on cancel button");
					
			}
	
	@Then("Enter an Email on Invite a user registration modal {string}")
	public void enter_Email_on_Invite_a_user_registration_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		WaitClass.webDriverWait(original);

		
		String Email = string + "@maildrop.cc";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
		System.out.println(
				"Entered Admin email " + "'" + Email + "'" + " in email field on Invite a New User Modal" + "\n");
	}

	@Then("Enter a Confirmation Email on Invite a user registration modal {string}")
	public void enter_Confirmation_Email_on_Invite_a_user_registration_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		WaitClass.webDriverWait(original);

		String Email = string  + "@maildrop.cc";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
		System.out.println("Entered Email in " + "'" + Email + "'"
				+ " in Confirme Email Addess field on Invite a New User Modal" + "\n");
	}
	
	@Then("Enter {string} on the supplier contact page {string}")
	public void Enter_on_Elements_On_the_Supplier_Contactpage(String in, String stg1) throws InterruptedException {

		String original1 = ec.getObjects(in);
		WebElement targetElement = driver.findElement(By.xpath(original1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);
		WaitClass.webDriverWait(original1);
		//driver.findElement(By.xpath(ec.getObjects(original1))).sendKeys(Keys.CONTROL + "a");
		//driver.findElement(By.xpath(ec.getObjects(original1))).clear();
		mis.addTimeStamp();

		String input = stg1 + mis.getTimeStamp() + "@maildrop.cc";
		 
		driver.findElement(By.xpath((original1))).sendKeys(input);
		logger.info(stg1 + " is entered" + " on supplier Contact page" + "\n");
		System.out.println(stg1 + " is entered" + " on supplier Contact page" + "\n");
	}
	
	@Then("Enter {string} as the {string} on update contact screen")
	public void enter_as_the_on_update_contact_screen(String ring, String opt) throws Throwable {

		String original = ec.getObjects("bank_contact") + ring + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(original)).sendKeys(Keys.DELETE);
		mis.addTimeStamp();

		String input = opt + mis.getTimeStamp() +"@maildrop.cc";
		
		driver.findElement(By.xpath(original)).sendKeys(input);

		logger.info("Entered Contact" + ring + "as" + input + "field" + "\n");
		System.out.println("Entered Contact" + ring + "as" + input + "field" + "\n");

	}

	@And("Enter {string} on supplier contact page")
	public void enterOnSupplierContactPage(String in) throws InterruptedException {

		String original1 = ec.getObjects(in);
		WebElement targetElement = driver.findElement(By.xpath(original1));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(true);", targetElement);
		Thread.sleep(3000);
		WaitClass.webDriverWait(original1);
		String finalInputStringUtils= Utils.ramndomStringGenerator(7);
		driver.findElement(By.xpath((original1))).sendKeys(finalInputStringUtils +"@mailinator.com");
		logger.info(finalInputStringUtils + " is entered" + " on supplier Contact page" + "\n");
		System.out.println(finalInputStringUtils + " is entered" + " on supplier Contact page" + "\n");

	}
	@Then("Select Accounts Receivable Contact from dropdown")
	public void select_in_dropdown() throws Throwable {

		String original = ec.getObjects("contact_dropdown");
		String formatXPATH = String.format(original);
		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
		Thread.sleep(3000);
		dropdown.selectByVisibleText("tes yuu - ceo");
	}

}

//	@Then("Click on tooltip hover on page")
//	public void Click_on_tooltip_hover_on_page(String string) throws Throwable {
//		Thread.sleep(3000);
//		
//		// Locating the Main Menu (Parent element)
//		WebElement mainMenu = driver.findElement(By.xpath("invite"));
//
//		//Instantiating Actions class
//		Actions actions = new Actions(driver);
//
//		//Hovering on main menu
//		actions.moveToElement(mainMenu);
//		Thread.sleep(3000);
//		//build()- used to compile all the actions into a single step 
//		actions.click().build().perform();
//}}