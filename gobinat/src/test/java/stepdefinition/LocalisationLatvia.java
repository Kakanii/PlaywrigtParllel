package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class LocalisationLatvia extends DriverEngine 
{

	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalisationLatvia.class);
	
	@Then("Verify Latvia flag in Phone Number field")
	public void verify_Latvia_flag_in_Phone_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_latvia_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Latvia flag in Fax Number field")
	public void verify_Latvia_flag_in_Fax_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_latvia_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Latvia flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println("Latvia flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}
	
	@When("Enter EU VAT Registration Number for Latvia under Tax Details")
	public void enter_EU_VAT_Registration_Number_for_Latvia_under_Tax_Details() throws Exception 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("latvia_euvat_registration_num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		int taxNum = random.nextInt(1000000000);
		int taxNum1 = random.nextInt(1000000000);
		System.out.println("Tax Registration Number:---"+taxNum+taxNum1);
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("LV"+String.valueOf(taxNum)+String.valueOf(taxNum1));
		Thread.sleep(5000);
		logger.info("Enter EU VAT Registration Number for Latvia under Tax Details" + "\n");
		System.out.println("Enter EU VAT Registration Number for Latvia under Tax Details" + "\n");
	}
	
	@Then("Verify Latvia flag in Primary Phone field")
	public void verify_Latvia_flag_in_Primary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_latvia_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Latvia flag in Secondary Phone field")
	public void verify_Latvia_flag_in_Secondary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_latvia_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Latvia flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@When("Click on Yes radio button in Latvia Diversity")
	public void click_on_Yes_radio_button_in_Latvia_Diversity() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_diversity_yes_radio_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Click on Yes radio button in Latvia Diversity" + "\n");
		System.out.println("Click on Yes radio button in Latvia Diversity" + "\n");
	}
	
	@When("Click on the radio button {string} under {string} in Latvia Diversity")
	public void click_on_the_radio_button_under_in_Latvia_Diversity(String string, String string2) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_diversity_yes_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Select the Yes radio button under Are you a Diversity Supplier?" + "\n");
		System.out.println("Select the Yes radio button under Are you a Diversity Supplier?" + "\n");
	}
	
	@When("Enter Latvia Bank Account Label")
	public void enter_Latvia_Bank_Account_Label() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_bank_account_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("EGYPLC");
		
		logger.info("Enter Latvia Bank Account Label"+ "\n");
		System.out.println("Enter Latvia Bank Account Label"+ "\n");
	}
	
	@When("Enter Latvia Bank Account Number")
	public void enter_Latvia_Bank_Account_Number() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_bank_account_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankAccount = random.nextInt(1000000000);
		int bankAccount1 = random.nextInt(1000000000);
		System.out.println("Bank Account Number:---"+bankAccount+bankAccount1);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankAccount+bankAccount1));
		
		logger.info("Enter Latvia Bank Account Number"+ "\n");
		System.out.println("Enter Latvia Bank Account Number"+ "\n");
	}
	
	@When("Enter Latvia Bank Swift Code")
	public void enter_Latvia_Bank_Swift_Code() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_bank_swift_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankSwiftCode = random.nextInt(100000000);
		int bankSwiftCode1 = random.nextInt(100000);
		System.out.println("Bank Swift Code Number:---"+bankSwiftCode+bankSwiftCode1);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankSwiftCode+bankSwiftCode1));
		
		logger.info("Enter Latvia Bank Swift Code"+ "\n");
		System.out.println("Enter Latvia Bank Swift Code"+ "\n");
	}
	
	@When("Enter Latvia Bank IBAN")
	public void enter_Latvia_Bank_IBAN() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_bank_iban");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankIBAN = random.nextInt(100);
		int bankIBAN1 = random.nextInt(100000000);
		int bankIBAN2 = random.nextInt(100000000);
		System.out.println("Bank IBAN Number:---"+"LV"+bankIBAN+"BANK"+bankIBAN1+bankIBAN2);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf("LV"+bankIBAN+"BANK"+bankIBAN1+bankIBAN2));
		
		logger.info("Enter Latvia Bank IBAN"+ "\n");
		System.out.println("Enter Latvia Bank IBAN"+ "\n");
	}
	
	@When("Enter Latvia Bank IBAN Details")
	public void enter_Latvia_Bank_IBAN_Details() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_bank_iban_details");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Enter the IBAN");
		
		logger.info("Enter Latvia Bank IBAN Details"+ "\n");
		System.out.println("Enter Latvia Bank IBAN Details"+ "\n");
	}
	
	@Then("Enter Latvia VAT Number")
	public void enter_Latvia_VAT_Number() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_factoring_vat_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		Random random = new Random();
		
		int facBankVAT = random.nextInt(100000000);
		System.out.println("Bank IBAN Number:---"+facBankVAT);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(facBankVAT));
		
		logger.info("Enter Latvia VAT Number"+ "\n");
		System.out.println("Enter Latvia VAT Number"+ "\n");
	}
	
	@When("Enter Factoring Company Contact Name for Latvia")
	public void enter_Factoring_Company_Contact_Name_for_Latvia() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_factoring_company_name");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("ITPeople");
		
		logger.info("Enter Factoring Company Contact Name for Latvia"+ "\n");
		System.out.println("Enter Factoring Company Contact Name for Latvia"+ "\n");
	}

	@When("Enter Factoring Company Contact Number for Latvia")
	public void enter_Factoring_Company_Contact_Number_for_Latvia() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_factoring_company_contact_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("9886543215");
		
		logger.info("Enter Factoring Company Contact Number for Latvia"+ "\n");
		System.out.println("Enter Factoring Company Contact Number for Latvia"+ "\n");
	}

	@When("Enter Factoring Company Email Address for Latvia")
	public void enter_Factoring_Company_Email_Address_for_Egypt() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("latvia_factoring_company_email_address");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("egyp@country.com");
		
		logger.info("Enter Factoring Company Email Address for Latvia"+ "\n");
		System.out.println("Enter Factoring Company Email Address for Latvia"+ "\n");
	}
	


}
