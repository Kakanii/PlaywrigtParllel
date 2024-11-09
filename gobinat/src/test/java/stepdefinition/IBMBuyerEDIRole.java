package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class IBMBuyerEDIRole extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(Dashboard.class);
	
	@Then("Enter {string} in EmailAddress field")
	public void enter_something_in_email_address_field(String string) throws Throwable
    
	{
		String original = ec.getObjects("email"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "In Email Address field"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "In Email Address field"+"\n");

    }
	
	  

	
	@Then("Show Dashboard option on Dashboard page {string}")
	public void show_Dashboard_tab_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("dashboard");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isDisplayed(),string);
    	logger.info("Dashboard Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n"); 
    	System.out.println("Dashboard Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("Click Upon Dashboard option on Dashboard page")
    public void click_upon_dashboard_tab_on_dashboard_page() throws Throwable 
	{
		String original = ec.getObjects("dashboard");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("dashboard"))).click();
    	logger.info("Click upon Dashboard Tab on Dashboard page"+"\n");
    	System.out.println("Click upon Dashboard Tab on Dashboard page"+"\n");
	}
	
	@Then("Show Notifications option on Dashboard page {string}")
	public void show_Notifications_tab_on_Dashboard_page(String string) throws Throwable
	{
		String original = ec.getObjects("notifications");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications"))).isDisplayed(),string);
    	logger.info("Notifications Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n"); 
    	System.out.println("Notifications Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	

	
	@Then("Click Upon Notifications option on Dashboard page")
    public void click_upon_notifications_tab_on_dashboard_page() throws Throwable
	{
		String original = ec.getObjects("notifications");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("notifications"))).click();
    	logger.info("Click upon Notifications Tab on Dashboard page"+"\n");
    	System.out.println("Click upon Notifications Tab on Dashboard page"+"\n");
	}
	
	
	@Then("Show Suppliers option on Dashboard page {string}")
	public void show_Suppliers_label_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("suppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("suppliers"))).isDisplayed(),string);
    	logger.info("Suppliers label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Suppliers label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("Show My Suppliers option on Dashboard page {string}")
	public void show_My_Suppliers_tab_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("mysuppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isDisplayed(),string);
    	logger.info("My Suppliers tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("My Suppliers tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("My Suppliers option clickable on Dashboard page {string}")
	public void my_Suppliers_tab_clickable_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("mysuppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isEnabled(),string);
    	logger.info("My Suppliers Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("My Suppliers Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
		
	@Then("Show Settings option on Dashboard page {string}")
	public void show_Settings_title_on_Dashboard_page(String string) 
	{
		String original = ec.getObjects("settings");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		for(int i=0; i<=2;i++){
			  try{
				  assertTrue(driver.findElement(By.xpath(ec.getObjects("settings"))).isDisplayed(),string);
			    logger.info("Settings label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
			    System.out.println("Settings label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
			     break;
			  }
			  catch(Exception e){
			     System.out.println(e.getMessage());
			  }
		}
		
	}

	@Then("Show Help option on Dashboard page {string}")
	public void show_Help_tab_on_Dashboard_page(String string) 
	{
		String original = ec.getObjects("help");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isDisplayed(),string);
    	logger.info("Help tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Help tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	@Then("Help option clickable on Dashboard page {string}")
	public void help_tab_clickable_on_Dashboard_page(String string) 
	{
		String original = ec.getObjects("help");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isEnabled(),string);
    	logger.info("Help Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Help Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	 @Then("Show B2BProfile title on Dashboard page {string}")
	    public void show_b2bprofile_title_on_dashboard_page_something(String string) throws Throwable 
	{
		String original = ec.getObjects("b2bprofile");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bprofile"))).isDisplayed(),string);
		logger.info("B2BConfig title visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("B2BConfig title visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	 @Then("B2BProfile title clickable on Dashboard page {string}")
	    public void b2bprofile_title_clickable_on_dashboard_page_something(String string) throws Throwable 
	{
		String original = ec.getObjects("b2bprofile");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bprofile"))).isEnabled(),string);
		logger.info("B2BConfig title clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("B2BConfig title clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	 @Then("Show ContactInfo option on Dashboard page {string}")
	    public void show_contactinfo_option_on_dashboard_page_something(String string) throws Throwable  
	{
		String original = ec.getObjects("contactinfo_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfo_tab"))).isDisplayed(),string);
		logger.info("ContactInfo option visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("ContactInfo option visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	 @Then("ContactInfo option clickable on Dashboard page {string}")
	    public void contactinfo_option_clickable_on_dashboard_page_something(String string) throws Throwable
	{
		String original = ec.getObjects("contactinfo_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfo_tab"))).isEnabled(),string);
		logger.info("ContactInfo option clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("ContactInfo option clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	 @Then("Show B2BConfig option on Dashboard page {string}")
	    public void show_b2bconfig_option_on_dashboard_page_something(String string) throws Throwable 
	{
		String original = ec.getObjects("b2bconfig_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bconfig_tab"))).isDisplayed(),string);
    	logger.info("B2BConfig option visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("B2BConfig option visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	 @Then("B2BConfig option clickable on Dashboard page {string}")
	    public void b2bconfig_option_clickable_on_dashboard_page_something(String string) throws Throwable
	{
		String original = ec.getObjects("b2bconfig_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bconfig_tab"))).isEnabled(),string);
    	logger.info("B2BConfig option clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("B2BConfig option clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}


}
