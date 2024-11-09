package stepdefinition;

import static org.testng.Assert.assertTrue;
import org.openqa.selenium.support.ui.Select;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.Base;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SupplierRegistrationProcess extends Base {
	Logger logger = Logger.getLogger(SupplierRegistrationProcess.class);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	@Then("click on the email recevied in supplierInbox")
	public void click_on_the_email_recevied_in_supplierInbox() throws Throwable {
		String original = ec.getObjects("mailinator_from_mail");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on email received in mailinator page" + "\n");
		System.out.println("Clicked on email received in mailinator page" + "\n");
	}

	@Then("Verify Company tab is displyed on registration page")
	public void verify_company_tab_displyed() throws Throwable {
		String original = ec.getObjects("company_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the company radio button is displyed: " + b + "\n");
			System.out.println("the company radio button is displyed: " + b + "\n");
		} else {
			logger.info("the company radio button is not displyed: " + b + "\n");
			System.out.println("the company radio button is not displyed: " + b + "\n");
		}
	}

	@Then("Verify User Account tab is displyed on registration page")
	public void verify_useraccount_tab_displyed() throws Throwable {
		String original = ec.getObjects("user_account_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the user account radio button is displyed: " + b + "\n");
			System.out.println("the user account radio button is displyed: " + b + "\n");
		} else {
			logger.info("the user account radio button is not displyed: " + b + "\n");
			System.out.println("the user account radio button is not displyed: " + b + "\n");
		}
	}

	@Then("Verify Verification tab is displyed on registration page")
	public void verify_verification_tab_displyed() throws Throwable {
		String original = ec.getObjects("company_radio_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the Verification radio button is displyed: " + b + "\n");
			System.out.println("the Verification radio button is displyed: " + b + "\n");
		} else {
			logger.info("the Verification radio button is not displyed: " + b + "\n");
			System.out.println("the Verification radio button is not displyed: " + b + "\n");
		}
	}

	@Then("Verify country region lable is displyed on registration page")
	public void verify_country_region_displyed() throws Throwable {
		String original = ec.getObjects("country_region_text");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the country region lable is displyed: " + b + "\n");
			System.out.println("the country region lable is displyed: " + b + "\n");
		} else {
			logger.info("the country region lable is not displyed: " + b + "\n");
			System.out.println("the country region lable is not displyed: " + b + "\n");
		}
	}

	@Then("Verify Business name lable is displyed on registration page")
	public void verify_business_name_displyed() throws Throwable {
		String original = ec.getObjects("business_name_lable");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the business name lable is displyed: " + b + "\n");
			System.out.println("the business name lable is displyed: " + b + "\n");
		} else {
			logger.info("the business name lable is not displyed: " + b + "\n");
			System.out.println("the business name lable is not displyed: " + b + "\n");
		}
	}

	@Then("Verify Legal business name lable is displyed on registration page")
	public void verify_legal_business_displyed() throws Throwable {
		String original = ec.getObjects("legal_business_name_lable");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the Legal business name lable is displyed: " + b + "\n");
			System.out.println("the Legal business name lable is displyed: " + b + "\n");
		} else {
			logger.info("the Legal business name lable is not displyed: " + b + "\n");
			System.out.println("the Legal business name lable is not displyed: " + b + "\n");
		}
	}

	@Then("Verify Website lable is displyed on registration page")
	public void verify_website_displyed() throws Throwable {
		String original = ec.getObjects("website_lable");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		boolean b = driver.findElement(By.xpath(original)).isDisplayed();
		if (b == true) {
			logger.info("the Website name lable is displyed: " + b + "\n");
			System.out.println("the Website name lable is displyed: " + b + "\n");
		} else {
			logger.info("the Website name lable is not displyed: " + b + "\n");
			System.out.println("the Website name lable is not displyed: " + b + "\n");
		}
	}

	@Then("Show {string} field Tooltip description {string} in country region")
	public void verify_tooltip_for_countryregion_displyed(String Label, String TTexpected) throws Throwable {
		String original = ec.getObjects("country_region_tooltip_icon");
		String tooltiptext = ec.getObjects("country_region_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} field Tooltip description {string} in business name")
	public void verify_tooltip_for_businessname_displyed(String Label, String TTexpected) throws Throwable {
		String original = ec.getObjects("business_name_tooltip_icon");
		String tooltiptext = ec.getObjects("business_name_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.clickableWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(5000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} field Tooltip description {string} in legal business")
	public void verify_tooltip_for_legalbusiness_displyed(String Label, String TTexpected) throws Throwable {
		String original = ec.getObjects("legal_business_name_tooltip_icon");
		String tooltiptext = ec.getObjects("legal_business_name_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(5000);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} field Tooltip description {string} in website")
	public void verify_tooltip_for_website_displyed(String Label, String TTexpected) throws Throwable {
		String original = ec.getObjects("website_lable_tooltip_icon");
		String tooltiptext = ec.getObjects("website_lable_tooltip");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(5000);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(5000);
		assertTrue(TTactual.contains(TTexpected.trim()));
		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "\n");

	}

	@Then("Show {string} field Tooltip description {string} in {string}")
	public void verify_tooltip_displyed(String Label, String TTexpected, String page) throws Throwable {
		String original = ec.getObjects("tooltip1") + Label + ec.getObjects("tooltip2");
		String tooltiptext = ec.getObjects("tooltipText");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		assertTrue(TTactual.contains(TTexpected.trim()));
		driver.findElement(By.xpath(formatXPATH)).click();
		

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");

	}
	

	@Then("Show {string} Tooltip description {string} in {string}")
	public void Show_Tooltip_description_in(String Label, String TTexpected, String page) throws Throwable {
		String original = ec.getObjects("City_tooltipH");
		String tooltiptext = ec.getObjects("tooltipText");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");
		System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + "in" + page + "\n");

	}

	@Then("Show Postal Code Tooltip description {string}")
	public void Show_Postal_Code_Tooltip_description(String TTexpected) throws Throwable {
		String original = ec.getObjects("PostalCode_tooltipH");
		String tooltiptext = ec.getObjects("tooltipText");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
		System.out.println("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
	}

	@Then("Show PO Box Postal Code Tooltip description {string}")
	public void Show_PO_Box_Postal_Code_Tooltip_description(String TTexpected) throws Throwable {
		String original = ec.getObjects("POBoxPostalCode_tooltipH");
		String tooltiptext = ec.getObjects("tooltipText");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));

		logger.info("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
		System.out.println("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
	}

}
