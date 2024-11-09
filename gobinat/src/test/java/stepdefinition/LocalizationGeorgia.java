package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;

public class LocalizationGeorgia extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationGeorgia.class);
	public static ElementControl ec = new ElementControl();
	WebDriverWait wait = new WebDriverWait(driver, 300);

	public static void main(String[] args) {
		

	}
	@When("Enter data Tax Identification Number under Tax Details field")
	public void Enter_data_Tax_Identification_Number_under_Tax_Details_field() 
	{
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("Tax_Id_Number_Georgia");
		String JoinNowLink = String.format(original);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys(random.nextInt(10000000)+"AA");

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@Then("Enter Georgia Supplier Email in Email Address field")
	public void Enter_Georgia_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Georgia_supplier"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
}
