package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class TysId extends DriverEngine 
{

	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(TysId.class);
	
	@Then("Shows TYS Id on Supplier Wider Screen")
	public void shows_TYS_Id_on_Supplier_Wider_Screen() 
	{
		String original = ec.getObjects("tysId");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows TYS Id on Supplier Wider Screen" + "\n");
		System.out.println("Shows TYS Id on Supplier Wider Screen" + "\n");
	}
	
	@When("Click on TYS Discover tab")
	public void click_on_TYS_Discover_tab() 
	{
		String original = ec.getObjects("tysDiscover");
		String formatXPATH = String.format(original);
		String moody = ec.getObjects("DiscoverableSuppliers_title");
		String formatmoody = String.format(moody);
		if(driver.findElements(By.xpath(formatmoody)).size() == 0) {
			driver.findElement(By.xpath(original)).click();

		}
		else{
			System.out.println("moody's not present" + "\n");
		}

		logger.info("Clicked on TYS Discover tab" + "\n");
		System.out.println("Clicked on TYS Discover tab" + "\n");
	}

}
