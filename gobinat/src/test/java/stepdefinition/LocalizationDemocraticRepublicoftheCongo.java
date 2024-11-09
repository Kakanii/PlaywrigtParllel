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

public class LocalizationDemocraticRepublicoftheCongo extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationBulgaria.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		

	}
	@Then("Enter data in Tax Registration Number under Tax Details for Democratic Republic of the Congo country")
	public void enter_data_in_Tax_Registration_Number_under_Tax_Details_for_Democratic_Republic_of_the_Congo_country() {
	   
	 
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("TaxRegistrationNumber");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("Z"+random.nextInt(1000000000)+"A");

		logger.info("Entered Tax Registration  number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration Number on Basic Information page" + "\n");
	}

}
