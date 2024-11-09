package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class IBMBuyerPMRole extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(Dashboard.class);
	
	@Then("Enter {string} in Email Address field")
	public void enter_something_in_email_address_field(String string) throws Throwable
    
	{
		String original = ec.getObjects("email"); 
    	String formatXPATH = String.format(original);
    	
    	WaitClass.webDriverWait(formatXPATH);
    	
    	driver.findElement(By.xpath(original)).sendKeys(string);
    	
    	logger.info("Entered data" +" "+ string + " "+ "In Email Address field"+"\n");
    	System.out.println("Entered data" +" "+ string + " "+ "In Email Address field"+"\n");

    }
	
	  

	
	@Then("Show Dashboard menu on Dashboard page {string}")
	public void show_Dashboard_tab_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("dashboard");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isDisplayed(),string);
    	logger.info("Dashboard Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n"); 
    	System.out.println("Dashboard Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("Click Upon Dashboard tab on Dashboard page")
    public void click_upon_dashboard_tab_on_dashboard_page() throws Throwable 
	{
		String original = ec.getObjects("dashboard");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("dashboard"))).click();
    	logger.info("Click upon Dashboard Tab on Dashboard page"+"\n");
    	System.out.println("Click upon Dashboard Tab on Dashboard page"+"\n");
	}
	
	@Then("Show Notifications menu on Dashboard page {string}")
	public void show_Notifications_tab_on_Dashboard_page(String string) throws Throwable
	{
		String original = ec.getObjects("notifications");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications"))).isDisplayed(),string);
    	logger.info("Notifications Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n"); 
    	System.out.println("Notifications Tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	

	
	@Then("Click Upon Notifications tab on Dashboard page")
    public void click_upon_notifications_tab_on_dashboard_page() throws Throwable
	{
		String original = ec.getObjects("notifications");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("notifications"))).click();
    	logger.info("Click upon Notifications Tab on Dashboard page"+"\n");
    	System.out.println("Click upon Notifications Tab on Dashboard page"+"\n");
	}
	
	
	@Then("Show Suppliers title on Dashboard page {string}")
	public void show_Suppliers_label_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("suppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("suppliers"))).isDisplayed(),string);
    	logger.info("Suppliers label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Suppliers label visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("Show My Suppliers menu on Dashboard page {string}")
	public void show_My_Suppliers_tab_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("mysuppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isDisplayed(),string);
    	logger.info("My Suppliers tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("My Suppliers tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
	@Then("My Suppliers menu clickable on Dashboard page {string}")
	public void my_Suppliers_tab_clickable_on_Dashboard_page(String string)
	{
		String original = ec.getObjects("mysuppliers");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isEnabled(),string);
    	logger.info("My Suppliers Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("My Suppliers Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}
	
		
	@Then("Show Settings title on Dashboard page {string}")
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

	@Then("Show Help menu on Dashboard page {string}")
	public void show_Help_tab_on_Dashboard_page(String string) 
	{
		String original = ec.getObjects("help");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isDisplayed(),string);
    	logger.info("Help tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Help tab visible "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

	@Then("Help menu clickable on Dashboard page {string}")
	public void help_tab_clickable_on_Dashboard_page(String string) 
	{
		String original = ec.getObjects("help");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isEnabled(),string);
    	logger.info("Help Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
    	System.out.println("Help Tab clickable "+ " "+ string +" "+" on Dashboard page"+"\n");
	}

}
