package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Wait;

import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class SupplierSynopsis extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(SupplierSynopsis.class);

	Actions action = new Actions(driver);
	
	@Then("User can see the title {string} on Supplier Synopsis View page")
	public void user_can_see_the_title_on_Supplier_Synopsis_View_page(String string) 
	{
		String original = ec.getObjects("supplierSynopsis");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Shows"+" "+string+" "+"title on Supplier Synopsis view page" + "\n");
		System.out.println("Shows"+" "+string+"title on Supplier Synopsis view page" + "\n");
	}
	
	@Then("User can see Go to details button on Supplier Synopsis view page")
	public void user_can_see_Go_to_details_button_on_Supplier_Synopsis_view_page() 
	{
		String original = ec.getObjects("gotoDetails");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

		logger.info("Shows Go to details button on Supplier Synopsis View page" + "\n");
		System.out.println("Shows Go to details button on Supplier Synopsis View page" + "\n");
	}
	
	@When("Click on Go to details button on Supplier Synopsis view page")
	public void click_on_Go_to_details_button_on_Supplier_Synopsis_view_page() 
	{
		String original = ec.getObjects("gotoDetails");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Go to details button on Supplier Synopsis View page" + "\n");
		System.out.println("Clicked on Go to details button on Supplier Synopsis View page" + "\n");
	}

	@Then("User can see View Synopsis link on Supplier details page")
	public void user_can_see_View_Synopsis_link_on_Supplier_details_page() 
	{
		String original = ec.getObjects("viewSynopsisLinkOnDetails");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows View Synopsis link on Supplier details page" + "\n");
		System.out.println("Shows View Synopsis link on Supplier details page" + "\n");
	}
	
	@Then("User can see View Synopsis link on the Supplier details page")
	public void user_can_see_View_Synopsis_link_on_the_Supplier_details_page() 
	{
		String original = ec.getObjects("viewSynopsisLinkOnDetails");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.switchTo().activeElement();

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows View Synopsis link on the Supplier details page" + "\n");
		System.out.println("Shows View Synopsis link on the Supplier details page" + "\n");
	}
	
	@When("Click on View Synopsis link on Supplier details page")
	public void click_on_View_Synopsis_link_on_Supplier_details_page() 
	{
		String original = ec.getObjects("viewSynopsisLink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on View Synopsis link on Supplier details page" + "\n");
		System.out.println("Clicked on View Synopsis link on Supplier details page" + "\n");
	}
	
	@When("Click on View Synopsis link on the Supplier details page")
	public void click_on_View_Synopsis_link_on_the_Supplier_details_page() 
	{
		String original = ec.getObjects("viewSynopsisLinkOnDetails");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on View Synopsis link on the Supplier details page" + "\n");
		System.out.println("Clicked on View Synopsis link on the Supplier details page" + "\n");
	}
	
	@Then("User can see Industry Activities component")
	public void user_can_see_Industry_Activities_component() 
	{
		String original = ec.getObjects("industryActivities");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Industry Activities component" + "\n");
		System.out.println("User can see Industry Activities component" + "\n");
	}

	@Then("User can see Approval Summary component")
	public void user_can_see_Approval_Summary_component() 
	{
		String original = ec.getObjects("approvalSummary");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Approval Summary component" + "\n");
		System.out.println("User can see Approval Summary component" + "\n");
	}

	@Then("User can see Questionnaire Summary component")
	public void user_can_see_Questionnaire_Summary_component() 
	{
		String original = ec.getObjects("questionnaireSummary");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("User can see Questionnaire Summary component" + "\n");
		System.out.println("User can see Questionnaire Summary component" + "\n");
	}
	
	@Then("verify buyer is able to view the App {string}")
	public void verify_buyer_is_able_to_view_the_App (String string)
	{
		String original = ec.getObjects(string);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);


		logger.info("buyer is able to view the" +string + "\n");
		System.out.println("buyer is able to view the" + string + "\n");
	}
	
	@Then("verify buyer is able to view the App {string} content information as {string}")
	public void verify_buyer_is_able_to_view_the_App_content_information (String string, String abc)
	{
		String original = ec.getObjects("strongtext") + string + ec.getObjects("stongxpathfull");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(abc));



		logger.info("buyer is able to view the App descrption of" +string + "\n");
		System.out.println("buyer is able to view the App descrption of" + string + "\n");
	}
	
	@Then("verify buyer is able to view {string} App content information as {string}")
	public void verify_buyer_is_able_to_view_App_content_information (String string, String abc)
	{
		String original = ec.getObjects("strongtextsinglebracket") + string + ec.getObjects("stongxpathfull2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(abc));



		logger.info("buyer is able to view the App descrption of" +string + "\n");
		System.out.println("buyer is able to view the App descrption of" + string + "\n");
	}
	
	@Then("Verify the visibility of {string} section on synopsis screen")
	public void verify_the_visibility_of_section_on_synopsis_screen(String xyz) {
		String original = ec.getObjects("discover_filter_variable") + xyz + ec.getObjects("filteredstatuspre");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + xyz + "\n");
		System.out.println("Verified visibility of " + xyz + "\n");
	}
	
	@Then("Verify the buyer is able to view {string} section on synopsis screen")
	public void verify_the_buyer_is_able_to_view_section_on_synopsis_screen(String xyz)
{
		String original = ec.getObjects("nortext") + xyz + ec.getObjects("no_round_brackets_end");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + xyz + "\n");
		System.out.println("Verified visibility of " + xyz + "\n");
	}
	
	@Then("verify the visibility of {string} App content information as {string}")
	public void verify_the_visibility_of_App_content_information (String string, String abc)
	{
		String original = ec.getObjects("p_input1") + abc + ec.getObjects("btn2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(abc));


		logger.info("buyer is able to view the App descrption as" +abc + "\n");
		System.out.println("buyer is able to view the App descrption as" + abc + "\n");
	}
	
	@Then("Enter {string} buyer email in Email Address")
	public void Enter_email_in_Email_Address(String string) throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		 WaitClass.webDriverWait(formatXPATH);
		//Wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects(string));

		logger.info("Entered data"  + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + "Email Address field" + "\n");
	}
	@Then("verify buyer is able to view {string} content information as {string}")
	public void verify_buyer_is_able_to_view_content_information (String string, String abc)
	{
		String original = ec.getObjects("strongtext") + string + ec.getObjects("strongfp");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(abc));



		logger.info("buyer is able to view the App descrption of" +string + "\n");
		System.out.println("buyer is able to view the App descrption of" + string + "\n");
	}
}

