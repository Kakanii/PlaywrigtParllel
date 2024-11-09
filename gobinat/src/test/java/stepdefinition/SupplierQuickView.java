package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class SupplierQuickView extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(SupplierQuickView.class);
	
	@Then("Click on Search and Select input field for Status")
	public void click_on_Search_and_Select_input_field_for_Status() 
	{
		String original = ec.getObjects("status_search_and_select");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Search and Select input field" + "\n");
		System.out.println("Click on Search and Select input field" + "\n");
	}	

	
	@When("Click on Clear All link on Connected Suppliers page")
	public void click_on_Clear_All_link_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("clear_all_on_connected_suppliers");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Clear All link on Connected Suppliers page" + "\n");
		System.out.println("Click on Clear All link on Connected Suppliers page" + "\n");
	}
	
	@Then("Click on Search and Select input field for Supplier Questionnaire Group")
	public void click_on_Search_and_Select_input_field_for_Supplier_Questionnaire_Group() 
	{
		String original = ec.getObjects("supplier_questionnarire_group_search_and_select");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Click on Search and Select input field for Supplier Questionnaire Group" + "\n");
		System.out.println("Click on Search and Select input field for Supplier Questionnaire Group" + "\n");
	}
	
	@Then("User can see Locations label on Supplier Wider screen")
	public void user_can_see_Locations_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_screen_locations");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Locations label on Supplier Wider screen" + "\n");
		System.out.println("User can see Locations label on Supplier Wider screen" + "\n");
	}

	@Then("User can see Corporate Relationships label on Supplier Wider screen")
	public void user_can_see_Corporate_Relationships_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_screen_corporate_relations");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Corporate Relationships label on Supplier Wider screen" + "\n");
		System.out.println("User can see Corporate Relationships label on Supplier Wider screen" + "\n");
	}
	
	@Then("User can see Approval Requests label under Action Center on Supplier Wider screen")
	public void user_can_see_Approval_Requests_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_screen_approval_requests");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Approval Requests label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Approval Requests label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen")
	public void user_can_see_Supplier_Relationship_Contacts_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Relationship History Contacts label under Action Center on Supplier Wider screen")
	public void user_can_see_Relationship_History_Contacts_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_screen_supplier_relationship_contacts");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Supplier Relationship Contacts label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Custom Fields label under Action Center on Supplier Wider screen")
	public void user_can_see_Custom_Fields_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_custom_fields");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Custom Fields label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Custom Fields label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen")
	public void user_can_see_Pre_Invite_Assessment_Questionnaire_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_pre_invite_assessment_questionnaire");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Pre Invite Assessment Questionnaire label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Buyer System Details label under Action Center on Supplier Wider screen")
	public void user_can_see_Buyer_System_Details_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_buyer_system_details");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Buyer System Details label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Buyer System Details label under Action Center on Supplier Wider screen" + "\n");
	}

	@Then("User can see Notes label under Action Center on Supplier Wider screen")
	public void user_can_see_Notes_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_notes");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Notes label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Notes label under Action Center on Supplier Wider screen" + "\n");
	}
	
	@Then("User can see Industry & Activities label on Supplier Wider screen")
	public void user_can_see_Industry_Activities_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_industryActivities");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Industry & Activities label on Supplier Wider screen" + "\n");
		System.out.println("User can see Industry & Activities label on Supplier Wider screen" + "\n");
	}

	@Then("User can see Ownership label on Supplier Wider screen")
	public void user_can_see_Ownership_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_ownership");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Ownership label on Supplier Wider screen" + "\n");
		System.out.println("User can see Ownership label on Supplier Wider screen" + "\n");
	}

	@Then("User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen")
	public void user_can_see_Checklist_Questionnaires_Contacts_label_under_Action_Center_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_checklist_questionnaires");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen" + "\n");
		System.out.println("User can see Checklist Questionnaires Contacts label under Action Center on Supplier Wider screen" + "\n");
	}
	
	@Then("User can see Reason for Decline label on Supplier Wider screen")
	public void user_can_see_Reason_for_Decline_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("supplier_wider_reason_for_decline");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("User can see Reason for Decline label on Supplier Wider screen" + "\n");
		System.out.println("User can see Reason for Decline label on Supplier Wider screen" + "\n");
	}

}
