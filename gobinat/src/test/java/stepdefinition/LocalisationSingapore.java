package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.ElementControl;
import utility.WaitClass;
import utility.DriverEngine;

public class LocalisationSingapore extends DriverEngine{
	Logger logger = Logger.getLogger(LocalisationSingapore.class);
	public static ElementControl ec = new ElementControl();
	WebDriverWait wait = new WebDriverWait(driver, 300);
	
	@Then("Verify {string} flag Phone Number")
	public void verify_flag_Phone_Number(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}

	@Then("Verify {string} flag Fax Number")
	public void verify_flag_Fax_Number(String Country) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_switzerland_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println(Country + " flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	@When("Enter data in {string} field under Tax Details")
	public void Enter_data_in_field_under_Tax_Details(String GSTorTax) 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("GST/Tax_Identification_Number");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("M"+random.nextInt(1000000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@Then("Enter Singapore Supplier Email in Email Address field")
	public void Enter_Singapore_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Singapore_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
	@Then("Click on the Anti-Bribery, Anti-Corruption under Approval Source page")
	public void Click_on_the_Anti_Bribery_Anti_Corruption_under_Approval_Source_page() {
		String original = ec.getObjects("AntiBribery_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		System.out.println("Click on the USL Search under Approval Source" + "\n");
	
	}
}
