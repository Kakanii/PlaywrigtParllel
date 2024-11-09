package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationIvorycoast extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationIvorycoast.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		

	}
	@Then("Enter data Tax Identification Number under Tax Details field in Ivory coast country")
	public void Enter_data_Tax_Identification_Number_under_Tax_Details_field_in_Ivory_coast_country() {
		int min = 1;
        int max = 9;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Tax_Num_Ivorycoast");
        String formatXPATH = String.format(original);
        //WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + "Num" + " field "+"in"+"Tax Num" + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + "Num" + " field " +"in"+"Tax Num"+ "\n");
	}
	@Then("Verify {string} listed in {string} dropdown")
	public void verify_listed_in_dropdown(String Option, String Label) {
		driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		String original = ec.getObjects("Ivorycoast_Country");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().equalsIgnoreCase(Option.trim()));

		logger.info("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");
		System.out.println("'" + Option + "'" + " is listed in " + Label + " dropdown" + "\n");

	}
	@Then("Enter Ivory Coast Supplier Email in Email Address field")
	public void Enter_Ivory_Coast_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("IvoryCoast_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
}
