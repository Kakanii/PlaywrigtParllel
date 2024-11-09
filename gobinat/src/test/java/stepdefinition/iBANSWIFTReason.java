package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class iBANSWIFTReason extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(iBANSWIFTReason.class);

	@Then("Provide reason in text area {string}")
	public void provide_reason_in_text_area_something(String string) throws Throwable {
		String original = ec.getObjects("Reason_textarea");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).sendKeys(string);
		System.out.println("Provided reason in text area" + "\n");
	}

	@Then("Show Reason Textbox visibility under Bank account information {string}")
	public void show_reason_textbox_visibility_under_bank_account_information_something(String string)
			throws Throwable {
		String original = ec.getObjects("Reason_textarea");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Reason Textbox visibility under Bank account information" + "\n");
		System.out.println("Reason Textbox visibility under Bank account information" + "\n");
	}

	@Then("Verify the Reason provided in text area under Bank account information {string}")
    public void verify_the_reason_provided_in_text_area_under_bank_account_information_something(String string) throws Throwable {
		String original = ec.getObjects("textarea");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Reason in Textbox visibility under Bank account information" + "\n");
		System.out.println("Reason in Textbox visibility under Bank account information" + "\n");
	}

	@Then("Click on Ellipsis")
	public void click_on_ellipsis() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("Buyers_Ellipsis");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on  Buyers_Ellipsis");
		System.out.println("Clicked on Buyers_Ellipsis");
	}

	@Then("Click on Ellipsis2")
	public void click_on_ellipsis2() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("Buyers_Ellipsis2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on  Buyers_Ellipsis");
		System.out.println("Clicked on Buyers_Ellipsis");
	}

	@Then("Click on ViewAccount")
	public void click_on_viewaccount() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("Buyers_Viewoption");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Viewoption");
		System.out.println("Clicked on Viewoption");
	}

	@Then("Click on x icon")
	public void click_on_x_icon() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("x_icon");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on 'X' icon");
		System.out.println("Clicked on 'X' icon");
	}
	
	@Then("Click on close icon")
    public void click_on_close_icon() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("closebtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on 'X' icon");
		System.out.println("Clicked on 'X' icon");
	}

	@Then("Verify the reason for not entering IBAN and Swift Code {string}")
    public void verify_the_reason_for_not_entering_iban_and_swift_code_something(String string) throws Throwable {
		String original = ec.getObjects("reasonvalidation");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Show the reason for not entering IBAN/Swift Code as" + " " + string + " "+ "in Bank Account Information Page" + "\n");
		System.out.println("Show the reason for not entering IBAN/Swift Code as" + " " + string + " "+ "in Bank Account Information Page" + "\n");
	}

	@Then("Click on Associate button")
	public void click_on_associate_button() throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("associatebtn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		Thread.sleep(2000);

		logger.info("Clicked on Associate button");
		System.out.println("Clicked on Associate button");
	}

	@Then("Click on Update button on Update Bank Account Modal")
	public void click_on_update_button_on_update_bank_account_modal() throws Throwable {
		String original = ec.getObjects("updatebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Update button on Update Contact modal" + "\n");
		System.out.println("Clicked on Update button on Update Contact modal" + "\n");
		Thread.sleep(8000);
	}

}