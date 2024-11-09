package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import java.io.File;
import utility.ElementControl;
import utility.WaitClass;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import java.util.List;
import java.util.stream.Collectors;

import utility.Miscellaneous;

public class MySuppliers extends DriverEngine
{	
	public static ElementControl ec = new ElementControl();

	public Miscellaneous mis = new Miscellaneous();

	ArrayList<Object> timeStamp = new ArrayList<Object>();
	
	Logger logger=Logger.getLogger(MySuppliers.class);
	
	ArrayList<String> passwordList = new ArrayList<String>();
	String cName;
	@Then("Click on Suppliers Menu")
	public void click_on_Suppliers_Menu() {
		
		for (int k = 0; k < 4; k++)
			try {
		String original = ec.getObjects("suppliers_submenu");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		if(driver.findElement(By.xpath( ec.getObjects("mysuppliers"))).isDisplayed())
		{
			break;
		}
		
		
		logger.info("Clicked on Supplier menu"+"\n"); 
		System.out.println("Clicked on Supplier menu"+"\n");
		
			} catch (Exception o) {
				o.toString();
				logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
				System.out.println("Trying to recover from a stale element :" + o.getMessage());
			}
		}	
	@Then("Click on Suppliers Tab")
	public void click_on_Suppliers_Tab() throws Throwable
	{		
		
		for (int k = 0; k < 4; k++)
		try {
			String original = ec.getObjects("newsuppliers");		
			String formatXPATH = String.format(original);
			WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		break;
	} catch (Exception o) {
		o.toString();
		logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
		System.out.println("Trying to recover from a stale element :" + o.getMessage());
	}
		System.out.println("Click on Suppliers Tab\"+\"\n");
		logger.info("Click on Suppliers Tab"+"\n"); 
	}
	
	@Then("Click on My Suppliers Tab")
	public void click_on_My_Suppliers_Tab() throws Throwable
	{		
		
		for (int k = 0; k < 4; k++)
		try {
			String original = ec.getObjects("mysuppliers");		
			String formatXPATH = String.format(original);
			WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		break;
	} catch (Exception o) {
		o.toString();
		logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
		System.out.println("Trying to recover from a stale element :" + o.getMessage());
	}
		System.out.println("Click on My Suppliers Tab\"+\"\n");
		logger.info("Click on My Suppliers Tab"+"\n"); 
		
	}
	
	@Then("Click on Connected Supplieres Tab")
	public void click_on_Connected_Supplieres_Tab() {
		
		String original = ec.getObjects("connectedSuppliers");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath("connectedSuppliers")).click();
	    
