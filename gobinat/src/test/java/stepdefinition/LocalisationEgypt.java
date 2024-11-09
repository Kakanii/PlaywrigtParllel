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
import utility.WaitClass;

public class LocalisationEgypt extends DriverEngine 
{

	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalisationEgypt.class);
	
	@Then("Verify Egypt flag in Phone Number field")
	public void verify_Egypt_flag_in_Phone_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("phone_number_egypt_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Egypt flag in Fax Number field")
	public void verify_Egypt_flag_in_Fax_Number_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("fax_number_egypt_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Egypt flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
		System.out.println("Egypt flag is visible in " + "'" + "Fax Number" + "'" + " field" + "\n");
	}
	
	@When("Enter Tax Registration Number for Egypt under Tax Details")
	public void enter_Tax_Registration_Number_for_Egypt_under_Tax_Details() throws Exception 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("egypt_tax_registration_num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		int taxNum = random.nextInt(1000000000);
		System.out.println("Tax Registration Number:---"+taxNum);
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(String.valueOf(taxNum));
		Thread.sleep(5000);
		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	
	@When("Select No for withholding exemption")
	public void Select_No_for_withholding_exemption() 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("egypt_withhold_exemption");
		String JoinNowLink = String.format(original);
		
		driver.findElement(By.xpath(JoinNowLink)).click();

		logger.info("Select No for withholding exemption" + "\n");
		System.out.println("Select No for withholding exemption" + "\n");
	}
	
	@Then("Verify Egypt flag in Primary Phone field")
	public void verify_Egypt_flag_in_Primary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("primary_phone_egypt_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Verify Egypt flag in Secondary Phone field")
	public void verify_Egypt_flag_in_Secondary_Phone_field() 
	{
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("secondary_phone_egypt_flag");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
		System.out.println("Egypt flag is visible in " + "'" + "Phone Number" + "'" + " field" + "\n");
	}
	
	@Then("Click on the radio button {string} under {string}")
	public void click_on_the_radio_button_under(String string, String string2) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_yes_radio_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Select the Yes radio button under Are you a Diversity Supplier?" + "\n");
		System.out.println("Select the Yes radio button under Are you a Diversity Supplier?" + "\n");
	}
	
	@When("Click on Yes radio button in Diversity")
	public void click_on_Yes_radio_button_in_Diversity() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_yes_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Click on Yes radio button in Diversity" + "\n");
		System.out.println("Click on Yes radio button in Diversity" + "\n");
	}

	@Then("Show Diversity Category under Diversity")
	public void show_Diversity_Category_under_Diversity() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_category");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Show Diversity Category under Diversity" + "\n");
		System.out.println("Show Diversity Category under Diversity" + "\n");
	}
	
	@Then("Click on Select Certifier dropdown under Diversity Category")
	public void click_on_Select_Certifier_dropdown_under_Diversity_Category() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_select_certifier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Click on Select Certifier dropdown under Diversity Category" + "\n");
		System.out.println("Click on Select Certifier dropdown under Diversity Category" + "\n");
	}
	
	@Then("Verify {string} is displyed under Diversity Category")
	public void verify_is_displyed_under_Diversity_Category(String string) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_select_certifier_options1")+string+ec.getObjects("egypt_diversity_select_certifier_options2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info(string+"is displyed under Diversity Category"+ "\n");
		System.out.println(string+"is displyed under Diversity Category"+ "\n");
	}
	
	@When("Select {string} from the Certifiers dropdown")
	public void select_from_the_Certifiers_dropdown(String string) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_diversity_select_certifier_options1")+string+ec.getObjects("egypt_diversity_select_certifier_options2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Select"+" "+ string + "from the Certifiers dropdown" + "\n");
		System.out.println("Select"+" "+ string + "from the Certifiers dropdown" + "\n");
	}
	
	@When("Enter Egypt Bank Account Label")
	public void enter_Egypt_Bank_Account_Label() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_account_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys("EGYPLC");
		
		logger.info("Enter Egypt Bank Account Label"+ "\n");
		System.out.println("Enter Egypt Bank Account Label"+ "\n");
	}

	@When("Enter Egypt Bank Code")
	public void enter_Egypt_Bank_Code() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankCode = random.nextInt(100000);
		System.out.println("Bank Code Number:---"+bankCode);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankCode));
		
		logger.info("Enter Egypt Bank Code"+ "\n");
		System.out.println("Enter Egypt Bank Code"+ "\n");
	}

	@When("Enter Egypt Bank Account Number")
	public void enter_Egypt_Bank_Account_Number() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_account_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankAccount = random.nextInt(1000000000);
		System.out.println("Bank Account Number:---"+bankAccount);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankAccount));
		
		logger.info("Enter Egypt Bank Account Number"+ "\n");
		System.out.println("Enter Egypt Bank Account Number"+ "\n");
	}

	@When("Enter Egypt Bank Swift Code")
	public void enter_Egypt_Bank_Swift_Code() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_swift_code");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankSwiftCode = random.nextInt(100000000);
		int bankSwiftCode1 = random.nextInt(1000);
		System.out.println("Bank Swift Code Number:---"+bankSwiftCode+bankSwiftCode1);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf(bankSwiftCode+bankSwiftCode1));
		
		logger.info("Enter Egypt Bank Swift Code"+ "\n");
		System.out.println("Enter Egypt Bank Swift Code"+ "\n");
	}

	@When("Enter Egypt Bank IBAN")
	public void enter_Egypt_Bank_IBAN() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_iban");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Random random = new Random();
		
		int bankIBAN = random.nextInt(100000000);
		int bankIBAN1 = random.nextInt(100000000);
		int bankIBAN2 = random.nextInt(100000000);
		int bankIBAN3 = random.nextInt(100000000);
		System.out.println("Bank IBAN Number:---"+"EG"+bankIBAN+bankIBAN1+bankIBAN2);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf("EG"+bankIBAN+bankIBAN1+bankIBAN2+bankIBAN3));
		
		logger.info("Enter Egypt Bank IBAN"+ "\n");
		System.out.println("Enter Egypt Bank IBAN"+ "\n");
	}

	@When("Enter Egypt Bank IBAN Details")
	public void enter_Egypt_Bank_IBAN_Details() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_bank_iban_details");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys("Enter the IBAN");
		
		logger.info("Enter Egypt Bank IBAN Details"+ "\n");
		System.out.println("Enter Egypt Bank IBAN Details"+ "\n");
	}
	
	@Then("Enter value for District {string}")
	public void enter_value_for_District(String string) 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_address_district");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
		
		logger.info("Enter District in Egypt Bank page"+ "\n");
		System.out.println("Enter District in Egypt Bank page"+ "\n");
	}
	
	@Then("Enter Egypt VAT Number")
	public void enter_Egypt_VAT_Number() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_factoring_vat_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		
		Random random = new Random();
		
		int bankIBAN = random.nextInt(100000000);
		System.out.println("Bank IBAN Number:---"+"EG"+bankIBAN);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(String.valueOf("EG"+bankIBAN));
		
		logger.info("Enter Egypt VAT Number"+ "\n");
		System.out.println("Enter Egypt VAT Number"+ "\n");
	}

	@Then("Select {string} in {string} dropdown under {string} section")
	public void select_in_dropdown_under_section(String string, String string2, String string3) throws Exception 
	{
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + string + ec.getObjects("dropdown_new_var3");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(string);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(string);
		}
		Thread.sleep(3000);

		logger.info("Selected " + "'" + string + "'" + " in " + string2 + " dropdown" + "\n");
		System.out.println("Selected " + "'" + string + "'" + " in " + string2 + " dropdown" + "\n");
	}

	@When("Enter Factoring Company Contact Name for Egypt")
	public void enter_Factoring_Company_Contact_Name_for_Egypt() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_factoring_company_name");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("ITPeople");
		
		logger.info("Enter Factoring Company Contact Name for Egypt"+ "\n");
		System.out.println("Enter Factoring Company Contact Name for Egypt"+ "\n");
	}

	@When("Enter Factoring Company Contact Number for Egypt")
	public void enter_Factoring_Company_Contact_Number_for_Egypt() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_factoring_company_contact_number");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("9886543215");
		
		logger.info("Enter Factoring Company Contact Number for Egypt"+ "\n");
		System.out.println("Enter Factoring Company Contact Number for Egypt"+ "\n");
	}

	@When("Enter Factoring Company Email Address for Egypt")
	public void enter_Factoring_Company_Email_Address_for_Egypt() 
	{
		driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		String original = ec.getObjects("egypt_factoring_company_email_address");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).sendKeys("egyp@country.com");
		
		logger.info("Enter Factoring Company Email Address for Egypt"+ "\n");
		System.out.println("Enter Factoring Company Email Address for Egypt"+ "\n");
	}

}
