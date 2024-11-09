package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationLuxembourg extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalizationLuxembourg.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static void main(String[] args) {
	

	}
	@Then("Enter data in VAT Registration Number field under {string}")
	public void enter_data_in_VAT_Registration_Number_field_under(String string) {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("VAT_Identification_Number");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("LU"+random.nextInt(100000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@Then("Enter data in EU VAT Registration Number field under {string}")
	public void enter_data_in_EU_VAT_Registration_Number_field_under(String string) {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EUVAT_Identification_Number");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("LU"+random.nextInt(10000)+random.nextInt(10000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@Then("Enter Luxembourg Supplier Email in Email Address field")
	public void Enter_Luxembourg_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Luxembourg_Supplier"));

		logger.info("Entered data" + " " + ec.getObjects("Luxembourg_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("Luxembourg_supplierusr") + " " + "Email Address field" + "\n");
	}
	@Then("Enter {string} in {string} under {string}")
	public void enter_in_under(String Input, String Label, String SubCat) {
		int min = 1;
        int max = 11;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("headLabel_var") + SubCat + ec.getObjects("headLabel_var2") + Label
				+ ec.getObjects("inputText_h6_var3");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + Label + " field "+"in"+SubCat + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " +"in"+SubCat+ "\n");

 

    }
	}


