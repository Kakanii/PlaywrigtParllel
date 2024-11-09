package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LocalizationFrance extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	Logger logger = Logger.getLogger(LocalizationFrance.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();

	public static void main(String[] args) {
		
	}
	@Then("Show {string} Tooltip description {string} in Supplier Regitration")
	public void show_Tooltip_description_in_Supplier_Regitration(String string, String string2) throws InterruptedException {
		String original = ec.getObjects("France_city");
		String tooltiptext = ec.getObjects("City_tooltipF");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		assertTrue(TTactual.contains(string2.trim()));
		driver.findElement(By.xpath(formatXPATH)).click();
		

		logger.info("Showing " + string + " Tool Tip: " + string2 + "in" + "page" + "\n");
		System.out.println("Showing " +string + " Tool Tip: " + string2 + "in" + "page" + "\n");
	}

	@Then("Enter random EU VAT number {string} in {string}")
	public void enter_random_EU_VAT_number_in(String string, String string2) {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("EU_VAT_Identification_Number");
		String JoinNowLink = String.format(original);
		
		Random random = new Random();
		
		driver.findElement(By.xpath(JoinNowLink)).sendKeys("FR"+random.nextInt(100000)+random.nextInt(10000000));

		logger.info("Entered Tax Registration number on Basic Information page" + "\n");
		System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
	}

	@Then("Enter random SIRET number in {string} field under {string}")
	public void enter_random_SIRET_number_in_field_under(String SubCat, String Label) {
		int min = 1;
        int max = 14;
        int InputString=5;
        String str = new String();
        Random random = new Random();
        String original = ec.getObjects("SIRET_number");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        mis.clearText(formatXPATH);
        for(int i=min;i<=max;i++) {
        InputString = random.nextInt(max-min)+min;
        str = str+Integer.toString(InputString);
        }
       
        driver.findElement(By.xpath(formatXPATH)).sendKeys(str);
        logger.info("Entered " + "'" + str + "'" + " in " + Label + " field "+"in"+SubCat + "\n");
        System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " +"in"+SubCat+ "\n");
	}
	@Then("Show Postal Code Tooltip description {string} in Supplier Regitration")
	public void Show_Postal_Code_Tooltip_description_in_Supplier_Regitration(String TTexpected) throws Throwable 
	{
		String original = ec.getObjects("PostalCode-tooltip");
		String tooltiptext = ec.getObjects("tooltipTextFrance");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));
		logger.info("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
		System.out.println("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
	}

	@Then("Show PO Box Tooltip description {string} in Supplier Regitration")
	public void Show_PO_Box_Tooltip_description_in_Supplier_Regitration(String TTexpected) throws Throwable 
	{	
		String original = ec.getObjects("POBox-tooltip");
		String tooltiptext = ec.getObjects("tooltipTextFrancePOBOX");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));
		logger.info("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
		System.out.println("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
	}
	@Then("Show PO Box Postal Code Tooltip description {string} in Supplier Regitration")
	public void Show_PO_Box_Postal_Code_Tooltip_description_in_Supplier_Regitration(String TTexpected) throws Throwable 
	{
		String original = ec.getObjects("POBoxPostalCode-tooltip");
		String tooltiptext = ec.getObjects("tooltipTextFrancePOBoxPC");
		String formatXPATH = String.format(original);
		String formatXPATH2 = String.format(tooltiptext);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		WaitClass.webDriverWait(formatXPATH2);
		String TTactual = driver.findElement(By.xpath(formatXPATH2)).getText();
		Thread.sleep(4000);
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(TTactual.contains(TTexpected.trim()));
		logger.info("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
		System.out.println("Showing Postal Code Tooltip in Supplier Registration" + "TTexpected");
	}
	@Then("Enter {string} email in Email Address field")
	public void enter_email_in_Email_Address_field(String string) throws InterruptedException {
		
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("france_supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		System.out.println(
				"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
		}
	}


