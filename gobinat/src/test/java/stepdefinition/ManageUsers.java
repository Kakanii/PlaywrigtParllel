package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Role;
import utility.User;
import utility.UserUtils;
import utility.WaitClass;

public class ManageUsers extends DriverEngine
{	
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ManageUsers.class);	
	
	@Then("Click on Manage Users Tab")
	public void click_on_Manage_Users_Tab() throws Throwable
	{
		String original = ec.getObjects("manageusers");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Manage Users tab on Dashboard"+"\n");
		System.out.println("Click on Manage Users tab on Dashboard "+"\n");
		Thread.sleep(3000);
	}	
	
	@Then("Show Invite a New User button on Manage Users page {string}")
	public void show_Invite_a_New_User_button_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("inviteanewuserbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing Invite a New User button" +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Showing Invite a New User button" +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Invite a New User button clickable on Manage Users page {string}")
	public void invite_a_New_User_button_clickable_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("inviteanewuserbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
    	logger.info("Invite a New User button clickable" +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Invite a New User button clickable" +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Showing Users tab on Manage Users page {string}")
	public void showing_Users_tab_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("activeuserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Users tab " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Shows Users tab " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Showing All Users tab on Manage Users page {string}")
	public void showing_All_Users_tab_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("alluserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows All Users tab " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Shows All Users tab " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("All Users tab clickable on Manage Users page {string}")
	public void all_Users_tab_clickable_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("alluserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
    	logger.info("All Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("All Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Showing Active Users tab on Manage Users page {string}")
	public void showing_Active_Users_tab_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("activeusers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Active Users tab " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Shows Active Users tab " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Active Users tab clickable on Manage Users page {string}")
	public void active_Users_tab_clickable_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("activeusers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
    	logger.info("Active Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Active Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Showing Pending Users tab on Manage Users page {string}")
	public void showing_Pending_Users_tab_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("pendinguserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Pending Users tab " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Shows Pending Users tab " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Pending Users tab clickable on Manage Users page {string}")
	public void pending_Users_tab_clickable_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("pendinguserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
    	logger.info("Pending Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Pending Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Showing Deleted Users tab on Manage Users page {string}")
	public void showing_Deleted_Users_tab_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("deleteuserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Deleted Users tab " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Shows Deleted Users tab " +" "+ string + " "+ "on Manage Users"+"\n");
	}
	
	@Then("Deleted Users tab clickable on Manage Users page {string}")
	public void deleted_Users_tab_clickable_on_Manage_Users_page(String string) throws Throwable
	{
		String original = ec.getObjects("deleteuserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
    	logger.info("Deleted Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Deleted Users tab clickable " +" "+ string + " "+ "on Manage Users"+"\n"); 
	}
	
	@Then("Click on Active Users tab on Manage Users page")
	public void click_on_Active_Users_tab_on_Manage_Users_page() throws Throwable
	{
		String original = ec.getObjects("activeusers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on Active Users tab on Manage Users page"+"\n"); 
    	System.out.println("Click on Active Users tab on Manage Users page"+"\n"); 
	}
	
	@Then("Click on Pending Users tab on Manage Users page")
	public void click_on_Pending_Users_tab_on_Manage_Users_page() throws Throwable
	{
		String original = ec.getObjects("pendinguserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on Pending Users tab on Manage Users page"+"\n"); 
    	System.out.println("Click on Pending Users tab on Manage Users page"+"\n"); 
	}
	
	@Then("Click on Deleted Users tab on Manage Users page")
	public void click_on_Deleted_Users_tab_on_Manage_Users_page() throws Throwable
	{
		String original = ec.getObjects("deleteuserstab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on Deleted Users tab on Manage Users page"+"\n"); 
    	System.out.println("Click on Deleted Users tab on Manage Users page"+"\n"); 
	}
	
	@Then("Showing Active Users with status {string}")
	public void showing_Active_Users_with_status(String string) throws Throwable
	{	
    	String original = ec.getObjects("lastlogggedin_text");
    	String formatXPATH = String.format(original);

    	WaitClass.webDriverWait(formatXPATH);

    	assertTrue(driver.findElement(By.xpath(ec.getObjects("lastlogggedin_text"))).getText().contains(string));
    	logger.info("Showing text" +" "+ string + " "+ "on active users"+"\n");
    	System.out.println("Showing text" +" "+ string + " "+ "on active users"+"\n");
	}

	@Then("^Show the list of users in tabluar form is \"([^\"]*)\"$")
    public void show_the_list_of_users_in_tabluar_form_is_something(String string) throws Throwable {
        String original = ec.getObjects("manageusers_list");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Showing Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n");
    }

	@And("^Verify \"([^\"]*)\" button is enabled to sort the list in manage users$")
    public void verify_something_button_is_enabled_to_sort_the_list_in_manage_users(String string) throws Throwable {
		String original = ec.getObjects("manageusers_sort_button") + string + ec.getObjects("manageusers_table_contents2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Showing Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n");
    }

	@And("^Show \"([^\"]*)\" in the table header in manage users$")
    public void show_something_in_the_table_header_in_manage_users(String string) throws Throwable {
        String original = ec.getObjects("manageusers_table_contents1") + string + ec.getObjects("manageusers_table_contents2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n"); 
    	System.out.println("Showing Showing list of users in tabular form" +" "+ string + " "+ "on Manage Users"+"\n");
    }

	@Then("^Show Error message under EmailID as \"([^\"]*)\"$")
    public void show_error_message_under_emailid_as_something(String string) throws Throwable {
		String original = ec.getObjects("email_id_error");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Showing error as" +" "+ string + " "+ "on Invite New USer"+"\n"); 
    	System.out.println("Showing error as" +" "+ string + " "+ "on Invite New USer"+"\n");
    }

	@And("^Show error message as \"([^\"]*)\" under \"([^\"]*)\" under invite new User$")
    public void show_error_message_as_something_under_something_under_invite_new_user(String string, String string1) throws Throwable {
        String original = ec.getObjects("invite_user_error1") + string + ec.getObjects("invite_user_error2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Showing error as" +" "+ string1 + "under " + string + "on Invite New USer"+"\n"); 
    	System.out.println("Showing error as" +" "+ string1 + "under "+ string + "on Invite New USer"+"\n");
    }

	public void save_information_new_user(String status) {
		User user = new User();
		Role roleUser = new Role();
		String firstNameOriginal = ec.getObjects("inviteanewuserfirstname");
		String lastNameOriginal = ec.getObjects("inviteanewuserlastname");
		String emailOriginal = ec.getObjects("inviteanewuseremail");
		String roleOriginal = ec.getObjects("inviteanewuserrole");

		String formatFNXPATH = String.format(firstNameOriginal);
		String formatLNXPATH = String.format(lastNameOriginal);
		String formatEmailXPATH = String.format(emailOriginal);
		String formatRoleXPATH = String.format(roleOriginal);

		String firstName = driver.findElement(By.xpath(formatFNXPATH)).getAttribute("value");
		String lastName = driver.findElement(By.xpath(formatLNXPATH)).getAttribute("value");
		String email = driver.findElement(By.xpath(formatEmailXPATH)).getAttribute("value");
		String role = driver.findElement(By.xpath(formatRoleXPATH)).getAttribute("value");

		String optionRole = ec.getObjects("inviteanewuserrole") + ec.getObjects("option_value") + role
				+ ec.getObjects("no_round_brackets_end");
		String roleTxt = driver.findElement(By.xpath(String.format(optionRole))).getText();

		String fullName = firstName + " " + lastName;

		System.out.println("User name: " + fullName + "\n");
		System.out.println("User email: " + email + "\n");
		System.out.println("User role: " + roleTxt + "\n");

		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		for (Role roleExist : UserUtils.getRoles()) {
			if (roleTxt.equals(roleExist.getRoleName())) {
				roleUser.setRMR(roleExist.isRMR());
				roleUser.setRoleName(roleExist.getRoleName());
				user.setRole(roleUser);
			}
		}
		user.setStatus(status);

		UserUtils.getUsers().add(user);
		InviteSupplierPage.users = UserUtils.getUsers();

		System.out.println("Saved a new user" + "\n");
	}
	
	@Then("Create {string} User has {string} role and {string} team")
	public void create_User_has_role(String status, String role, String team) throws Throwable {
		ManageUserSearch userSearch = new ManageUserSearch();
		ManageUserAcceptInvitation acceptInvitation = new ManageUserAcceptInvitation();
		ManageUsersInviteANewUser usersInviteANewUser = new ManageUsersInviteANewUser();
		ManageUsers manageUsers = new ManageUsers();
		CorpRelationships corpRelationships = new CorpRelationships();
		CommonStepDefs commonStepDefs = new CommonStepDefs();
		LoginPage loginPage = new LoginPage();

		// enter information for user
		acceptInvitation.enter_First_Name_on_Invite_a_New_User_modal();
		acceptInvitation.enter_Last_Name_on_Invite_a_New_User_modal();
		acceptInvitation.enter_Email_on_Invite_a_New_User_modal();
		acceptInvitation.enter_Confirmation_Email_on_Invite_a_New_User_modal();
		userSearch.select_a_team_from_the_dropdown_on_invite_a_new_user_modal_something(team);
		for (Role roleExpt : UserUtils.getRoles()) {
			// if (roleExpt.getRoleName().contains(role.replaceAll("\\s", ""))) {
			if (roleExpt.getRoleName().contains(role)) {
				usersInviteANewUser.select_a_Role_from_the_dropdown_on_Invite_a_New_User_Modal(roleExpt.getRoleName());
			}
		}

		// save information for user
		manageUsers.save_information_new_user(status);

		// Click on Send Invite button
		usersInviteANewUser.click_on_Send_Invite_button_on_Invite_a_New_User_Modal();
		Thread.sleep(100);
		commonStepDefs.close_toast_message();

		logger.info("Invited user" + "\n");
		System.out.println("Invited user" + "\n");
		Thread.sleep(10000);

		if (status.equals("Active")) {
			loginPage.logout_from_the_system();
			Thread.sleep(1000);
			acceptInvitation
					.verify_email_received_in_new_user_inbox_with_subject("Invitation from Trust Your Supplier");
			corpRelationships.click_on_the_email_with_subject_something("Invitation from Trust Your Supplier");
			acceptInvitation.click_on_Register_now_link();

			Thread.sleep(500);

			// register
			corpRelationships.enter_password_in_password_field();
			corpRelationships.enter_password_in_confirm_password_field();
			commonStepDefs.click_Continue_button_in_supplier_registration_page();
			corpRelationships.switch_to_something_tab("Mailinator");
			corpRelationships.click_on_back_to_inbox_link();
			corpRelationships.click_on_the_email_with_subject_something("Trust Your Supplier Verification Code");
			commonStepDefs.verify_from_the_email_and_copy_the_verification_code("VERIFICATION NUMBER: ");

			// Switch to the new window
			corpRelationships.switch_to_something_tab("Register tab");
			Thread.sleep(500);
			commonStepDefs.enter_verification_code_in_TYS_registration_tab();
			corpRelationships.click_button("Submit");
			Thread.sleep(500);

			logger.info("User acceped invite in TYS" + "\n");
			System.out.println("User acceped invite in TYS" + "\n");

		} else if (status.equals("Access Removed")) {
			delete_User_has_role("Pending", role);
			Thread.sleep(2000);
			logger.info("Removed user from out TYS" + "\n");
			System.out.println("Removed user from out TYS" + "\n");
		}
	}
	
	@Then("Delete {string} User has {string} role")
	public void delete_User_has_role(String status, String role) throws Throwable {
		for (Role roleExpt : UserUtils.getRoles()) {
			if (roleExpt.getRoleName().contains(role.replaceAll("\\s", ""))) {
				role = roleExpt.getRoleName();
			}
		}
		String filterBtn = ec.getObjects("discover_button") + "Filter by" + ec.getObjects("discoversupplier2");
		String filterby_Role = ec.getObjects("discover_accordion_filter") + "Role" + ec.getObjects("parent_btn");
		String filterby_Status = ec.getObjects("discover_accordion_filter") + "Status" + ec.getObjects("parent_btn");
		String statusOpt = ec.getObjects("span_Txt") + status + ec.getObjects("no_round_brackets_end");
		String searchbox = ec.getObjects("assigned_role_input");
		String searchBtn =  ec.getObjects("supplierbtn");
		String deleteBtn = ec.getObjects("span_contains_Txt") + "Remove Access" + ec.getObjects("parent_btn");
		String deleteBtnConf = ec.getObjects("CH_Delete_btn");
		String span_role = ec.getObjects("span_contains_Txt") + role + ec.getObjects("ancestor_td");
		
		String formatFilterXPATH = String.format(filterBtn);
		String formatFilterByRoleXPATH = String.format(filterby_Role);
		String formatFilterByStatusXPATH = String.format(filterby_Status);
		String formatStatusOptXPATH = String.format(statusOpt);
		String formatSearchXPATH = String.format(searchbox);
		String formatSearchbtnXPATH = String.format(searchBtn);
		String formatDeletebtnXPATH = String.format(deleteBtn);
		String formatDeletebtnConfXPATH = String.format(deleteBtnConf);
		String formatRoleSpanXPATH = String.format(span_role);
		

		// Click on Filter by button
		WaitClass.webDriverWait(formatFilterXPATH);
		driver.findElement(By.xpath(formatFilterXPATH)).click();
		
		// Filter by Role
		driver.findElement(By.xpath(formatFilterByRoleXPATH)).click();
		driver.findElement(By.xpath(formatSearchXPATH)).sendKeys(role);
		driver.findElement(By.xpath(formatRoleSpanXPATH)).click();
		driver.findElement(By.xpath(formatFilterByRoleXPATH)).click();
		Thread.sleep(1000);
		
		// Filter by Status
		driver.findElement(By.xpath(formatFilterByStatusXPATH)).click();
		WaitClass.webDriverWait(formatStatusOptXPATH);
		driver.findElement(By.xpath(formatStatusOptXPATH)).click();
		
		// Click on Search button
		driver.findElement(By.xpath(formatSearchbtnXPATH)).click();
		Thread.sleep(1000);
		
		// Click on Delete icon
		driver.findElement(By.xpath(formatDeletebtnXPATH)).click();
		driver.findElement(By.xpath(formatDeletebtnConfXPATH)).click();
		//commonStepDefs.close_toast_message();
		Thread.sleep(10000);

		logger.info("Deleted the user from Manage users" + "\n");
		System.out.println("Deleted the user from Manage users" + "\n");

		UserUtils.getUsers().removeAll(UserUtils.getUsers());
		System.out.println("Removed user list: " + UserUtils.getUsers() + "\n");
	}

	@Then("Delete all {string} User has {string} role")
	public void delete_all_User_has_role(String status, String role) throws Throwable {
		for (Role roleExpt : UserUtils.getRoles()) {
			//if (roleExpt.getRoleName().contains(role.replaceAll("\\s", ""))) {
			if (roleExpt.getRoleName().contains(role)) {
				role = roleExpt.getRoleName();
			}
		}
		String filterBtn = ec.getObjects("discover_button") + "Filter by" + ec.getObjects("discoversupplier2");
		String filterby_Role = ec.getObjects("discover_accordion_filter") + "Role" + ec.getObjects("parent_btn");
		String filterby_Status = ec.getObjects("discover_accordion_filter") + "Status" + ec.getObjects("parent_btn");
		String statusOpt = ec.getObjects("span_Txt") + status + ec.getObjects("no_round_brackets_end");
		String searchbox = ec.getObjects("assigned_role_input");
		String searchBtn =  ec.getObjects("supplierbtn");
		String deleteBtn = ec.getObjects("span_contains_Txt") + "Remove Access" + ec.getObjects("parent_btn");
		String deleteBtnConf = ec.getObjects("CH_Delete_btn");
		String searchdbox = ec.getObjects("discover_search_field");
		String span_role = ec.getObjects("span_contains_Txt") + role + ec.getObjects("ancestor_td");
		
		String formatFilterXPATH = String.format(filterBtn);
		String formatFilterByRoleXPATH = String.format(filterby_Role);
		String formatFilterByStatusXPATH = String.format(filterby_Status);
		String formatStatusOptXPATH = String.format(statusOpt);
		String formatSearchXPATH = String.format(searchbox);
		String formatSearchbtnXPATH = String.format(searchBtn);
		String formatDeletebtnXPATH = String.format(deleteBtn);
		String formatDeletebtnConfXPATH = String.format(deleteBtnConf);
		String formatSearchBoxXPATH = String.format(searchdbox);
		String formatRoleSpanXPATH = String.format(span_role);

		// Click on Filter by button
		WaitClass.webDriverWait(formatFilterXPATH);
		driver.findElement(By.xpath(formatFilterXPATH)).click();

		// Filter by Role
		driver.findElement(By.xpath(formatFilterByRoleXPATH)).click();
		driver.findElement(By.xpath(formatSearchXPATH)).sendKeys(role);
		driver.findElement(By.xpath(formatRoleSpanXPATH)).click();
		driver.findElement(By.xpath(formatFilterByRoleXPATH)).click();
		Thread.sleep(1000);

		// Filter by Status
		driver.findElement(By.xpath(formatFilterByStatusXPATH)).click();
		WaitClass.webDriverWait(formatStatusOptXPATH);
		driver.findElement(By.xpath(formatStatusOptXPATH)).click();

		// Click on Search button
		driver.findElement(By.xpath(formatSearchbtnXPATH)).click();
		Thread.sleep(1000);

		// Click on Delete icon
		for (User user : UserUtils.getUsers()) {
			driver.findElement(By.xpath(formatSearchBoxXPATH)).clear();
			Thread.sleep(5000);
			driver.findElement(By.xpath(formatSearchBoxXPATH)).sendKeys(user.getEmail());
			Actions builder = new Actions(driver);
			builder.sendKeys(Keys.ENTER).build().perform();
			Thread.sleep(5000);
			driver.findElement(By.xpath(formatDeletebtnXPATH)).click();
			driver.findElement(By.xpath(formatDeletebtnConfXPATH)).click();
			Thread.sleep(10000);
		}

		logger.info("Deleted all users from Manage users" + "\n");
		System.out.println("Deleted all users from Manage users" + "\n");

		UserUtils.getUsers().removeAll(UserUtils.getUsers());
		System.out.println("Removed user list: " + UserUtils.getUsers() + "\n");
	}
}
