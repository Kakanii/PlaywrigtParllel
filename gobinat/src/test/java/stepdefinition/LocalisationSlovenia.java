package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;

public class LocalisationSlovenia extends DriverEngine{
	Logger logger = Logger.getLogger(LocalisationSlovenia.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	
	
	@Then("Enter data in {string} under Tax Details for Slovenia Country")
	public void enter_data_EU_VAT_Registration_Number_under_Tax_Details(String Label) {
	 
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");
		
		Random random = new Random();
		
		driver.findElement(By.xpath(original)).sendKeys("SI"+random.nextInt(100000000));

		logger.info("Entered EU VAT Registration number on Basic Information page" + "\n");
		System.out.println("Entered EU VAT Registration number on Basic Information page" + "\n");
	}

}
