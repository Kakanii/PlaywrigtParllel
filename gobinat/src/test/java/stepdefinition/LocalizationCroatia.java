package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;

public class LocalizationCroatia extends DriverEngine{
Logger logger = Logger.getLogger(LocalizationCroatia.class);
WebDriverWait wait = new WebDriverWait(driver, 300);
public Miscellaneous mis = new Miscellaneous();
public static ElementControl ec = new ElementControl();


	public static void main(String[] args) {
		

	}
	@Then("Enter data EU VAT Registration Number under Tax Details field for Croatia country")
	public void enter_data_EU_VAT_Registration_Number_under_Tax_Details_field_for_Croatia_country() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EU_VAT_Reg_Num_Croatia");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("HR"+random.nextInt(1000000)+random.nextInt(1000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@When("Enter Croatia Supplier Email in Email Address field")
	public void enter_Croatia_Supplier_Email_in_Email_Address_field() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Croatia_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
}
