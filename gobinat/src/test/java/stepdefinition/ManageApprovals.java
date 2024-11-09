package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ManageApprovals extends DriverEngine
{	
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ManageApprovals.class);	
	
	@And("^Show the title \"([^\"]*)\" on Manage Approvals Page$")
    public void show_the_title_something_on_manage_approvals_page(String string) throws Throwable {
        String original = ec.getObjects("manage_approvals_title1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();
		//assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
    }
    
	@And("^Verify \"([^\"]*)\" Approval Request is visible$")
    public void verify_something_approval_request_is_visible(String string) throws Throwable {
        String original = ec.getObjects("approval_status1") + string +ec.getObjects("approval_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Approval" + string + " is visible on Supplier Dashboard page" + "\n");
		System.out.println("Approval" + string + " is visible on Supplier Dashboard page" + "\n");
    }

	@And("^Verify \"([^\"]*)\" Approval Request is clickable$")
    public void verify_something_approval_request_is_clickable(String string) throws Throwable {
		String original = ec.getObjects("approval_status1") + string +ec.getObjects("approval_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled());
		logger.info("Approval" + string + " is Clickable on Supplier Dashboard page" + "\n");
		System.out.println("Approval" + string + " is Clickable on Supplier Dashboard page" + "\n");
    }

	@Then("^Click on \"([^\"]*)\" Approval link on Dashboard page$")
    public void click_on_something_approval_link_on_dashboard_page(String string) throws Throwable {
        String original = ec.getObjects("approval_status1") + string +ec.getObjects("approval_status2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Approval" + string + "Clicked on Supplier Dashboard page" + "\n");
		System.out.println("Approval" + string + "Clicked  on Supplier Dashboard page" + "\n");
    }

	@And("^Verify the Approval Status as \"([^\"]*)\" on Manage Approvals Page$")
    public void verify_the_approval_status_as_something_on_manage_approvals_page(String string) throws Throwable {
        String original = ec.getObjects("pendingApproval");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Showing Approval Request status as"+ string + "\n");
		System.out.println("Showing Approval Request status as " + " " + string + " " +  "\n");
    }

	@And("^Show Roles on Approvals Dropdown$")
    public void show_roles_on_approvals_dropdown() throws Throwable {
		String original = ec.getObjects("Approval_list");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Approval Request list is shown" + "\n");
		System.out.println("Approval Request list is shown" + "\n");
    }

	@And("^Verify Approval Request header consists \"([^\"]*)\"$")
    public void verify_approval_request_header_consists_something(String string) throws Throwable {
        String original = ec.getObjects("manageapprovals_columns1") + string + ec.getObjects("manageapprovals_columns2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("Approval Request Column"+ string + "is Visible" + "\n");
		System.out.println("Approval Request Column " + " " + string + "is visible " +  "\n");
    }

	@Then("^Click on the Approval Request under All tab$")
    public void click_on_the_approval_request_under_all_tab() throws Throwable {
        String original = ec.getObjects("approval_clickablerow");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the approval request under all tab" + "\n");
		System.out.println("Clicked on the approval request under all tab" + "\n");
    }

	@Then("^Click on Approve button in approval details page$")
    public void click_on_approve_button_in_approval_details_page() throws Throwable {
		String original = ec.getObjects("approve_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the approve button" + "\n");
		System.out.println("Clicked on the approve button" + "\n");
    }

	@Then("^Enter Notes under approve in approve page$")
    public void enter_notes_under_approve_in_approve_page() throws Throwable {
        String original = ec.getObjects("approve_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Approval Request Accepted");

		logger.info("Entered Notes for Approval Request" + "\n");
		System.out.println("Entered Notes for Approval Request" + "\n");
    }

	@Then("^Click on back to action center button$")
    public void click_on_back_to_action_center_button() throws Throwable {
        String original = ec.getObjects("back_to_actioncenter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Back to action center button" + "\n");
		System.out.println("Clicked on Back to action center button" + "\n");
    }

	@And("^Verify the approval list visible as \"([^\"]*)\"$")
    public void verify_the_approval_list_visible_as_something(String string) throws Throwable {
		String original = ec.getObjects("lis_of_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("All the Approval Requests are Visible" + "\n");
		System.out.println("All the Approval Requests are Visible" + "\n");
    }

	@And("^Verify the tab option my team is visible$")
    public void verify_the_tab_option_my_team_is_visible() throws Throwable {
		String original = ec.getObjects("myteam_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("My Team tab is visible under Action center " + "\n");
		System.out.println("My Team tab is visible under Action center " + "\n");
    }

	@And("^Verify the tab option All is visible$")
    public void verify_the_tab_option_all_is_visible() throws Throwable {
		String original = ec.getObjects("all_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("All tab is visible under action center" + "\n");
		System.out.println("All tab is visible under action center" + "\n");
    }

	@And("^Verify the tab option Closed is visible$")
    public void verify_the_tab_option_closed_is_visible() throws Throwable {
		String original = ec.getObjects("closed_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Closed tab is visible under action center" + "\n");
		System.out.println("Closed tab is visible under action center" + "\n");
    }

	@Then("^Click on \"([^\"]*)\" Approval Request$")
    public void click_on_something_approval_request(String strArg1) throws Throwable {
        
    }

	@And("^Verify the approval request is navigated to Approval details page$")
    public void verify_the_approval_request_is_navigated_to_approval_details_page() throws Throwable {
        
    }

	@And("^user should navigate back to Action Center from approval detains page $")
    public void user_should_navigate_back_to_action_center_from_approval_detains_page() throws Throwable {
        
    }

	@Then("^Click on Back button in Approval Details Page$")
    public void click_on_back_button_in_approval_details_page() throws Throwable {
        String original = ec.getObjects("back_to_actioncenter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Back button in approval details page" + "\n");
		System.out.println("Clicked on Back button in approval details page" + "\n");
    }

	@Then("^Enter Approval Request description $")
    public void enter_approval_request_description() throws Throwable {
        String original = ec.getObjects("approval_note");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Automation Approval Req");

		logger.info("Created Automation Approval Request" + "\n");
		System.out.println("Created Automation Approval Request" + "\n");
    }

	@Then("^Click on upload document under attach document$")
    public void click_on_upload_document_under_attach_document() throws Throwable {
        String original = ec.getObjects("uploaddoc");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Upload Document under attach document" + "\n");
		System.out.println("Clicked on Upload Document under attach document" + "\n");
    }

	@Then("^Select Assigned Role as \"([^\"]*)\"$")
    public void select_assigned_role_as_something(String string) throws Throwable {
		String original = ec.getObjects("assigned_role_input");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(string);
		Thread.sleep(2000);
		String original1 = ec.getObjects("assigned_role_checkbox");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();
		logger.info("Selected Assign Role as" + string + "\n");
		System.out.println("Selected Assign Role as" + string + "\n");
    }

	@Then("^Click on the Approvalrequest$")
    public void click_on_the_approvalrequest() throws Throwable {
        String original = ec.getObjects("approval_history_list");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Approval Request Clicked" + "\n");
		System.out.println("Approval Request Clicked" + "\n");
    }

	@And("^Verify if an approval history list views for every approval request record$")
    public void verify_if_an_approval_history_list_views_for_every_approval_request_record() throws Throwable {
        String original = ec.getObjects("approval_history_list");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("approval history list views for every approval request record" + "\n");
		System.out.println("approval history list views for every approval request record" + "\n");
    }

	@And("^Verify Approval Request history consists of column \"([^\"]*)\"$")
    public void verify_approval_request_history_consists_of_column_something(String string) throws Throwable {
		String original = ec.getObjects("approval_history_column") + string + ec.getObjects("manageapprovals_columns2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("Approval Request history Column"+ string + "is Visible" + "\n");
		System.out.println("Approval Request history Column " + " " + string + "is visible " +  "\n");
    }

	@And("^Verify the user should be able to download attachment$")
    public void verify_the_user_should_be_able_to_download_attachment() throws Throwable {
        String original = ec.getObjects("history_download_attachment");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isEnabled();
		logger.info("Approval Request attachment is Enabled" + "\n");
		System.out.println("Approval Request attachment is Enabled" + "\n");
    }

	@And("^Click on the elipses in approval page$")
    public void click_on_the_elipses_in_approval_page() throws Throwable {
		String original = ec.getObjects("approval_elipsis");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isEnabled();
		logger.info("Clicked on the elipsis" + "\n");
		System.out.println("Clicked on the elipsis" + "\n");
    }

	@And("^Verify \"([^\"]*)\" is visible under approvals$")
    public void verify_something_is_visible_under_approvals(String string) throws Throwable {
		String original = ec.getObjects("approvals1") + string +ec.getObjects("approvals2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Approval" + string + " is visible Approval Details page" + "\n");
		System.out.println("Approval" + string + " is visible on Approval Details  page" + "\n");
    }

	@And("^Enter Notes in approval details page$")
    public void enter_notes_in_approval_details_page() throws Throwable {
        String original = ec.getObjects("approve_notes");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Approved");
		logger.info("Approval Notes Approval Details page" + "\n");
		System.out.println("Approval Notes  Approval Details  page" + "\n");
    }

	@Then("Show {string} button on create approval request")
	public void show_button_on_create_approval_request(String string) {
		
	}

	@Then("^Click \"([^\"]*)\" button on Approvalrequest Page$")
    public void click_something_button_on_approvalrequest_page(String string) throws Throwable {
        String original = ec.getObjects("approval_close_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Approval" + string + "Clicked on Approval request page" + "\n");
		System.out.println("Approval" + string + "Clicked  on Approval request page" + "\n");
    }
	
	@Then("Create approval reqest button is clickable {string}")
	public void create_approval_reqest_button_is_clickable(String string) {
		String original = ec.getObjects("create_approval_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Create Approval Request button clickable " + " " + string + " " + " In Action Center Tab" + "\n");
		System.out.println("Create Approval Request button clickable " + " " + string + " " + " In Action Center Tab" + "\n");
	}
	
	@Then("Show the title on right drawer as {string}")
	public void show_the_title_on_right_drawer_as(String string) {
		String original = ec.getObjects("create_approval_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Create Approval Request title " + " " + string + " " + " In Action Center Tab" + "\n");
		System.out.println("Create Approval title" + " " + string + " " + " In Action Center Tab" + "\n");
	}
	
	@Then("Show the description on right drawer as {string}")
	public void show_the_description_on_right_drawer_as(String string) {
		String original = ec.getObjects("create_approval_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Create Approval Request title " + " " + string + " " + " In Action Center Tab" + "\n");
		System.out.println("Create Approval title" + " " + string + " " + " In Action Center Tab" + "\n");
	}
	
	@Then("Show the label {string} on create approval request")
	public void show_the_label_on_create_approval_request(String string) {
		String original = ec.getObjects("approval_labels1") + string + ec.getObjects("approval_labels2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showing label as " + " " + string + " " + " On Approval Request Page" + "\n");
		System.out.println("Showing label as" + " " + string + " " + " On Approval Request Page" + "\n");
	}
	
	@Then("Verify {string} link is clickable")
	public void verify_link_is_clickable(String string) {
		String original = ec.getObjects("approval_links") + string + ec.getObjects("approval_labels2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Create Approval Request links " + " " + string + " " + " In Action Center Tab" + "\n");
		System.out.println("Create Approval links" + " " + string + " " + " In Action Center Tab" + "\n");
	}
	
	@And("^Verify \"([^\"]*)\" button is clickable$")
    public void verify_something_button_is_clickable(String string) throws Throwable {
		String original = ec.getObjects("CH_variable_button") + string + "')]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info(" " + " " + string + " " + " Is Clickable" + "\n");
		System.out.println(" " + " " + string + " " + " Is Clickable" + "\n");
    }
	
//rd writings
	
	@Then("Click on the first record of the Search")
	public void click_on_the_first_record_of_the_Search() {
		String original = ec.getObjects("first_record");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		
    	logger.info("Clicked on first record of the Search "+"\n");
    	System.out.println("Clicked on first record of the Search"+"\n");
	
	}
	
	@Then("Click on the button {string}")
	public void Click_on_the_button(String button) throws Throwable {
		String original = ec.getObjects("savebutton_assignedquestionnaire") + button + ec.getObjects("savebutton_assignedquestionnaire_end");
		//String formatXPATH = String.format(original);

		driver.findElement(By.xpath(original)).click();

		System.out.println("\n" + "Clicked on publish button at question " +"\n");
		logger.info("\n" + "Clicked on publish button at question "+"\n");
	}
	
	@Then("Select {string} in Status dropdown")
    public void select_in_status_dropdown(String string) throws Throwable {
        String original = ec.getObjects("mysupplierstatuslabelpendinginvite1") + string + ec.getObjects("mysupplierstatuslabelpendinginvite2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Pending Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Pending Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");

    }

	@Then("Select {string} value from dropdown")
	public void select_value_from_dropdown(String type) {

		String original = ec.getObjects("filtersea") + type + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		//Select se = new Select(driver.findElement(By.xpath(ec.getObjects("Clickonsearch"))));
		//se.selectByVisibleText(type);
		driver.findElement(By.xpath(original)).click();

		logger.info(type + " is selected in dropdown" + "\n");
		System.out.println(type + " is selected in dropdown" + "\n");

	}
	
	@Then("Click on the {string} role option")
	public void click_on_the_role_option(String string) throws Throwable {
		String original = ec.getObjects("addresscard") + string + ec.getObjects("inputfield_end");


		//String original = ec.getObjects("LocationCard");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);


		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}
	
	@Then("^Verify \"([^\"]*)\" button in Filters is \"([^\"]*)\"$")
    public void verify_something_button_in_filters_is_something(String strArg1, String strArg2) throws Throwable {
        String original = ec.getObjects("approvals112") + strArg1 + ec.getObjects("filters2");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),strArg2);
		logger.info("Supplier Filter Enabled "+ " "+ strArg1 +" "+" "+"\n"); 
		System.out.println("Supplier Filter Enabled "+ " "+ strArg1 +" "+""+"\n"); 
    }
	
	@Then("Click on the {string} field")
	public void Click_on_the_field(String fieldName) {
		String original = ec.getObjects("input_by_placeholder") + fieldName + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on: " + "'" + fieldName + "'" + " filter" + "\n");
		System.out.println("Clicked on: " + "'" + fieldName + "'" + " filter" + "\n");
	}
	
	@Then("verify {string} label on {string}")
	public void verify_label_on(String string, String SubCat) {

		String original = ec.getObjects("resultsearch");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String abc = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println("text" + abc + "print");
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(string));

		//assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("verified label " + " under " + SubCat + "\n");
		System.out.println("verified label " + " under " + SubCat + "\n");

	}
	
	//@Then("Select Pending Invites in Status dropdown {string}")
    //public void select_pending_invites_in_status_dropdown_something(String string) throws Throwable {
      //  String original = ec.getObjects("mysupplierstatuslabelpendinginvite1") + string + ec.getObjects("mysupplierstatuslabelpendinginvite2");		
		//String formatXPATH = String.format(original);
		
		//WaitClass.webDriverWait(formatXPATH);
		//driver.findElement(By.xpath(original)).click();
		
    	//logger.info("Pending Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	//System.out.println("Pending Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");

    //}
	
	@Then("verify {string} status label on {string}")
	public void verify_status_label_on(String string, String SubCat) {

		String original = ec.getObjects("Approval_src");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String abc = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println("text" + abc + "print");
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(string));

		//assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("verified label " + " under " + SubCat + "\n");
		System.out.println("verified label " + " under " + SubCat + "\n");

	}
	
	@Then("Click on the Assigned To {string} button")
	public void Click_on_the_Assigned_To_button(String fieldName) {
		String original = ec.getObjects("radio_buttn1") + fieldName + ec.getObjects("radio_buttn2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on: " + "'" + fieldName + "'" + " Assigned to filter" + "\n");
		System.out.println("Clicked on: " + "'" + fieldName + "'" + " Assigned to filter" + "\n");
	}
	
	@Then("verify the dropdown {string} value as {string}")
	public void verify_the_dropdown_value_as(String type, String xyza) {

		String original = ec.getObjects("filtersea") + type + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		//Select se = new Select(driver.findElement(By.xpath(ec.getObjects("Clickonsearch"))));
		//se.selectByVisibleText(type);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),xyza);
		logger.info(type + " is verified in dropdownas " + xyza + "\n");
		System.out.println(type + " is verified in dropdownas " + xyza + "\n");

	}
	
	@Then("Click on {string} link on filterBy")
	public void click_on_link_on_filterBy(String xys) 
	{
		String original = ec.getObjects("Appsta_clear") + xys +ec.getObjects("CR_buyer_supplierView_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on clear all link on Connected Suppliers page" + "\n");
		System.out.println("Clicked on clear all link on Connected Suppliers page" + "\n");
	}
	
	@Then("Click on search result on manage approval screen")
	public void Click_on_search_result_on_manage_approval_screen() {

		String original = ec.getObjects("Approval_src");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("clicked on the search results " + "on" + "Manage approvals screen" + "\n");
		System.out.println("clicked on the search results " + "on" + "Manage approvals screen" + "\n");

	}
	
	@Then("{string} the Approval")
	public void the_Approval(String apr) {
	    String original = ec.getObjects("Value1") + apr + ec.getObjects("Value2");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		
		System.out.println("Click on the Approve button" + "\n");
	}
	
	@Then("Click on {string} button on AR details screen")
	public void Click_on_button_on_AR_details_screen(String actions) {
		String original = ec.getObjects("actio_drpdwn") + actions + ec.getObjects("source2");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original)).click();

		
		System.out.println("Click on the Approve button" + "\n");
		
	}
	
	
	@Then("Click on {string} button on actiondropdown")
	public void Click_on_button_on_actiondropdown(String actions) {
	
	String original = ec.getObjects("btn1")+actions+ec.getObjects("btn2");
	String formatXPATH1 = String.format(original);

	WaitClass.webDriverWait(formatXPATH1);

	driver.findElement(By.xpath(original)).click();

	System.out.println("Clicked on the" +actions + "\n");
	
}
	@Then("^Click on Delete btn$")
    public void click_on_delete_button() throws Throwable 
	{
        String original = ec.getObjects("delete_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Delete btn in the bottom");
		System.out.println("Clicked on Delete btn in the bottom");
	}
	
	@Then("Click on {string} link to view the supplier wide screen")
	 public void Click_on_link_to_view_the_supplier_wide_screen(String abc) throws Throwable 
		{
	        String original = ec.getObjects("comp_link_pro");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on" + abc + "btn in the bottom");
			System.out.println("Clicked on" + abc + "btn in the bottom");
		}
	@Then("verify buyer is landing on profile page {string} section")
	 public void verify_buyer_is_landing_on_profile_page_section(String link) throws Throwable 
		{
	        String original = ec.getObjects("Profile_overview") + link + ec.getObjects("source2") ;
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			//driver.findElement(By.xpath(original)).click();
			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

			logger.info("Clicked on Delete btn in the bottom");
			System.out.println("Clicked on Delete btn in the bottom");
		}
	
	@Then("Click on {string} approval link to view the supplier wide screen")
	 public void Click_on_approval_link_to_view_the_supplier_wide_screen(String xyz) throws Throwable 
		{
	        String original = ec.getObjects(xyz);
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();

			logger.info("Clicked on Apprlink btn in the bottom");
			System.out.println("Clicked on Apprlink in the bottom");
		}
	
	@Then("verify buyer is able to view the status as {string}")
	 public void verify_buyer_is_able_to_view_the_status_as(String sta) throws Throwable 
		{
	        String original = ec.getObjects("Appr_status1") + sta +ec.getObjects("filterby_role_multiple2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			//driver.findElement(By.xpath(original)).click();
			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

			logger.info("Verified supplier status" + sta);
			System.out.println("Verified supplier status" + sta);
		}
	@Then("verify buyer is able to view the status as {string} in Approval history")
	 public void verify_buyer_is_able_to_view_the_status_as_in_Approval_history(String sta) throws Throwable 
		{
	        String original = ec.getObjects("Appr_status1") + sta + ec.getObjects("createrule_btn2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			//driver.findElement(By.xpath(original)).click();
			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

			logger.info("Verified supplier status" + sta);
			System.out.println("Verified supplier status" + sta);
		}
	
	@Then("Verify {string} header consists  as {string}")
	public void verify_header_consists_as(String header, String label) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("maapo_Supna") + label + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		Thread.sleep(3000);
		logger.info("Verified header label as" + label);
		System.out.println("Verified header label as" + label);
	}


@Then("Click on {string} fifth link on filterBy")
public void click_on_fifth_link_on_filterBy(String xys) 
{
	String original = ec.getObjects("supplierQGRP_Selectall");
	String formatXPATH = String.format(original);

	WaitClass.clickableWait(formatXPATH);
	
	driver.findElement(By.xpath(original)).click();

	logger.info("Clicked on select all link on manage contacts page" + "\n");
	System.out.println("Clicked on select all link on manage contacts page\"" + "\n");
}


@Then("Click on category {string} role AR")
public void click_on_category_role_AR(String string) throws Throwable {
	String original = ec.getObjects("Notifi_seresult") + string + ec.getObjects("filterby_role_multiple2");


	//String original = ec.getObjects("LocationCard");
	String formatXPATH = String.format(original);
	WaitClass.webDriverWait(formatXPATH);


	driver.findElement(By.xpath(original)).click();

	logger.info("Clicked on search result" + string + "\n");
	System.out.println("Clicked on search result" + string + "\n");

}
//Third party approval

@Then("Click {string} tab link for {string}")
public void click_tab(String tab,String subCat) throws Exception {
	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
	String original = ec.getObjects("link_var1") + tab + ec.getObjects("link_btn");
	String formatXPATH = String.format(original);

	WaitClass.clickableWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);

	logger.info("Clicked on " + tab + " for " +subCat +"\n");
	System.out.println("Clicked on " + tab + " for " + subCat+"\n");
}
}

