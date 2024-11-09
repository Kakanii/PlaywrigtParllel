package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;

public class KiranSanity extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger = Logger.getLogger(KiranSanity.class);
	
	@When("Click on Invite Process dropdown arrow")
	public void click_on_Invite_Process_dropdown_arrow() 
	{			
		driver.findElement(By.xpath("(//*[name()='svg'][@class='css-8mmkcg'])[1]")).click();	

		logger.info("Click on Invite Process dropdown arrow" + "\n");
		System.out.println("Click on Invite Process dropdown arrow" + "\n");
	}
	
	@When("Enter Invite Process Category in dropdown")
	public void enter_Invite_Process_Category_in_dropdown() 
	{
		driver.findElement(By.xpath("(//input[@id='react-select-2-input'])[1]")).sendKeys("Internal Buyer");
		driver.findElement(By.xpath("(//input[@id='react-select-2-input'])[1]")).sendKeys(Keys.ENTER);

		logger.info("Enter Invite Process Category in dropdown" + "\n");
		System.out.println("Enter Invite Process Category in dropdown" + "\n");
	}

}
