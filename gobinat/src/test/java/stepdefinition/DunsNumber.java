package stepdefinition;

import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;

public class DunsNumber extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalisationEgypt.class);
	
	@Then("DUNS Number Visible {string}")
	public void duns_Number_Visible(String string) 
	{
		driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
		String original = ec.getObjects("basicInfo_duns_number");
		String formatXPATH = String.format(original);
		System.out.println(formatXPATH);
		
		//check if element present
		int t = driver.findElements(By.xpath(formatXPATH)).size();
		if (t > 0)
		{
			if(string.equals("true"))
			{
				logger.info("DUNS Number is visible on basic information" + "\n");
				System.out.println("DUNS Number is visible on basic information"  + "\n");
			}else if(string.equals("false"))
			{
				logger.info("DUNS Number is not visible on basic information" + "\n");
				System.out.println("DUNS Number is not visible on basic information"  + "\n");
			}
			
			
		}else
		{
			if(string.equals("false"))
			{
				logger.info("DUNS Number is not visible on basic information" + "\n");
				System.out.println("DUNS Number is not visible on basic information"  + "\n");
			}
			else
			{
				logger.info("DUNS Number is visible on basic information" + "\n");
				System.out.println("DUNS Number is visible on basic information"  + "\n");
			}
			
		}	
	}
	

}
