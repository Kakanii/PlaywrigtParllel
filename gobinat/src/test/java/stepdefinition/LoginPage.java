package stepdefinition;

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Role;
import utility.UserUtils;
import utility.WaitClass;

public class LoginPage extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(LoginPage.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);

	@Given("Start the applications")
	public void start_the_applications() {
		driver.get(ec.getObjects("url"));
		logger.info("Application started" + "\n");
		System.out.println("Application started" + "\n");
	}

	@Then("Continue button visibility on Login page {string}")
	public void continue_button_visibility_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("continuebtn");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Continue button visible on Login page" + "\n");
		System.out.println("Continue button visible on Login page" + "\n");
	}

	@Then("Continue button enable on Login page {string}")
	public void continue_button_enable_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("continuebtn");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Sign In button clickable on Login page" + "\n");
		System.out.println("Sign In button clickable on Login page" + "\n");
	}

	@Then("Click on Continue button on Login page")
	public void click_on_Continue_button_on_Login_page() throws Throwable {
		String original = ec.getObjects("continuebtn");
		String formatXPATH = String.format(original);
		try {
			wait.until(ExpectedConditions.elementToBeClickable(By.xpath(formatXPATH)));

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			logger.info("Recovering from StaleElementReferenceException " + "\n");
			System.out.println("Recovering from StaleElementReferenceException " + "\n");
			wait.until(
					ExpectedConditions.refreshed(ExpectedConditions.presenceOfElementLocated(By.xpath(formatXPATH))));
			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Clicked on Continue button on Login page" + "\n");
		System.out.println("Clicked on Continue button on Login page" + "\n");
	}

	@Then("^Sign In button visibility on Login page \"([^\"]*)\"$")
	public void sign_in_button_visibility_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("singin_btn");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("singin_btn"))).isDisplayed(), message);
		logger.info("Sign In button visible on Login page" + "\n");
		System.out.println("Sign In button visible on Login page" + "\n");
	}

	@Then("^Sign In button enable on Login page \"([^\"]*)\"$")
	public void sign_in_button_enable_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("singin_btn");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("singin_btn"))).isEnabled(), message);
		logger.info("Sign In button clickable on Login page" + "\n");
		System.out.println("Sign In button clickable on Login page" + "\n");
	}

	@Then("^Show Email Address text \"([^\"]*)\"$")
	public void show_email_address_text_something(String message) throws Throwable {
		String original = ec.getObjects("label_emailaddress");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("label_emailaddress"))).getText().contains(message));
		logger.info("Showing" + " " + message + " " + "label on Login page" + "\n");
		System.out.println("Showing" + " " + message + " " + "label on Login page" + "\n");
	}

	@Then("^Verifify Email Address text box visibility on Rest your password page$")
	public void verifify_email_address_text_box_visibility_on_rest_your_password_page() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("email"))).isDisplayed());
		logger.info("Email Address text box visibility on Rest your password page" + "\n");
		System.out.println("Email Address text box visibility on Rest your password page" + "\n");
	}

	@Then("Clear text in email address filed on login page")
	public void clear_text_in_eamil_address_filed_on_login_page() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).clear();
		logger.info("Clear text in email address filed on Login page" + "\n");
		System.out.println("Clear text in email address filed on Login page" + "\n");
	}

	@Then("Show Password text {string}")
	public void show_Password_text(String string) throws Throwable {
		String original = ec.getObjects("label_password");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("label_password"))).getText().contains(string));
		logger.info("Showing" + " " + string + " " + "label on Login page" + "\n");
		System.out.println("Showing" + " " + string + " " + "label on Login page" + "\n");
	}

	@Then("^Click on Sign In button on Login$")
	public void click_on_sign_in_button_on_login() throws Throwable {
		String original = ec.getObjects("singin_btn");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("singin_btn"))).click();
		logger.info("Clicked on Sign In button on Login page" + "\n");
		System.out.println("Clicked on Sign In button on Login page" + "\n");
		Thread.sleep(5000);
	}

	@Then("^Show an error message for Email Address \"([^\"]*)\"$")
	public void show_an_error_message_for_email_address_something(String string) throws Throwable {
		String original = ec.getObjects("email_required_error");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("email_required_error"))).getText().contains(string));
		logger.info("Showing error message" + " " + string + " " + "on Login page" + "\n");
		System.out.println("Showing error message" + " " + string + " " + "on Login page" + "\n");
	}

	@Then("^Show an error message for Password \"([^\"]*)\"$")
	public void show_an_error_message_for_password_something(String string) throws Throwable {
		String original = ec.getObjects("pwd_required_error");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("pwd_required_error"))).getText().contains(string));
		logger.info("Showing error message" + " " + string + " " + "on Login page" + "\n");
		System.out.println("Showing error message" + " " + string + " " + "on Login page" + "\n");
	}

	@Then("Enter data in Email Address field")
	public void enter_data_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("usr"));
		logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
	}
	
	@Then("Enter data in Email Address field on Login page")
	public void enter_data_in_Email_Address_field_on_Login_page() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("buyerusr"));
		logger.info("Entered data" + " " + ec.getObjects("buyerusr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("buyerusr") + " " + "Email Address field" + "\n");
	}

	@Then("Enter data in Supplier Email Address field")
	public void enter_data_in_Supplier_Email_Address_field() throws InterruptedException {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("supplierusr"));
		logger.info("Entered data" + " " + ec.getObjects("supplierusr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("supplierusr") + " " + "Email Address field" + "\n");

	}

	@Then("Enter data in Password field")
	public void enter_data_in_Password_field() throws Throwable {
		String original = ec.getObjects("password");
		String formatXPATH = String.format(original);
		
		String originalContinueBtn = ec.getObjects("continuebtn");
		
		List<WebElement> elements = driver.findElements(By.xpath(originalContinueBtn));
		
		if (elements.size() > 0) 
		{
		    System.out.println("Continue button exists");
		    logger.info("Continue button exists");
		    driver.findElement(By.xpath(originalContinueBtn)).click();
		    System.out.println("Clicked on Continue button");
		    logger.info("Clicked on Continue button");
		} else 
		{
		    System.out.println("Continue button does not exist");
		    logger.info("Continue button does not exist");
		}

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		do {
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("pwd"));
		} while (driver.findElement(By.xpath(original)).getAttribute("value").equals(""));

		logger.info("Entered data" + " " + ec.getObjects("pwd") + " " + "Password field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("pwd") + " " + "Password field" + "\n");
	}

	@Then("Enter data in Email Address field {string}")
	public void enter_data_in_Email_Address_field(String string) throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "Email Address field" + "\n");
	}

	@Then("Enter Switzerland supplier email in Email Address")
	public void Enter_Switzerland_supplier_email_in_Email_Address() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys("switzerlandauto@maildrop.cc");

		logger.info("Entered data" + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + "Email Address field" + "\n");
	}

	@Then("Enter data in Password field {string}")
	public void enter_data_in_Password_field(String string) throws Throwable {
		Thread.sleep(2000);
		String original = ec.getObjects("password");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Password field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Password field" + "\n");
	}

	@Then("^Click on Tab Key$")
	public void click_on_tab_key() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("email"))).sendKeys(Keys.TAB);
		logger.info("Clicked on TAB key" + "\n");
		System.out.println("Clicked on TAB key" + "\n");
	}

	@Then("^Show an error message for Email Address field \"([^\"]*)\"$")
	public void show_an_error_message_for_email_address_field_something(String string) throws Throwable {
		String original = ec.getObjects("invalid_error");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("invalid_error"))).getText().contains(string));
		logger.info("Showing error message" + " " + string + " " + "on Login page" + "\n");
		System.out.println("Showing error message" + " " + string + " " + "on Login page" + "\n");
	}

	@Then("^Show an error toast message \"([^\"]*)\" on Login$")
	public void show_an_error_toast_message_something_on_login(String string) throws Throwable {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);
		String original = ec.getObjects("invalid_credentails_error");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("invalid_credentails_error"))).getText().contains(string));
		logger.info("Showing toast message" + " " + string + " " + "on Login page" + "\n");
		System.out.println("Showing toast message" + " " + string + " " + "on Login page" + "\n");
		Thread.sleep(3000);
	}

	@And("^Show the title \"([^\"]*)\"$")
	public void show_the_title_something(String string) throws Throwable {
		String original = ec.getObjects("mysuppliers_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Dashbord" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Dashbord" + "\n");
		Thread.sleep(5000);
	}

	@Given("When the User is {string}")
	public void when_the_User_is(String string) throws Throwable {
		// Do nothing.
		logger.info("User is" + " " + string + " " + "\n");
		System.out.println("User is" + " " + string + "\n");
	}

	@Then("Check the {string} subject {string}")
	public void check_the_subject(String email, String subject) throws Throwable {
		// Go to the Mailinator page
		driver.get(ec.getObjects("mailurl"));
		Thread.sleep(2000);

		// Search box
		String original = ec.getObjects("mailinator_searchbox");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		// send the https://www.mailinator.com/ value to the search box
		driver.findElement(By.xpath(original)).sendKeys(email);
		Thread.sleep(4000);

		// click Go
		String goBtn = ec.getObjects("mailinator_gobtn");
		String goBtnformatXPATH = String.format(goBtn);

		// WaitClass.webDriverWait(goBtnformatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(goBtnformatXPATH)));

		driver.findElement(By.xpath(goBtn)).click();

		// find out the first line in the table

		String firstEmailsubject = ec.getObjects("mailinator_firstemailsubject");
		String firstEmailformatXPATH = String.format(firstEmailsubject);

		// WaitClass.webDriverWait(firstEmailformatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(firstEmailformatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mailinator_firstemailsubject"))).getText()
				.contains(subject));

		logger.info("Showing email subject" + " " + subject + " " + "\n");
		System.out.println("Showing email subject" + " " + subject + " " + "\n");
	}

	@Then("^Logout from the system$")
	public void logout_from_the_system() throws Throwable {
		driver.switchTo().defaultContent();
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);

		String ProfileBtn = ec.getObjects("profile_btn");
		String formatXPATH = String.format(ProfileBtn);

		String signoutBtn = ec.getObjects("signout");
		String formatXPATH1 = String.format(signoutBtn);
		try {
			do {
				WaitClass.clickableWait(formatXPATH);
				driver.findElement(By.xpath(ec.getObjects("profile_btn"))).click();
			} while (!driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

			System.out.println("\n" + "Clicked on Profile button" + "\n");

			// WaitClass.clickableWait(formatXPATH1);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH1)));

			driver.findElement(By.xpath(ec.getObjects("signout"))).click();
			System.out.println("\n" + "Clicked on Sign out button" + "\n");

		} catch (ElementClickInterceptedException e) {
			WebDriverWait wait = new WebDriverWait(driver, 600);
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("modal_x_button"))));
			wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(ec.getObjects("publish_popup"))));

			do {
				driver.findElement(By.xpath(ec.getObjects("profile_btn"))).click();
			} while (!driver.findElement(By.xpath(formatXPATH1)).isDisplayed());

			System.out.println("\n" + "Clicked on Profile button" + "\n");

			WaitClass.clickableWait(formatXPATH1);

			driver.findElement(By.xpath(ec.getObjects("signout"))).click();
			System.out.println("\n" + "Clicked on Sign out button" + "\n");

		}

		logger.info("Logout from the system" + "\n");
		System.out.println("Logout from the system" + "\n");
		Thread.sleep(5000);

	}

	@Then("^Get Help link visibility on Login page \"([^\"]*)\"$")
	public void get_help_link_visibility_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("gethelp_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("gethelp_link"))).isDisplayed(), message);
		logger.info("Get Help link visible " + " " + message + " " + " on Login page" + "\n");
		System.out.println("Get Help link visible " + " " + message + " " + " on Login page" + "\n");
	}

	@Then("^Get Help link enable on Login page \"([^\"]*)\"$")
	public void get_help_link_enable_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("gethelp_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("gethelp_link"))).isEnabled(), message);
		logger.info("Get Help link clickable " + " " + message + " " + " on Login page" + "\n");
		System.out.println("Get Help link clickable " + " " + message + " " + " on Login page" + "\n");
	}

	@Then("^Click on Get Help link on Login page$")
	public void click_on_get_help_link_on_login_page() throws Throwable {
		String original = ec.getObjects("gethelp_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("gethelp_link"))).click();
		logger.info("Click on Get Help link on Login page" + "\n");
		System.out.println("Click on Get Help link on Login page" + "\n");
	}

	@Then("^Switch to new Tab$")
	public void switch_to_new_tab() throws Throwable {
		try {
			String currentTab = driver.getWindowHandle();
			for (String handle : driver.getWindowHandles()) {
				if (!currentTab.equals(handle)) {
					driver.switchTo().window(handle);
					logger.info("Switch to new Tab" + "\n");
					System.out.println("Switch to new Tab" + "\n");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Then("^Show the title on Help page \"([^\"]*)\"$")
	public void show_the_title_on_help_page_something(String string) throws Throwable {
		String original = ec.getObjects("gethelp_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("gethelp_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Get Help page" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Get Help page" + "\n");
	}

	@Then("^Show Help link on Login page \"([^\"]*)\"$")
	public void show_help_link_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("help_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("help_link"))).isDisplayed(), message);
		logger.info("Help link visible " + " " + message + " " + " on Login page" + "\n");
		System.out.println("Help link visible " + " " + message + " " + " on Login page" + "\n");
	}

	@Then("^Help link enabled on Login page \"([^\"]*)\"$")
	public void help_link_enabled_on_login_page_something(String message) throws Throwable {
		String original = ec.getObjects("help_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("help_link"))).isEnabled(), message);
		logger.info("Help link clickable " + " " + message + " " + " on Login page" + "\n");
		System.out.println("Help link clickable " + " " + message + " " + " on Login page" + "\n");
	}

	@Then("^Click on Help link on Login page$")
	public void click_on_help_link_on_login_page() throws Throwable {
		String original = ec.getObjects("help_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("help_link"))).click();
		logger.info("Click on Help link on Login page" + "\n");
		System.out.println("Click on Help link on Login page" + "\n");
	}

	@Then("Show Terms of Use link on Login page {string}")
	public void show_Terms_of_Use_link_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("termsofuser_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("termsofuser_link"))).isDisplayed(), string);
		logger.info("Terms of Use link visible " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Terms of Use link visible " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("Terms of Use link enable on Login page {string}")
	public void terms_of_Use_link_enable_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("termsofuser_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("termsofuser_link"))).isEnabled(), string);
		logger.info("Terms of Use link clickable " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Terms of Use link clickable " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("^Click on Terms of Use link on Login page$")
	public void click_on_terms_of_use_link_on_login_page() throws Throwable {
		String original = ec.getObjects("termsofuser_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("termsofuser_link"))).click();
		logger.info("Click on Terms of Use link on Login page" + "\n");
		System.out.println("Click on Terms of Use link on Login page" + "\n");
	}

	@Then("Show the title on Terms of Use page {string}")
	public void show_the_title_on_Terms_of_Use_page(String string) throws Throwable {
		String original = ec.getObjects("termsofuser_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("termsofuser_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Get Help page" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Get Help page" + "\n");
	}

	@Then("Show Privacy Policy link on Login page {string}")
	public void show_Privacy_Policy_link_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("privacypolicy_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("privacypolicy_link"))).isDisplayed(), string);
		logger.info("Privacy Policy link visible " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Privacy Policy link visible " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("Privacy Policy link enable on Login page {string}")
	public void privacy_Policy_link_enable_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("privacypolicy_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("privacypolicy_link"))).isEnabled(), string);
		logger.info("Privacy Policy link clickable " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Privacy Policy link clickable " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("^Click on Privacy Policy link on Login page$")
	public void click_on_privacy_policy_link_on_login_page() throws Throwable {
		String original = ec.getObjects("privacypolicy_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(ec.getObjects("privacypolicy_link"))).click();
		logger.info("Click on Privacy Policy link on Login page" + "\n");
		System.out.println("Click on Privacy Policy link on Login page" + "\n");
	}

	@Then("^Show the title on Privacy Policy page \"([^\"]*)\"$")
	public void show_the_title_on_privacy_policy_page_something(String string) throws Throwable {
		String original = ec.getObjects("privacypolicy_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("privacypolicy_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Get Help page" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Get Help page" + "\n");
	}

	@Then("Show Forgot your password link on Login page {string}")
	public void show_Forgot_your_password_link_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("forgotpassword_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("forgotpassword_link"))).isDisplayed(), string);
		logger.info("Forgot your password link visible " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Forgot your password link visible " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("Forgot your password link enable on Login page {string}")
	public void forgot_your_password_link_enable_on_Login_page(String string) throws Throwable {
		String original = ec.getObjects("forgotpassword_link");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("forgotpassword_link"))).isEnabled(), string);
		logger.info("Forgot your password link clickable " + " " + string + " " + " on Login page" + "\n");
		System.out.println("Forgot your password link clickable " + " " + string + " " + " on Login page" + "\n");
	}

	@Then("^Click on Forgot your password link on Login page$")
	public void click_on_forgot_your_password_link_on_login_page() throws Throwable {
		String original = ec.getObjects("forgotpassword_link");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		// handle OS
		String operSys = System.getProperty("os.name").toLowerCase();
		if (operSys.contains("win")) {

			driver.findElement(By.xpath(ec.getObjects("forgotpassword_link"))).click();
		} else if (operSys.contains("nix") || operSys.contains("nux") || operSys.contains("aix")) {

			driver.findElement(By.xpath(ec.getObjects("forgotpassword_link"))).click();
		}

		logger.info("Click on Forgot your password link on Login page" + "\n");
		System.out.println("Click on Forgot your password link on Login page" + "\n");
	}

	@Then("Show the title on Forgot your password page {string}")
	public void show_the_title_on_Forgot_your_password_page(String string) throws Throwable {
		String original = ec.getObjects("forgotyourpwd_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("forgotyourpwd_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Get Help page" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Get Help page" + "\n");
	}

	@Then("Show the text {string} on flex")
	public void show_the_text_on_flex(String string) throws Throwable {
		String original = ec.getObjects("lastfailedlogin_text");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("lastfailedlogin_text"))).getText().contains(string));

		logger.info("Showing text" + " " + string + " " + "on Dashbord" + "\n");
		System.out.println("Showing text" + " " + string + " " + "on Dashbord" + "\n");
	}

	@Then("Show the text {string} on supplier flex")
	public void show_the_text_on_supplier_flex(String string) throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("lastfailedlogin_supplier_text");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("lastfailedlogin_supplier_text"))).getText()
				.contains(string));

		logger.info("Showing text" + " " + string + " " + "on Supplier Dashbord" + "\n");
		System.out.println("Showing text" + " " + string + " " + "on Supplier Dashbord" + "\n");
	}

	@Then("Enter supplier email in Email Address field {string}")
	public void enter_supplier_email_in_email_address_field_something(String string) throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "Email Address field" + "\n");

	}

	@Then("Enter Supplier Email in Email Address field")
	public void enter_supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("supplierusr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("supplierusr") + " " + "Email Address field" + "\n");
	}

	@Then("^Enter supplier email in Email Address field$")
	public void enter_supplier_email_in_email_address_field() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("supplierusr") + " " + "in Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("supplierusr") + " " + "in Email Address field" + "\n");
	}

	@Then("^Enter supplier password in Password field$")
	public void enter_supplier_password_in_password_field() throws Throwable {
		String original = ec.getObjects("password");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("pwd"));

		logger.info("Entered data" + " " + ec.getObjects("pwd") + " " + "in Password field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("pwd") + " " + "in Password field" + "\n");
	}

	@Then("^Show the title \"([^\"]*)\" on Dashboard page$")
	public void show_the_title_something_on_dashboard_page(String string) throws Throwable {

		String original = ec.getObjects("myBuyers_title");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("myBuyers_title"))).getText().contains(string));
		logger.info("Showing title" + " " + string + " " + "on Dashbord" + "\n");
		System.out.println("Showing title" + " " + string + " " + "on Dashbord" + "\n");
	}

	@Then("^Supplier should land on dashboard page$")
	public void supplier_should_land_on_dashboard_page() throws Throwable {

		String original = ec.getObjects("dashboard_supplier");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Landed on Dashboard Page" + "\n");
		System.out.println("Landed on Dashboard Page" + "\n");

	}

	@Then("Enter German supplier email in Email Address field")
	public void enter_German_supplier_email_in_email_address_field_something() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("german_Supplierusr"));

		if (driver.findElement(By.xpath(original)).getAttribute("value") != ec.getObjects("german_Supplierusr"))
			;
		{

			WebElement toClear = driver.findElement(By.xpath(original));
			toClear.sendKeys(Keys.CONTROL + "a");
			toClear.sendKeys(Keys.DELETE);
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("german_Supplierusr"));
		}

		logger.info("Entered data" + " " + ec.getObjects("german_Supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("german_Supplierusr") + " " + "Email Address field" + "\n");

	}

	@Then("Enter France supplier email in Email Address field")
	public void enter_France_supplier_email_in_email_address_field_something() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("france_supplierusr"));

		if (driver.findElement(By.xpath(original)).getAttribute("value") != ec.getObjects("france_supplierusr"))
			;
		{

			WebElement toClear = driver.findElement(By.xpath(original));
			toClear.sendKeys(Keys.CONTROL + "a");
			toClear.sendKeys(Keys.DELETE);
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("france_supplierusr"));
		}

		logger.info("Entered data" + " " + ec.getObjects("france_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("france_supplierusr") + " " + "Email Address field" + "\n");

	}

	@Then("Verify Email Address is entered in Email Address field")
	public void verify_Email_Address_is_entered_in_Email_Address_field() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(
				driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equalsIgnoreCase(ec.getObjects("usr")));

		System.out.println("Showing Email address in Email address field" + "\n");
		logger.info("Showing Email address in Email address field" + "\n");

	}

	@Then("Remove Email from Email address field")
	public void remove_Email_from_Email_address_field() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WebElement toClear = driver.findElement(By.xpath(formatXPATH));
		toClear.sendKeys(Keys.CONTROL + "a");
		toClear.sendKeys(Keys.DELETE);

		System.out.println("Deleted Email adddress in Email address field" + "\n");
		logger.info("Deleted Email adddress in Email address field" + "\n");
	}

	@Then("Close the hotjar window")
	public void close_the_hotjar_window() {
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		if (driver.findElements(By.xpath(ec.getObjects("rate4"))).size() > 0) {

			String original = ec.getObjects("rate4");
			String formatXPATH = String.format(original);

			String original1 = ec.getObjects("jarnext");
			String formatXPATH1 = String.format(original1);

			String original2 = ec.getObjects("jarclose");
			String formatXPATH2 = String.format(original2);

			// WaitClass.hotjarWait(formatXPATH);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
			driver.switchTo().activeElement();
			do {
				driver.findElement(By.xpath(original)).click();

				System.out.println("@@@@ HOTJAR: CLICKED RATING 4");

				WaitClass.hotjarWait(formatXPATH1);
				driver.findElement(By.xpath(original1)).click();
			} while (driver.findElements(By.xpath(original2)).size() == 0);

			System.out.println("###### HOTJAR: CLICKED Next button");

			WaitClass.hotjarWait(formatXPATH2);
			driver.findElement(By.xpath(original2)).click();

			System.out.println("$$$$$$) HOTJAR: Clicked Close");
		}
		String original = ec.getObjects("email");

		if (driver.findElements(By.xpath(original)).size() == 0) {
			logger.info("Login Page not found. Initiating Application" + "\n");
			System.out.println("Login Page not found. Initiating Application" + "\n");

			driver.get(ec.getObjects("url") + "login");
		}

	}

	// ********RD credentials for Nokia supplier and buyer********//

	@Then("Enter Nokia Supplier Email in Email Address field")
	public void enter_Nokia_supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("nokia_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}

	@Then("^Enter Nokia Supplier email in email Address field$")
	public void enter_Nokia_supplier_email_in_email_Address_field() throws Throwable {

		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("nokia_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "in Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "in Email Address field" + "\n");
	}

	@Then("Enter data in Nokia Password field")
	public void enter_data_in_Nokia_Password_field() throws Throwable {
		String original = ec.getObjects("password");
		String formatXPATH = String.format(original);
		
		String originalContinueBtn = ec.getObjects("continuebtn");
		
		List<WebElement> elements = driver.findElements(By.xpath(originalContinueBtn));
		
		if (elements.size() > 0) 
		{
		    System.out.println("Continue button exists");
		    logger.info("Continue button exists");
		    driver.findElement(By.xpath(originalContinueBtn)).click();
		    System.out.println("Clicked on Continue button");
		    logger.info("Clicked on Continue button");
		} else 
		{
		    System.out.println("Continue button does not exist");
		    logger.info("Continue button does not exist");
		}

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		do {
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("nokia_pwd"));
		} while (driver.findElement(By.xpath(original)).getAttribute("value").equals(""));

		logger.info("Entered data" + " " + ec.getObjects("nokia_pwd") + " " + "Password field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("nokia_pwd") + " " + "Password field" + "\n");
	}

	/*
	 * @Then("Click {string} radio under {string}") public void
	 * click_radio_under(String string, String string2) {
	 * 
	 * 
	 * String original = ec.getObjects("AdditionalInfo_yes"); String formatXPATH =
	 * String.format(original);
	 * 
	 * driver.findElement(By.xpath(formatXPATH)).click();
	 * 
	 * logger.info("Clicked on " + "No" + " radio button under " + string2 + "\n");
	 * System.out.println("Clicked on " + "No" + " radio button under " + string2 +
	 * "\n"); }
	 */

	@Then("Enter nokia buyer in Email Address field")
	public void enter_nokia_buyer_in_Email_Address_field() throws Throwable {
		Thread.sleep(3000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("nokia_buyer_usr"));
		logger.info("Entered data" + " " + ec.getObjects("nokia_buyer_usr") + " " + "Email Address field" + "\n");
		System.out
				.println("Entered data" + " " + ec.getObjects("nokia_buyer_usr") + " " + "Email Address field" + "\n");
	}

//////////********RD writings*******///////////////

	@Then("Verify {string} button on {string} page")
	public void verify_button_on_page(String string, String abc) {
		String original = ec.getObjects("Invitesupplir_bttoncsup");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on Invite supplier button on Connected suppliers" + "\n");
		System.out.println("Clicked on Invite supplier button on Connected suppliers" + "\n");
	}

	@Then("Verify the breadcrumb visibility on Invite supplier page")
	public void verify_the_breadcrumb_visibility_on_Invite_supplier_page() {
		String original = ec.getObjects("Bread_crumb");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of bread crumb" + "\n");
		System.out.println("Verified visibility of bread crumb" + "\n");
	}

	@Then("Verify the visibility of {string} heading")
	public void verify_the_visibility_of_heading(String aaa) {
		String original = ec.getObjects("InviteSupplier_title");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		String abcd = driver.findElement(By.xpath(formatXPATH)).getText();
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + aaa + "is" + abcd + "is displayed" + "\n");
		System.out.println("Verified visibility of " + aaa + "is" + abcd + "is displayed" + "\n");
	}

	@Then("Verify the visibility of {string} title")
	public void verify_the_visibility_of_title(String abc) {
		String original = ec.getObjects("Invitedetails_title");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		String abcde = driver.findElement(By.xpath(formatXPATH)).getText();
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + abc + "is" + abcde + "is displayed" + "\n");
		System.out.println("Verified visibility of " + abc + "is" + abcde + "is displayed" + "\n");
	}

	@Then("Verify the visibility of {string} section")
	public void verify_the_visibility_of_section(String xyz) {
		String original = ec.getObjects("invitedetails_pathsrt") + xyz + ec.getObjects("invitedetails_pathend");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + xyz + "\n");
		System.out.println("Verified visibility of " + xyz + "\n");
	}

	@Then("Show an error message when confirm mail id is not enetered {string} field {string}")
	public void show_an_error_message_when_confirm_mail_id_is_not_enetered_field(String nameField, String messErr)
			throws Throwable {
		String original = ec.getObjects("div_cont_txt_quoMarks") + nameField + ec.getObjects("required_errMess");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(messErr));

		logger.info("Showing " + messErr + " error message " + " at " + nameField + " field" + "\n");
		System.out.println("Showing " + messErr + " error message " + " at " + nameField + " field" + "\n");

	}

	@Then("Verify the visibility of labels {string} under the {string} section")
	public void verify_the_visibility_of_label_under_the_section(String val, String fieldName) {

		String original = ec.getObjects("labels_under_customfields") + val
				+ ec.getObjects("labels_under_customfields1");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + val + "\n");
		System.out.println("Verified visibility of " + val + "\n");
	}

	@Then("Verify label visibility of {string} under the {string} section")
	public void verify_label_visibility_of_under_the_section(String val, String fieldName) {
		String original = ec.getObjects("labels_visibility") + fieldName + "_" + val + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + val + "\n");
		System.out.println("Verified visibility of " + val + "\n");
	}

	@Then("Verify label visibility of {string} section")
	public void verify_label_visibility_of_under_section(String val) {
		String original = ec.getObjects("labels_visibility") + val + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + val + "\n");
		System.out.println("Verified visibility of " + val + "\n");
	}

	@Then("Verify the visibility of {string} button")
	public void verify_the_visibility_of_button(String xyz) {
		String original = ec.getObjects("buttons_normalize") + xyz + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Verified visibility of " + xyz + "\n");
		System.out.println("Verified visibility of " + xyz + "\n");
	}

	@Then("Verify label visibility of {string} dropdown under the {string} section")
	public void verify_label_visibility_of_dropdown_under_the_section(String val, String fieldName)

	{
		String original = ec.getObjects("dropdownpaths") + fieldName + "_" + val + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		// driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified visibility of " + val + "dropdown" + "\n");
		System.out.println("Verified visibility of " + val + "dropdown" + "\n");
	}

