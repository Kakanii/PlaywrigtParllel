package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;

public class LocalizationCyprus extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationBulgaria.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		

	}
	@Then("Enter data EU VAT Registration Number under Tax Details")
	public void enter_data_EU_VAT_Registration_Number_under_Tax_Details() {
	 
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EUVATRegistrationNumber");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("CY"+random.nextInt(100000000)+"L");

		logger.info("Entered EU VAT Registration number on Basic Information page" + "\n");
		System.out.println("Entered EU VAT Registration number on Basic Information page" + "\n");
	}
	@Then("Enter data VAT Registration Number under Tax Details")
	public void enter_data_VAT_Registration_Number_under_Tax_Details() {
	 
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("VATRegistrationNumber");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(random.nextInt(100000000)+"L");
		logger.info("Entered VAT Registration number on Basic Information page" + "\n");
		System.out.println("Entered VAT Registration number on Basic Information page" + "\n");
	}
}
