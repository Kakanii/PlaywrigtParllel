package stepdefinition;

import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class MySupplierExtract extends DriverEngine 
{

	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(MySupplierExtract.class);
	
	@When("Select the first and top Supplier")
	public void select_the_first_and_top_Supplier() 
	{
		String original = ec.getObjects("extract_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Select the first and top Supplier" + "\n");
		System.out.println("Select the first and top Supplier" + "\n");
	}
	
	@Then("Shows One Supplier Selected label in a extract bar")
	public void shows_One_Supplier_Selected_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_supplier_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows One Supplier Selected label" + "\n");
		System.out.println("Shows One Supplier Selected label" + "\n");
	}
	
	@Then("Shows Export Selected label in a extract bar")
	public void shows_Export_Selected_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_export_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Export Selected label in a extract bar" + "\n");
		System.out.println("Shows Export Selected label in a extract bar" + "\n");
	}

	@Then("Shows Export All label in a extract bar")
	public void shows_Export_All_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_export_all");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Export All label in a extract bar" + "\n");
		System.out.println("Shows Export All label in a extract bar" + "\n");
	}

	@Then("Shows Cancel label in a extract bar")
	public void shows_Cancel_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_cancel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Cancel label in a extract bar" + "\n");
		System.out.println("Shows Cancel label in a extract bar" + "\n");
	}	

	@When("Click on Cancel in a extract bar")
	public void click_on_Cancel_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_cancel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Cancel in a extract bar" + "\n");
		System.out.println("Click on Cancel in a extract bar" + "\n");
	}

	@Then("Buyer not able to see extract bar {string}")
	public void buyer_not_able_to_see_extract_bar(String string) 
	{
		driver.manage().timeouts().implicitlyWait(3, TimeUnit.SECONDS);
		String original = ec.getObjects("extract_bar");
		String formatXPATH = String.format(original);
		System.out.println(formatXPATH);
		
		//check if element present
		int t = driver.findElements(By.xpath(formatXPATH)).size();
		if (t > 0)
		{
			if(string.equals("true"))
			{
				logger.info("Extract bar is visible on Connected Suppliers page" + "\n");
				System.out.println("Extract bar is visible on Connected Suppliers page"  + "\n");
			}else if(string.equals("false"))
			{
				logger.info("Extract bar is not visible on Connected Suppliers page" + "\n");
				System.out.println("Extract bar is not visible on Connected Suppliers page"  + "\n");
			}
			
			
		}else
		{
			if(string.equals("false"))
			{
				logger.info("Extract bar is not visible on Connected Suppliers page" + "\n");
				System.out.println("Extract bar is not visible on Connected Suppliers page"  + "\n");
			}
			else
			{
				logger.info("Extract bar is visible on Connected Suppliers page" + "\n");
				System.out.println("Extract bar is visible on Connected Suppliers page"  + "\n");
			}
			
		}
	}
	
	@When("Select the second and top Supplier")
	public void select_the_second_and_top_Supplier() 
	{
		String original = ec.getObjects("extract_checkbox_two");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Select the second and top Supplier" + "\n");
		System.out.println("Select the second and top Supplier" + "\n");
	}

	@Then("Shows Two Suppliers Selected label in a extract bar")
	public void shows_Two_Suppliers_Selected_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_supplier_two_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Two Suppliers Selected label in a extract bar" + "\n");
		System.out.println("Shows Two Suppliers Selected label in a extract bar" + "\n");
	}
	
	@When("Unselect the first and top Supplier")
	public void unselect_the_first_and_top_Supplier() 
	{
		String original = ec.getObjects("extract_uncheckbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Unselect the first and top Supplier" + "\n");
		System.out.println("Unselect the first and top Supplier" + "\n");
	}
	
	@When("Click on Export Selected in a extract bar")
	public void click_on_Export_Selected_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_export_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Export Selected in a extract bar" + "\n");
		System.out.println("Click on Export Selected in a extract bar" + "\n");
	}
	
	@Then("Shows Extracted info on Extract Page")
	public void shows_Extracted_info_on_Extract_Page() 
	{
		String original = ec.getObjects("extract_data");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Shows Extracted info on Extract Page" + "\n");
		System.out.println("Shows Extracted info on Extract Page" + "\n");
	}
	
	@When("Click on Export All in a extract bar")
	public void click_on_Export_All_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_export_all");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Export All in a extract bar" + "\n");
		System.out.println("Click on Export All in a extract bar" + "\n");
	}
	
	@When("Select the first and top Contact")
	public void select_the_first_and_top_Contact() 
	{
		String original = ec.getObjects("extract_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Select the first and top Contact" + "\n");
		System.out.println("Select the first and top Contact" + "\n");
	}

	@Then("Shows One Contact Selected label in a extract bar")
	public void shows_One_Contact_Selected_label_in_a_extract_bar() 
	{    
		String original = ec.getObjects("extract_contact_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows One Contact Selected label in a extract bar" + "\n");
		System.out.println("Shows One Contact Selected label in a extract bar" + "\n");
	}
	
	@When("Select the second and top Contact")
	public void select_the_second_and_top_Contact() 
	{
		String original = ec.getObjects("extract_checkbox_two");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Select the second and top Contact" + "\n");
		System.out.println("Select the second and top Contact" + "\n");
	}
	
	@Then("Shows Two Contacts Selected label in a extract bar")
	public void shows_Two_Contacts_Selected_label_in_a_extract_bar() 
	{
		String original = ec.getObjects("extract_contact_two_selected");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Two Contacts Selected label in a extract bar" + "\n");
		System.out.println("Shows Two Contacts Selected label in a extract bar" + "\n");
	}
	
	@Then("Shows Extracted info manage contacts label on Extract Page")
	public void shows_Extracted_info_manage_contacts_label_on_Extract_Page() 
	{
		String original = ec.getObjects("extract_data_manage_contacts");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Extracted info manage contacts label on Extract Page" + "\n");
		System.out.println("Shows Extracted info manage contacts label on Extract Page" + "\n");
	}
	
	@Then("Shows Extracted info connected suppliers label on Extract Page")
	public void shows_Extracted_info_connected_suppliers_label_on_Extract_Page() 
	{
		String original = ec.getObjects("extract_data_connected_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Extracted info connected suppliers label on Extract Page" + "\n");
		System.out.println("Shows Extracted info connected suppliers label on Extract Page" + "\n");
	}

}
