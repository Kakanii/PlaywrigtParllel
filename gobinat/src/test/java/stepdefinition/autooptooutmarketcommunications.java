package stepdefinition;

import static org.testng.Assert.assertTrue;
import java.util.concurrent.TimeUnit;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class autooptooutmarketcommunications extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	public Miscellaneous mis = new Miscellaneous();

	Logger logger = Logger.getLogger(autooptooutmarketcommunications.class);

	@Then("Click on MyAccount from the system")
	public void click_on_myaccount_from_the_system() throws Throwable {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		WebDriverWait wait = new WebDriverWait(driver, 120);
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("modal_x_button"))));

		Thread.sleep(5000);

		String ProfileBtn = ec.getObjects("profile_btn");
		String formatXPATH = String.format(ProfileBtn);

		String myaccountBtn = ec.getObjects("MyAccount");
		String formatXPATH1 = String.format(myaccountBtn);

		WaitClass.clickableWait(formatXPATH);

		do {
			driver.findElement(By.xpath(ec.getObjects("profile_btn"))).click();
		} while (!driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

		System.out.println("\n" + "Clicked on Profile button" + "\n");

		WaitClass.clickableWait(formatXPATH1);

		driver.findElement(By.xpath(ec.getObjects("MyAccount"))).click();
		System.out.println("\n" + "Clicked on MyAccount Option" + "\n");

		Thread.sleep(10000);

		logger.info("Clicked on My Account option from user profile" + "\n");
		System.out.println("Clicked on My Account option from user profile" + "\n");

	}

	@Then("Show Subscribe option visibility in user account {string}")
	public void show_subscribe_option_visibility_in_user_account_something(String string) throws Throwable {
		String original = ec.getObjects("Subscribe_checkbox_registration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Subscribe option visibility in user account" + "\n");
		System.out.println("Subscribe option visibility in user account" + "\n");
	}

	@Then("Show Subscribe option available in user account {string}")
	public void show_subscribe_option_available_in_user_account_something(String string) throws Throwable {
		String original = ec.getObjects("Subscribe_checkbox_registration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("Subscribe_checkbox_registration"))).isEnabled(), string);
		logger.info("Subscribe option available in user account" + "\n");
		System.out.println("Subscribe option available in user account" + "\n");

	}

	@Then("Check the status of subscribe checkbox in user account")
	public void check_the_status_of_subscribe_checkbox_in_user_account() throws Throwable {
		String original = ec.getObjects("Subscribe_checkbox_registration");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement subscribechkbox = driver.findElement(By.xpath(ec.getObjects("Subscribe_checkbox_registration")));

		if (!subscribechkbox.isSelected()) {
			subscribechkbox.click();
		}
		/*
		 * subscribechkbox.click();
		 * 
		 * boolean status = subscribestatus.isSelected();
		 * System.out.println("Checking boolean status:" + status);
		 * 
		 * if (status) { System.out.println("Subscribe checkbox is opted in");
		 * 
		 * }
		 * 
		 * else { System.out.println("Subscribe checkbox is opted out"); }
		 */

		Thread.sleep(3000);
		logger.info("Click on subscribe checkbox in user account" + "\n");
		System.out.println("\"Click on subscribe checkbox in user account " + "\n");

	}

	@Then("Show Edit button visibility in my account page {string}")
	public void show_edit_button_visibility_in_my_account_page_something(String string) throws Throwable {
		String original = ec.getObjects("Editbutton_subscribe");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Edit button visibility in my account page" + "\n");
		System.out.println("Edit button visibility in my account page" + "\n");
	}
	
	@Then("Show Subscribe in my account page {string}")
	public void show_subscribe_in_my_account_page_something(String string) throws Throwable {
		String original = ec.getObjects("Subscribe_checkbox_myaccountpage");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Edit button visibility in my account page" + "\n");
		System.out.println("Edit button visibility in my account page" + "\n");
	}
	
	@When("Select and Unselect the Subscribe checkbox in my account page")
	public void select_and_unselect_the_subscribe_checkbox_in_my_account_page() throws Throwable {
		String original = ec.getObjects("subscribe_checkbox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Select the subscribe checkbox in my account page" + "\n");
		System.out.println("Select the subscribe checkbox in my account page" + "\n");
	}

	@Then("Show Edit button available in my account page {string}")
	public void show_edit_button_available_in_my_account_page_something(String string) throws Throwable {
		String original = ec.getObjects("Editbutton_subscribe");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("Editbutton_subscribe"))).isEnabled(), string);
		logger.info("Edit button available in my account page" + "\n");
		System.out.println("Edit button available in my account page" + "\n");

	}

	@Then("Click on Edit button to check subscribe")
	public void click_on_edit_button_to_check_subscribe() throws Throwable {
		String original = ec.getObjects("Editbutton_subscribe");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on Edit button to check subscribe" + "\n");
		System.out.println("\"Click on Edit button to check subscribe " + "\n");
	}

	@Then("Click on save button in my account page")
	public void click_on_save_button_in_my_account_page() throws Throwable {
		String original = ec.getObjects("Savebutton_subscribe");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on save button in my account page" + "\n");
		System.out.println("\"Click on save button in my account page " + "\n");
	}

	@Then("Enter Phone Number {string} in {string} field")
	public void enter_phone_number_something_in_something_field(String input, String Label) throws Throwable {

		String original = ec.getObjects("PhoneNumber");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);

		Thread.sleep(2000);

		mis.clearText(formatXPATH);

		// Thread.sleep(2000);
		// do {
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		// } while
		// (driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(""));

		logger.info("Entered phone number " + "'" + input + "'" + " in " + Label + "\n");
		System.out.println("Entered phone number " + "'" + input + "'" + " in " + Label + "\n");
	}

	@Then("Check the status of subscribe checkbox in my account page")
	public void check_the_status_of_subscribe_checkbox_in_my_account_page() throws Throwable {
		String original = ec.getObjects("Subscribe_checkbox_myaccountpage");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		WebElement subscribecheckbox = driver.findElement(By.xpath(ec.getObjects("Subscribe_checkbox_registration")));

		if (!subscribecheckbox.isSelected()) {
			subscribecheckbox.click();
		}

		/*
		 * subscribecheckbox.click();
		 * 
		 * boolean status = subscribecheckbox.isSelected();
		 * System.out.println("Checking boolean status:" + status);
		 * 
		 * if (status) { System.out.println("Subscribe checkbox is opted in");
		 * 
		 * }
		 * 
		 * else { System.out.println("Subscribe checkbox is opted out"); }
		 */

		// driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Click on subscribe checkbox in my account page" + "\n");
		System.out.println("\"Click on subscribe checkbox in my account page " + "\n");
	}

}