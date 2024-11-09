package stepdefinition;

import java.util.Random;

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

public class localizationBolivia extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

		@Then("Enter data VAT Registration Number under {string} field")
		public void Enter_data_VAT_Registration_Number_under(String string) {
			int min = 1;
	        int max = 7;
	        int InputString=5;
	        String str = new String();
	        Random random = new Random();
	        String original = ec.getObjects("VAT_Reg_Number_Bolivia");
	        String formatXPATH = String.format(original);
	        //WaitClass.clickableWait(formatXPATH);
	        mis.clearText(formatXPATH);
	        Actions action = new Actions(driver);
			for (int i = 0; i < 3; i++) {
				action.sendKeys(Keys.PAGE_DOWN).build().perform();
			}
	        for(int i=min;i<=max;i++) {
	        InputString = random.nextInt(max-min)+min;
	        str = str+Integer.toString(InputString);
	        }
	       
	        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
	        logger.info("Entered " + "'" + str + "'" + " in " + string + " field "+"in"+string + "\n");
	        System.out.println("Entered " + "'" + str + "'" + " in " + string + " field " +"in"+string+ "\n");
		}
		@Then("Enter Bolivia Supplier Email in Email Address field")
		public void Enter_Bolivia_Supplier_Email_in_Email_Address_field() throws Throwable {
			String original = ec.getObjects("email");
			String formatXPATH = String.format(original);

			// WaitClass.webDriverWait(formatXPATH);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

			driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Bolivia_supplierusr"));

			logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
			System.out.println(
					"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		}
	}