		System.out.println("Click on Connected Suppliers Tab\"+\"\n");
		logger.info("Click on Connected Suppliers Tab"+"\n"); 
	}

	
	@Then("Click on the Search by supplier name and press Enter")
	public void click_on_the_Search_by_supplier_name_and_press_Enter() throws InterruptedException {
		  cName = InviteSupplierPage.companyname;
          String original = ec.getObjects("link_var1")+cName+ec.getObjects("clickRow");
          String formatXPATH = String.format(original);
          WaitClass.clickableWait(formatXPATH);
          driver.findElement(By.xpath(original)).click();
       
           logger.info("Clicked on the Search by supplier name and press Enter" + "\n");
           System.out.println("Clicked on the Search by supplier name and press Enter" + "\n");

	    }


	@Then("Verify the status as {string}")
	public void verify_the_status_as() {
		
		String original = ec.getObjects("status");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		
	}
	
	@Then("Verify the status as_new {string}")
	public void verify_the_status_as_new(String string) {
		
		String original = ec.getObjects("supplierstatus");
		String original1 = original + string +"')]";
		String formatXPATH = String.format(original1);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original1)).isDisplayed());
		
	}
	@Then("Verify the Status as Onboarded")
	public void verify_the_Status_as_Onboarded() {
		String original = ec.getObjects("statusOnboarded");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
	}
	@Then("Click on Nokia Suppliers Tab")
	public void click_on_Nokia_Suppliers_Tab() throws Throwable
	{		
		
		for (int k = 0; k < 4; k++)
		try {
			String original = ec.getObjects("nokiasuppliers");		
			String formatXPATH = String.format(original);
			WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		break;
	} catch (Exception o) {
		o.toString();
		logger.info("Trying to recover from a stale element :" + o.getMessage() + "\n");
		System.out.println("Trying to recover from a stale element :" + o.getMessage());
	}
		System.out.println("Click on My Suppliers Tab\"+\"\n");
		logger.info("Click on My Suppliers Tab"+"\n"); 
		
		Thread.sleep(10000);
	}
	
	@Then("Show title on My Suppliers page {string}")
	public void show_title_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierpagetitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows title " +" "+ string + " "+  "on My Supplier page"+"\n");
    	System.out.println("Shows title  " +" "+ string + " "+  "on My Supplier page"+"\n");
	}
	
	@Then("Show title on Invite Supplier modal window {string}")
	public void show_title_on_Invite_Supplier_modal_window(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierinvitemodaltitle");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows title " +" "+ string + " "+  "on Invite Supplier Modal Window"+"\n");
    	System.out.println("Shows title  " +" "+ string + " "+  "on Invite Supplier Modal Window"+"\n");
	}
	
	@Then("Show User dropdown on My Suppliers page {string}")
	public void show_User_dropdown_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierusersdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows User dropdown " +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Shows User dropdown  " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	
	@Then("User dropdown enabled on My Suppliers page {string}")
	public void user_dropdown_enabled_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierusersdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("User dropdown clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
		System.out.println("User dropdown clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
	}
	
	@Then("Click on User dropdown on My Suppliers page")
	public void click_on_User_dropdown_on_My_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("mysupplierusersdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on User dropdown on My Suppliers page "+"\n");
	}
	
	@Then("Show Apply button in User drop down {string}")
	public void show_Apply_button_in_User_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Apply button " +" "+ string + " "+  "in User dropdown"+"\n");
    	System.out.println("Shows Apply button  " +" "+ string + " "+  "in User dropdown"+"\n");
	}
	
	@Then("Click on Cancel button in User drop down")
	public void click_on_Cancel_button_in_User_drop_down() throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on cancel button in User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on cancel button in User dropdown on My Suppliers page "+"\n");
	}
	
	
	@Then("Apply button enabled in User drop down {string}")
	public void apply_button_enabled_in_User_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("Apply button clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
		System.out.println("Apply button clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
	}
	
	@Then("Click on Apply button in User dropdown")
	public void click_on_Apply_button_in_User_dropdown() throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Apply button in User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Apply button in User dropdown on My Suppliers page "+"\n"); 
		Thread.sleep(10000);
	}
	
	@Then("Show Cancel button in User drop down {string}")
	public void show_Cancel_button_in_User_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Cancel button " +" "+ string + " "+  "in User dropdown"+"\n");
    	System.out.println("Shows Cancel button  " +" "+ string + " "+  "in User dropdown"+"\n");
	}
	
	@Then("Cancel button enabled in User drop down {string}")
	public void cancel_button_enabled_in_User_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("Cancel button clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
		System.out.println("Cancel button clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
	}
	
	@Then("Click on Cancel button in User dropdown")
	public void click_on_Cancel_button_in_User_dropdown() throws Throwable
	{
		String original = ec.getObjects("mysupplieruserdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Close button in User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Close button in User dropdown on My Suppliers page "+"\n"); 
	}
	
	@Then("Show Invite First Name label in User dropdown {string}")
	public void show_Invite_First_Name_label_in_User_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierinvitefirstname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Invitee First Name " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
    	System.out.println("Invitee First Name  " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Invite Last Name label in User dropdown {string}")
	public void show_Invite_Last_Name_label_in_User_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierinvitelastname");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Invitee Last Name " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
    	System.out.println("Invitee Last Name  " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
	}	
	
	@Then("Show Invite Email label in User dropdown {string}")
	public void show_Invite_Email_label_in_User_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierinviteemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Invitee Email " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
    	System.out.println("Invitee Email  " +" "+ string + " "+  "in User dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Status dropdown on My Suppliers page {string}")
	public void show_Status_dropdown_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Status dropdown " +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Shows Status dropdown  " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	
	@Then("Status dropdown enabled on My Suppliers page {string}")
	public void status_dropdown_enabled_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("Status dropdown clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n"); 
		System.out.println("Status dropdown clickable "+ " "+ string +" "+" on Invite Supplier window"+"\n");
	}
	
	@Then("Click on Status dropdown on My Suppliers page")
	public void click_on_Status_dropdown_on_My_Suppliers_page() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Status dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Status dropdown on My Suppliers page "+"\n");
	}
	
	@Then("Show Apply button in Status drop down {string}")
	public void show_Apply_button_in_Status_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Apply button " +" "+ string + " "+  "in Status dropdown"+"\n");
    	System.out.println("Shows Apply button  " +" "+ string + " "+  "in Status dropdown"+"\n");
	}
	
	@Then("Click on Cancel button in Status drop down")
	public void click_on_Cancel_button_in_Status_drop_down() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Close button in Status dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Close button in Status dropdown on My Suppliers page "+"\n");
	}
	
	@Then("^Click on \"([^\"]*)\" button in connected supplier filter by$")

	public void click_on_something_button_in_connected_supplier_filter_by(String string) throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);

		String original = ec.getObjects("ownership_button_variable") + string + "')]";
		String formatXPATH = String.format(original);

		Thread.sleep(2000);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " button" + "\n");

		Thread.sleep(2000);
	}
	
	@Then("Apply button enabled in Status drop down {string}")
	public void apply_button_enabled_in_Status_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("Apply button clickable "+ " "+ string +" "+" in Status dropdown on My Suppliers page"+"\n"); 
		System.out.println("Apply button clickable "+ " "+ string +" "+" in Status dropdown on My Suppliers page"+"\n"); 
	}
	
	@Then("Click on Apply button in Status dropdown")
	public void click_on_Apply_button_in_Status_dropdown() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(14000);
		
    	logger.info("Click on Apply button under status dropdown on My Supplier page "+"\n");
    	System.out.println("Click on Apply button under status dropdown on My Supplier page"+"\n");  
	}
	
	@Then("Show Cancel button in Status drop down {string}")
	public void show_Cancel_button_in_Status_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Cancel button " +" "+ string + " "+  "in Status dropdown on My Suppliers page"+"\n");
    	System.out.println("Shows Cancel button  " +" "+ string + " "+  "in Status dropdown on My Supliers page"+"\n");
	}
	
	@Then("Cancel button enabled in Status drop down {string}")
	public void cancel_button_enabled_in_Status_drop_down(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdowncancel");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		logger.info("Cancel button clickable "+ " "+ string +" "+" in Status dropdown on My Suppliers page"+"\n"); 
		System.out.println("Cancel button clickable "+ " "+ string +" "+" in Status dropdown on My Suppliers page"+"\n"); 
	}
	
	@Then("Show Sent Invites label in Status dropdown {string}")
	public void show_Sent_Invites_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelsentinvite");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Sent Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Sent Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Pending Invites label in Status dropdown {string}")
	public void show_pending_invites_label_in_status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelpendinginvite");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Pending Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Pending Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Accepted Invites label in Status dropdown {string}")
	public void show_Accepted_Invites_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelacceptedinvite");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Accepted Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Accepted Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Declined invites label in Status dropdown {string}")
	public void show_Declined_invites_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabeldeclined");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Declined " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Declined  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Profile Complete label in Status dropdown {string}")
	public void show_profile_complete_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelprofilecomplete");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Profile Complete " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Profile Complete  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Ready For Review label in Status dropdown {string}")
	public void show_Ready_For_Review_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelreadyforreview");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Ready For Review " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Ready For Review  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Returned to Supplier label in Status dropdown {string}")
	public void show_Returned_to_Supplier_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelactionrequired");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Returned to Supplier " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Returned to Supplier  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Show Onboarded label in Status dropdown {string}")
	public void show_Onboarded_label_in_Status_dropdown(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierstatuslabelonboarded");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Onboarded " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Onboarded  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
	}
		
	@Then("Show All Suppliers option on My Suppliers page {string}")
	public void show_All_Suppliers_option_on_My_Suppliers_page(String string)
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("allsuppliers"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Show Sent Invites option on My Suppliers page {string}")
	public void show_Sent_Invites_option_on_My_Suppliers_page(String string)
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("sentinvites"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Show Accepted Invites option on My Suppliers page {string}")
	public void show_Accepted_Invites_option_on_My_Suppliers_page(String string) 
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("acceptedinites"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}

	@Then("Show Declined option on My Suppliers page {string}")
	public void show_Declined_option_on_My_Suppliers_page(String string) 
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("declined"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}

	@Then("Show Ready For Review option on My Suppliers page {string}")
	public void show_Ready_For_Review_option_on_My_Suppliers_page(String string) 
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("readyforreview"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}

	@Then("Show Action Required option on My Suppliers page {string}")
	public void show_Action_Required_option_on_My_Suppliers_page(String string) 
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("actionrequired"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}

	@Then("Show Onboarded option on My Suppliers page {string}")
	public void show_Onboarded_option_on_My_Suppliers_page(String string) 
	{
		assertTrue(driver.findElement(By.xpath(ec.getObjects("onboarded"))).getText().contains(string));
    	logger.info("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing option" +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Sent Invites tab on My Suppliers")
	public void click_on_Sent_Invites_tab_on_My_Suppliers() 
	{
		driver.findElement(By.xpath(ec.getObjects("sentinvites"))).click();
		System.out.println("Click on Sent Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Sent Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Invited status on My Suppliers page {string}")
	public void show_Invited_status_on_My_Suppliers_page(String string) throws Throwable 
	{
		String original = ec.getObjects("invitestatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Accepted tab on My Suppliers")
	public void click_on_Accepted_tab_on_My_Suppliers() 
	{
		driver.findElement(By.xpath(ec.getObjects("acceptedinites"))).click();
		System.out.println("Click on Accepted Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Accepted Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Accepted status on My Suppliers page {string}")
	public void show_Accepted_status_on_My_Suppliers_page(String string) throws Throwable 
	{
		String original = ec.getObjects("acceptedstatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Ready For Review tab on My Suppliers")
	public void click_on_Ready_For_Review_tab_on_My_Suppliers() 
	{
		String original = ec.getObjects("readyforreview");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("readyforreview"))).click();
		System.out.println("Click on Ready For Review Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Ready For Review Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Ready For Review status on My Suppliers page {string}")
	public void show_Ready_For_Review_status_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("readyforreviewstatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Action Required tab on My Suppliers")
	public void click_on_Action_Required_tab_on_My_Suppliers()
	{
		String original = ec.getObjects("actionrequired");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("actionrequired"))).click();
		System.out.println("Click on Action Required Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Action Required Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Action Required status on My Suppliers page {string}")
	public void show_Action_Required_status_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("actionrequiredstatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Onboarded tab on My Suppliers")
	public void click_on_Onboarded_tab_on_My_Suppliers() 
	{
		String original = ec.getObjects("onboarded");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("onboarded"))).click();
		System.out.println("Click on Onboarded Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Onboarded Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Onboarded status on My Suppliers page {string}")
	public void show_Onboarded_status_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("Onboardedstatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Click on Declined tab on My Suppliers")
	public void click_on_Declined_tab_on_My_Suppliers() 
	{
		String original = ec.getObjects("declined");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("declined"))).click();
		System.out.println("Click on Declined Invites Tab on My Suppliers "+"\n");
		logger.info("Click on Declined Invites Tab on My Suppliers"+"\n");
	}

	@Then("Show Declined status on My Suppliers page {string}")
	public void show_Declined_status_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("declinedstatus");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier Status" +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Showing Supplier Status " +" "+ string + " "+  "on My Suppliers page"+"\n");
	}
	
	@Then("Show Invite Supplier button on My Supplier page {string}")
	public void show_Invite_Supplier_button_on_My_Supplier_page(String string) throws Throwable
	{
		String original = ec.getObjects("invitesupplier");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("invitesupplier"))).isDisplayed(),string);
		logger.info("Invite Supplier button button visible on My Supplier page"+" "+string+"\n");
		System.out.println("Invite Supplier button button visible on My Supplier page"+" "+string+"\n");
	}
	
	@Then("Invite Supplier button enabled on My Supplier page {string}")
	public void invite_Supplier_button_enabled_on_My_Supplier_page(String string) throws Throwable
	{
		String original = ec.getObjects("invitesupplier");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("invitesupplier"))).isEnabled(),string);
		logger.info("Invite Supplier button button enabled on My Supplier page"+" "+string+"\n");
		System.out.println("Invite Supplier button button enabled on My Supplier page"+" "+string+"\n");
	}

	@Then("Enter Supplier name in Search field {string}")
	public void enter_Supplier_name_in_Search_field(String string) throws Throwable
	{
		String original = ec.getObjects("suppliersearch");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
	}

	@Then("Click on Enter Key")
	public void click_on_Enter_Key() throws Throwable 
	{
		String original = ec.getObjects("supplierbtn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		
		Thread.sleep(10000);
	}
	
	@Then("Click on the Supplier from Search results")
	public void click_on_the_Supplier_from_Search_results() throws Throwable
	{
		String original = ec.getObjects("suppliersearchresult");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
	}
	
	@Then("Verify Supplier Name on Reading pane {string}")
	public void verify_Supplier_Name_on_Reading_pane(String string) throws Throwable
	{
		String original = ec.getObjects("suppliernameonreadingpan");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing Supplier " +" "+ string + " "+  "on reading pane"+"\n");
    	System.out.println("Showing Supplier  " +" "+ string + " "+  "on reading pane"+"\n");
	}
	
	@Then("Show Liaisons email address on reading pane for a supplier {string}")
	public void show_Liaisons_email_address_on_reading_pane_for_a_supplier(String string) throws Throwable
	{
		String original = ec.getObjects("liasionemail");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows liaisons email address " +" "+ string + " "+  "on reading pane"+"\n");
    	System.out.println("Shows liaisons email address  " +" "+ string + " "+  "on reading pane"+"\n");
	}
	
	@Then("Scroll the page")
	public void scroll_the_page() throws Throwable
	{
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(0, -900);");
	}
	
	@Then("Select Invited from Status filter")
	public void select_Invited_from_Status_filter() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Click on Status dropdown on My Supplier page "+"\n");
    	System.out.println("Click on Status dropdown on My Supplier page"+"\n");
    	
    	String original1 = ec.getObjects("mysupplierstatusdropdowninvited");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
    	logger.info("Invited radio button gott selected under Status dropdown "+"\n");
    	System.out.println("Invited radio button gott selected under Status dropdown"+"\n");
	}
	
	@Then("Show Invited on My Suppliers page {string}")
	public void show_Invited_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierseachresultsdata");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Invited Suppliers " +" "+ string + " "+  "on My Supplier page"+"\n");
    	System.out.println("Shows Invited Suppliers  " +" "+ string + " "+  "on My Supplier page"+"\n");
	}
	
	@Then("Click on Apply button")
	public void click_on_Apply_button() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		Thread.sleep(3000);
		
    	logger.info("Click on Apply button under status dropdown on My Supplier page "+"\n");
    	System.out.println("Click on Apply button under status dropdown on My Supplier page"+"\n");
	}
	
	@Then("Select Accepted from Status filter")
	public void select_Accepted_from_Status_filter() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Click on Status dropdown on My Supplier page "+"\n");
    	System.out.println("Click on Status dropdown on My Supplier page"+"\n");
    	
    	String original1 = ec.getObjects("mysupplierstatusdropdownaccepted");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
    	logger.info("Accepted radio button gott selected under Status dropdown "+"\n");
    	System.out.println("Accepted radio button gott selected under Status dropdown"+"\n");
	}
	
	@Then("Show Accepted on My Suppliers page {string}")
	public void show_Accepted_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierseachresultsdata");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Accepted Suppliers " +" "+ string + " "+  "on My Supplier page"+"\n");
    	System.out.println("Shows Accepted Suppliers  " +" "+ string + " "+  "on My Supplier page"+"\n");
	}
	
	@Then("Select Declined from Status filter")
	public void select_Declined_from_Status_filter() throws Throwable
	{
		String original = ec.getObjects("mysupplierstatusdropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Click on Status dropdown on My Supplier page "+"\n");
    	System.out.println("Click on Status dropdown on My Supplier page"+"\n");
    	
    	String original1 = ec.getObjects("mysupplierstatusdropdownrejected");		
		String formatXPATH1 = String.format(original1);
		
		WaitClass.webDriverWait(formatXPATH1);
		
		driver.findElement(By.xpath(original1)).click();
		
    	logger.info("Rejected radio button got selected under Status dropdown "+"\n");
    	System.out.println("Rejected radio button got selected under Status dropdown"+"\n");
	}
	
	@Then("Show Declined on My Suppliers page {string}")
	public void show_Declined_on_My_Suppliers_page(String string) throws Throwable
	{
		String original = ec.getObjects("mysupplierseachresultsdata");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Shows Rejected Suppliers " +" "+ string + " "+  "on My Supplier page"+"\n");
    	System.out.println("Shows Rejected Suppliers  " +" "+ string + " "+  "on My Supplier page"+"\n");
	}

	@Then("Click on Declined")
	public void click_on_Declined() throws Throwable{
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
    	String original = ec.getObjects("i_decline");		
		String formatXPATH = String.format(original);
		driver.switchTo().frame(0);
		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("i_decline"))).click();
		Thread.sleep(3000);

		System.out.println("Click on Declined "+"\n");
		logger.info("Click on Declined "+"\n");

	}

	@Then("Enter reason for return")
    public void enter_reason_for_return() throws Throwable {
        String original1 = ec.getObjects("declineSupplierDescription");

		String formatXPATH1 = String.format(original1);


		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).sendKeys("Testing this feature");

		

		System.out.println("Entered Reason "+"\n");

		logger.info("Entered Reason "+"\n");
	}
	

	@Then("Click on first record of the Search")
	public void click_on_first_record_of_the_Search() {
		String original = ec.getObjects("Firstrecord");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		
    	logger.info("Clicked on first record of the Search "+"\n");
    	System.out.println("Clicked on first record of the Search"+"\n");
	
	}

	@Then("Show {string} component on the reading panel")
	public void show_component_on_the_reading_panel(String string) {
		//strong[contains(text(),'Liaisons')]
		String original = ec.getObjects("BeginQuestionnaire_button") +  string  + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showed " +  string +" component on the reading panel" + "\n");
		System.out.println("Showed " +  string +" component on the reading panel" + "\n");
	}

	@Then("Show Notes component on the reading panel")
	public void show_Notes_component_on_the_reading_panel() {

		String original = ec.getObjects("availableQuestionnaire_name_var1") + "Notes']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Showed Notes component on the reading panel" + "\n");
		System.out.println("Showed Notes component on the reading panel" + "\n");
		
		
	}

	@Then("Click on {string} collapse icon")
	public void click_on_collapse_icon(String string) {
		//strong[contains(text(),'Liaisons')]//parent::h6//following-sibling::div/div/button/*[local-name()='svg']
		
		String original = ec.getObjects("BeginQuestionnaire_button") +  string + ec.getObjects("collapseicon") ;
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
		
    	logger.info("Clicked on  collapse icon "+"\n");
    	System.out.println("Clicked on  collapse icon"+"\n");
	}

	@Then("Show {string} button in the {string} component")
	public void show_button_in_the_component(String string, String string2) {
		//strong[contains(text(),'Notes')]//parent::h6//following-sibling::div/div/button[contains(text(),'Add Note')]
		String original = ec.getObjects("BeginQuestionnaire_button") +  string2 + ec.getObjects("buttonreadingpanel") +  string  + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Show "+ string +" button in the "+ string2 + " component" + "\n");
		System.out.println("Show "+ string +" button in the "+ string2 + " component" + "\n");
	}

	@Then("Show {string} Link in the {string} component")
	public void show_Link_in_the_component(String string, String string2) {
		//strong[contains(text(),'Questionnaires')]//parent::h6//following-sibling::div/div/a[contains(text(),'Manage / Assign Questionnaires')]
		String original = ec.getObjects("BeginQuestionnaire_button") +  string2 + ec.getObjects("linkreadingpanel") +  string  + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Show "+ string +" Link in the "+ string2 + " component" + "\n");
		System.out.println("Show "+ string +" Link in the "+ string2 + " component" + "\n");
	}

	@Then("Click on {string} Link in the {string} component")
	public void Click_on_Link_in_the_component(String string, String string2) {
		String original = ec.getObjects("BeginQuestionnaire_button") +  string2 + ec.getObjects("linkreadingpanel") +  string  + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked "+ string +" Link in the "+ string2 + " component" + "\n");
		System.out.println("Clicked "+ string +" Link in the "+ string2 + " component" + "\n");
	}

		@Then("Select Pending Invites in Status dropdown {string}")
    public void select_pending_invites_in_status_dropdown_something(String string) throws Throwable {
        String original = ec.getObjects("mysupplierstatuslabelpendinginvite1") + string + ec.getObjects("mysupplierstatuslabelpendinginvite2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Pending Invites " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");
    	System.out.println("Pending Invites  " +" "+ string + " "+  "in Status dropdown on My Supplier page"+"\n");

    }

	 @Then("click on supplier quick view button")
    public void click_on_supplier_quick_view_button() throws Throwable {
        String original = ec.getObjects("downarrowbutton_quickview");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Pending Invites  Quick view button on My Supplier page"+"\n");
    	System.out.println("Pending Invites Quick view button on My Supplier page"+"\n");

    }

	@Then("Click on View Supplier Button")
    public void click_on_view_supplier_button() throws Throwable {
        String original = ec.getObjects("view_supplier_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Pending Invites  Quick view button on My Supplier page"+"\n");
    	System.out.println("Pending Invites Quick view button on My Supplier page"+"\n");

    }

	 @Then("verify Profile page is visible")
    public void verify_profile_page_is_visible() throws Throwable {
		String original = ec.getObjects("profilebutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
        driver.findElement(By.xpath( ec.getObjects("profilebutton"))).isDisplayed();
    }

	@Then("Click on {string} Questionnaire")
    public void click_on_something_questionnaire(String string) throws Throwable {
        String original = ec.getObjects("Questionnaire_add1") + string + ec.getObjects("Questionnaire_add2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
    	logger.info("Click on State and Sez Questionnaire"+"\n");
    	System.out.println("Click on State and Sez Questionnaire"+"\n");

    }

	@Then("^Click \"([^\"]*)\" button in assign questionnaires page$")
    public void click_something_button_in_assign_questionnaires_page(String strArg1) throws Throwable {
        String original = ec.getObjects("update_questionnaies");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		//driver.findElement(By.xpath(original)).click();
		WebElement Element = driver.findElement(By.xpath(original));
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);

    	logger.info("Clicked on Update Questionnaire"+"\n");
    	System.out.println("Clicked on Update Questionnaire"+"\n");
    }


	@Then("Show Prev arrow button on My Suppliers page {string}")
    public void show_prev_arrow_button_on_my_suppliers_page_something(String string) throws Throwable {
        String original = ec.getObjects("prev_arrowbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
		
    	logger.info("Prev arrow button is displayed on My Suppliers page "+"\n");
    	System.out.println("Prev arrow button is displayed on My Suppliers page "+"\n");
    }


    @Then("Prev arrow button disabled on My Suppliers page {string}")
   		 public void prev_arrow_button_disabled_on_my_suppliers_page_something(String string) throws Throwable {
          String original = ec.getObjects("prev_arrowbutton_disabled");		
		  String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
		
    	logger.info("Prev arrow button is disabled on My Suppliers page "+"\n");
    	System.out.println("Prev arrow button is disabled on My Suppliers page "+"\n");
	}

	@Then("Show Next arrow button on My Suppliers page {string}")
	public void show_Next_arrow_button_on_My_Suppliers_page(String string) {
      String original = ec.getObjects("next_arrowbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		
    	logger.info("Next arrow button is displayed on My Suppliers page "+"\n");
    	System.out.println("Next arrow button is displayed on My Suppliers page "+"\n");
}

@Then("Next arrow button enabled on My Suppliers page {string}")
public void next_arrow_button_enabled_on_My_Suppliers_page(String string) {
      String original = ec.getObjects("next_arrowbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		
    	logger.info("Next arrow button is Enabled on My Suppliers page "+"\n");
    	System.out.println("Next arrow button is Enabled on My Suppliers page "+"\n");
}

@Then("Click on Next arrow button on My Suppliers page")
public void click_on_Next_arrow_button_on_My_Suppliers_page() {
    
      String original = ec.getObjects("next_arrowbutton");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("clicked on Next arrow button on My Suppliers page "+"\n");
    	System.out.println("clicked on Next arrow button on My Suppliers page "+"\n");
}

@Then("Prev arrow button enabled on My Suppliers page {string}")
public void prev_arrow_button_enabled_on_My_Suppliers_page(String string) {
    
          String original = ec.getObjects("prev_arrowbutton");		
		  String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),string);
		
    	logger.info("Prev arrow button is enabled on My Suppliers page "+"\n");
    	System.out.println("Prev arrow button is enabled on My Suppliers page "+"\n");
}

@Then("Click on Prev arrow button on My Suppliers page")
public void click_on_Prev_arrow_button_on_My_Suppliers_page() {
     String original = ec.getObjects("prev_arrowbutton");		
		  String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
    	logger.info("clicked on Prev arrow button on My Suppliers page "+"\n");
    	System.out.println("clicked on Prev arrow button on My Suppliers page "+"\n");
}

@Then("Enter {string} Supplier Contact email address on Invite New Liason modal") 
    public void enter_something_supplier_contact_email_address_on_invite_new_liason_modal(String string) throws Throwable {
        String original = ec.getObjects("input_email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		mis.addTimeStamp();

		String Email = string + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
    }

	 @Then("Enter {string} Supplier Confirm Contact email address on Invite New Liason modal") 
    public void enter_something_supplier_confirm_contact_email_address_on_invite_new_liason_modal(String string) throws Throwable {
          String original = ec.getObjects("input_confirm_email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		

		String Email = string + "supplier" + mis.getTimeStamp() + "@mailinator.com";

		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered data " + "'" + Email + "'" + " in Contact email address" + "\n");
		System.out.println("Entered data " + "'" + Email + "'" + " in Contacts email address" + "\n");
    }

	@Then("Enter Contact First Name on Invite New Liason modal")
    public void enter_contact_first_name_on_invite_new_liason_modal() throws Throwable {
        String original = ec.getObjects("input_firstname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("First Name");

		logger.info("Entered Contact First name field" + "\n");
		System.out.println("Entered Contact First name field" + "\n");
    }

	@Then("Enter Contact Last Name on Invite New Liason modal")
    public void enter_contact_last_name_on_invite_new_liason_modal() throws Throwable {
        String original = ec.getObjects("input_lastname");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Last Name");

		logger.info("Entered Contact First name field" + "\n");
		System.out.println("Entered Contact First name field" + "\n");
    }
	@Then("verify {string} visibility {string}")
	public void verify_visibility(String string, String string2) {
     String original = ec.getObjects("overview_label1") + string + ec.getObjects("overview_label2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);

		logger.info("Overview" + string + "is visible" + "\n");
		System.out.println("Overview" + string + "is visible" + "\n");
}

@Then("Enter Email address {string} in the search filter")
    public void enter_email_address_something_in_the_search_filter(String string) throws Throwable {
        String original = ec.getObjects("invitee_email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		Thread.sleep(1000);

		String Email = string + "@mailinator.com";
		do {
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Email);
		}while(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));
		Thread.sleep(2000);

		logger.info("Entered  field" + "\n");
		System.out.println("Entered  field" + "\n");

    }

	@Then("^Verify Email Address Quicklink Functionality \"([^\"]*)\"$")
    public void verify_email_address_quicklink_functionality_something(String string) throws Throwable {
         String original = ec.getObjects("quicklinks_emailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Email Address  Quicklink  clickable " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Email Address  Quicklink  clickable " + " " + string + " " + " in Basic Information" + "\n");
    }

	@Then("^Verify Phone Number Quicklink Functionality \"([^\"]*)\"$")
    public void verify_phone_number_quicklink_functionality_something(String string) throws Throwable {
         String original = ec.getObjects("quicklinks_phonenumber");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info(" Phone Number Quicklink  clickable " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Phone Number Quicklink  clickable " + " " + string + " " + " in Basic Information" + "\n");
    }

	@Then("^verify Description Quicklink is clickable \"([^\"]*)\"$")
    public void verify_description_quicklink_is_clickable_something(String string) throws Throwable {
         String original = ec.getObjects("quicklinks_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info(" Description Quicklink button clickable " + " " + string + " " + " in Basic Information" + "\n");
		System.out.println("Description Quicklink button clickable " + " " + string + " " + " in Basic Information" + "\n");
    }
		 
		  @Then("Click on document download")
    public void click_on_document_download() throws Throwable {
        String original = ec.getObjects("file_download");		
			String formatXPATH = String.format(original);
			WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
    }
	@Then("Verify the file downloaded")
    public void verify_the_file_downloaded() throws Throwable {
        File getLatestFile = getLatestFilefromDir("/home/vyshnavi/Downloads/");
	    String fileName = getLatestFile.getName();
	    assertTrue(fileName.equals("image001 (1).jpg"), "Downloaded file name is not matching with expected file name");
    }

	private File getLatestFilefromDir(String dirPath){
	    File dir = new File(dirPath);
	    File[] files = dir.listFiles();
	    if (files == null || files.length == 0) {
	        return null;
	    }
		File lastModifiedFile = files[0];
	    for (int i = 1; i < files.length; i++) {
	       if (lastModifiedFile.lastModified() < files[i].lastModified()) {
	           lastModifiedFile = files[i];
	       }
	    }
	    return lastModifiedFile;

   }

   @Then("Enter {string} into the textarea")
public void enter_into_the_textarea(String string) {
	String original = ec.getObjects("notes_text");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);

	WebElement toClear = driver.findElement(By.xpath(original));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);
	
	driver.findElement(By.xpath(original)).sendKeys(string);
}

@Then("verify the toast message {string}")
public void verify_the_toast_message(String string) {
    String original = ec.getObjects("addnotes_toastmsg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows Toast message " +" "+ string + " "+  "on Action center page"+"\n");
    	System.out.println("Shows Toast message  " +" "+ string + " "+  "on Action center page"+"\n");
}

@Then("verify the Notes Added as {string}")
public void verify_the_Notes_Added_as(String string) {
	String original = ec.getObjects("contains_label_var") + string + ec.getObjects("notes_added2");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	System.out.println(driver.findElement(By.xpath(original)).getText());
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
	logger.info("Shows Toast message " +" "+ string + " "+  "on Action center page"+"\n");
	System.out.println("Shows Toast message  " +" "+ string + " "+  "on Action center page"+"\n");
}

@Then("^Click \"([^\"]*)\" button in the modal$")
    public void click_something_button_in_the_modal(String string) throws Throwable {
        String original = ec.getObjects("savebtn_addnote");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Save button"+"\n");
		System.out.println("Click on save button"+"\n");
    }

	@Then("^Click \"([^\"]*)\" button to add file$")
    public void click_something_button_to_add_file(String string) throws Throwable {
        String original = ec.getObjects("attachfile_notes");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Attach a file"+"\n");
		System.out.println("Clicked on Attach a file"+"\n");
    }

	@Then("Click the latest added notes")
    public void click_the_latest_added_notes() throws Throwable {
		String original = ec.getObjects("latest_addnotes");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Latest Notes"+"\n");
		System.out.println("Clicked on Latest Notes"+"\n");
	}
	
   @Then("Scroll down to the end of the page")
    public void scroll_down_to_the_end_of_the_page() throws Throwable {

		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollTo(0, document.body.scrollHeight)");
		logger.info("Scrolled to the end of the page" + "\n");
		System.out.println("Scrolled to the end of the page" + "\n");
    }

	@Then("Click on Scroll to top button")
    public void click_on_scroll_to_top_button() throws Throwable {
        String original = ec.getObjects("Scroll_to_top");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info(" Clicked on Scroll to the top button" + "\n");
		System.out.println("Clicked on Scroll to the top button" + "\n");
    }

	@Then("Verify Scroll to top button Functionality")
    public void verify_scroll_to_top_button_functionality() throws Throwable {
		String original = ec.getObjects("Scroll_to_top");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).isEnabled();
		logger.info("Scroll to top button is Clickable" + "\n");
		System.out.println("Scroll to top button is Clickable" + "\n");
    }

	@Then("verify the page scrolled to the top")
    public void verify_the_page_scrolled_to_the_top() throws Throwable {
        String original = ec.getObjects("supplier_title");		
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("Scrolled to the top of the page" + "\n");
		System.out.println("Scrolled to the top of the page" + "\n");
    }

	@Then("check the checkbox")
    public void check_the_checkbox() throws Throwable {
        String original = ec.getObjects("selectedsupplier_checkbox");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
		logger.info("Checked on the supplier checkbox" + "\n");
		System.out.println("Checked on the supplier checkbox" + "\n");
    }

	@Then("show toast message as \"([^\"]*)\" in mysuppliers page")
    public void show_toast_message_as_something_in_mysuppliers_page(String strArg1) throws Throwable {
		String original = ec.getObjects("Export_toast_msg");		
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();
		logger.info("Scrolled to the top of the page" + "\n");
		System.out.println("Scrolled to the top of the page" + "\n");
    }

	@Then("Click on download button for the exported file")
    public void click_on_download_button_for_the_exported_file() throws Throwable {
        String original = ec.getObjects("download_button");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("clicked on the supplier download button" + "\n");
		System.out.println("clicked on the supplier download button" + "\n");
    }

	@Then("verify the file downloaded in My Supplier Extracts Page")
    public void verify_the_file_downloaded_in_my_supplier_extracts_page() throws Throwable {
		String original = ec.getObjects("recent_filename");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String fileName = driver.findElement(By.xpath(original)).getText();
		logger.info("" +fileName + "\n");
		fileName = fileName+".xlsx";
		String Path = System.getProperty("user.dir");
        File getLatestFile = getLatestFilefromDir(Path+"/target/File-Downloads/");
		File newpath = getLatestFilefromDir(Path+"/target/File-Downloads/" + getLatestFile.getName() + "/");
		String downloadedFile = newpath.getName();
		assertTrue(fileName.equalsIgnoreCase(downloadedFile));

		logger.info("Exported csv File Downloaded" + downloadedFile + "=" +fileName + "\n");
		System.out.println("Exported csv File Downloaded" + downloadedFile + "=" +fileName  + "\n");
    }


    @Then("Click My Supplier Extracts page")
    public void click_my_supplier_extracts_page() throws Throwable {
		String original = ec.getObjects("My_Supplier_Extracts");		
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("clicked on the My Supplier Extracts page " + "\n");
		System.out.println("clicked on the My Supplier Extracts page " + "\n");
    }

	@Then("Enter {string} in Approval Request Description")
	public void enter_in_Approval_Request_Description(String string) {
    String original = ec.getObjects("approval_text");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		logger.info("Entered"+ string+ "in Approval Request Description " + "\n");
		System.out.println("Entered"+ string+ "in Approval Request Description  " + "\n");
}





@Then("Show Toat message {string} in approval requests page")
public void show_Toat_message_in_approval_requests_page(String string) {
    String original = ec.getObjects("approval_toast");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows toast message as "+ string+"\n");
    	System.out.println("Shows toast message as  " +" "+ string + "\n");
}

@Then("Veiw {string} as {string}")
public void veiw_as(String string, String string2) {
    String original = ec.getObjects("view_approval_description1") + string2 + ec.getObjects("view_approval_description2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows User dropdown " +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Shows User dropdown  " +" "+ string + " "+  "on My Suppliers page"+"\n");
}

@Then("Click on the All button")
public void click_on_the_all_button() throws Throwable {
	String original = ec.getObjects("All_button");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on All button"+"\n");
		System.out.println("Clicked on All button "+"\n");
}

@Then("Select {string} in {string} dropdown in Action Center")
    public void select_something_in_something_dropdown_in_action_center(String Option, String Label) throws Throwable {
        Thread.sleep(5000);

		String original = ec.getObjects("select_role1");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		//driver.findElement(By.xpath(original)).click();

		WebElement element = driver.findElement(By.xpath(original));
		JavascriptExecutor js = (JavascriptExecutor)driver;

		js.executeScript("arguments[0].click()", element);

		driver.findElement(By.xpath(original)).sendKeys(Option);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
    }

	@Then("Click on Actions dropdown button")
    public void click_on_actions_dropdown_button() throws Throwable {
		String original = ec.getObjects("actions_latest");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
//		WebElement element = driver.findElement(By.xpath(original));
//		JavascriptExecutor js = (JavascriptExecutor)driver;
//
//		js.executeScript("arguments[0].click()", element);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Clicked on Actions button"+"\n");
		System.out.println("Clicked on Actions button "+"\n");
    }

	@Then("Verify the document uploaded")
    public void verify_the_document_uploaded() throws Throwable {
        
		String original = ec.getObjects("docuploaded");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Shows Document"+"\n");
    	System.out.println("Shows Document"+"\n");
    }

	@Then("^verify \"([^\"]*)\" under \"([^\"]*)\" in the modal$")
    public void verify_something_under_something_in_the_modal(String strArg1, String strArg2) throws Throwable {
		String original = ec.getObjects("approval_required1") + strArg1 + ec.getObjects("approval_required2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Shows"+ strArg1 + "under"+ strArg2 +"\n");
    	System.out.println("Shows"+ strArg1 + "under" + strArg2 +"\n");
    }

	@Then("Click on Diversity dropdown on My Suppliers page")
	public void click_on_Diversity_dropdown_on_My_Suppliers_page() {
		String original = ec.getObjects("connectedsuppliersdiversity");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Diversity dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Diversity dropdown on My Suppliers page "+"\n");
	}
	
	@Then("Select {string} in Diversity filter")
	public void select_in_Diversity_filter(String string) {
		String original = ec.getObjects("filtername1") +string +ec.getObjects("filtername2");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Selected Diversity Filter"+"\n");
		System.out.println("Selected Diversity Filter "+"\n");
	}
	
	@Then("Click on Apply button in Diversity dropdown")
	public void click_on_Apply_button_in_Diversity_dropdown() throws Throwable {
		String original = ec.getObjects("mysupplierdiversitydropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Apply button in User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Apply button in User dropdown on My Suppliers page "+"\n"); 
		Thread.sleep(10000);
	}

	@Then("Click on Apply button in Discover Diversity dropdown")
	public void click_on_Apply_button_in_Discover_Diversity_dropdown() throws Throwable {
		String original = ec.getObjects("discoverdiversitydropdownapply");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Apply button in User dropdown on My Suppliers page"+"\n");
		System.out.println("Click on Apply button in User dropdown on My Suppliers page "+"\n"); 
		Thread.sleep(10000);
	}
	
	@Then("verify the count of suppliers")
	public void verify_the_count_of_suppliers() {
		String original = ec.getObjects("count");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Count of Suppliers with status"+"\n");
		System.out.println("Count of Suppliers with status"+"\n");
	}
	
	@Then("Scroll to up")
	public void scroll_down_the_page() throws Throwable {
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		jse.executeScript("scroll(1000, 0);");
		Thread.sleep(5000);

	}
	
	@Then("Click on Clear all filters")
	public void click_on_Clear_all_filters() {
		String original = ec.getObjects("clearallfilters");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on Clear all filters"+"\n");
		System.out.println("Clicked on Clear all filters"+"\n");
	}
	@Then("Enter Old Password in Change Password Modal")
    public void enter_old_password_in_change_password_modal() throws Throwable {
        String original = ec.getObjects("changepassword_old");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("pwd"));
		
    }

	@Then("Enter New Password in Change Password Modal")
    public void enter_new_password_in_change_password_modal() throws Throwable {
        String original = ec.getObjects("changepassword_new");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String password = RandomStringUtils.randomAlphabetic(8) + "@" + RandomStringUtils.randomNumeric(3);
		
		passwordList.add(0, password);
		
		driver.findElement(By.xpath(original)).sendKeys(passwordList.get(0));
		
    }

	@Then("Enter Confirm Password in Change Password Modal")
    public void enter_confirm_password_in_change_password_modal() throws Throwable {
        String original = ec.getObjects("changepassword_confirm");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(passwordList.get(0));

    }

	@Then("Enter changed password in Password field")
	public void enter_changed_password_in_Password_field() {

		String original = ec.getObjects("password");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(passwordList.get(0));
		
		System.out.println("Entered Newly changed password in password field" + "\n");
	}

	@Then("Click on Buyer Profile button")
	public void click_on_Buyer_Profile_button() throws InterruptedException {
		Thread.sleep(5000);
		String ProfileBtn = ec.getObjects("profile_btn");
		String formatXPATH = String.format(ProfileBtn);
		WaitClass.clickableWait(formatXPATH);
		
		String signoutBtn = ec.getObjects("signout");
		String formatXPATH1 = String.format(signoutBtn);
		
		do {
		driver.findElement(By.xpath(ec.getObjects("profile_btn"))).click();
		}while(!driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		System.out.println("\n" + "Clicked on Profile button" + "\n");
	}

	@Then("Click Change Password Button")
	public void click_Change_Password_Button() {

		String ChangePassword = ec.getObjects("changepassword_button");
		String formatXPATH = String.format(ChangePassword);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("changepassword_button"))).click();
		System.out.println("\n" + "Clicked on changepassword button" + "\n");
	}

	@Then("Click Confirm Password Button in Change Password Modal")
    public void click_confirm_password_button_in_change_password_modal() throws Throwable {
		Thread.sleep(3000);
        String ChangePassword = ec.getObjects("confirm_changepassword");
		String formatXPATH = String.format(ChangePassword);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("confirm_changepassword"))).click();
		System.out.println("\n" + "Clicked on confirm changepassword button" + "\n");
    }

	@Then("Show Toast Message as {string}")
	public void show_Toast_Message_as(String string) throws InterruptedException {
		Thread.sleep(2000);
		String original = ec.getObjects("banktoast_msg1") + string + ec.getObjects("banktoast_msg2");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		System.out.println(driver.findElement(By.xpath(original)).getText());
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Shows User dropdown " +" "+ string + " "+  "on My Suppliers page"+"\n");
    	System.out.println("Shows User dropdown  " +" "+ string + " "+  "on My Suppliers page"+"\n");

	}



	@Then("Click on {string} button on Invite liason window")
    public void click_on_something_button_on_invite_liason_window(String string) throws Throwable {
        String original = ec.getObjects("newliason_invite1") + string + ec.getObjects("newliason_invite2");		
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Clicked on"+ string + "button" + "\n");
		System.out.println("Clicked on"+ string + "button" + "\n");
   
    }

	@Then("Verify New Liason Email received {string} supplier Inbox with subject {string}")
    public void verify_new_liason_email_received_something_supplier_inbox_with_subject_something (String country, String subject) throws Throwable {

		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		String original = ec.getObjects("mailinator_searchbox");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			driver.navigate().refresh();
		}
		WaitClass.clickableWait(original);

		String Email = country + "supplier" + mis.getTimeStamp() + "@mailinator.com";
		driver.findElement(By.xpath(original)).sendKeys(Email);

		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email + " in mailinator search box" + "\n");

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Pressed Enter Key" + "\n");
		System.out.println("Pressed Enter Key" + "\n");

		// ArrayList<WebElement> GotIt = new ArrayList<WebElement>(
		// 		driver.findElements(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		// if (GotIt.size() > 0) {
		// 	action.click(driver.findElement(By.xpath(ec.getObjects("mailinator_cookies_btn"))));
		// } else {
		// 	System.out.println("Got It button not found");
		// }
		Thread.sleep(2000);

		String SubjectLine = ec.getObjects("CH_variable_subjectLine") + subject + "')]";

		String EmailformatXPATH = String.format(SubjectLine);

		
		int f = 5;
		boolean isDisplayed = false;
		for(int i = 1; i<=f; i++)
		{ 
		Thread.sleep(3000);
		System.out.println("\n" + "Entered For loop" + "\n");
		if(driver.findElements(By.xpath(EmailformatXPATH)).size() > 0)
		{
			System.out.println("\n" + "Entered If Block" + "\n");
			isDisplayed = true;
			break;
		}
		else
		{
			System.out.println("\n" + "Entered Else Block" + "\n");
			driver.findElement(By.xpath(ec.getObjects("mailinator_inbox_gobtn"))).click();
			System.out.println("\n" + "Clicked on GO button in Inbox" + "\n");
			Thread.sleep(2000);
		}
		}
		
		assertTrue(isDisplayed);
		
		//WaitClass.clickableWait(EmailformatXPATH);

		//assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));

		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");

	}

	@Then("Close all tabs")
	public void close_all_tabs() {

			driver.close();
			
			logger.info("\n" + "Closed TYS registration page tab" + "\n");
			System.out.println("\n" + "Closed TYS registration page tab" + "\n");
	}
	
	@Then("Click on View button under Actions button")
	public void click_on_View_button_under_Actions_button() {

		//int i = driver.findElements(By.xpath(ec.getObjects("AR_actions_button"))).size();
		
		//String original = ec.getObjects("actionsLatest_View_btn_var1") + i + ec.getObjects("actionsLatest_View_btn_var2");		
		String original = ec.getObjects("firstAction_view_button");
		String formatXPATH = String.format(original);
		
		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		
		logger.info("Clicked on View button under Actions button" + "\n");
		System.out.println("Clicked on View button under Actions button" + "\n");
		
	}
	
	@Then("Click {string} checkbox Diversity Category in basic information")
	public void click_checkbox_Diversity_Category_in_basic_information(String CheckBoxLabel) {

		String original1 = ec.getObjects("basicInfo_diversity_input");
		
		String original = ec.getObjects("basicInfo_diversity_checkbox_var1") + CheckBoxLabel + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(original1);
		
		driver.findElement(By.xpath(original1)).click();
		
		driver.findElement(By.xpath(original1)).sendKeys(CheckBoxLabel);
		
		//driver.findElement(By.xpath(original1)).sendKeys(Keys.ENTER);
		
		WaitClass.clickableWait(original);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Clicked on " + CheckBoxLabel + "checkbox" + "\n");
		System.out.println("Clicked on " + CheckBoxLabel + "checkbox" + "\n");
		
	
	}

	@Then("Verify {string} is visble under {string} column")
	public void verify_is_visble_under_column(String CompanyName, String string2) {

		String original = ec.getObjects("suplierRecord_companyName_text");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(original);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equals(CompanyName));
		
		logger.info("Verified Company Name '" + CompanyName + "' is visble" + "\n");
		System.out.println("Verified Company Name '" + CompanyName + "' is visble" + "\n");
		
	}
	
	@Then("Verify IBM status is {string}")
	public void verify_IBM_status_is(String status) {
		
		String original = ec.getObjects("buyers_IBM_status_var1") + status + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		
		logger.info("Verified IBM's status is : " + status + "\n");
		System.out.println("Verified IBM's status is : " + status + "\n");
	}
	
	@Then("Click on the IBM record")
	public void click_on_the_IBM_record() {
		
		String original = ec.getObjects("buyers_IBM_record");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Clicked on IBM record" + "\n");
		System.out.println("Clicked on IBM record" + "\n");
	}
	
	@Then("Show IBM title on the Dashboard page")
	public void show_IBM_title_on_the_Dashboard_page() {

		String original = ec.getObjects("buyers_IBM_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		
		logger.info("Verified IBM title is visible" + "\n");
		System.out.println("Verified IBM title is visible" + "\n");
	
	}

	@Then("Show \"([^\"]*)\" in Filters tab$")
    public void show_something_in_filters_tab(String strArg1) throws Throwable {
        
		String original = ec.getObjects("filters1") + strArg1 + ec.getObjects("filters2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		
		logger.info("Verified IBM title is visible" + "\n");
		System.out.println("Verified IBM title is visible" + "\n");
    }
	@Then("^Verify \"([^\"]*)\" button in Filters tab is \"([^\"]*)\"$")
    public void verify_something_button_in_filters_tab_is_something(String strArg1, String strArg2) throws Throwable {
        String original = ec.getObjects("filters1") + strArg1 + ec.getObjects("filters2");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),strArg2);
		logger.info("Supplier Filter Enabled "+ " "+ strArg1 +" "+" "+"\n"); 
		System.out.println("Supplier Filter Enabled "+ " "+ strArg1 +" "+""+"\n"); 
    }
	//changepassword
	@Then("Enter {string} Invalid Confirm Password in Change Password Modal")
    public void enter_invalidconfirm_password_in_change_password_modal(String invalidPassword) throws Throwable {
        String original = ec.getObjects("changepassword_confirm");		
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(original)).sendKeys(invalidPassword);
		logger.info("Entered Invalid Password "+ " "+ invalidPassword +" "+" "+"\n"); 
		System.out.println("Entered Invalid Password "+ " "+ invalidPassword +" "+""+"\n"); 
    }
	@Then("Verify password warning information {string} under at {string}")
    public void verify_warning_info_pass(String PasswordInfo,String subcat) throws Throwable {
        String original = ec.getObjects("diversity_text")+PasswordInfo+"']";		
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(PasswordInfo));
		logger.info("Verified password information: "+ " "+ PasswordInfo +"at "+subcat+"\n"); 
		System.out.println("Verified password information: "+ " "+ PasswordInfo +"at"+subcat+"\n"); 
    }
	@Then("Verify error message {string} for invalid password")
    public void verify_invalid_password_error(String invalidPassworderror) throws Throwable {
		 	String original = ec.getObjects("diversity_text")+invalidPassworderror+"']";		
			String formatXPATH = String.format(original);
			assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(invalidPassworderror));
			logger.info("Verified confirm password error: "+ " "+ invalidPassworderror +" "+" "+"\n"); 
			System.out.println("Verified confirm password error: "+ " "+ invalidPassworderror +" "+""+"\n"); 
    }
	@Then("Verify {string} input label is displayed under {string}")
	public void verify_label_displayed_changepassword(String label,String SubCat) {

		String original = ec.getObjects("label_registration") + label +"']";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + label + "'" + " input text field is enabled in " + SubCat + "\n");
		System.out.println("Verified " + "'" + label + "'" + " input text field is enabled in " + SubCat + "\n");
	
	}
	@Then("Verify page header {string} for {string}")
	public void reviewRemainder(String label,String header) {
		String original = ec.getObjects("headLabel_var")+label+"']";
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(label));

		logger.info("Showing page header " + label + "\n");
		System.out.println("Showing page header " + label + "\n");

	}
	@Then("Verify {string} input field is enabled under for {string}")
	public void verify_createConfig_btn_enable(String Label, String subCat) {

		String original = ec.getObjects("inputfield1") + Label + ec.getObjects("inputfield_end");
		String formatXPATH = String.format(original);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + "'" + Label + "'" + " button is enabled under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " button is enabled under" + subCat + "\n");
	}
	
	@Then("Verify search results filtered on column {string} with {string} on Connected Suppliers page")
	public void verify_search_results_filtered_on_column_with_on_Connected_Suppliers_page(String string, String string2) 
	{
		String original = ec.getObjects("filter_supplier_name_search");
		String formatXPATH = String.format(original);
		
		boolean out = driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		assertTrue(out,string2);

		logger.info("Verify search results filtered on column {string} with {string} on Connected Suppliers page" + "\n");
		System.out.println("Verify search results filtered on column {string} with {string} on Connected Suppliers page" + "\n");
	}
	@Then("Select {string} in {string} dropdown under Connected Suppliers")
    public void select_ready_to_onboard(String option,String status) throws Throwable {
        String original = ec.getObjects("div_txt") + status + ec.getObjects("select_status_readyToOnboard");		
		String formatXPATH = String.format(original);
		String options = ec.getObjects("select_sta") + option +"']";
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(option);
		Thread.sleep(2000);
		driver.findElement(By.xpath(options)).click();
		
    	logger.info("Selected "+option+"\n");
    	System.out.println("Selected "+option+"\n");

    }
}

