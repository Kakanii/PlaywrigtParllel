package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class SupplierDashboardQuickLinks extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(SupplierDashboardQuickLinks.class);
	
	@Then("Supplier can see Profile Information block")
	public void supplier_can_see_Profile_Information_block() 
	{
		String original = ec.getObjects("supplier_dashboard_profile_information");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Profile Information block" + "\n");
		System.out.println("Supplier can see Profile Information block" + "\n");
	}

	@Then("Supplier can see Questionnaires block")
	public void supplier_can_see_Questionnaires_block() 
	{
		String original = ec.getObjects("supplier_dashboard_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Questionnaires block" + "\n");
		System.out.println("Supplier can see Questionnaires block" + "\n");
	}

	@Then("Supplier can see Bank Account block")
	public void supplier_can_see_Bank_Account_block() 
	{
		String original = ec.getObjects("supplier_dashboard_bankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Bank Account block" + "\n");
		System.out.println("Supplier can see Bank Account block" + "\n");
	}

	@Then("Supplier can see Admin Actions block")
	public void supplier_can_see_Admin_Actions_block() 
	{
		String original = ec.getObjects("supplier_dashboard_adminActions");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Admin Actions block" + "\n");
		System.out.println("Supplier can see Admin Actions block" + "\n");
	}
	
	@Then("Supplier can see Basic Informaiton sub block")
	public void supplier_can_see_Basic_Informaiton_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_basicInformation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Basic Informaiton sub block" + "\n");
		System.out.println("Supplier can see Basic Informaiton sub block" + "\n");
	}

	@Then("Supplier can see External Identifiers sub block")
	public void supplier_can_see_External_Identifiers_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_externalIdentifiers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see External Identifiers sub block" + "\n");
		System.out.println("Supplier can see External Identifiers sub block" + "\n");
	}

	@Then("Supplier can see Management sub block")
	public void supplier_can_see_Management_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_management");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Management sub block" + "\n");
		System.out.println("Supplier can see Management sub block" + "\n");
	}

	@Then("Supplier can see Ownership sub block")
	public void supplier_can_see_Ownership_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_ownership");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Ownership sub block" + "\n");
		System.out.println("Supplier can see Ownership sub block" + "\n");
	}

	@Then("Supplier can see Corporate Relationships sub block")
	public void supplier_can_see_Corporate_Relationships_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_corporateRelationships");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Corporate Relationships sub block" + "\n");
		System.out.println("Supplier can see Corporate Relationships sub block" + "\n");
	}
	
	@When("Click on Questionnaires block")
	public void click_on_Questionnaires_block() 
	{
		String original = ec.getObjects("supplier_dashboard_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Questionnaires block" + "\n");
		System.out.println("Click on Questionnaires block" + "\n");
	}

	@Then("Supplier can see Anti-Bribery, Anti-Corruption Questionnaire sub block")
	public void supplier_can_see_Anti_Bribery_Anti_Corruption_Questionnaire_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_abac_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Anti-Bribery, Anti-Corruption Questionnaire sub block" + "\n");
		System.out.println("Supplier can see Anti-Bribery, Anti-Corruption Questionnaire sub block" + "\n");
	}

	@Then("Supplier can see Conflict Minerals Questionnaire sub block")
	public void supplier_can_see_Conflict_Minerals_Questionnaire_sub_block() 
	{    
		String original = ec.getObjects("supplier_dashboard_conflictMinerals_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Conflict Minerals Questionnaire sub block" + "\n");
		System.out.println("Supplier can see Conflict Minerals Questionnaire sub block" + "\n");
	}

	@Then("Supplier can see Company Operations Questionnaire sub block")
	public void supplier_can_see_Company_Operations_Questionnaire_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_companyOperations_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Company Operations Questionnaire sub block" + "\n");
		System.out.println("Supplier can see Company Operations Questionnaire sub block" + "\n");
	}

	@Then("Supplier can see Employment Standards Questionnaire sub block")
	public void supplier_can_see_Employment_Standards_Questionnaire_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_employmentStandards_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Employment Standards Questionnaire sub block" + "\n");
		System.out.println("Supplier can see Employment Standards Questionnaire sub block" + "\n");
	}
	
	@When("Click on Admin Actions block")
	public void click_on_Admin_Actions_block() 
	{
		String original = ec.getObjects("supplier_dashboard_adminActions");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Admin Actions block" + "\n");
		System.out.println("Click on Admin Actions block" + "\n");
	}

	@Then("Supplier can see Manage Users sub block")
	public void supplier_can_see_Manage_Users_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_manageUsers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Manage Users sub block" + "\n");
		System.out.println("Supplier can see Manage Users sub block" + "\n");
	}

	@Then("Supplier can see Password Configuration sub block")
	public void supplier_can_see_Password_Configuration_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_passwordConfiguration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Password Configuration sub block" + "\n");
		System.out.println("Supplier can see Password Configuration sub block" + "\n");
	}
	
	@When("Click on Basic Information sub block")
	public void click_on_Basic_Information_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_basicInformation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Basic Information sub block" + "\n");
		System.out.println("Click on Basic Information sub block" + "\n");
	}

	@Then("Supplier can see a title on Basic Information page")
	public void supplier_can_see_a_title_on_Basic_Information_page() 
	{
		String original = ec.getObjects("supplier_dashboard_basicInformation_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a title on Basic Information page" + "\n");
		System.out.println("Supplier can see a title on Basic Information page" + "\n");
	}
	
	@When("Click on External Identifiers sub block")
	public void click_on_External_Identifiers_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_externalIdentifiers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on External Identifiers sub block" + "\n");
		System.out.println("Click on External Identifiers sub block" + "\n");
	}

	@Then("Supplier can see a title on External Identifiers page")
	public void supplier_can_see_a_title_on_External_Identifiers_page() 
	{
		String original = ec.getObjects("supplier_dashboard_externalIdentifiers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a title on External Identifiers page" + "\n");
		System.out.println("Supplier can see a title on External Identifiers page" + "\n");
	}
	
	@When("Click on Management sub block")
	public void click_on_Management_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_management");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Management sub block" + "\n");
		System.out.println("Click on Management sub block" + "\n");
	}

	@Then("Supplier can see a link on Management page")
	public void supplier_can_see_a_link_on_Management_page() 
	{
		String original = ec.getObjects("supplier_dashboard_management_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a link on Management page" + "\n");
		System.out.println("Supplier can see a link on Management page" + "\n");
	}
	
	@When("Click on Ownership sub block")
	public void click_on_Ownership_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_ownership");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Ownership sub block" + "\n");
		System.out.println("Click on Ownership sub block" + "\n");
	}

	@Then("Supplier can see Add Ownership dropdown")
	public void supplier_can_see_Add_Ownership_dropdown() 
	{
		String original = ec.getObjects("supplier_dashboard_ownership_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Add Ownership dropdown" + "\n");
		System.out.println("Supplier can see Add Ownership dropdown" + "\n");
	}
	
	@When("Click on Corporate Relations sub block")
	public void click_on_Corporate_Relations_sub_block() 
	{
		String original = ec.getObjects("supplier_dashboard_corporateRelationships");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Corporate Relations sub block" + "\n");
		System.out.println("Click on Corporate Relations sub block" + "\n");
	}

	@Then("Supplier can see a title on Corporate Relationships page")
	public void supplier_can_see_a_title_on_Corporate_Relationships_page() 
	{
		String original = ec.getObjects("supplier_dashboard_corporateRelations_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a title on Corporate Relationships page" + "\n");
		System.out.println("Supplier can see a title on Corporate Relationships page" + "\n");
	}
	
	@When("Click on ABAC Questionnaire")
	public void click_on_ABAC_Questionnaire() 
	{
	    String original = ec.getObjects("supplier_dashboard_abac_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on ABAC Questionnaire" + "\n");
		System.out.println("Click on ABAC Questionnaire" + "\n");
	}

	@Then("Suppler can see a title on Anti-Bribery, Anti-Corruption")
	public void suppler_can_see_a_title_on_Anti_Bribery_Anti_Corruption() 
	{
		String original = ec.getObjects("supplier_dashboard_abac_questionnaire_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Anti-Bribery, Anti-Corruption" + "\n");
		System.out.println("Suppler can see a title on Anti-Bribery, Anti-Corruption" + "\n");
	}

	@When("Click on Dashboard tab")
	public void click_on_Dashboard_tab() 
	{
		String original = ec.getObjects("supplier_dashboard_dashboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Dashboard tab" + "\n");
		System.out.println("Click on Dashboard tab" + "\n");
	}

	@When("Click on Conflict Minerals Questionnaire")
	public void click_on_Conflict_Minerals_Questionnaire() 
	{
		String original = ec.getObjects("supplier_dashboard_conflictMinerals_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Conflict Minerals Questionnaire" + "\n");
		System.out.println("Click on Conflict Minerals Questionnaire" + "\n");
	}

	@Then("Suppler can see a title on Conflict Minerals")
	public void suppler_can_see_a_title_on_Conflict_Minerals() 
	{
		String original = ec.getObjects("supplier_dashboard_conflictMinerals_questionnaire_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Conflict Minerals" + "\n");
		System.out.println("Suppler can see a title on Conflict Minerals" + "\n");
	}

	@When("Click on Company Operations Questionnaire")
	public void click_on_Company_Operations_Questionnaire() 
	{
		String original = ec.getObjects("supplier_dashboard_companyOperations_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Company Operations Questionnaire" + "\n");
		System.out.println("Click on Company Operations Questionnaire" + "\n");
	}

	@Then("Suppler can see a title on Company Operations")
	public void suppler_can_see_a_title_on_Company_Operations() 
	{
		String original = ec.getObjects("supplier_dashboard_companyOperations_questionnaire_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Company Operations" + "\n");
		System.out.println("Suppler can see a title on Company Operations" + "\n");
	}
	
	@When("Click on Bank Account block")
	public void click_on_Bank_Account_block() 
	{
		String original = ec.getObjects("supplier_dashboard_bankAccount");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Bank Account block" + "\n");
		System.out.println("Click on Bank Account block" + "\n");
	}

	@Then("Suppler can see a title on Bank Account page")
	public void suppler_can_see_a_title_on_Bank_Account_page() 
	{
		String original = ec.getObjects("supplier_dashboard_bankAccount_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Bank Account page" + "\n");
		System.out.println("Suppler can see a title on Bank Account page" + "\n");
	}
	
	@When("Click on Manage Users")
	public void click_on_Manage_Users() 
	{
		String original = ec.getObjects("supplier_dashboard_manageUsers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Manage Users" + "\n");
		System.out.println("Click on Manage Users" + "\n");
	}

	@Then("Suppler can see a title on Manage Users page")
	public void suppler_can_see_a_title_on_Manage_Users_page() 
	{
		String original = ec.getObjects("supplier_dashboard_manageUsers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Manage Users page" + "\n");
		System.out.println("Suppler can see a title on Manage Users page" + "\n");
	}

	@When("Click on Password Configurations")
	public void click_on_Password_Configurations() 
	{
		String original = ec.getObjects("supplier_dashboard_passwordConfiguration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Password Configurations" + "\n");
		System.out.println("Click on Password Configurations" + "\n");
	}

	@Then("Suppler can see a title on Password Configurations page")
	public void suppler_can_see_a_title_on_Password_Configurations_page() 
	{
		String original = ec.getObjects("supplier_dashboard_passwordConfig_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Suppler can see a title on Password Configurations page" + "\n");
		System.out.println("Suppler can see a title on Password Configurations page" + "\n");
	}
	
	@Then("Supplier can see Hide link")
	public void supplier_can_see_Hide_link() 
	{
		String original = ec.getObjects("supplier_dashboard_hide_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Hide link" + "\n");
		System.out.println("Supplier can see Hide link" + "\n");
	}

	@Then("Supplier can see View link")
	public void supplier_can_see_View_link() 
	{
		String original = ec.getObjects("supplier_dashboard_view_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see View link" + "\n");
		System.out.println("Supplier can see View link" + "\n");
	}

	@Then("Click on Hide link")
	public void click_on_Hide_link() 
	{
		String original = ec.getObjects("supplier_dashboard_hide_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Hide link" + "\n");
		System.out.println("Click on Hide link" + "\n");
	}

	@Then("Click on View link")
	public void click_on_View_link() 
	{
		String original = ec.getObjects("supplier_dashboard_view_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on View link" + "\n");
		System.out.println("Click on View link" + "\n");
	}
	
	@When("Click on Notifications Navigation Icon")
	public void click_on_Notifications_Navigation_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_navigation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Notifications Navigation Icon" + "\n");
		System.out.println("Click on Notifications Navigation Icon" + "\n");
	}

	@Then("Supplier can see a title on Notifications page")
	public void supplier_can_see_a_title_on_Notifications_page() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a title on Notifications page" + "\n");
		System.out.println("Supplier can see a title on Notifications page" + "\n");
	}
	
	@Then("Supplier can see Notifications Setting Icon")
	public void supplier_can_see_Notifications_Setting_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_settings_icon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see Notifications Setting Icon" + "\n");
		System.out.println("Supplier can see Notifications Setting Icon" + "\n");
	}

	@When("Click on Notifications Settings Icon")
	public void click_on_Notifications_Settings_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_settings_icon");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Notifications Settings Icon" + "\n");
		System.out.println("Click on Notifications Settings Icon" + "\n");
	}

	@Then("Supplier can see a title on Notifications Settings page")
	public void supplier_can_see_a_title_on_Notifications_Settings_page() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_settings_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see a title on Notifications Settings page" + "\n");
		System.out.println("Supplier can see a title on Notifications Settings page" + "\n");
	}
	
	@Then("Supplier can see expand and collapse Icon")
	public void supplier_can_see_expand_and_collapse_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_expand_and_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Supplier can see expand and collapse Icon" + "\n");
		System.out.println("Supplier can see expand and collapse Icon" + "\n");
	}

	@When("Click on collapse Icon")
	public void click_on_collapse_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_expand_and_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on collapse Icon" + "\n");
		System.out.println("Click on collapse Icon" + "\n");
	}

	@When("Click on Expand Icon")
	public void click_on_Expand_Icon() 
	{
		String original = ec.getObjects("supplier_dashboard_notification_expand_and_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon" + "\n");
		System.out.println("Click on Expand Icon" + "\n");
	}

}
