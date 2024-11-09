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

public class LocalizationBosniaandHerzegovina extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	public static void main(String[] args) {


	}
	@Then("Enter data Tax Registration Number for Bosnia country")
	public void enter_data_Tax_Registration_Number_for_Bosnia_country() {
		int min = 1;
        int max = 12;
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
	@When("Enter Bosnia and Herzegovina Supplier Email in Email Address field")
	public void enter_Bosnia_and_Herzegovina_Supplier_Email_in_Email_Address_field() {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Bosnia_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}

	@Then("Enter value for Branch Code {string}")
	public void enter_value_for_Branch_Code(String string) {
		String original = ec.getObjects("BranchCode_Bosnia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("BranchCode_Bosnia"))).clear();
		driver.findElement(By.xpath(ec.getObjects("BranchCode_Bosnia"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

	@Then("Enter value for National Check Digit {string}")
	public void enter_value_for_National_Check_Digit(String string) {
		String original = ec.getObjects("NationalCheck_Bosnia");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("NationalCheck_Bosnia"))).clear();
		driver.findElement(By.xpath(ec.getObjects("NationalCheck_Bosnia"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}

}