//	@Then("Verify the visibility of {string} dropdown {string} section")
//	
//	public void verify_the_visibility_of_dropdown_section(String xyz, String i) {
//			
//		String original = ec.getObjects("dropdownpath1") +i+ "]";
//		String formatXPATH = String.format(original);
//		WaitClass.webDriverWait(formatXPATH);
//		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
//		driver.findElement(By.xpath(formatXPATH)).click();
//		logger.info("Verified visibility of " + xyz + "\n");
//		System.out.println("Verified visibility of " + xyz + "\n");
//		
//		
//	}
	@Then("Verify the visibility of {string} dropdown section")

	public void verify_the_visibility_of_dropdown_section(String xyz) throws InterruptedException {

		Thread.sleep(10000);
		for (int i = 1; i <= 5; i++) {

			String original = ec.getObjects("dropdownpath1") + i + "]";
			String formatXPATH = String.format(original);
			WaitClass.webDriverWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
			Thread.sleep(10000);
			driver.findElement(By.xpath(formatXPATH)).click();

			if (i == 1) {

				logger.info("Verified visibility of " + " Supplier Category (Commodity Family) " + "\n");
				System.out.println("Verified visibility of " + " Supplier Category (Commodity Family) " + "\n");
				String original12 = ec.getObjects("dropdon4") + ec.getObjects("dropdon3") + "Clear All"
						+ ec.getObjects("label_var2");
				String formatXPATH1 = String.format(original12);
				driver.findElement(By.xpath(formatXPATH1)).click();
			} else if (i == 2) {

				System.out.println("Verified visibility of" + " IBM Region  " + "\n");
				String original12 = ec.getObjects("dropdon4") + ec.getObjects("dropdon3") + "Clear All"
						+ ec.getObjects("label_var2");
				String formatXPATH1 = String.format(original12);
				driver.findElement(By.xpath(formatXPATH1)).click();

			} else if (i == 3) {
				System.out.println("Verified visibility of" + " IBM Market  " + "\n");
				String original12 = ec.getObjects("dropdon4") + ec.getObjects("dropdon3") + "Clear All"
						+ ec.getObjects("label_var2");
				String formatXPATH1 = String.format(original12);
				driver.findElement(By.xpath(formatXPATH1)).click();
			} else if (i == 4) {
				System.out.println("Verified visibility of" + " IBM Country & ISO Code*  " + "\n");
				String original12 = ec.getObjects("dropdon1") + ec.getObjects("dropdon3") + "Clear All"
						+ ec.getObjects("label_var2");
				String formatXPATH1 = String.format(original12);
				driver.findElement(By.xpath(formatXPATH1)).click();
			} else {
				System.out.println("Verified visibility of" + " Additional Supplier Label." + "\n");

			}
		}

	}

	@Then("Verify the visibility of {string} labels on section Supplier Category and supplierInformation")
	public void Verify_the_visibility_of_labels_on_section_Supplier_Category_and_supplierInformation(String abc) {

		String original = ec.getObjects("dropdon4") + ec.getObjects("dropdon3") + abc + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		// driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified visibility of " + abc + "\n");
		System.out.println("Verified visibility of " + " Select All" + "\n");
		// supplier information label
		String original1 = ec.getObjects("dropdon1") + ec.getObjects("dropdon3") + abc + ec.getObjects("label_var2");
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		// driver.findElement(By.xpath(formatXPATH1)).click();
		logger.info("Verified visibility of " + abc + "on" + " supplier information label" + "\n");
		System.out.println("Verified visibility of " + abc + " on" + " supplier information label" + "\n");
	}

	@Then("Verify the visibility of Select All labels on section IBM categories")
	public void verify_the_visibility_of_Select_All_on_section_IBM_Categories() {

		String original = ec.getObjects("dropdon_geo") + ec.getObjects("div_label") + "span[1]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified visibility of " + " Clear All " + " on geo " + "\n");
		System.out.println("Verified visibility of " + " Clear All " + " on geo " + "\n");
		/// ibm region
		String original1 = ec.getObjects("dropdon_geo") + ec.getObjects("ibmreg_div") + "span[1]";
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH1)).click();
		logger.info("Verified visibility of " + "Clear All" + " on geo" + "\n");
		System.out.println("Verified visibility of " + "Clear All" + " on geo" + "\n");
		// ibm country
		String original12 = ec.getObjects("ibmcoun");
		String formatXPATH12 = String.format(original12);
		WaitClass.webDriverWait(formatXPATH12);
		assertTrue(driver.findElement(By.xpath(formatXPATH12)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH12)).click();
		logger.info("Verified visibility of " + " Clear All " + " on country " + "\n");
		System.out.println("Verified visibility of " + " Clear All " + " on country " + "\n");

	}

	@Then("Verify the visibility of Clear All labels on section IBM categories")
	public void verify_the_visibility_of_Clear_All_on_section_IBM_Categories() {

		String original = ec.getObjects("dropdon_geo") + ec.getObjects("div_label") + "span[2]";
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Verified visibility of " + " Clear All " + " on geo " + "\n");
		System.out.println("Verified visibility of " + " Clear All " + " on geo " + "\n");
		/// ibm region
		String original1 = ec.getObjects("dropdon_geo") + ec.getObjects("ibmreg_div") + "span[2]";
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH1)).click();
		logger.info("Verified visibility of " + "Clear All" + " on region " + "\n");
		System.out.println("Verified visibility of " + "Clear All" + " on region " + "\n");
		// ibm country
		String original12 = ec.getObjects("ibmcountcall");
		String formatXPATH12 = String.format(original12);
		WaitClass.webDriverWait(formatXPATH12);
		assertTrue(driver.findElement(By.xpath(formatXPATH12)).isDisplayed());
		driver.findElement(By.xpath(formatXPATH12)).click();
		logger.info("Verified visibility of " + " Clear All " + " on country " + "\n");
		System.out.println("Verified visibility of " + " Clear All" + " on country " + "\n");
	}

	@Then("Verify new role copy from {string} role shows on {string} on Action center")
	public void verify_new_role_copy_from_role_shows_on_Action_center(String roleName, String screen) {
		// roleName = roleName.replaceAll("\\s", "");
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(roleName) && (role.isRMR())) {
				roleName = role.getRoleName();
				System.out.println("\n" + roleName + "\n");
				String original = ec.getObjects("SRM_details3") + roleName + ec.getObjects("SRM_details2");
				String formatXPATH = String.format(original);

				System.out.println("\n" + "Waiting " + roleName + "visiable" + "\n");
				System.out.println("\n" + "Check RMR " + role.isRMR() + "visiable" + "\n");
				System.out.println("\n" + "Xpath: " + formatXPATH + "visiable" + "\n");

				WaitClass.webDriverWait(formatXPATH);

				assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

				logger.info("Showing Role Name: " + roleName + " in Relationship Manage Roles columnon Action center"
						+ "\n");
				System.out.println(
						"Showing Role Name: " + roleName + " in Relationship Manage Roles column Action center" + "\n");

			}

		}
	}

	@Then("Click on Update contacts icon on {string}  role on Action center")
	public void click_on_Update_contacts_icon_on_role_on_Action_center(String roleName) {
		for (Role role : UserUtils.getRoles()) {
			if (role.getRoleName().contains(roleName) && role.isRMR()) {
				roleName = role.getRoleName();

				String original = ec.getObjects("actioncen_updaticon");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);

				driver.findElement(By.xpath(formatXPATH)).click();

				logger.info("Clicked on Update contacts icon on Action cnter " + roleName + "\n");
				System.out.println("Clicked on Update contacts icon on Action cnter " + roleName + "\n");
				break;
			}
		}

	}

	@Then("Click on Invite Suppliers on dashboard page")
	public void click_on_Invite_Suppliers_on_dashboard_page() {
		String original = ec.getObjects("Invitesupplier_dash");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked invite suppliers on Dashboard page" + "\n");
		System.out.println("Clicked invite suppliers on Dashboard page" + "\n");

	}

