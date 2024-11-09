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

public class LocalizationSouthAfrica extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSouthAfrica.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	 
		@Then("Enter data Tax Identification Number field for South Africa country")
		public void enter_data_Tax_Identification_Number_field_for_South_Africa_country() {
			int min = 1;
	        int max = 10;
	        int InputString=5;
	        String str = new String();
	        Random random = new Random();
	        String original = ec.getObjects("EU_VAT_Num_SouthAfrica");
	        String formatXPATH = String.format(original);
	        WaitClass.clickableWait(formatXPATH);
	        mis.clearText(formatXPATH);
	        for(int i=min;i<=max;i++) {
	        InputString = random.nextInt(max-min)+min;
	        str = str+Integer.toString(InputString);
	        }
	       
	        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
	        logger.info("Entered " + "'" + str + "'" + " in " + "EU VAT" + " field "+"in"+"EU VAT" + "\n");
	        System.out.println("Entered " + "'" + str + "'" + " in " + "EU VAT" + " field " +"in"+"EU VAT"+ "\n");
		}
		@When("Enter South Africa Supplier Email in Email Address field")
		public void enter_South_Africa_Supplier_Email_in_Email_Address_field() {
			String original = ec.getObjects("email");
			String formatXPATH = String.format(original);

			// WaitClass.webDriverWait(formatXPATH);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("SouthAfrica_supplierusr"));

			logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
			System.out.println(
					"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		}

	}


