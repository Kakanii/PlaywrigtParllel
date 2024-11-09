package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class MySuppliersSearch extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(MySuppliersSearch.class);
	
	@Then("Show Supplier in search result {string}")
	public void show_Supplier_in_search_result(String string) throws Throwable
	{
		Thread.sleep(3000);
		String original = ec.getObjects("searchresult") + string + ec.getObjects("secondarybutton1");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}	
	
	
	@Then("Show InviteeeInc Supplier name in search result {string}")
	public void show_InviteeeInc_Supplier_name_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult1");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show SentInc Supplier in search result on Sent Invite Tab {string}")
	public void show_SentInc_Supplier_in_search_result_on_Sent_Invite_Tab(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresultsent");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show canada comonaps Supplier in search result {string}")
	public void show_canada_comonaps_Supplier_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show Kinc Supplier in search result {string}")
	public void show_Kinc_Supplier_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult3");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show chandrayaan Supplier in search result {string}")
	public void show_chandrayaan_Supplier_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult5");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	
	
	@Then("Show Venus Supplier in search result {string}")
	public void show_Venus_Supplier_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult4");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show Supplier in search result on Sent Invite Tab {string}")
	public void show_Supplier_in_search_result_on_Sent_Invite_Tab(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresultsent");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Show no suppliers message {string}")
	public void show_no_suppliers_message(String string) throws Throwable
	{
		String original = ec.getObjects("noresultmsg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows no Supplier message " +" "+ string + " "+  "on search results"+"\n");
    	System.out.println("Shows no Supplier messsage " +" "+ string + " "+  "on search results"+"\n");
	}
	
	@Then("Select Company Name from Search By Dropdown")
	public void select_Company_Name_from_Search_By_Dropdown() throws Throwable
	{
		String original = ec.getObjects("searchbydropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("selectcompname");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Company Name"+"\n");
    	System.out.println("Selected Search By Company Name"+"\n");
	}
	
	@Then("Select Invitee Email from Search By Dropdown")
	public void select_Invitee_Email_from_Search_By_Dropdown() throws Throwable
	{
		String original = ec.getObjects("searchbydropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("selectinviteemail");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Invitee Email"+"\n");
    	System.out.println("Selected Search By Invitee Email"+"\n");
	}
	
	@Then("Show Supplier name in search result {string}")
	public void show_Supplier_name_in_search_result(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult1");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Select Invitee First Name from Search By Dropdown")
	public void select_Invitee_First_Name_from_Search_By_Dropdown() throws Throwable
	{
		String original = ec.getObjects("searchbydropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("selectfirstname");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Invitee First Name"+"\n");
    	System.out.println("Selected Search By Invitee First Name"+"\n");
	}
	
	@Then("Select Invitee Last Name from Search By Dropdown")
	public void select_Invitee_Last_Name_from_Search_By_Dropdown() throws Throwable
	{
		String original = ec.getObjects("searchbydropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		String original1 = ec.getObjects("selectlastname");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Selected Search By Invitee Last Name"+"\n");
    	System.out.println("Selected Search By Invitee Last Name"+"\n");
	}
	
	@Then("Click on Search Icon on My Suppliers")
	public void click_on_Search_Icon_on_My_Suppliers() throws Throwable
	{
		String original = ec.getObjects("searchicon");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
		logger.info("Click on Search Icon on My Suppliers"+"\n");
    	System.out.println("Click on Search Icon on My Suppliers"+"\n");
	}
	
	@Then("Enter Invitee First Name {string}")
	public void enter_Invitee_First_Name(String string) 
	{	    
		String original = ec.getObjects("inviteefirstname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter Invitee First Name "+string+"\n");
    	System.out.println("Enter Invitee First Name "+string+"\n");
	}
	
	
	@Then("Enter Invitee Last Name {string}")
	public void enter_Invitee_Last_Name(String string) throws Throwable
	{
		String original = ec.getObjects("inviteelastname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter Invitee Last Name "+string+"\n");
    	System.out.println("Enter Invitee Last Name "+string+"\n");
	}
	
	@Then("Enter Invitee Email {string}")
	public void enter_Invitee_Email(String string) throws Throwable
	{
		String original = ec.getObjects("inviteeemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Enter Invitee Email "+string+"\n");
    	System.out.println("Enter Invitee Email "+string+"\n");
	}
	
	@Then("Click on Pending Invites radio button")
	public void click_on_Pending_Invites_radio_button() throws Throwable
	{
		String original = ec.getObjects("statuspending");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Sent Invites radio button under Status dropdown"+"\n");
		System.out.println("Click on Sent Invites radio button under Status dropdown "+"\n");
	}

	@Then("Show selected Supplier in search results {string}")
	public void show_selected_Supplier_in_search_results(String string) throws Throwable
	{
		String original = ec.getObjects("supplierstatusinfo") + string + ec.getObjects("supplierstatusinfo1");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		//assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		driver.findElement(By.xpath(original)).click();
    	logger.info("Shows Supplier status " +" "+ string + " "+  "in search results"+"\n");
    	System.out.println("Shows Supplier status " +" "+ string + " "+  "in search results"+"\n");
	}
	
	@Then("Click on Accepted Invites radio button")
	public void click_on_Accepted_Invites_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusaccepted");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Accepted Invites radio button under Status dropdown"+"\n");
		System.out.println("Click on Accepted Invites radio button under Status dropdown "+"\n");
	}
	
	@Then("Click on Declined radio button")
	public void click_on_Declined_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusdeclined");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Declined radio button under Status dropdown"+"\n");
		System.out.println("Click on Declined radio button under Status dropdown "+"\n");
	}
	
	@Then("Click on Profile Complete radio button")
	public void click_on_profile_complete_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusprofilecomplete");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Profile Complete radio button under Status dropdown"+"\n");
		System.out.println("Click on Profile Complete radio button under Status dropdown "+"\n");
		Thread.sleep(2000);
	}
	
	@Then("Click on Ready For Review radio button")
	public void click_on_Ready_For_Review_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusreadyforreview");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Ready For Review radio button under Status dropdown"+"\n");
		System.out.println("Click on Ready For Review radio button under Status dropdown "+"\n");
	}
	
	@Then("Click on Returned to Supplier radio button")
	public void click_on_return_to_supplier_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusactionrequired");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Returned to Supplier radio button under Status dropdown"+"\n");
		System.out.println("Click on Returned to Supplier radio button under Status dropdown "+"\n"); 
	}
	
	@Then("Click on Onboarded radio button")
	public void click_on_Onboarded_radio_button() throws Throwable
	{
		String original = ec.getObjects("statusonboarded");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Onboarded radio button under Status dropdown"+"\n");
		System.out.println("Click on Onboarded radio button under Status dropdown "+"\n"); 
	}

	@Then("^Click \"([^\"]*)\" button in view supplier page$")
    public void click_something_button_in_view_supplier_page(String strArg1) throws Throwable {
        String original = ec.getObjects("manage_or_assign");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Manage / Assign Questionnaires"+"\n");
		System.out.println("Click on Manage / Assign Questionnaires "+"\n"); 
    }
	@Then("^Click return to supplier icon$")
    public void click_return_to_supplier_icon() throws Throwable {
        String original = ec.getObjects("backto_supplier");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on return to supplier icon"+"\n");
		System.out.println("Clicked on return to supplier icon"+"\n"); 
    }


}