//multi buyer
	@Then("Enter data in Email Address field for nokia buyer")
	public void enter_data_in_Email_Address_field_nokia() throws Throwable {
		Thread.sleep(300);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("nokiabuyerpublishprofile"));
		logger.info("Entered data" + " " + ec.getObjects("nokiabuyerpublishprofile") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("nokiabuyerpublishprofile") + " " + "Email Address field" + "\n");
	}

	@Then("Enter India Supplier Email in Email Address field")
	public void enter_India_supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("India_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("India_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("India_supplierusr") + " " + "Email Address field" + "\n");
	}

	@Then("Click on the publish button on the Review screen")
	public void click_on_the_publish_button() throws Throwable {

		String original = ec.getObjects("publishpath");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the publish button" + "\n");
		System.out.println("Clicked on the publish button" + "\n");
	}
	@Then("Enter category manager email in Email Address field")
	public void enter_category_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("categoryManager"));
		logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
	}
	@Then("Enter Redhat buyer in Email Address field")
	public void enter_redhat_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		String url = ec.getObjects("loginurl");
		if (url.contains("integration") || url.contains("uat") || url.contains("qa")) {
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("usr"));
			logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
			System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");

		} else {
			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("redHatusr"));
			logger.info("Entered data" + " " + ec.getObjects("redHatusr") + " " + "Email Address field" + "\n");
			System.out.println("Entered data" + " " + ec.getObjects("redHatusr") + " " + "Email Address field" + "\n");
		}
	}
	
	
}

