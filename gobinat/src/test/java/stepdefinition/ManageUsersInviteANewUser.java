package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.List;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import junit.framework.Assert;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import org.openqa.selenium.interactions.Actions;

public class ManageUsersInviteANewUser extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ManageUsersInviteANewUser.class);
	Actions action = new Actions(driver);
	public Miscellaneous mis = new Miscellaneous();
	public static String inviteEmail = null;
	public String currentMonth=null;
	public String inviteSameEmail = null;
	@Then("Click on Edit Permissions tab")
	public void click_on_Edit_Permissions_tab() throws Throwable {
		
		Thread.sleep(2000);
		String original = ec.getObjects("manageuser_editPermission_tab");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Edit Permissions tab" + "\n");
		System.out.println("Clicked on Edit Permissions tab" + "\n");

	}

	
	@Then("Verify the required roles is added in Edit Permissions tab {string}")
	public void verify_the_required_roles_is_added_in_Edit_Permissions_tab(String string) {

		String original = ec.getObjects("manageuser_addRole_variable") + string + "')]";
		String formatXPATH = String.format(original);

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.findElement(By.xpath(ec.getObjects("manageuser_roleName_input"))).sendKeys(string);

			logger.info("Entered " + "'" + string + "'" + " in Role Name field" + "\n");
			System.out.println("Entered " + "'" + string + "'" + " in Role Name field" + "\n");
			
			String roleCopy;
			if (string.equalsIgnoreCase("Trust & Compliance Automation (Do not Edit)")) {
				roleCopy = "Trust & Compliance";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");

			}
			else if (string.equalsIgnoreCase("Read Only Admin Automation (Do not Edit)")) {
				roleCopy = "Read Only Admin";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			else if(string.equalsIgnoreCase("Procurement Manager Automation (Do not Edit)"))
			{
				 roleCopy = "Procurement Manager";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			
			else if(string.equalsIgnoreCase("Ombudsman Automation (Do not Edit)"))
			{
				 roleCopy = "Ombudsman";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			else if(string.equalsIgnoreCase("Internal Buyer Automation (Do not Edit)"))
			{
				 roleCopy = "Internal Buyer";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			else if(string.equalsIgnoreCase("Export Regulations Automation (Do not Edit)"))
			{
				 roleCopy = "Export Regulations";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			else if(string.equalsIgnoreCase("EDI Manager Automation (Do not Edit))"))
			{
				 roleCopy = "EDI Manager";
				Select copyRole = new Select(
						driver.findElement(By.xpath(ec.getObjects("manageuser_CopyFrom_drpdown"))));
				copyRole.selectByVisibleText(roleCopy);
				
				logger.info("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
				System.out.println("Selected " + "'" + roleCopy + "'" + " from Copy From dropdown" + "\n");
			}
			
			driver.findElement(By.xpath(ec.getObjects("manageuser_CreateRole_btn"))).click();

			logger.info("Clicked on Create Role button" + "\n");
			System.out.println("Clicked on Create Role button" + "\n");

		}

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("'" + string + "'" + " role is added in Edit Permissions Tab" + "\n");
		System.out.println("'" + string + "'" + " role is added in Edit Permissions Tab" + "\n");
	}

	@Then("Click on Users tab in Manage users page")
	public void click_on_Users_tab_in_Manage_users_page() {

		String original = ec.getObjects("manageuser_users_tab");

		WaitClass.webDriverWait(original);
		
		driver.findElement(By.xpath(original)).click();
		
		logger.info("Clicked on Users tab in Manage Users Page" + "\n");
		System.out.println("Clicked on Users tab in Manage Users Page" + "\n");
	}
	
	@Then("Click on Close button on Invite a New User Modal")
	public void click_on_Close_button_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserclosebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(3000);
		logger.info("Click on Close button on Invite a New User Modal" + "\n");
		System.out.println("Click on Close button on Invite a New User Modal" + "\n");
	}

	@Then("Click on Invite a New User button on Manage Users page")
	public void click_on_Invite_a_New_User_button_on_Manage_Users_page() throws Throwable {
		String original = ec.getObjects("inviteanewuserbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Invite a New User button on Manage Users page" + "\n");
		System.out.println("Click on Invite a New User button  on Manage Users page" + "\n");
	}

	@Then("Show Invite a New User title on modal {string}")
	public void show_Invite_a_New_User_title_on_modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusertitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.switchTo().activeElement();

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title on" + " " + string + " " + "on Invite a New User modal" + "\n");
		System.out.println("Shows title on " + " " + string + " " + "on Invite a New User modal" + "\n");
	}

	@Then("Show Close button on Invite a New User Modal {string}")
	public void show_Close_button_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserclosebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Close button " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Show Close button " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Close button clickable on Invite a New User Modal {string}")
	public void close_button_clickable_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserclosebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Close button clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Close button clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Show Send Invite button on Invite a New User Modal {string}")
	public void show_Send_Invite_button_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Send Invite button " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Show Send Invite button " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Send Invite button clickable on Invite a New User Modal {string}")
	public void send_Invite_button_clickable_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Send Invite button clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Send Invite button clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Show Close Icon on Invite a New User Modal {string}")
	public void show_Close_Icon_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show Close Icon " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Show Close Icon " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Close Icon clickable on Invite a New User Modal {string}")
	public void close_Icon_clickable_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Close Icon clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Close Icon clickable " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Click on Send Invite button on Invite a New User Modal")
	public void click_on_Send_Invite_button_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewusersendinvitebtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Send Invite button on Invite a New User Modal" + "\n");
		System.out.println("Click on Send Invite button on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at First Name field {string}")
	public void show_an_error_message_at_First_Name_field(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstnameerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at First Name field " + " " + string + " " + " on Invite a New User Modal"
				+ "\n");
		System.out.println("Show an error message at First Name field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Last Name field {string}")
	public void show_an_error_message_at_Last_Name_field(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserlastnameerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Last Name field " + " " + string + " " + " on Invite a New User Modal"
				+ "\n");
		System.out.println("Show an error message at Last Name field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Email field {string}")
	public void show_an_error_message_at_Email_field(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremailerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println(
				"Show an error message at Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Confirmation Email field {string}")
	public void show_an_error_message_at_Confirmation_Email_field(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfemailerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Confirmation Email field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
		System.out.println("Show an error message at Confirmation Email field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Role field {string}")
	public void show_an_error_message_at_Role_field(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserroleerrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Role field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println(
				"Show an error message at Role field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Enter First Name on Invite a New User Modal {string}")
	public void enter_First_Name_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter text in First Name field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in First Name field " + " " + string + " " + " on Invite a New User Modal" + "\n");

	}

	@Then("Enter Last Name on Invite a New User Modal {string}")
	public void enter_Last_Name_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserlastname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter text in Last Name field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out
				.println("Enter text in Last Name field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Enter Email on Invite a New User Modal {string}")
	public void enter_Email_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		String formatXPATH = String.format(original);
		//inviteEmail = string+"@maildrop.cc";
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Enter text in Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Enter Confirmation Email on Invite a New User Modal {string}")
	public void enter_Confirmation_Email_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		//inviteEmail = string;
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info(
				"Enter text in Confirmation Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println(
				"Enter text in Confirmation Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at First Name field withspecialchars {string}")
	public void show_an_error_message_at_First_Name_field_withspecialchars(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstnameerrormsgwithinvaliddata");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at First Name field " + " " + string + " " + " on Invite a New User Modal"
				+ "\n");
		System.out.println("Show an error message at Fist Name field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Last Name field withspecialchars {string}")
	public void show_an_error_message_at_Last_Name_field_withspecialchars(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserfirstnameerrormsgwithinvaliddata");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Last Name field " + " " + string + " " + " on Invite a New User Modal"
				+ "\n");
		System.out.println("Show an error message at Last Name field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Email field withspecialcharacters {string}")
	public void show_an_error_message_at_Email_field_withspecialcharacters(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuseremailwithinvaliddata");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info(
				"Show an error message at Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
		System.out.println(
				"Show an error message at Email field " + " " + string + " " + " on Invite a New User Modal" + "\n");
	}

	@Then("Enter Space in Email on Invite a New User Modal")
	public void enter_Space_in_Email_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(Keys.SPACE);

		logger.info("Enter space in Email field on Invite a New User Modal" + "\n");
		System.out.println("Enter space in Email field on Invite a New User Modal" + "\n");
	}

	@Then("Show an error message at Confirmation Email field withmismatchdata {string}")
	public void show_an_error_message_at_Confirmation_Email_field_withmismatchdata(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserconfemailwithinvaliddata");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Confirmation Email field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
		System.out.println("Show an error message at Confirmation Email field " + " " + string + " "
				+ " on Invite a New User Modal" + "\n");
	}

	@Then("Select a Role from the dropdown on Invite a New User Modal {string}")
	public void select_a_Role_from_the_dropdown_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserrole");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select role = new Select(driver.findElement(By.xpath(original)));

		role.selectByVisibleText(string);

		logger.info("Select" + " " + string + "role from the dropdown on Invite a New User Modal" + "\n");
		System.out.println("Select " + " " + string + " role from the dropdown on Invite a New User Modal" + "\n");
	}

	@Then("^Select a Language from the dropdown on Invite a New User Modal \"([^\"]*)\"$")
    public void select_a_language_from_the_dropdown_on_invite_a_new_user_modal_something(String string) throws Throwable {
        String original = ec.getObjects("inviteuserlanguage");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select language = new Select(driver.findElement(By.xpath(original)));

		language.selectByVisibleText(string);

		logger.info("Select" + " " + string + "role from the dropdown on Invite a New User Modal" + "\n");
		System.out.println("Select " + " " + string + " role from the dropdown on Invite a New User Modal" + "\n");
    }

	@Then("Select domain from the dropdown on Invite a New User Modal {string}")
	public void select_domain_from_the_dropdown_on_Invite_a_New_User_Modal(String string) throws Throwable {
		String original = ec.getObjects("inviteanewuserdomain");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select role = new Select(driver.findElement(By.xpath(original)));

		role.selectByVisibleText(string);

		logger.info("Select" + " " + string + "domain from the dropdown on Invite a New User Modal" + "\n");
		System.out.println("Select" + " " + string + "domain from the dropdown on Invite a New User Modal" + "\n");
	}
	
	//additional methods
	@Then("Verify page header {string} under Manage Users")
	public void remainder_PageTitle(String label) {
		String original = ec.getObjects("pagTitle_Manage_user");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));

		logger.info("Showing page title " + label + "\n");
		System.out.println("Showing page title " + label + "\n");

	}
	@And("Verify the page title description {string} under Manage Users")
	public void remainder_description_Manage_user(String description) {

		String original = ec.getObjects("tnc_checkbox_var1") + description + ec.getObjects("btn2");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(description));

		logger.info("Verified the page title description " + description + "\n");
		System.out.println("Verified the page title description " + description + "\n");

	}
	@Then("Show {string} label for {string}")
	public void show_label_in(String Label, String SubCat) {

		String original = ec.getObjects("language");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Verify Manage teams input filed is visible")
	public void input_CC_visible() {

		String original = ec.getObjects("cc_role_input");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified Manage teams input filed is visible " + "\n");
		System.out.println("Verified Manage teams input filed is visible" + "\n");
	}
	@Then("Show tooltip {string} for the label {string}")
	public void show_tooltip_teams(String tooltip, String Label) throws InterruptedException {

		String original = ec.getObjects("teams_tooltip1") + Label + ec.getObjects("teams_tooltip2");
		String original2 = ec.getObjects("teams_tooltip1") + Label + ec.getObjects("teams_tooltip2")+ec.getObjects("teams_tooltip3");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(original2);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		WaitClass.clickableWait(formatXPATH2);
		assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(tooltip));
		//driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified '" + Label + "' tooltip: " + tooltip + "\n");
		System.out.println("Verified '" + Label + "' tooltip: " + tooltip + "\n");

	}
	@Then("Show error message {string} under {string} input field")
	public void error_msg_req(String error, String label) {

		String original = ec.getObjects("teams_tooltip1") + label + ec.getObjects("error_req1");
		String formatXPATH = String.format(original);
		Assert.assertEquals(error, driver.findElement(By.xpath(formatXPATH)).getText().trim());
		// assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + error + " is displayed under " + label + "\n");
		System.out.println("Verified " + error + " is displayed under " + label + "\n");
	}
	@Then("Verify status {string} for invited user")
	public void show_tooltip(String status) {

		String original = ec.getObjects("invite_Pending_usr");
		String formatXPATH = String.format(original);
		String original2 = ec.getObjects("invite_pending_status");
		String formatXPATH2 = String.format(original2);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(inviteEmail.contains(driver.findElement(By.xpath(formatXPATH)).getText().trim()));
		logger.info("Showing " + inviteEmail + "user in Manage Users " +"\n");
		System.out.println("Showing " + inviteEmail + " user in Manage Users  "  + "\n");
		
		assertTrue(status.contains(driver.findElement(By.xpath(formatXPATH2)).getText().trim()));
		logger.info("Showing " + status + " Status for invited user "  + "\n");
		System.out.println("Showing " + status + " Status for invited user " + "\n");

	}
	@Then("Enter Random Email on Invite a New User Modal")
	public void enter_Random_Email_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		String formatXPATH = String.format(original);
		inviteEmail = RandomStringUtils.randomAlphabetic(10)+"@maildrop.cc";
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(inviteEmail);

		logger.info("Enter text in Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
	}
	@Then("Enter Confirmation Email as same on Invite a New User Modal")
	public void enter_Random_Email_same_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewuserconfirmationemail");
		String formatXPATH = String.format(original);
		//inviteEmail = RandomStringUtils.randomAlphabetic(8);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(inviteEmail);

		logger.info("Enter text in Confirm Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Enter text in Confirm Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
	}
	@Then("Show Confirmation message on {string} Page {string}")
	public void show_Confirmation_message_on_Manage_Users_Page(String page,String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Toast = string + inviteEmail;
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Toast));
		Thread.sleep(3000);

		logger.info("Show confirmaiton message " + "'" + Toast + "'" + " on "+page+"page" + "\n");
		System.out.println("Show confirmaiton message " + "'" + Toast + "'" + " on "+page+"page" + "\n");
	}
	@Then("Verify status {string} for invited user in manage users")
	public void show_status_on_Manage_Users_Page(String status) throws Throwable {
		String original = ec.getObjects("invite_pending_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(status));
		Thread.sleep(3000);

		logger.info("Showing " + status + " on Manage users page" + "\n");
		System.out.println("Showing "  + status + " on Manage users" + "\n");
	}
	@Then("Verify an email received in supplier maildrop Inbox with subject {string}")
	public void verify_an_email_received_in_supplier_inbox_with_subject_maildrop(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("maildrop_input");
		String original1 = ec.getObjects("SubjectLine");
		String formatXPATH = String.format(original1);
		Thread.sleep(5000);

				driver.findElement(By.xpath(original)).clear();
				Thread.sleep(5000);
				driver.findElement(By.xpath(original)).sendKeys(inviteEmail);
				logger.info("Entered " + inviteEmail + " in mailinator search box" + "\n");
				System.out.println("Entered " + inviteEmail + " in mailinator search box" + "\n");

				driver.findElement(By.xpath(ec.getObjects("veiwMailBox_btn"))).click();
				Thread.sleep(10000);
				WaitClass.webDriverWait(formatXPATH);
		if (driver.findElements(By.xpath(formatXPATH)).size() == 0) {
			driver.findElement(By.xpath(original)).clear();
			System.out.println("Cleared the text in maildrop input" + "\n");
			Thread.sleep(3000);
			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).sendKeys(inviteEmail);
			Thread.sleep(10000);
			WaitClass.clickableWait(ec.getObjects("veiwMailBox_btn"));
			driver.findElement(By.xpath(ec.getObjects("veiwMailBox_btn"))).click();
		}

		driver.findElement(By.xpath(formatXPATH)).click();
		String SubjectLine = ec.getObjects("maildrop_subjectline");

		String EmailformatXPATH = String.format(SubjectLine);
		Thread.sleep(10000);
		WaitClass.webDriverWait(EmailformatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}
	@Then("Click on {string} button to {string}")
	public void click_On_manage_access_btn(String btn,String label) {

		String original = ec.getObjects("input_field")+inviteEmail.toLowerCase()+ec.getObjects("manageBtn")+btn+ec.getObjects("manageBtn2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked " + btn + " button on invited user "  + "\n");
		System.out.println("Clicked " + btn + " button on invited user " + "\n");

	}
//	@Then("click on {string} on maildrop")
//	public void click_on_on_maildrop(String string) {
//		String original = ec.getObjects("Value1")+ string + ec.getObjects("banktoast_msg2");
//		String formatXPATH = String.format(original);
//		WaitClass.webDriverWait(formatXPATH);
//		driver.findElement(By.xpath(formatXPATH)).click();
//		logger.info("Clicked " + string + " button on invited user "  + "\n");
//		System.out.println("Clicked " + string + " button on invited user " + "\n");
//	}
	@Then("Show Update message on {string} Page {string}")
	public void show_Update_message_on_Manage_Users_Page(String page,String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Toast = inviteEmail.toLowerCase()+string;
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Toast));
		Thread.sleep(3000);

		logger.info("Show confirmaiton message " + "'" + Toast + "'" + " on "+page+"page" + "\n");
		System.out.println("Show confirmaiton message " + "'" + Toast + "'" + " on "+page+"page" + "\n");
	}
	@Then("Show {string} label at {string}")
	public void show_label_at(String Label, String SubCat) {

		String original = ec.getObjects("link_var1") + Label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Verify input text field is visible for {string}")
	public void input_txt_field_visible(String label) {

		String original = ec.getObjects("input_filter1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified input text field is visible under " + label + "\n");
		System.out.println("Verified input text field is visible under " + label + "\n");
	}
	@Then("Verify {string} field label visible under {string}")
	public void filter_field_visible(String label,String subCat) {

		String original = ec.getObjects("filter_label1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Click on button {string} under {string}")
	public void click_btn_filter(String label,String subCat) {

		String original = ec.getObjects("filter_label1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on "+label+" button at  " + subCat + "\n");
		System.out.println("Clicked on "+label+" button at " + subCat + "\n");
	}
	@Then("Show button label {string} is visible at {string}")
	public void show_btnlabel_in(String Label, String SubCat) {

		String original = ec.getObjects("selectAll_role1") + Label + ec.getObjects("selectAll_role2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Select {string} as {string} from input dropdown")
	public void select_role(String label,String subcat) {

		String original = ec.getObjects("inputRole");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(label);
		String original2 = ec.getObjects("input_field")+label+ec.getObjects("label_var2");
		String formatXPATH2 = String.format(original2);
		action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().build().perform();

		logger.info("Selected " + label +" as "+subcat+ "\n");
		System.out.println("Selected " + label + " as "+subcat+ "\n");
	}
	@Then("Show filtered role is {string}")
	public void show_filtered_role(String Label) {

		String original = ec.getObjects("filter_role");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(Label));

		logger.info("Showing filtered role " + "'" + Label + "'" + "\n");
		System.out.println("Showing filtered role " + "'" + Label + "'" + "\n");

	}
	@Then("Show button {string} label is visible at {string}")
	public void show_btnlabel_status(String Label, String SubCat) {

		String original = ec.getObjects("selectAll_role1") + Label + ec.getObjects("selectAll_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Showing label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Show {string} button label visible under {string}")
	public void status_label_visible(String label,String subCat) {

		String original = ec.getObjects("input_field") + label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified "+label+" field label visible under " + subCat + "\n");
		System.out.println("Verified "+label+" field label visible under " + subCat + "\n");
	}
	@Then("Click on close icon on filter by")
	public void close_Icon_click() throws Throwable {
		String original = ec.getObjects("inviteanewusercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Close Icon clicked" + "\n");
		System.out.println("Close Icon clicked" + "\n");
	}
	
	@Then("Click button label {string} at {string}")
	public void click_selectAll(String Label, String SubCat) {

		String original = ec.getObjects("selectAll_role1") + Label + ec.getObjects("selectAll_role2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Clicked label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Show filtered role is")
	public void show_filtered_role_all() {

		String original = ec.getObjects("filter_role");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Label = driver.findElement(By.xpath(formatXPATH)).getText();

		logger.info("Showing filtered role " + "'" + Label + "'" + "\n");
		System.out.println("Showing filtered role " + "'" + Label + "'" + "\n");

	}
	@Then("Click {string} button label under {string}")
	public void status_label_clicked(String label,String subCat) {

		String original = ec.getObjects("statusSelect1") + label + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked "+label+"  label under " + subCat + "\n");
		System.out.println("Clicked "+label+" label under " + subCat + "\n");
	}
	@Then("Click {string} label button")
	public void click_On_clrAll(String btn) {

		String original = ec.getObjects("diversity_text")+btn+ec.getObjects("secondlegalbusiness");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked " + btn + " button on manage users "  + "\n");
		System.out.println("Clicked " + btn + " button on manage users " + "\n");

	}
	@Then("Click button label {string} for {string}")
	public void click_selectAll_status(String Label, String SubCat) {

		String original = ec.getObjects("selectAll_role1") + Label + ec.getObjects("selectAll_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked label " + "'" + Label + "'" + " under " + SubCat + "\n");
		System.out.println("Clicked label " + "'" + Label + "'" + " under " + SubCat + "\n");

	}
	@Then("Select from date as {string} month {string} date {string} year")
	public void select_fromDate(String month,String date,String year) {

		String original = ec.getObjects("invite_date_from");
		String formatXPATH = String.format(original);
		String preMonth = ec.getObjects("invite_previous_month");
		String inviteStartDate = ec.getObjects("invite_startDate");
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		do {
			driver.findElement(By.xpath(preMonth)).click();
			currentMonth = driver.findElement(By.xpath(preMonth)).getText();
		}
			
			
		while(currentMonth.equalsIgnoreCase(month));
			
		List<WebElement> currentDates = driver.findElements(By.xpath(inviteStartDate));
		for(int i=0;i<currentDates.size();i++) {
			if(currentDates.get(i).getText().contains(date)) {
				currentDates.get(i).click();
				break;
			}
		}
		logger.info("Selected from date as  " + "'" + date + "'" +month+ "\n");
		System.out.println("Selected from date as " + "'" + date +month+ "'" + "\n");

	}
	@Then("Select to date as {string} month {string} date {string} year")
	public void select_toDate(String month,String date,String year) {

		String original = ec.getObjects("invite_date_to");
		String formatXPATH = String.format(original);
		String preMonth = ec.getObjects("invite_nxt_month");
		String inviteStartDate = ec.getObjects("invite_startDate");
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		/*
		 * do { driver.findElement(By.xpath(preMonth)).click(); currentMonth =
		 * driver.findElement(By.xpath(preMonth)).getText(); }
		 * 
		 * 
		 * while(currentMonth.equalsIgnoreCase(month));
		 */
			
		List<WebElement> currentDates = driver.findElements(By.xpath(inviteStartDate));
		for(int i=0;i<currentDates.size();i++) {
			if(currentDates.get(i).getText().contains(date)) {
				currentDates.get(i).click();
				break;
			}
		}
		logger.info("Selected from date as  " + "'" + date + "'" +month+ "\n");
		System.out.println("Selected from date as " + "'" + date +month+ "'" + "\n");

	}
	@Then("Click on manage users down arrow")
	public void click_downarrow() {

		String original = ec.getObjects("user_arrow");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on down arrow " + "\n");
		System.out.println("Clicked on down arrow  "+"\n");

	}
	@Then("Select from date as {string} month {string} date {string} year for last logged in")
	public void select_fromDate_lastLogged(String month,String date,String year) {

		String original = ec.getObjects("lastlogged_date_from");
		String formatXPATH = String.format(original);
		String preMonth = ec.getObjects("lastLogged_previous_month");
		String inviteStartDate = ec.getObjects("lastlogged_startDate");
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		do {
			driver.findElement(By.xpath(preMonth)).click();
			currentMonth = driver.findElement(By.xpath(preMonth)).getText();
		}
			
			
		while(currentMonth.equalsIgnoreCase(month));
			
		List<WebElement> currentDates = driver.findElements(By.xpath(inviteStartDate));
		for(int i=0;i<currentDates.size();i++) {
			if(currentDates.get(i).getText().contains(date)) {
				currentDates.get(i).click();
				break;
			}
		}
		logger.info("Selected from date as  " + "'" + date + "'" +month+ "\n");
		System.out.println("Selected from date as " + "'" + date +month+ "'" + "\n");

	}
	@Then("Select to date as {string} month {string} date {string} year for last logged in")
	public void select_toDate_last_laggedin(String month,String date,String year) {

		String original = ec.getObjects("lastlogged_date_to");
		String formatXPATH = String.format(original);
		String preMonth = ec.getObjects("invite_nxt_month");
		String lastloggedStartDate = ec.getObjects("lastlogged_startDate");
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		/*
		 * do { driver.findElement(By.xpath(preMonth)).click(); currentMonth =
		 * driver.findElement(By.xpath(preMonth)).getText(); }
		 * 
		 * 
		 * while(currentMonth.equalsIgnoreCase(month));
		 */
			
		List<WebElement> currentDates = driver.findElements(By.xpath(lastloggedStartDate));
		for(int i=0;i<currentDates.size();i++) {
			if(currentDates.get(i).getText().contains(date)) {
				currentDates.get(i).click();
				break;
			}
		}
		logger.info("Selected from date as  " + "'" + date + "'" +month+ "\n");
		System.out.println("Selected from date as " + "'" + date +month+ "'" + "\n");

	}
	@Then("Enter input data {string} under {string}")
	public void input_txt_field_visible(String data,String label) {

		String original = ec.getObjects("input_filter1") + label + ec.getObjects("reminder_input2");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(data);

		logger.info("Entered data" + data + "\n");
		System.out.println("Entered data " + data + "\n");
	}
	@Then("Show message {string}")
	public void message(String msg) {

		String original = ec.getObjects("tnc_checkbox_var1") + msg + "')]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(msg));

		logger.info("Showing message" + msg + "\n");
		System.out.println("Showing message " + msg + "\n");
	}
	@Then("Enter same buyer email in Email Address field after registration")
    public void enter_same_buyer_email_in_email_address_field() throws Throwable {
        String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(inviteEmail.toLowerCase());
		

		logger.info("Entered data" + " " + inviteEmail + " " + "in Email Address field" + "\n");
		System.out.println("Entered data" + " " + inviteEmail + " " + "in Email Address field" + "\n");
    }
	
	@Then("Click Close icon on Invite a New User Modal")
	public void close_Icon_click_on_inviteModal() throws Throwable {
		String original = ec.getObjects("inviteanewusercloseicon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Close Icon clicked on Invite a New User Modal" + "\n");
		System.out.println("Close Icon clicked on Invite a New User Modal" + "\n");
	}
	@Then("Show Confirmation message on invite users {string}")
	public void show_Confirmation_message_on_Manage_Users_Page(String string) throws Throwable {
		String original = ec.getObjects("inviteanewusererrormsg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String Toast = string + inviteSameEmail;
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(Toast));
		Thread.sleep(3000);

		logger.info("Show confirmaiton message " + "'" + Toast + "'" + " on Manage Users page" + "\n");
		System.out.println("Show confirmaiton message " + "'" + Toast + "'" + " on Manage Users page" + "\n");
	}
	@Then("Enter same Email as same on Invite a New User Modal")
	public void enter_same_Email_same_on_Invite_a_New_User_Modal() throws Throwable {
		String original = ec.getObjects("inviteanewuseremail");
		String formatXPATH = String.format(original);
		//inviteEmail = RandomStringUtils.randomAlphabetic(8);
		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(inviteEmail);

		logger.info("Entered text in same Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
		System.out.println("Entered text in  same Email field " + " " + inviteEmail + " " + " on Invite a New User Modal" + "\n");
	}
	@Then("Click on Edit Permissions tab for manage users")
	public void click_on_Edit_Permission_tab() throws Throwable {

		Thread.sleep(2000);
		String original = ec.getObjects("manageuser_users_edit_tab");

		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Edit Permissions tab" + "\n");
		System.out.println("Clicked on Edit Permissions tab" + "\n");

	}
}
