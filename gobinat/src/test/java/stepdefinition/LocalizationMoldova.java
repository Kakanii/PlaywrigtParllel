package stepdefinition;

import java.util.Random;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationMoldova extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationMoldova.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

@Then("Enter data VAT Registration Number under Tax Details field for Moldova country")
public void enter_data_VAT_Registration_Number_under_Tax_Details_field_for_Moldova_country() {
	int min = 1;
    int max = 13;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("VAT_Reg_Number_Moldova");
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
@Then("Enter data on Company Registration Number under Tax Details field for Moldova country")
public void enter_data_on_Company_Registration_Number_under_Tax_Details_field_for_Moldova_country() {
	int min = 1;
    int max = 13;
    int InputString=5;
    String str = new String();
    Random random = new Random();
    String original = ec.getObjects("company_reg_Moldova");
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
@Then("Enter Moldova Supplier Email in Email Address field")
public void Enter_Moldova_Supplier_Email_in_Email_Address_field() throws Throwable {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Moldova_supplierusr"));

	logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	System.out.println(
			"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
}
}
