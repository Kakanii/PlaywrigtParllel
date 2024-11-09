package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ManageContacts extends DriverEngine
{	
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(ManageContacts.class);
	
	
	@Then("Click on search box")
	public void Click_on_search_box() {

		String original = ec.getObjects("discover_UNSPSCSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked Icon in modal" + "\n");
		System.out.println("Clicked Icon in modal" + "\n");
	}
	
	@Then("Enter the supplier name in search box")
	public void Enter_the_supplier_name_in_search_box() {

		String original = ec.getObjects("discover_UNSPSCSearch_field");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("LARSEN & TOUBRO LIMITED");
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);


		logger.info("entered supplier name" + "\n");
		System.out.println("entered supplier name" + "\n");
	}
	
}