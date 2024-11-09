package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class BuyerDashboardQuickLists extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(BuyerDashboardQuickLists.class);
	
	@Then("Buyer can see Connected Suppliers block")
	public void buyer_can_see_Connected_Suppliers_block() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Connected Suppliers block" + "\n");
		System.out.println("Buyer can see Connected Suppliers block" + "\n");
	}

	@Then("Buyer can see Discoverable Suppliers block")
	public void buyer_can_see_Discoverable_Suppliers_block() 
	{
		String original = ec.getObjects("buyer_dashboard_discoverable_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Discoverable Suppliers block" + "\n");
		System.out.println("Buyer can see Discoverable Suppliers block" + "\n");
	}

	@Then("Buyer can see Open Approvals block")
	public void buyer_can_see_Open_Approvals_block() 
	{
		String original = ec.getObjects("buyer_dashboard_open_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Open Approvals block" + "\n");
		System.out.println("Buyer can see Open Approvals block" + "\n");
	}

	@Then("Buyer can see Open Checklist")
	public void buyer_can_see_Open_Checklist() 
	{
		String original = ec.getObjects("buyer_dashboard_open_checklist");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Open Checklist" + "\n");
		System.out.println("Buyer can see Open Checklist" + "\n");
	}
	
	@When("Click on Connected Suppliers block")
	public void click_on_Connected_Suppliers_block() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Connected Suppliers block" + "\n");
		System.out.println("Click on Connected Suppliers block" + "\n");
	}

	@Then("Buyer can see title on Connected Suppliers page")
	public void buyer_can_see_title_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see title on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see title on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Discoverable Suppliers block")
	public void click_on_Discoverable_Suppliers_block() 
	{
		String original = ec.getObjects("buyer_dashboard_discoverable_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Discoverable Suppliers block" + "\n");
		System.out.println("Click on Discoverable Suppliers block" + "\n");
	}
	
	@Then("Buyer can see title on Discoverable Suppliers page")
	public void buyer_can_see_title_on_Discoverable_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_discoverable_suppliers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see title on Discoverable Suppliers page" + "\n");
		System.out.println("Buyer can see title on Discoverable Suppliers page" + "\n");
	}
	
	@When("Click on Open Approvals block")
	public void click_on_Open_Approvals_block() 
	{
		String original = ec.getObjects("buyer_dashboard_open_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Open Approvals block" + "\n");
		System.out.println("Click on Open Approvals block" + "\n");
	}

	@Then("Buyer can see title on Open Approvals page")
	public void buyer_can_see_title_on_Open_Approvals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see title on Open Approvals page" + "\n");
		System.out.println("Buyer can see title on Open Approvals page" + "\n");
	}
	
	@Then("Show All Suppliers label on Dashboard page")
	public void show_All_Suppliers_label_on_Dashboard_page() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show All Suppliers label on Dashboard page" + "\n");
		System.out.println("Show All Suppliers label on Dashboard page" + "\n");
	}

	@Then("Show Pending Invites under All Suppliers section")
	public void show_Pending_Invites_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_pending_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Pending Invites under All Suppliers section" + "\n");
		System.out.println("Show Pending Invites under All Suppliers section" + "\n");
	}

	@Then("Show Accepted Invites under All Suppliers section")
	public void show_Accepted_Invites_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_accepted_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Accepted Invites under All Suppliers section" + "\n");
		System.out.println("Show Accepted Invites under All Suppliers section" + "\n");
	}

	@Then("Show Declined Invites under All Suppliers section")
	public void show_Declined_Invites_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_declined_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Declined Invites under All Suppliers section" + "\n");
		System.out.println("Show Declined Invites under All Suppliers section" + "\n");
	}

	@Then("Show Profile Complete under All Suppliers section")
	public void show_Profile_Complete_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_profile_complete");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Profile Complete under All Suppliers section" + "\n");
		System.out.println("Show Profile Complete under All Suppliers section" + "\n");
	}

	@Then("Show Ready For Review under All Suppliers section")
	public void show_Ready_For_Review_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_ready_for_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Ready For Review under All Suppliers section" + "\n");
		System.out.println("Show Ready For Review under All Suppliers section" + "\n");
	}

	@Then("Show Lifecycle Updates Review under All Suppliers section")
	public void show_Lifecycle_Updates_Review_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_lifecycle_updates_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Lifecycle Updates Review under All Suppliers section" + "\n");
		System.out.println("Show Lifecycle Updates Review under All Suppliers section" + "\n");
	}

	@Then("Show Returned to Supplier under All Suppliers section")
	public void show_Returned_to_Supplier_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_returned_to_supplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Returned to Supplier under All Suppliers section" + "\n");
		System.out.println("Show Returned to Supplier under All Suppliers section" + "\n");
	}

	@Then("Show Onboarded under All Suppliers section")
	public void show_Onboarded_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Onboarded under All Suppliers section" + "\n");
		System.out.println("Show Onboarded under All Suppliers section" + "\n");
	}

	@Then("Show Revalidation Started under All Suppliers section")
	public void show_Revalidation_Started_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_revalidation_started");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Revalidation Started under All Suppliers section" + "\n");
		System.out.println("Show Revalidation Started under All Suppliers section" + "\n");
	}

	@Then("Show Revalidation Review under All Suppliers section")
	public void show_Revalidation_Review_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_revalidation_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Revalidation Review under All Suppliers section" + "\n");
		System.out.println("Show Revalidation Review under All Suppliers section" + "\n");
	}

	@Then("Show Preloaded under All Suppliers section")
	public void show_Preloaded_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_preload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Preloaded under All Suppliers section" + "\n");
		System.out.println("Show Preloaded under All Suppliers section" + "\n");
	}
	
	@When("Click on Pending Invites under All Suppliers section on Dashboard")
	public void click_on_Pending_Invites_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_pending_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Pending Invites under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Pending Invites under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Pending Invites on Connected Suppliers page")
	public void buyer_can_see_Pending_Invites_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_pending_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Pending Invites on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Pending Invites on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Accepted Invites under All Suppliers section on Dashboard")
	public void click_on_Accepted_Invites_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_accepted_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Accepted Invites under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Accepted Invites under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Accepted Invites on Connected Suppliers page")
	public void buyer_can_see_Accepted_Invites_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_accepted_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Accepted Invites on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Accepted Invites on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Declined Invites under All Suppliers section on Dashboard")
	public void click_on_Declined_Invites_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_declined_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Declined Invites under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Declined Invites under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Declined Invites on Connected Suppliers page")
	public void buyer_can_see_Declined_Invites_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_declined_invites");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Declined Invites on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Declined Invites on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Profile Complete under All Suppliers section on Dashboard")
	public void click_on_Profile_Complete_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_profile_complete");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Profile Complete under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Profile Complete under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Profile Complete on Connected Suppliers page")
	public void buyer_can_see_Profile_Complete_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_profile_complete");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Profile Complete on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Profile Complete on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Ready For Review under All Suppliers section on Dashboard")
	public void click_on_Ready_For_Review_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_ready_for_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Ready For Review under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Ready For Review under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Ready For Review on Connected Suppliers page")
	public void buyer_can_see_Ready_For_Review_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_ready_for_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Ready For Review on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Ready For Review on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Lifecycle Updates Review under All Suppliers section on Dashboard")
	public void click_on_Lifecycle_Updates_Review_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_lifecycle_updates_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Lifecycle Updates Review under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Lifecycle Updates Review under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Lifecycle Updates Review on Connected Suppliers page")
	public void buyer_can_see_Lifecycle_Updates_Review_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_lifecycle_update_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Lifecycle Updates Review on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Lifecycle Updates Review on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Returned to Supplier under All Suppliers section on Dashboard")
	public void click_on_Returned_to_Supplier_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_returned_to_supplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Returned to Supplier under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Returned to Supplier under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Returned to Supplier on Connected Suppliers page")
	public void buyer_can_see_Returned_to_Supplier_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_return_to_supplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Returned to Supplier on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Returned to Supplier on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Onboarded under All Suppliers section on Dashboard")
	public void click_on_Onboarded_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Onboarded under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Onboarded under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Onboarded on Connected Suppliers page")
	public void buyer_can_see_Onboarded_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Onboarded on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Onboarded on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Revalidation Started under All Suppliers section on Dashboard")
	public void click_on_Revalidation_Started_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_revalidation_started");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Revalidation Started under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Revalidation Started under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Revalidation Started on Connected Suppliers page")
	public void buyer_can_see_Revalidation_Started_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_revalidation_started");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Revalidation Started on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Revalidation Started on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Revalidation Review under All Suppliers section on Dashboard")
	public void click_on_Revalidation_Review_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_revalidation_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Revalidation Review under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Revalidation Review under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Revalidation Review on Connected Suppliers page")
	public void buyer_can_see_Revalidation_Review_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_revalidation_review");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Revalidation Review on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Revalidation Review on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Preloaded under All Suppliers section on Dashboard")
	public void click_on_Preloaded_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_preload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Preloaded under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Preloaded under All Suppliers section on Dashboard" + "\n");
	}

	@Then("Buyer can see Preloaded on Connected Suppliers page")
	public void buyer_can_see_Preloaded_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_preload");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Preloaded on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Preloaded on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Collapse icon in All Suppliers block")
	public void click_on_Collapse_icon_in_All_Suppliers_block() 
	{
		String original = ec.getObjects("supplier_collapse_iconn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse icon in All Suppliers block" + "\n");
		System.out.println("Click on Collapse icon in All Suppliers block" + "\n");
	}

	@When("Click on Expand icon in All Suppliers block")
	public void click_on_Expand_icon_in_All_Suppliers_block() 
	{
		String original = ec.getObjects("buyer_dashboard_all_supplier_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand icon in All Suppliers block" + "\n");
		System.out.println("Click on Expand icon in All Suppliers block" + "\n");
	}
	
	@Then("Show Pending Approvals in Approvals section")
	public void show_Pending_Approvals_in_Approvals_section() 
	{
		String original = ec.getObjects("buyer_dashboard_pending_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Pending Approvals in Approvals section" + "\n");
		System.out.println("Show Pending Approvals in Approvals section" + "\n");
	}

	@Then("Show Approved Approvals in Approvals section")
	public void show_Approved_Approvals_in_Approvals_section() 
	{
		String original = ec.getObjects("buyer_dashboard_approved_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Approved Approvals in Approvals section" + "\n");
		System.out.println("Show Approved Approvals in Approvals section" + "\n");
	}

	@Then("Show Rejected Approvals in Approvals section")
	public void show_Rejected_Approvals_in_Approvals_section() 
	{
		String original = ec.getObjects("buyer_dashboard_rejected_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Rejected Approvals in Approvals section" + "\n");
		System.out.println("Show Rejected Approvals in Approvals section" + "\n");
	}

	@Then("Show Requested Info Approvals in Approvals section")
	public void show_Requested_Info_Approvals_in_Approvals_section() 
	{
		String original = ec.getObjects("buyer_dashboard_request_info_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Requested Info Approvals in Approvals section" + "\n");
		System.out.println("Show Requested Info Approvals in Approvals section" + "\n");
	}

	@Then("Show Complete Approvals in Approvals section")
	public void show_Complete_Approvals_in_Approvals_section() 
	{
		String original = ec.getObjects("buyer_dashboard_complete_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Complete Approvals in Approvals section" + "\n");
		System.out.println("Show Complete Approvals in Approvals section" + "\n");
	}
	
	@When("Click on Pending Approvals in Approvals section on Dashabord")
	public void click_on_Pending_Approvals_in_Approvals_section_on_Dashabord() 
	{
		String original = ec.getObjects("buyer_dashboard_pending_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Pending Approvals in Approvals section on Dashabord" + "\n");
		System.out.println("Click on Pending Approvals in Approvals section on Dashabord" + "\n");
	}

	@Then("Buyer can see Pending Approvals on Manage Appovals page")
	public void buyer_can_see_Pending_Approvals_on_Manage_Appovals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_pending");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Pending Approvals on Manage Appovals page" + "\n");
		System.out.println("Buyer can see Pending Approvals on Manage Appovals page" + "\n");
	}
	
	@When("Click on Approved Approvals in Approvals section on Dashabord")
	public void click_on_Approved_Approvals_in_Approvals_section_on_Dashabord() 
	{
		String original = ec.getObjects("buyer_dashboard_approved_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Approved Approvals in Approvals section on Dashabord" + "\n");
		System.out.println("Click on Approved Approvals in Approvals section on Dashabord" + "\n");
	}

	@Then("Buyer can see Approved Approvals on Manage Appovals page")
	public void buyer_can_see_Approved_Approvals_on_Manage_Appovals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_approved");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Approved Approvals on Manage Appovals page" + "\n");
		System.out.println("Buyer can see Approved Approvals on Manage Appovals page" + "\n");
	}
	
	@When("Click on Rejected Approvals in Approvals section on Dashabord")
	public void click_on_Rejected_Approvals_in_Approvals_section_on_Dashabord() 
	{
		String original = ec.getObjects("buyer_dashboard_rejected_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Rejected Approvals in Approvals section on Dashabord" + "\n");
		System.out.println("Click on Rejected Approvals in Approvals section on Dashabord" + "\n");
	}

	@Then("Buyer can see Rejected Approvals on Manage Appovals page")
	public void buyer_can_see_Rejected_Approvals_on_Manage_Appovals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_rejected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Rejected Approvals on Manage Appovals page" + "\n");
		System.out.println("Buyer can see Rejected Approvals on Manage Appovals page" + "\n");
	}
	
	@When("Click on Requested Info Approvals in Approvals section on Dashabord")
	public void click_on_Requested_Info_Approvals_in_Approvals_section_on_Dashabord() 
	{
		String original = ec.getObjects("buyer_dashboard_request_info_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Requested Info Approvals in Approvals section on Dashabord" + "\n");
		System.out.println("Click on Requested Info Approvals in Approvals section on Dashabord" + "\n");
	}

	@Then("Buyer can see Requested Info Approvals on Manage Appovals page")
	public void buyer_can_see_Requested_Info_Approvals_on_Manage_Appovals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_requested_info");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Requested Info Approvals on Manage Appovals page" + "\n");
		System.out.println("Buyer can see Requested Info Approvals on Manage Appovals page" + "\n");
	}
	
	@When("Click on Complete Approvals in Approvals section on Dashabord")
	public void click_on_Complete_Approvals_in_Approvals_section_on_Dashabord() 
	{
		String original = ec.getObjects("buyer_dashboard_complete_approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Complete Approvals in Approvals section on Dashabord" + "\n");
		System.out.println("Click on Complete Approvals in Approvals section on Dashabord" + "\n");
	}

	@Then("Buyer can see Complete Approvals on Manage Appovals page")
	public void buyer_can_see_Complete_Approvals_on_Manage_Appovals_page() 
	{
		String original = ec.getObjects("buyer_dashboard_manage_approvals_complete");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Complete Approvals on Manage Appovals page" + "\n");
		System.out.println("Buyer can see Complete Approvals on Manage Appovals page" + "\n");
	}
	
	@When("Click on Collapse icon in All Approvals block")
	public void click_on_Collapse_icon_in_All_Approvals_block() 
	{
		String original = ec.getObjects("buyer_dashboard_all_approvals_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse icon in All Approvals block" + "\n");
		System.out.println("Click on Collapse icon in All Approvals block" + "\n");
	}

	@When("Click on Expand icon in All Approvals block")
	public void click_on_Expand_icon_in_All_Approvals_block() 
	{
		String original = ec.getObjects("buyer_dashboard_all_approvals_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand icon in All Approvals block" + "\n");
		System.out.println("Click on Expand icon in All Approvals block" + "\n");
	}
	
	@Then("Show Open Onboarding Checklist label on Dashboard page")
	public void show_Open_Onboarding_Checklist_label_on_Dashboard_page() 
	{
		String original = ec.getObjects("buyer_dashboard_open_onboarding_checklist");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Open Onboarding Checklist label on Dashboard page" + "\n");
		System.out.println("Show Open Onboarding Checklist label on Dashboard page" + "\n");
	}
	
	@When("Click on Collapse icon in Open Onboarding Checklist block")
	public void click_on_Collapse_icon_in_Open_Onboarding_Checklist_block() 
	{
		String original = ec.getObjects("buyer_dashboard_open_onboarding_checklist_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse icon in Open Onboarding Checklist block" + "\n");
		System.out.println("Click on Collapse icon in Open Onboarding Checklist block" + "\n");
	}

	@When("Click on Expand icon in Open Onboarding Checklist block")
	public void click_on_Expand_icon_in_Open_Onboarding_Checklist_block() 
	{
		String original = ec.getObjects("buyer_dashboard_open_onboarding_checklist_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand icon in Open Onboarding Checklist block" + "\n");
		System.out.println("Click on Expand icon in Open Onboarding Checklist block" + "\n");
	}
	
	@Then("Show Suppliers by country label on Dashboard page")
	public void show_Suppliers_by_country_label_on_Dashboard_page() 
	{
		String original = ec.getObjects("buyer_dashboard_suppliers_by_country");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Suppliers by country label on Dashboard page" + "\n");
		System.out.println("Show Suppliers by country label on Dashboard page" + "\n");
	}
	
	@When("Click on Collapse icon in Suppliers by country block")
	public void click_on_Collapse_icon_in_Suppliers_by_country_block() 
	{
		String original = ec.getObjects("buyer_dashboard_suppliers_by_country_collapse");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Collapse icon in Suppliers by country block" + "\n");
		System.out.println("Click on Collapse icon in Suppliers by country block" + "\n");
	}

	@When("Click on Expand icon in Suppliers by country block")
	public void click_on_Expand_icon_in_Suppliers_by_country_block() 
	{
		String original = ec.getObjects("buyer_dashboard_suppliers_by_country_expand");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Expand icon in Suppliers by country block" + "\n");
		System.out.println("Click on Expand icon in Suppliers by country block" + "\n");
	}
	
	@When("Select {string} from Suppliers by country dropdown")
	public void select_from_Suppliers_by_country_dropdown(String string) 
	{
		String original = ec.getObjects("buyer_dashboard_suppliers_by_country_select_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		String original1 = ec.getObjects("buyer_dashboard_suppliers_by_country_select_status_value")+string+ec.getObjects("buyer_dashboard_suppliers_by_country_select_status_value1");
		String formatXPATH1 = String.format(original1);
		System.out.println("Selected Status:--"+formatXPATH1);

		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(formatXPATH1)).click();		

		logger.info("Select"+ " " + string + " " + "from Suppliers by country dropdown" + "\n");
		System.out.println("Select"+ " " + string + " " + "from Suppliers by country dropdown" + "\n");
	}
	
	@When("Select {string} from Sort By Count dropdown")
	public void select_from_Sort_By_Count_dropdown(String string) 
	{
		String original = ec.getObjects("buyer_dashboard_suppliers_by_country_select_by_count");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		String original1 = ec.getObjects("buyer_dashboard_suppliers_by_country_select_status_value")+string+ec.getObjects("buyer_dashboard_suppliers_by_country_select_status_value1");
		String formatXPATH1 = String.format(original1);
		System.out.println("Selected Status:--"+formatXPATH1);

		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(formatXPATH1)).click();		

		logger.info("Select"+ " " + string + " " + "from Sort By Count dropdown" + "\n");
		System.out.println("Select"+ " " + string + " " + "from Sort By Count dropdown" + "\n");
	}
	
	@Then("Buyer can see See More link in Suppliers by country section")
	public void buyer_can_see_See_More_link_in_Suppliers_by_country_section() 
	{
		String original = ec.getObjects("buyer_dashboard_see_more_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see See More link in Suppliers by country section" + "\n");
		System.out.println("Buyer can see See More link in Suppliers by country section" + "\n");
	}

	@When("Click on See More link in Suppliers by country section")
	public void click_on_See_More_link_in_Suppliers_by_country_section() 
	{
		String original = ec.getObjects("buyer_dashboard_see_more_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on See More link in Suppliers by country section" + "\n");
		System.out.println("Click on See More link in Suppliers by country section" + "\n");
	}

	@Then("Buyer can see Hide link in Suppliers by country section")
	public void buyer_can_see_Hide_link_in_Suppliers_by_country_section() 
	{
		String original = ec.getObjects("buyer_dashboard_hide_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Hide link in Suppliers by country section" + "\n");
		System.out.println("Buyer can see Hide link in Suppliers by country section" + "\n");
	}

	@When("Click on Hide link in Suppliers by country section")
	public void click_on_Hide_link_in_Suppliers_by_country_section() 
	{
		String original = ec.getObjects("buyer_dashboard_hide_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Hide link in Suppliers by country section" + "\n");
		System.out.println("Click on Hide link in Suppliers by country section" + "\n");
	}
	
	@Then("Show Ready To Onboard under All Suppliers section")
	public void show_Ready_To_Onboard_under_All_Suppliers_section() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_ready_to_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show Ready To Onboard under All Suppliers section" + "\n");
		System.out.println("Show Ready To Onboard under All Suppliers section" + "\n");
	}
	@When("Click on Ready TO Onboard under All Suppliers section on Dashboard")
	public void click_on_Ready_To_Onboard_under_All_Suppliers_section_on_Dashboard() 
	{
		String original = ec.getObjects("buyer_dashboard_all_suppliers_ready_to_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Ready To Onboard under All Suppliers section on Dashboard" + "\n");
		System.out.println("Click on Ready To Onboard under All Suppliers section on Dashboard" + "\n");
	}
	@Then("Buyer can see Ready To Onboard on Connected Suppliers page")
	public void buyer_can_see_Ready_To_Onboard_on_Connected_Suppliers_page() 
	{
		String original = ec.getObjects("buyer_dashboard_connected_suppliers_ready_to_onboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Buyer can see Ready To Onboard on Connected Suppliers page" + "\n");
		System.out.println("Buyer can see Ready To Onboard on Connected Suppliers page" + "\n");
	}
	@Then("Click {string} div button")
	public void click_div_btn2(String label) {

		String original = ec.getObjects("Value1") + label + "')]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked "+label+" button "+"\n");
		System.out.println("Clicked "+label+" fbutton " + "\n");
	}
	@Then("Click on {string} button for dashboard")
	public void click_div_btn(String label) {

		String original = ec.getObjects("buyer_approavls");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked "+label+" button "+"\n");
		System.out.println("Clicked "+label+" fbutton " + "\n");
	}

}
