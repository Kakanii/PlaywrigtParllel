package stepdefinition;

import java.util.Random;

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

public class LocalizationAlgeria extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationAlgeria.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	public static void main(String[] args) {
		
	}
	@Then("Enter data Tax Registration Number for Algeria country")
	public void enter_data_Tax_Registration_Number_for_Algeria_country() {
		int min = 1;
        int max = 15;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Tax_Reg_Number_Bosnia");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + "TAX" + " field "+"in"+"TAX" + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + "TAX" + " field " +"in"+"TAX"+ "\n");
	}
	@When("Enter Algeria Supplier Email in Email Address field")
	public void enter_Algeria_Supplier_Email_in_Email_Address_field() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Algeria_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
	@Then("Enter value for Bank Key \\(Identifier)")
	public void enter_value_for_Bank_Key_Identifier() {
		int min = 1;
        int max = 8;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("BankKey_Algeria");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + "TAX" + " field "+"in"+"TAX" + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + "TAX" + " field " +"in"+"TAX"+ "\n");
	}

}
