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

public class LocalizationDominicanRepublic extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationArgentina.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
	
	}
	@Then("Enter data VAT Registration Number under Tax Details field for Dominican Republic country")
	public void enter_data_VAT_Registration_Number_under_Tax_Details_field_for_Dominican_Republic_country() {
		int min = 1;
        int max = 11;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("VAT_Reg_Number_DominicanRepublic");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + "VAT Reg" + " field "+"in"+"Tax Details" + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + "VAT Reg" + " field " +"in"+"Tax Details"+ "\n");
	}
	@Then("Enter Dominican Republic Supplier Email in Email Address field")
	public void Enter_Dominican_Republic_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("DominicanRepublic_supplier"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
	}
