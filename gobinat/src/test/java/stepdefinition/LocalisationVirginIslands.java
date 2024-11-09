package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalisationVirginIslands extends DriverEngine 
{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(LocalisationVirginIslands.class);
	
	@When("Enter Business License Number for Virgin Islands under Tax Details")
	public void enter_Business_License_Number_for_Virgin_Islands_under_Tax_Details() 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("virginIslands_business_license_num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		int taxNum = random.nextInt(1000000);
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(String.valueOf(taxNum));

		logger.info("Enter Business License Number for Virgin Islands under Tax Details" + "\n");
		System.out.println("Enter Business License Number for Virgin Islands under Tax Details" + "\n");
	}
	
	@When("Enter Employer Identification Number for Virgin Islands under Tax Details")
	public void enter_Employer_Identification_Number_for_Virgin_Islands_under_Tax_Details() 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("virginIslands_employer_identification_num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		int taxNum = random.nextInt(1000000000);
		int taxNum1 = random.nextInt(100000);
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(String.valueOf(taxNum)+String.valueOf(taxNum1));

		logger.info("Enter Employer Identification Number for Virgin Islands under Tax Details" + "\n");
		System.out.println("Enter Employer Identification Number for Virgin Islands under Tax Details" + "\n");
	}
	
	@Then("Verify Virgin Islands flag in Phone Number field")
	public void verify_Virgin_Islands_flag_in_Phone_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_virginIslands_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Virgin Islands flag in Fax Number field")
	public void verify_Virgin_Islands_flag_in_Fax_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_virginIslands_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Virgin Islands flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println("Virgin Islands flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Virgin Islands flag in Primary Phone field")
	public void verify_Virgin_Islands_flag_in_Primary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_virginIslands_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Virgin Islands flag in Secondary Phone field")
	public void verify_Virgin_Islands_flag_in_Secondary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_virginIslands_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Virgin Islands flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Enter website {string} in website field on Basic Information")
	public void enterwebsite(String text) throws Throwable {

		String original = ec.getObjects("basicinfo_website");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).clear();
		driver.findElement(By.xpath(formatXPATH)).sendKeys(text);

		logger.info("Entered website " + text + "in website text field" + "\n");
		System.out.println("Entered website" + text + "in website text field" + "\n");
	}
	
	@When("Enter value for Bank Account Number for Virgin Islands")
	public void enter_value_for_Bank_Account_Number_for_Virgin_Islands() 
	{
		String original = ec.getObjects("bankAccountNumber1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankAccNum = random.nextInt(100000000);
		int bankAccNum1 = random.nextInt(1000000);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankAccNum)+String.valueOf(bankAccNum1));

		logger.info("Entered the bank Account Number for Virgin Islands" + "\n");
		System.out.println("Entered the bank Account Number for Virgin Islands" + "\n");
	}

	@When("Enter value for Bank Key for Virgin Islands")
	public void enter_value_for_Bank_Key_for_Virgin_Islands() 
	{
		String original = ec.getObjects("virginIslands_bank_routing_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankRoutingNum = random.nextInt(1000000000);
		int bankRoutingNum1 = random.nextInt(100000000);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankRoutingNum)+String.valueOf(bankRoutingNum1));

		logger.info("Entered the Bank Key for Virgin Islands" + "\n");
		System.out.println("Entered the Bank Key for Virgin Islands" + "\n");
	}

	@When("Enter value for SWIFT Code for Virgin Islands")
	public void enter_value_for_SWIFT_Code_for_Virgin_Islands() 
	{
		String original = ec.getObjects("virginIslands_swift_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankSwiftCode = random.nextInt(1000000000);
		int bankSwiftCode1 = random.nextInt(10000000);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankSwiftCode)+String.valueOf(bankSwiftCode1));

		logger.info("Entered the SWIFT Code for Virgin Islands" + "\n");
		System.out.println("Entered the SWIFT Code for Virgin Islands" + "\n");
	}

	@When("Enter value for Town {string}")
	public void enter_value_for_Town(String string) 
	{
		String original = ec.getObjects("virginIslands_town");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Entered the Town in Virgin Islands" + "\n");
		System.out.println("Entered the Town in Virgin Islands" + "\n");
	}
	
	@Then("Select {string} in {string} dropdown under Factoring Company Address section")
	public void select_in_dropdown_under_Factoring_Company_Address_section(String Option, String string2) throws Exception 
	{
		String original = ec.getObjects("virginIslands_district");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}
		Thread.sleep(3000);

		logger.info("Selected the District from dropdown" + "\n");
		System.out.println("Selected the District from dropdown" + "\n");
	}

}
