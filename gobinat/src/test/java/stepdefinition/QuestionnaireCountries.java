package stepdefinition;

import java.util.List;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class QuestionnaireCountries extends DriverEngine 
{	
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(QuestionnaireCountries.class);
	
	@Then("Supplier can able to see Countries Count and Print all options on Add Bank Account page")
	public void supplier_can_able_to_see_Countries_Count_and_Print_all_options_on_Add_Bank_Account_page() 
	{
		String original = ec.getObjects("countries_bank_account");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Select dropDown = new Select(driver.findElement(By.xpath(formatXPATH)));
		List<WebElement> countriesCount = dropDown.getOptions();
		logger.info("Number of Countries: " + countriesCount.size()+ "\n");
		System.out.println("Number of Countries: " + countriesCount.size()+ "\n");
		
		int itemSize = countriesCount.size();
        for(int i = 0; i < itemSize ; i++)
        {
            String optionsValue = countriesCount.get(i).getText();
            System.out.println(optionsValue);
        }

		logger.info("Supplier can able to see Countries Count and Print all options" + "\n");
		System.out.println("Supplier can able to see Countries Count and Print all options" + "\n");
	}
	
	@Then("Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page")
	public void supplier_can_able_to_see_Countries_Count_and_Print_all_options_on_Assign_a_Contact_to_Management_page() 
	{
		String original = ec.getObjects("countries_assign_contact_to_management");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Select dropDown = new Select(driver.findElement(By.xpath(formatXPATH)));
		List<WebElement> countriesCount = dropDown.getOptions();
		logger.info("Number of Countries: " + countriesCount.size()+ "\n");
		System.out.println("Number of Countries: " + countriesCount.size()+ "\n");
		
		int itemSize = countriesCount.size();
        for(int i = 0; i < itemSize ; i++)
        {
            String optionsValue = countriesCount.get(i).getText();
            System.out.println(optionsValue);
        }

		logger.info("Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page" + "\n");
		System.out.println("Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page" + "\n");
	}
	
	@When("Click on Close button on Assign a Contact to Management page")
	public void click_on_Close_button_on_Assign_a_Contact_to_Management_page() 
	{
		String original = ec.getObjects("countries_assign_contact_to_management_close_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Close button on Assign a Contact to Management page" + "\n");
		System.out.println("Click on Close button on Assign a Contact to Management page" + "\n");
		
		driver.switchTo().activeElement();
	}
	
	@When("Click on Add Location button")
	public void click_on_Add_Location_button() 
	{
		String original = ec.getObjects("countries_assign_manage_contact_add_location_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Add Location button" + "\n");
		System.out.println("Click on Add Location button" + "\n");
		
		driver.switchTo().activeElement();
	}
	
	@When("Click on Published Questionnaire tab")
	public void click_on_Published_Questionnaire_tab() 
	{
		String original = ec.getObjects("countries_assign_questionnaire_published");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Published Questionnaire tab" + "\n");
		System.out.println("Click on Published Questionnaire tab" + "\n");
	}

	@When("Click on Company Operations Edit Answers button")
	public void click_on_Company_Operations_Edit_Answers_button() 
	{
		String original = ec.getObjects("countries_assign_questionnaire_published_company_operations");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Company Operations Edit Answers button" + "\n");
		System.out.println("Click on Company Operations Edit Answers button" + "\n");
	}

	@Then("Supplier can able to see Countries Count and Print all options on Company Operations Questionnaire")
	public void supplier_can_able_to_see_Countries_Count_and_Print_all_options_on_Company_Operations_Questionnaire() 
	{
		String original = ec.getObjects("countries_assign_questionnaire_published_company_operations_countries");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		@SuppressWarnings("unchecked")
		List<WebElement> countriesCount = (List<WebElement>) driver.findElement(By.xpath(formatXPATH));
		
		logger.info("Number of Countries: " + countriesCount.size()+ "\n");
		System.out.println("Number of Countries: " + countriesCount.size()+ "\n");		

		logger.info("Supplier can able to see Countries Count and Print all options on Company Operations Questionnaire" + "\n");
		System.out.println("Supplier can able to see Countries Count and Print all options on Company Operations Questionnaire" + "\n");
	}
	
	@When("Click on Country dropdown")
	public void click_on_Country_dropdown() 
	{
		String original = ec.getObjects("countries_assign_questionnaire_published_company_operations_countries_search");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Country dropdown" + "\n");
		System.out.println("Click on Country dropdown" + "\n");
	}
	
	@Then("Supplier can able to see Countries Count and Print all options on Invite Supplier page")
	public void supplier_can_able_to_see_Countries_Count_and_Print_all_options_on_Invite_Supplier_page() 
	{
		String original = ec.getObjects("countries_assign_invite_supplier");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		Select dropDown = new Select(driver.findElement(By.xpath(formatXPATH)));
		List<WebElement> countriesCount = dropDown.getOptions();
		logger.info("Number of Countries: " + countriesCount.size()+ "\n");
		System.out.println("Number of Countries: " + countriesCount.size()+ "\n");
		
		int itemSize = countriesCount.size();
        for(int i = 0; i < itemSize ; i++)
        {
            String optionsValue = countriesCount.get(i).getText();
            System.out.println(optionsValue);
        }

		logger.info("Supplier can able to see Countries Count and Print all options on Invite Supplier page" + "\n");
		System.out.println("Supplier can able to see Countries Count and Print all options on Invite Supplier page" + "\n");
	}
	
	@When("Click on Locations tab on Profile page")
	public void click_on_Locations_tab_on_Profile_page() 
	{
		String original = ec.getObjects("countries_assign_invite_new_location");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Locations tab on Profile page" + "\n");
		System.out.println("Click on Locations tab on Profile page" + "\n");
	}

	@When("Click on Add a New Location button on Locations page")
	public void click_on_Add_a_New_Location_button_on_Locations_page() 
	{
		String original = ec.getObjects("countries_assign_manage_contact_add_a_new_location_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Add a New Location button on Locations page" + "\n");
		System.out.println("Click on Add a New Location button on Locations page" + "\n");
	}
	
	@When("Click on Profile tab under Company Menu")
	public void click_on_Profile_tab_under_Company_Menu() 
	{
		String original = ec.getObjects("countries_assign_profile_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Profile tab under Company Menu" + "\n");
		System.out.println("Click on Profile tab under Company Menu" + "\n");
	}
	
}
