package stepdefinition;

import static org.testng.Assert.assertTrue;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class emailnotificationoptoutdefault extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(emailnotificationoptoutdefault.class);

	@Then("Show Settings tab in Notifications page {string}")
	public void show_settings_tab_in_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("settingstab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("settingstab"))).isDisplayed(), string);
		logger.info("Settings Tab visible " + " " + string + " " + " in Notifications page" + "\n");
		System.out.println("Settings Tab visible " + " " + string + " " + " in Notifications page" + "\n");
	}

	@Then("Settings tab clickable in Notifications page {string}")
	public void settings_tab_clickable_in_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("settingstab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("settingstab"))).isEnabled(), string);
		logger.info("Settings Tab clickable " + " " + string + " " + " in Notifications page" + "\n");
		System.out.println("Settings Tab clickable " + " " + string + " " + " in Notifications page" + "\n");
	}

	@Then("Click on Settings in Notifications page {string}")
	public void click_on_settings_in_notifications_page_something(String string) throws Throwable {
		String original = ec.getObjects("settingstab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Settings tab in Notifications page" + "\n");
		System.out.println("Clicked on Settings tab in Notifications page" + "\n");
	}
	
	@Then("Click on Notifications in supplier Dashboard page {string}")
	public void click_on_notifications_in_supplier_dashboard_page_something(String strArg1) throws Throwable{
	String original = ec.getObjects("notifications_supp");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Notifications in supplier Dashboard page" + "\n");
	System.out.println("Clicked on Notifications in supplier Dashboard page" + "\n");
}
	@Then("Show invite process option visibility in settings {string}")
	public void show_invite_process_option_visibility_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("inviteprocess");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Invite Process Option Visibility in Settings page" + "\n");
		System.out.println("Invite Process Option Visibility in Settings page" + "\n");
	}

	@Then("Show invite process option available in settings {string}")
	public void show_invite_process_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("inviteprocess");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("inviteprocess"))).isEnabled(), string);
		logger.info("Invite Process Option Available in Settings page" + "\n");
		System.out.println("Invite Process Option Available in Settings page" + "\n");

	}

	@Then("Show questionnaires and profile option visibility in settings {string}")
	public void show_questionnaires_and_profile_option_visibility_in_settings_something(String string)
			throws Throwable {
		String original = ec.getObjects("questionnairesandprofile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Questionnaires And Profile Option Visibility in Settings page" + "\n");
		System.out.println("Questionnaires And Profile Option Visibility in Settings page" + "\n");
	}

	@Then("Show questionnaires and profile option available in settings {string}")
	public void show_questionnaires_and_profile_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("questionnairesandprofile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("questionnairesandprofile"))).isEnabled(), string);
		logger.info("Questionnaires And Profile Option Available in Settings page" + "\n");
		System.out.println("Questionnaires And Profile Option Available in Settings page" + "\n");
	}

	@Then("Show approval requests option visibility in settings {string}")
	public void show_approval_requests_option_visibility_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("approvalrequests");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Approval Requests Option Visibility in Settings page" + "\n");
		System.out.println("Approval Requests Option Visibility in Settings page" + "\n");
	}

	@Then("Show approval requests option available in settings {string}")
	public void show_approval_requests_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("approvalrequests");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("approvalrequests"))).isEnabled(), string);
		logger.info("Approval Requests Option Available in Settings page" + "\n");
		System.out.println("Approval Requests Option Available in Settings page" + "\n");
	}

	@Then("^Click on Close button in Approvalrequest modal$")
    public void click_on_close_button_in_approvalrequest_modal() throws Throwable {
        String original = ec.getObjects("Approval_Closebtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on close button" + "\n");
		System.out.println("Clicked on close button" + "\n");
    }


	@Then("Show user management option visibility in settings {string}")
	public void show_user_management_option_visibility_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("usermanagement");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("User Management Option Visibility in Settings page" + "\n");
		System.out.println("User Management Option Visibility in Settings page" + "\n");
	}

	@Then("Show user management option available in settings {string}")
	public void show_user_management_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("usermanagement");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("usermanagement"))).isEnabled(), string);
		logger.info("User Management Option Available in Settings page" + "\n");
		System.out.println("User Management Option Available in Settings page" + "\n");
	}

	@Then("Show followupevents option visibility in settings \"([^\"]*)\"$")
	public void show_followupevents_option_visibility_in_settings_something(String strArg1) throws Throwable {
		String original = ec.getObjects("followupevents");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Followup Events Option Visibility in Settings page" + "\n");
		System.out.println("Followup Events Option Visibility in Settings page" + "\n");
	}

	@Then("Show followupevents option available in settings {string}")
	public void show_followupevents_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("followupevents");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("followupevents"))).isEnabled(), string);
		logger.info("Followup Events Option Available in Settings page" + "\n");
		System.out.println("Followup Events Option Available in Settings page" + "\n");
	}

	@Then("Show onboarding option visibility in settings {string}")
	public void show_onboarding_option_visibility_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("onboarding");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("Onboarding Option Visibility in Settings page" + "\n");
		System.out.println("Onboarding Option Visibility in Settings page" + "\n");
	}

	@Then("Show onboarding option available in settings {string}")
	public void show_onboarding_option_available_in_settings_something(String string) throws Throwable {
		String original = ec.getObjects("onboarding");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("onboarding"))).isEnabled(), string);
		logger.info("Onboarding Option Available in Settings page" + "\n");
		System.out.println("Onboarding Option Available in Settings page" + "\n");
	}
	
	@Then("Click on {string} button on notification")
	public void Click_on_button_on_notification(String xyz) {
		
		String original = ec.getObjects("buttons_normalize") + xyz + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("clicked on" + xyz + "\n");
		System.out.println("clicked on" + xyz + "\n");
	}
	
	@Then("Click on the {string} status is {string}")
	public void Click_on_the_status_is(String Buyer, String Status) {
		String original = ec.getObjects("label_var") + Buyer + ec.getObjects("mysupplier_userstatus_var2") + Status
				+ "'][1]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Status  " + " " + Status + " " + " clicked on Company name in buyer view" + "\n");
		System.out.println("status  " + " " + Status + " " + " clicked on company name in buyer view" + "\n");

	}
}
