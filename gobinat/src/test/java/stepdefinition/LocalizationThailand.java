package stepdefinition;

import java.util.Random;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationThailand extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationThailand.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	

@Then("Enter Company Registration Number under {string} field for Thailand")
public void enter_Company_Registration_Number_under_field_for_Thailand(String string) {
	int min = 1;
    int max = 9;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("Company_Reg_Number_Thailand");
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
@When("Enter Thailand Supplier Email in Email Address field")
public void enter_Thailand_Supplier_Email_in_Email_Address_field() {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Thailand_supplier"));

	logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	System.out.println(
			"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
}

@Then("Enter value for Bank Number field")
public void enter_value_for_Bank_Number_field() {
	int min = 1;
    int max = 3;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("bankNumber");
    String formatXPATH = String.format(original);
    WaitClass.clickableWait(formatXPATH);
    mis.clearText(formatXPATH);
    for(int i=min;i<=max;i++) {
    InputString = random.nextInt(max-min)+min;
    str = str+Integer.toString(InputString);
    }
   
    driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
    logger.info("Entered " + "'" + str + "'" + " in " + "string" + " field "+"in"+"string" + "\n");
    System.out.println("Entered " + "'" + str + "'" + " in " + "string" + " field " +"in"+"string"+ "\n");
}

@Then("Enter value for Bank Branch Code field")
public void enter_value_for_Bank_Branch_Code_field() {
	int min = 1;
    int max = 4;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("BankBranchCode");
    String formatXPATH = String.format(original);
    WaitClass.clickableWait(formatXPATH);
    mis.clearText(formatXPATH);
    for(int i=min;i<=max;i++) {
    InputString = random.nextInt(max-min)+min;
    str = str+Integer.toString(InputString);
    }
   
    driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
    logger.info("Entered " + "'" + str + "'" + " in " + "string" + " field "+"in"+"string" + "\n");
    System.out.println("Entered " + "'" + str + "'" + " in " + "string" + " field " +"in"+"string"+ "\n");
}
}