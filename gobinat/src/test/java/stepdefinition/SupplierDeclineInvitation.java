package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class SupplierDeclineInvitation extends DriverEngine {
	public static ElementControl ec = new ElementControl();

	public Miscellaneous mis = new Miscellaneous();

	Logger logger = Logger.getLogger(SupplierDeclineInvitation.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<Object> companyName = new ArrayList<Object>();
	public static String reason;

	@Then("Click on {string} link Email from maildrop")
	public void click_herLink(String here) throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("clickHereBtn") + here + "']";
		String clickHereLink = String.format(original);
		driver.switchTo().frame(0);
		driver.findElement(By.xpath(clickHereLink)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Click here Link" + "\n");
		System.out.println("Clicked on Click here Link" + "\n");
	}

	@Then("Enter {string} as reason for decline in {string}")
	public void enter_reason_forDecline(String input, String id) {
		reason = input;
		String original = ec.getObjects("textArea_id") + id + "']";
		String formatXPATH = String.format(original);
		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		logger.info("Entered : " + "'" + input + "'" + " in reason for decline" + "\n");
		System.out.println("Entered : " + "'" + input + "'" + " in reason for decline" + "\n");

	}

	@Then("Verify declined reason is showing from buyer side in {string}")
	public void verify_reason_forDecline(String id) {
		String original = ec.getObjects("textArea_id") + id + "']";
		String formatXPATH = String.format(original);
		Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(reason));
		logger.info("Verified : " + "'" + reason + "'" + " showing as reason from buyer" + "\n");
		System.out.println("Entered : " + "'" + reason + "'" + " showing as reason from buyer" + "\n");

	}

	@Then("Select the existing liaison option")
	public void select_the_option_on_the_Liaison_option() throws Throwable {

		String original = ec.getObjects("laisonSelect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(formatXPATH)));
		drpCompany.selectByVisibleText(InviteSupplierPage.Email.toLowerCase());

		logger.info("Selected " + " " + InviteSupplierPage.Email + " "
				+ "from the drop down list on the liaison option" + "\n");
		System.out.println("selected" + " " + InviteSupplierPage.Email + " "
				+ "from the drop down list  on the liaison option" + "\n");
	}
	
	@Then("Select the {string} liaison option")
	public void select_new_liaison(String value) throws Throwable {

		String original = ec.getObjects("laisonSelect");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(formatXPATH)));
		drpCompany.selectByVisibleText(value);

		logger.info("Selected " + " " + value + " "
				+ "from the drop down list on the liaison option" + "\n");
		System.out.println("selected" + " " + value + " "
				+ "from the drop down list  on the liaison option" + "\n");
	}
	
	@Then("Verify received an email in re-invited supplier maildrop Inbox with subject {string}")
	public void verify_received_an_email_in_supplier_inbox_with_subject_maildrop(String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(5000);

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.UnEmail.substring(0, 15));
		Thread.sleep(10000);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + InviteSupplierPage.UnEmail.substring(0, 15) + " in mailinator search box" + "\n");
		System.out.println("Entered " + InviteSupplierPage.UnEmail.substring(0, 15) + " in mailinator search box" + "\n");
		Thread.sleep(10000);
		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";
		String EmailformatXPATH = String.format(SubjectLine);
		WaitClass.webDriverWait(EmailformatXPATH);
		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
		}
	
	@Then("Navigate forward to supplier")
	public void navBack() {
		driver.navigate().forward();
		System.out.println("Navigated forward" + "\n");
	
	}

}
