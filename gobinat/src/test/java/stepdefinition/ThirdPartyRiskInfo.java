package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ThirdPartyRiskInfo extends DriverEngine {

	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(Dashboard.class);



@Then("Click on {string} Page")
    public void click_on_something_page(String string) {
        String original = ec.getObjects("ThirdPartyRiskInformation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on ThirdPartyRiskInformation page" + "\n");
		System.out.println("Clicked ThirdPartyRiskInformation page" + "\n");
	}
	
	@Then("verify the title as Verisk Maplecroft {string}")
	public void verify_the_title_as_Verisk_Maplecroft(String string) 
	{
		driver.switchTo().frame(0);
    	String original = ec.getObjects("thirdparty_risk");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		driver.switchTo().parentFrame();
		logger.info("Third Party title" + " " + string + " " + " on Dashboard" + "\n");
		System.out.println("Third Party title " + " " + string + " " + " on Dashboard" + "\n");
	}
	@Then("Verify the title as Third Party Risk Info page")
	public void verify_the_title_as_Third_Party_Risk_Info_page() 
	{
		String original = ec.getObjects("thirdpartyriskinfotitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		//driver.switchTo().frame(0);
		System.out.println("Switch to the frame" + "\n");

		//driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Title is showing on Third party risk information page" + "\n");
		System.out.println("Title is showing on Third party risk information page" + "\n");

		driver.switchTo().parentFrame();
		System.out.println("Switch to parent frame" + "\n");
		
	}

}