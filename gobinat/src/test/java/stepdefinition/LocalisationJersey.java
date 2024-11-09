package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class LocalisationJersey extends DriverEngine 
{

	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalisationEgypt.class);
	
	@Then("Verify Jersey flag in Phone Number field")
	public void verify_Jersey_flag_in_Phone_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_jersey_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Jersey flag in Fax Number field")
	public void verify_Jersey_flag_in_Fax_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_jersey_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Jersey flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println("Jersey flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}
	
	@When("Enter Company Registration Number for Jersey under Tax Details")
	public void enter_Tax_Identification_Number_for_Brazil_under_Tax_Details() 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("jersey_company_registration_num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		int taxNum = random.nextInt(1000000000);
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(String.valueOf(taxNum));

		logger.info("Entered Company Registration Number for Jersey under Tax Details" + "\n");
		System.out.println("Entered Company Registration Number for Jersey under Tax Details" + "\n");
	}
	
	@Then("Verify Jersey flag in Primary Phone field")
	public void verify_Jersey_flag_in_Primary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_jersey_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Jersey flag in Secondary Phone field")
	public void verify_Jersey_flag_in_Secondary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_jersey_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Jersey flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@When("Enter Jersey Bank Code")
	public void enter_Jersey_Bank_Code() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_bank_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankCode = random.nextInt(100);
		System.out.println("Bank Code Number:---"+bankCode);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankCode));
		
		logger.info("Enter Jersey Bank Code"+ "\n");
		System.out.println("Enter Jersey Bank Code"+ "\n");
	}
	
	@When("Enter Jersey Bank Account Number")
	public void enter_Jersey_Bank_Account_Number() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_bank_account_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankAccount = random.nextInt(1000000000);
		System.out.println("Bank Account Number:---"+bankAccount);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankAccount));
		
		logger.info("Enter Jersey Bank Account Number"+ "\n");
		System.out.println("Enter Jersey Bank Account Number"+ "\n");
	}
	
	@When("Enter Jersey Bank Swift Code")
	public void enter_Jersey_Bank_Swift_Code() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_bank_swift_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankSwiftCode = random.nextInt(100000000);
		int bankSwiftCode1 = random.nextInt(100);
		System.out.println("Bank Swift Code Number:---"+bankSwiftCode+bankSwiftCode1);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankSwiftCode+bankSwiftCode1));
		
		logger.info("Enter Jersey Bank Swift Code"+ "\n");
		System.out.println("Enter Jersey Bank Swift Code"+ "\n");
	}
	
	@When("Enter Jersey Bank IBAN")
	public void enter_Jersey_Bank_IBAN() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_bank_iban");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		int bankIBAN = random.nextInt(100000000);
		int bankIBAN1 = random.nextInt(100000000);
		
		System.out.println("Bank IBAN Number:---"+"GB"+"33"+"BUKB"+bankIBAN+bankIBAN1);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf("GB"+"33"+"BUKB"+bankIBAN+bankIBAN1));
		
		logger.info("Enter Jersey Bank IBAN"+ "\n");
		System.out.println("Enter Jersey Bank IBAN"+ "\n");
	}
	
	@When("Enter Jersey Bank IBAN Details")
	public void enter_Jersey_Bank_IBAN_Details() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_bank_iban_details");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Enter the IBAN");
		
		logger.info("Enter Jersey Bank IBAN Details"+ "\n");
		System.out.println("Enter Jersey Bank IBAN Details"+ "\n");
	}
	
	@Then("Enter value for Locality {string}")
	public void enter_value_for_Locality(String string) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("jersey_address_locality");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		
		logger.info("Enter Locality in Jersey Bank page"+ "\n");
		System.out.println("Enter Locality in Jersey Bank page"+ "\n");
	}
	
	@Then("Enter value for Address Line {string}")
	public void enter_value_for_Address(String string) throws Throwable {
		String original = ec.getObjects("jersey_address_two");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).clear();

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on Add Company Account Modal" + "\n");
	}
	
	@When("Enter {string} Bank Account Label")
	public void enter_Bank_Account_Label(String string) 
	{
		String original = ec.getObjects("bankName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		 driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.CONTROL + "a");
		 driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.DELETE);		 
		driver.findElement(By.xpath(ec.getObjects("bankName"))).sendKeys(string);
		
		logger.info("Enter valid text " + " " + string + "on   Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}
	


}
