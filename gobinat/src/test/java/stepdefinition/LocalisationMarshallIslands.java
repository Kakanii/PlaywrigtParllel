package stepdefinition;

import java.util.Random;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
public class LocalisationMarshallIslands extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	@Then("Enter data Company Registration Number under {string} field for Marshall Islands country")
	public void enter_data_Company_Registration_Number_under_field_for_Marshall_Islands_country(String string) {
		int min = 1;
        int max = 6;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Company_Reg_Number_Montenegro");
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
	@Then("Enter data on Company Registration Number under {string} field for Marshall Islands country")
	public void enter_data_on_Company_Registration_Number_under_field_for_Marshall_Islands_country(String string) {
		int min = 1;
        int max = 6;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Comp_Reg_Number_Montenegro");
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
	@Then("Enter data Tax Identification Number under {string} field for Marshall Islands country")
	public void enter_data_Tax_Identification_Number_under_field_for_Marshall_Islands_country(String string) {
		int min = 1;
        int max = 7;
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
        logger.info("Entered " + "'" + str + "'" + " in " + string + " field "+"in"+string + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + string + " field " +"in"+string+ "\n");
	}
	@Then("Enter data on Tax Identification Number under {string} field for Marshall Islands country")
	public void enter_data_on_Tax_Identification_Number_under_field_for_Marshall_Islands_country(String string) {
		int min = 1;
        int max = 7;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Tax_Reg_Num_Montenegro");
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
	
}
