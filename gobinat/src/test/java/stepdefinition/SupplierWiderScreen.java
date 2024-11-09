package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import cucumber.api.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SupplierWiderScreen extends DriverEngine 
{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(SupplierWiderScreen.class);
	
	@Then("User can see Collapse Icon in Company Profile Overview section")
	public void user_can_see_Collapse_Icon_in_Company_Profile_Overview_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_cpo_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Company Profile Overview section" + "\n");
		System.out.println("User can see Collapse Icon in Company Profile Overview section" + "\n");
	}

	@When("Click on Collapse Icon in Company Profile Overview section")
	public void click_on_Collapse_Icon_in_Company_Profile_Overview_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_cpo_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Company Profile Overview section" + "\n");
		System.out.println("Click on Collapse Icon in Company Profile Overview section" + "\n");
	}

	@Then("User can see Expand Icon in Company Profile Overview section")
	public void user_can_see_Expand_Icon_in_Company_Profile_Overview_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_cpo_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Company Profile Overview section" + "\n");
		System.out.println("User can see Expand Icon in Company Profile Overview section" + "\n");
	}

	@When("Click on Expand Icon in Company Profile Overview section")
	public void click_on_Expand_Icon_in_Company_Profile_Overview_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_cpo_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Company Profile Overview section" + "\n");
		System.out.println("Click on Expand Icon in Company Profile Overview section" + "\n");
	}
	
	@Then("User can see Industry & Activities title under Profile")
	public void user_can_see_Industry_Activities_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Industry & Activities title under Profile" + "\n");
		System.out.println("User can see Industry & Activities title under Profile" + "\n");
	}
	
	@Then("User can see UNSPSC label under Profile")
	public void user_can_see_UNSPSC_label_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_unspsc");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see UNSPSC label under Profile" + "\n");
		System.out.println("User can see UNSPSC label under Profile" + "\n");
	}

	@Then("User can see NAICS label under Profile")
	public void user_can_see_NAICS_label_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_naics");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see NAICS label under Profile" + "\n");
		System.out.println("User can see NAICS label under Profile" + "\n");
	}
	
	@Then("User can see Collapse Icon in Industry & Activities section")
	public void user_can_see_Collapse_Icon_in_Industry_Activities_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Industry & Activities section" + "\n");
		System.out.println("User can see Collapse Icon in Industry & Activities section" + "\n");
	}

	@When("Click on Collapse Icon in Industry & Activities section")
	public void click_on_Collapse_Icon_in_Industry_Activities_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Industry & Activities section" + "\n");
		System.out.println("Click on Collapse Icon in Industry & Activities section" + "\n");
	}

	@Then("User can see Expand Icon in Industry & Activities section")
	public void user_can_see_Expand_Icon_in_Industry_Activities_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Industry & Activities section" + "\n");
		System.out.println("User can see Expand Icon in Industry & Activities section" + "\n");
	}

	@When("Click on Expand Icon in Industry & Activities section")
	public void click_on_Expand_Icon_in_Industry_Activities_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_industry_and_activities_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Industry & Activities section" + "\n");
		System.out.println("Click on Expand Icon in Industry & Activities section" + "\n");
	}
	
	@Then("User can see Contacts title under Profile")
	public void user_can_see_Contacts_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_contacts");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Contacts title under Profile" + "\n");
		System.out.println("User can see Contacts title under Profile" + "\n");
	}
	
	@Then("User can see Collapse Icon in Contacts section")
	public void user_can_see_Collapse_Icon_in_Contacts_section() 
	{   
		String original = ec.getObjects("supplier_wider_screen_contacts_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Contacts title under Profile" + "\n");
		System.out.println("User can see Contacts title under Profile" + "\n");
	}

	@When("Click on Collapse Icon in Contacts section")
	public void click_on_Collapse_Icon_in_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_contacts_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Contacts section" + "\n");
		System.out.println("Click on Collapse Icon in Contacts section" + "\n");
	}

	@Then("User can see Expand Icon in Contacts section")
	public void user_can_see_Expand_Icon_in_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_contacts_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Contacts section" + "\n");
		System.out.println("User can see Expand Icon in Contacts section" + "\n");
	}

	@When("Click on Expand Icon in Contacts section")
	public void click_on_Expand_Icon_in_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_contacts_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Contacts section" + "\n");
		System.out.println("Click on Expand Icon in Contacts section" + "\n");
	}
	
	@Then("User can see Financial title under Profile")
	public void user_can_see_Financial_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_financial");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Financial title under Profile" + "\n");
		System.out.println("User can see Financial title under Profile" + "\n");
	}
	
	@When("User can see Collapse Icon in Financial section")
	public void user_can_see_Collapse_Icon_in_Financial_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_financial_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Financial section" + "\n");
		System.out.println("User can see Collapse Icon in Financial section" + "\n");
	}

	@When("Click on Collapse Icon in Financial section")
	public void click_on_Collapse_Icon_in_Financial_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_financial_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Financial section" + "\n");
		System.out.println("Click on Collapse Icon in Financial section" + "\n");
	}

	@Then("User can see Expand Icon in Financial section")
	public void user_can_see_Expand_Icon_in_Financial_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_financial_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Financial section" + "\n");
		System.out.println("User can see Expand Icon in Financial section" + "\n");
	}

	@When("Click on Expand Icon in Financial section")
	public void click_on_Expand_Icon_in_Financial_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_financial_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Financial section" + "\n");
		System.out.println("Click on Expand Icon in Financial section" + "\n");
	}
	
	@Then("User can see Ownership title under Profile")
	public void user_can_see_Ownership_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_ownership");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Ownership title under Profile" + "\n");
		System.out.println("User can see Ownership title under Profile" + "\n");
	}
	
	@When("User can see Collapse Icon in Ownership section")
	public void user_can_see_Collapse_Icon_in_Ownership_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_ownership_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Ownership section" + "\n");
		System.out.println("User can see Collapse Icon in Ownership section" + "\n");
	}

	@When("Click on Collapse Icon in Ownership section")
	public void click_on_Collapse_Icon_in_Ownership_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_ownership_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Ownership section" + "\n");
		System.out.println("Click on Collapse Icon in Ownership section" + "\n");
	}

	@Then("User can see Expand Icon in Ownership section")
	public void user_can_see_Expand_Icon_in_Ownership_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_ownership_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Ownership section" + "\n");
		System.out.println("User can see Expand Icon in Ownership section" + "\n");
	}

	@When("Click on Expand Icon in Ownership section")
	public void click_on_Expand_Icon_in_Ownership_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_ownership_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Ownership section" + "\n");
		System.out.println("Click on Expand Icon in Ownership section" + "\n");
	}
	
	@Then("User can see Locations title under Profile")
	public void user_can_see_Locations_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Locations title under Profile" + "\n");
		System.out.println("User can see Locations title under Profile" + "\n");
	}
	
	@When("User can see Collapse Icon in Locations section")
	public void user_can_see_Collapse_Icon_in_Locations_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Locations section" + "\n");
		System.out.println("User can see Collapse Icon in Locations section" + "\n");
	}

	@When("Click on Collapse Icon in Locations section")
	public void click_on_Collapse_Icon_in_Locations_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Locations section" + "\n");
		System.out.println("Click on Collapse Icon in Locations section" + "\n");
	}

	@Then("User can see Expand Icon in Locations section")
	public void user_can_see_Expand_Icon_in_Locations_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Locations section" + "\n");
		System.out.println("User can see Expand Icon in Locations section" + "\n");
	}

	@When("Click on Expand Icon in Locations section")
	public void click_on_Expand_Icon_in_Locations_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Locations section" + "\n");
		System.out.println("Click on Expand Icon in Locations section" + "\n");
	}
	
	@Then("User can see Corporate Relationships title under Profile")
	public void user_can_see_Corporate_Relationships_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relationships");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Corporate Relationships title under Profile" + "\n");
		System.out.println("User can see Corporate Relationships title under Profile" + "\n");
	}
	
	@When("User can see Collapse Icon in Corporate Relationships section")
	public void user_can_see_Collapse_Icon_in_Corporate_Relationships_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relationships_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Corporate Relationships section" + "\n");
		System.out.println("User can see Collapse Icon in Corporate Relationships section" + "\n");
	}

	@When("Click on Collapse Icon in Corporate Relationships section")
	public void click_on_Collapse_Icon_in_Corporate_Relationships_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relationships_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Corporate Relationships section" + "\n");
		System.out.println("Click on Collapse Icon in Corporate Relationships section" + "\n");
	}

	@Then("User can see Expand Icon in Corporate Relationships section")
	public void user_can_see_Expand_Icon_in_Corporate_Relationships_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relationships_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Corporate Relationships section" + "\n");
		System.out.println("User can see Expand Icon in Corporate Relationships section" + "\n");
	}

	@When("Click on Expand Icon in Corporate Relationships section")
	public void click_on_Expand_Icon_in_Corporate_Relationships_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relationships_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Corporate Relationships section" + "\n");
		System.out.println("Click on Expand Icon in Corporate Relationships section" + "\n");
	}
	
	@Then("User can see Questionnaires title under Profile")
	public void user_can_see_Questionnaires_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Questionnaires title under Profile" + "\n");
		System.out.println("User can see Questionnaires title under Profile" + "\n");
	}
	
	@Then("Usere can see Manage\\/Assign Questionnaires button")
	public void usere_can_see_Manage_Assign_Questionnaires_button() 
	{
		String original = ec.getObjects("supplier_wider_screen_manage_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Manage\\\\/Assign Questionnaires button" + "\n");
		System.out.println("User can see Manage\\\\/Assign Questionnaires button" + "\n");
	}

	@When("Click on Manage\\/Assign Questionnaires button")
	public void click_on_Manage_Assign_Questionnaires_button() 
	{
		String original = ec.getObjects("supplier_wider_screen_manage_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Manage\\\\/Assign Questionnaires button" + "\n");
		System.out.println("Click on Manage\\\\/Assign Questionnaires button" + "\n");
	}

	@Then("User can see a title on Manage Questionnaires page")
	public void user_can_see_a_title_on_Manage_Questionnaires_page() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires_manage_questionnaires_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see a title on Manage Questionnaires page" + "\n");
		System.out.println("User can see a title on Manage Questionnaires page" + "\n");
	}
	
	@Then("User can see Collapse Icon in Questionnaires section")
	public void user_can_see_Collapse_Icon_in_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Questionnaires section" + "\n");
		System.out.println("User can see Collapse Icon in Questionnaires section" + "\n");
	}

	@When("Click on Collapse Icon in Questionnaires section")
	public void click_on_Collapse_Icon_in_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Questionnaires section" + "\n");
		System.out.println("Click on Collapse Icon in Questionnaires section" + "\n");
	}

	@Then("User can see Expand Icon in Questionnaires section")
	public void user_can_see_Expand_Icon_in_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Questionnaires section" + "\n");
		System.out.println("User can see Expand Icon in Questionnaires section" + "\n");
	}

	@When("Click on Expand Icon in Questionnaires section")
	public void click_on_Expand_Icon_in_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_questionnaires_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Questionnaires section" + "\n");
		System.out.println("Click on Expand Icon in Questionnaires section" + "\n");
	}
	
	@Then("User can see Documents title under Profile")
	public void user_can_see_Documents_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_documents");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Documents title under Profile" + "\n");
		System.out.println("User can see Documents title under Profile" + "\n");
	}
	
	@Then("User can see Collapse Icon in Documents section")
	public void user_can_see_Collapse_Icon_in_Documents_section() 
	{    
		String original = ec.getObjects("supplier_wider_screen_documents_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Documents section" + "\n");
		System.out.println("User can see Collapse Icon in Documents section" + "\n");
	}

	@When("Click on Collapse Icon in Documents section")
	public void click_on_Collapse_Icon_in_Documents_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_documents_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Documents section" + "\n");
		System.out.println("Click on Collapse Icon in Documents section" + "\n");
	}

	@Then("User can see Expand Icon in Documents section")
	public void user_can_see_Expand_Icon_in_Documents_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_documents_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Documents section" + "\n");
		System.out.println("User can see Expand Icon in Documents section" + "\n");
	}

	@When("Click on Expand Icon in Documents section")
	public void click_on_Expand_Icon_in_Documents_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_documents_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Documents section" + "\n");
		System.out.println("Click on Expand Icon in Documents section" + "\n");
	}
	
	@Then("User can see Supplier Questionnaire Group title under Profile")
	public void user_can_see_Supplier_Questionnaire_Group_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_sqg");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Supplier Questionnaire Group title under Profile" + "\n");
		System.out.println("User can see Supplier Questionnaire Group title under Profile" + "\n");
	}
	
	@Then("User can see Collapse Icon in Supplier Questionnaire Group section")
	public void user_can_see_Collapse_Icon_in_Supplier_Questionnaire_Group_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_sqg_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Supplier Questionnaire Group section" + "\n");
		System.out.println("User can see Collapse Icon in Supplier Questionnaire Group section" + "\n");
	}

	@When("Click on Collapse Icon in Supplier Questionnaire Group section")
	public void click_on_Collapse_Icon_in_Supplier_Questionnaire_Group_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_sqg_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Supplier Questionnaire Group section" + "\n");
		System.out.println("Click on Collapse Icon in Supplier Questionnaire Group section" + "\n");
	}

	@Then("User can see Expand Icon in Supplier Questionnaire Group section")
	public void user_can_see_Expand_Icon_in_Supplier_Questionnaire_Group_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_sqg_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Supplier Questionnaire Group section" + "\n");
		System.out.println("User can see Expand Icon in Supplier Questionnaire Group section" + "\n");
	}

	@When("Click on Expand Icon in Supplier Questionnaire Group section")
	public void click_on_Expand_Icon_in_Supplier_Questionnaire_Group_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_sqg_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Supplier Questionnaire Group section" + "\n");
		System.out.println("Click on Expand Icon in Supplier Questionnaire Group section" + "\n");
	}
	
	@Then("User can see Bank Account title under Profile")
	public void user_can_see_Bank_Account_title_under_Profile() 
	{
		String original = ec.getObjects("supplier_wider_screen_bank_account");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Bank Account title under Profile" + "\n");
		System.out.println("User can see Bank Account title under Profile" + "\n");
	}
	
	@Then("User can see Collapse Icon in Bank Account section")
	public void user_can_see_Collapse_Icon_in_Bank_Account_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_bank_account_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Bank Account section" + "\n");
		System.out.println("User can see Collapse Icon in Bank Account section" + "\n");
	}

	@When("Click on Collapse Icon in Bank Account section")
	public void click_on_Collapse_Icon_in_Bank_Account_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_bank_account_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Bank Account section" + "\n");
		System.out.println("Click on Collapse Icon in Bank Account section" + "\n");
	}

	@Then("User can see Expand Icon in Bank Account section")
	public void user_can_see_Expand_Icon_in_Bank_Account_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_bank_account_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Bank Account section" + "\n");
		System.out.println("User can see Expand Icon in Bank Account section" + "\n");
	}

	@When("Click on Expand Icon in Bank Account section")
	public void click_on_Expand_Icon_in_Bank_Account_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_bank_account_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Bank Account section" + "\n");
		System.out.println("Click on Expand Icon in Bank Account section" + "\n");
	}
	
	@Then("User can see Approval Requests title under Action Center")
	public void user_can_see_Approval_Requests_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_approval_request");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Approval Requests title under Action Center" + "\n");
		System.out.println("User can see Approval Requests title under Action Center" + "\n");
	}
	
	@Then("User can see Create Approval Requests button under Action Center")
	public void user_can_see_Create_Approval_Requests_button_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_create_approval_request_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Create Approval Requests button under Action Center" + "\n");
		System.out.println("User can see Create Approval Requests button under Action Center" + "\n");
	}
	
	@When("Click on Create Approval Requests button under Action Center")
	public void click_on_Create_Approval_Requests_button_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_create_approval_request_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Create Approval Requests button under Action Center" + "\n");
		System.out.println("Click on Create Approval Requests button under Action Center" + "\n");
	}

	@Then("User can see Create Approval Request title on right drawer")
	public void user_can_see_Create_Approval_Request_title_on_right_drawer() 
	{
		driver.switchTo().activeElement();
		
		String original = ec.getObjects("supplier_wider_screen_create_approval_request_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Create Approval Request title on right drawer" + "\n");
		System.out.println("User can see Create Approval Request title on right drawer" + "\n");
	}

	@When("Click on Close button in Create Approval Request right drawer")
	public void click_on_Close_button_in_Create_Approval_Request_right_drawer() 
	{
		driver.switchTo().activeElement();
		
		String original = ec.getObjects("supplier_wider_screen_create_approval_request_close_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Close button in Create Approval Request right drawer" + "\n");
		System.out.println("Click on Close button in Create Approval Request right drawer" + "\n");
	}
	
	@Then("User can see Collapse Icon in Approval Requests section")
	public void user_can_see_Collapse_Icon_in_Approval_Requests_section() 
	{		
		String original = ec.getObjects("supplier_wider_screen_approval_request_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Approval Requests section" + "\n");
		System.out.println("User can see Collapse Icon in Approval Requests section" + "\n");
	}

	@When("Click on Collapse Icon in Approval Requests section")
	public void click_on_Collapse_Icon_in_Approval_Requests_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_approval_request_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Approval Requests section" + "\n");
		System.out.println("Click on Collapse Icon in Approval Requests section" + "\n");
	}

	@Then("User can see Expand Icon in Approval Requests section")
	public void user_can_see_Expand_Icon_in_Approval_Requests_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_approval_request_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Approval Requests section" + "\n");
		System.out.println("User can see Expand Icon in Approval Requests section" + "\n");
	}

	@When("Click on Expand Icon in Approval Requests section")
	public void click_on_Expand_Icon_in_Approval_Requests_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_approval_request_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Approval Requests section" + "\n");
		System.out.println("Click on Expand Icon in Approval Requests section" + "\n");
	}
	
	@Then("User can see Supplier Relationship Contacts title under Action Center")
	public void user_can_see_Supplier_Relationship_Contacts_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Supplier Relationship Contacts title under Action Center" + "\n");
		System.out.println("User can see Supplier Relationship Contacts title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Supplier Relationship Contacts section")
	public void user_can_see_Collapse_Icon_in_Supplier_Relationship_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Supplier Relationship Contacts section" + "\n");
		System.out.println("User can see Collapse Icon in Supplier Relationship Contacts section" + "\n");
	}

	@When("Click on Collapse Icon in Supplier Relationship Contacts section")
	public void click_on_Collapse_Icon_in_Supplier_Relationship_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Supplier Relationship Contacts section" + "\n");
		System.out.println("Click on Collapse Icon in Supplier Relationship Contacts section" + "\n");
	}

	@Then("User can see Expand Icon in Supplier Relationship Contacts section")
	public void user_can_see_Expand_Icon_in_Supplier_Relationship_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Supplier Relationship Contacts section" + "\n");
		System.out.println("User can see Expand Icon in Supplier Relationship Contacts section" + "\n");
	}

	@When("Click on Expand Icon in Supplier Relationship Contacts section")
	public void click_on_Expand_Icon_in_Supplier_Relationship_Contacts_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Supplier Relationship Contacts section" + "\n");
		System.out.println("Click on Expand Icon in Supplier Relationship Contacts section" + "\n");
	}
	
	@Then("User can see Supplier Relationship History title under Action Center")
	public void user_can_see_Supplier_Relationship_History_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_history");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Supplier Relationship History title under Action Center" + "\n");
		System.out.println("User can see Supplier Relationship History title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Supplier Relationship History section")
	public void user_can_see_Collapse_Icon_in_Supplier_Relationship_History_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_history_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Supplier Relationship History section" + "\n");
		System.out.println("User can see Collapse Icon in Supplier Relationship History section" + "\n");
	}

	@When("Click on Collapse Icon in Supplier Relationship History section")
	public void click_on_Collapse_Icon_in_Supplier_Relationship_History_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_history_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Supplier Relationship History section" + "\n");
		System.out.println("Click on Collapse Icon in Supplier Relationship History section" + "\n");
	}

	@Then("User can see Expand Icon in Supplier Relationship History section")
	public void user_can_see_Expand_Icon_in_Supplier_Relationship_History_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_history_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Supplier Relationship History section" + "\n");
		System.out.println("User can see Expand Icon in Supplier Relationship History section" + "\n");
	}

	@When("Click on Expand Icon in Supplier Relationship History section")
	public void click_on_Expand_Icon_in_Supplier_Relationship_History_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_history_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Supplier Relationship History section" + "\n");
		System.out.println("Click on Expand Icon in Supplier Relationship History section" + "\n");
	}
	
	@Then("User can see Checklist Questionnaires title under Action Center")
	public void user_can_see_Checklist_Questionnaires_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_checklist_questionnaires");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Checklist Questionnaires title under Action Center" + "\n");
		System.out.println("User can see Checklist Questionnaires title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Checklist Questionnaires section")
	public void user_can_see_Collapse_Icon_in_Checklist_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_checklist_questionnaires_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Checklist Questionnaires section" + "\n");
		System.out.println("User can see Collapse Icon in Checklist Questionnaires section" + "\n");
	}

	@When("Click on Collapse Icon in Checklist Questionnaires section")
	public void click_on_Collapse_Icon_in_Checklist_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_checklist_questionnaires_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Checklist Questionnaires section" + "\n");
		System.out.println("Click on Collapse Icon in Checklist Questionnaires section" + "\n");
	}

	@Then("User can see Expand Icon in Checklist Questionnaires section")
	public void user_can_see_Expand_Icon_in_Checklist_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_checklist_questionnaires_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Checklist Questionnaires section" + "\n");
		System.out.println("User can see Expand Icon in Checklist Questionnaires section" + "\n");
	}

	@When("Click on Expand Icon in Checklist Questionnaires section")
	public void click_on_Expand_Icon_in_Checklist_Questionnaires_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_checklist_questionnaires_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Checklist Questionnaires section" + "\n");
		System.out.println("Click on Expand Icon in Checklist Questionnaires section" + "\n");
	}
	
	@Then("User can see Buyer System Details title under Action Center")
	public void user_can_see_Buyer_System_Details_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_buyer_system_details");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Buyer System Details title under Action Center" + "\n");
		System.out.println("User can see Buyer System Details title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Buyer System Details section")
	public void user_can_see_Collapse_Icon_in_Buyer_System_Details_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_buyer_system_details_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Buyer System Details section" + "\n");
		System.out.println("User can see Collapse Icon in Buyer System Details section" + "\n");
	}

	@When("Click on Collapse Icon in Buyer System Details section")
	public void click_on_Collapse_Icon_in_Buyer_System_Details_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_buyer_system_details_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Buyer System Details section" + "\n");
		System.out.println("Click on Collapse Icon in Buyer System Details section" + "\n");
	}

	@Then("User can see Expand Icon in Buyer System Details section")
	public void user_can_see_Expand_Icon_in_Buyer_System_Details_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_buyer_system_details_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Buyer System Details section" + "\n");
		System.out.println("User can see Expand Icon in Buyer System Details section" + "\n");
	}

	@When("Click on Expand Icon in Buyer System Details section")
	public void click_on_Expand_Icon_in_Buyer_System_Details_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_buyer_system_details_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Buyer System Details section" + "\n");
		System.out.println("Click on Expand Icon in Buyer System Details section" + "\n");
	}
	
	@Then("User can see Custom Fields title under Action Center")
	public void user_can_see_Custom_Fields_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_custom_fields");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Custom Fields title under Action Center" + "\n");
		System.out.println("User can see Custom Fields title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Custom Fields section")
	public void user_can_see_Collapse_Icon_in_Custom_Fields_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_custom_fields_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Custom Fields section" + "\n");
		System.out.println("User can see Collapse Icon in Custom Fields section" + "\n");
	}

	@When("Click on Collapse Icon in Custom Fields section")
	public void click_on_Collapse_Icon_in_Custom_Fields_section() 
	{    
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_custom_fields_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Custom Fields section" + "\n");
		System.out.println("Click on Collapse Icon in Custom Fields section" + "\n");
	}

	@Then("User can see Expand Icon in Custom Fields section")
	public void user_can_see_Expand_Icon_in_Custom_Fields_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_custom_fields_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Custom Fields section" + "\n");
		System.out.println("User can see Expand Icon in Custom Fields section" + "\n");
	}

	@When("Click on Expand Icon in Custom Fields section")
	public void click_on_Expand_Icon_in_Custom_Fields_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_custom_fields_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Custom Fields section" + "\n");
		System.out.println("Click on Expand Icon in Custom Fields section" + "\n");
	}
	
	@Then("User can see Notes title under Action Center")
	public void user_can_see_Notes_title_under_Action_Center() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_notes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Notes title under Action Center" + "\n");
		System.out.println("User can see Notes title under Action Center" + "\n");
	}
	
	@Then("User can see Collapse Icon in Notes section")
	public void user_can_see_Collapse_Icon_in_Notes_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_notes_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Collapse Icon in Notes section" + "\n");
		System.out.println("User can see Collapse Icon in Notes section" + "\n");
	}

	@When("Click on Collapse Icon in Notes section")
	public void click_on_Collapse_Icon_in_Notes_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_notes_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse Icon in Notes section" + "\n");
		System.out.println("Click on Collapse Icon in Notes section" + "\n");
	}

	@Then("User can see Expand Icon in Notes section")
	public void user_can_see_Expand_Icon_in_Notes_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_notes_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Expand Icon in Notes section" + "\n");
		System.out.println("User can see Expand Icon in Notes section" + "\n");
	}

	@When("Click on Expand Icon in Notes section")
	public void click_on_Expand_Icon_in_Notes_section() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_supplier_notes_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand Icon in Notes section" + "\n");
		System.out.println("Click on Expand Icon in Notes section" + "\n");
	}

	@When("verify Buyer is able to view the table header as {string}")
	public void verify_Buyer_is_able_to_view_the_table_header_as(String string) throws Throwable {
		String original = ec.getObjects("header_table") + string + "']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), "true");
		logger.info(string + "is showing on Preinvitesection" + "\n");
		System.out.println( string + "is showing on Preinvitesection" + "\n");
	}
}
