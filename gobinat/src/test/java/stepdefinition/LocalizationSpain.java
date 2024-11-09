package stepdefinition;

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

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationSpain  extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		

	}
	@Then("Enter data Company Registration Number under {string} field")
	public void enter_data_Company_Registration_Number_under_field(String string) {
		int min = 1;
        int max = 9;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Company_Reg_Number");
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
	@Then("Enter data Tax Identification Number under {string} field")
	public void enter_data_Tax_Identification_Number_under_field(String string) {
		int min = 1;
        int max = 9;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("Tax_Reg_Number");
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

	@Then("Enter data in {string} under {string} field")
	public void enter_data_in_under_field(String string, String string2) {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EU_VAT_Num");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("ESB"+random.nextInt(100000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}
	@Then("Click on the {string} under Approvals")
	public void click_Approval_Source(String label) {
		String original = ec.getObjects("DPL_Approvals");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		Actions action = new Actions(driver);
		for (int i = 0; i < 20; i++) {
			action.sendKeys(Keys.PAGE_UP).build().perform();
		}
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on  " + label + " Approval sounce "+ "\n");
		System.out.println("Clicked on   "  + label + " Approval sounce  "+ "\n");
	
	}
	@Then("Enter Spain Supplier Email in Email Address field")
	public void Enter_Singapore_Supplier_Email_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Spain_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	}
	@Then("Enter value for Control Key {string}")
	public void enter_value_for_Bank_Key(String string) throws Throwable {
		String original = ec.getObjects("ControlKey");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("ControlKey"))).clear();
		driver.findElement(By.xpath(ec.getObjects("ControlKey"))).sendKeys(string);
		logger.info("Enter valid text " + " " + string + "on  Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + string + " on  Add Company Account Modal" + "\n");
	}
	
	@Then("Select {string} in {string} dropdown on Factoring Company Address")
	public void select_in_dropdown_under_Factoring_Company_Address(String Option, String Label) throws Throwable {

		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);

		String original = ec.getObjects("Province_Dropdown");
		String formatXPATH = String.format(original);

		// WaitClass.clickableWait(formatXPATH);
		try {
			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		} catch (StaleElementReferenceException e) {
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions
					.refreshed(ExpectedConditions.stalenessOf(driver.findElement(By.xpath(formatXPATH)))));

			Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

			dropdown.selectByVisibleText(Option);
		}
		Thread.sleep(3000);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
	}

	
}
