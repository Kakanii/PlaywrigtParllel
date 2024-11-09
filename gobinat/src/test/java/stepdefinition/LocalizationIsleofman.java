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

public class LocalizationIsleofman extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationIsleofman.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
   public static ElementControl ec = new ElementControl();



//@Then("Show {string} tooltip {string}IM{string} under {string}")
//public void show_tooltip_IM_under(String string, String string2, String string3, String string4) {
//    // Write code here that turns the phrase above into concrete actions
//    throw new cucumber.api.PendingException();
//}

@Then("Enter data VAT Identification Number {string} field")
public void Enter_data_VAT_Identification_Number_field(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("VAT_Num");
	String JoinNowLink = String.format(original);
	Actions action = new Actions(driver);
			for (int i = 0; i < 3; i++) {
				action.sendKeys(Keys.PAGE_DOWN).build().perform();
			}
	Random random = new Random();
	
	driver.findElement(By.xpath(JoinNowLink)).sendKeys("1M"+random.nextInt(10000000));

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}

@Then("Enter data for Tax Identification Number {string} field")
public void enter_data_for_Tax_Identification_Number_field(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("TAX_Num");
	String JoinNowLink = String.format(original);
	Actions action = new Actions(driver);
	for (int i = 0; i < 20; i++) {
		action.sendKeys(Keys.PAGE_DOWN).build().perform();
	}
	Random random = new Random();
	
	driver.findElement(By.xpath(JoinNowLink)).sendKeys("C"+random.nextInt(1000000)+"-"+random.nextInt(100));

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}

@Then("Enter data on Company Registration Number under {string} field")
public void Enter_data_on_Company_Registration_Number_under_field(String string) {
	int min = 1;
    int max = 8;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("Company_Reg_Number_IsleOfMan");
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

@Then("Enter Isle of Man Supplier Email in Email Address field")
public void Enter_Singapore_Supplier_Email_in_Email_Address_field() throws Throwable {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("IsleofMan_supplierusr"));

	logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	System.out.println(
			"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
}
	}


