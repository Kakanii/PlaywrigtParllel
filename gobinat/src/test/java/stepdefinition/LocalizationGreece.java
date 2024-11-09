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
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationGreece extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationGreece.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		

	}
	@Then("Enter data on Business Identification Number in {string} field")
	public void enter_data_on_Business_Identification_Number_in_field(String string) {
		int min = 1;
        int max = 9;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("BI_Number_Greece");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + string + " field "+"in"+string + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + string + " field " +"in"+string+ "\n");
	}

	@Then("Enter data VAT Identification Number under Tax Details field")
	public void enter_data_VAT_Identification_Number_under_Tax_Details_field() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("VAT_Num_Greece");
		String JoinNowLink = String.format(original);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_DOWN).build().perform();
		}
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("EL"+random.nextInt(1000000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@Then("Enter data EU VAT Identification Number under Tax Details field")
	public void enter_data_EU_VAT_Identification_Number_under_Tax_Details_field() {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EU_VAT_Num_Greece");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("EL"+random.nextInt(1000000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@Then("Enter Greece Supplier Email in Email Address field")
	public void Enter_Greece_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Greece_supplier"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
}
