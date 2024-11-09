package stepdefinition;
import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.StaleElementReferenceException;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;


	
public class localisationMontenegro extends DriverEngine {
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	@Then("Enter data Company Registration Number under {string} field for Montenegro country")
	public void enter_data_Company_Registration_Number_under_field_for_Montenegro_country(String string) {
		int min = 1;
        int max = 21;
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
	@Then("Enter data on Company Registration Number under {string} field for Montenegro country")
	public void enter_data_on_Company_Registration_Number_under_field_for_Montenegro_country(String string) {
		int min = 1;
        int max = 21;
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
	@Then("Enter data Tax Identification Number under {string} field for Montenegro country")
	public void enter_data_Tax_Identification_Number_under_field_for_Montenegro_country(String string) {
		int min = 1;
        int max = 9;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Tax_Reg_Number_Montenegro");
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
	@Then("Enter data on Tax Identification Number under {string} field for Montenegro country")
	public void enter_data_on_Tax_Identification_Number_under_field_for_Montenegro_country(String string) {
		int min = 1;
        int max = 8;
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
	@When("Click on the {string} Link on Assign Questionnaires window")
	public void click_on_the_Link_on_Assign_Questionnaires_window(String string) {
		String original = ec.getObjects("buyeragentsvg1")+ string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Clear all Link on Assign Questionnaires " + "\n");
		System.out.println("Clicked on Clear all Link on Assign Questionnaires " + "\n");
	}
	@Then("Enter Montenegro Supplier Email in Email Address field")
	public void Enter_Montenegro_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Montenegro_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
	@Then("Enter the Notes for buyer Notes Box at {string}")
	public void enter_the_Notes_for_buyer_Notes_Box_at(String string) {
		String original = ec.getObjects("TextArea")+"["+ string+"]";
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(original)).sendKeys("Test");
		logger.info("Entered data" + " " + ec.getObjects("Test") + " " + "Notes field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("Test") + " " + "Notes field" + "\n");
		
	}
	@Then("Click on Join Now Link in {string} supplier Email from maildrop")
	public void click_on_Join_Now_Link_in_the_supplier_email_maildrop(String country) throws Throwable {

		String original = ec.getObjects("RegisterTYS_JoinNow_btn");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
		// driver.switchTo().frame(0);
		// driver.switchTo().frame("html_msg_body");
		WaitClass.clickableWait(JoinNowLink);
		driver.findElement(By.xpath(JoinNowLink)).click();
		logger.info("Clicked on Join Now button" + "\n");
		System.out.println("Clicked on Join Now button" + "\n");
	}
	@Then("Click on NO for Second Question")
	public void click_on_NO_for_Second_Question() {
		String original = ec.getObjects("click_NO_SQ");
		String formatXPATH = String.format(original);

		try {
			WaitClass.clickableWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();
		} catch (StaleElementReferenceException e) {
			WaitClass.staleElementClickWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();
		}

		logger.info("Click on the NO for Second Question" + "\n");
		System.out.println("Click on the NO for Second Question" + "\n");
	}
}
