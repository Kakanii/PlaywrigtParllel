package stepdefinition;

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class localizationZambia extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
public static void main(String[] args) {
		

	}
@Then("Enter data Company Registration Number under {string} field for Zambia country")
public void enter_data_Company_Registration_Number_under_field_for_Zambia_country(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("ComReg_Zambia");
	String JoinNowLink = String.format(original);

	Random random = new Random();

	driver.findElement(By.xpath(JoinNowLink)).sendKeys("SR"+random.nextInt(100000000));

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}
@Then("Enter data Company Registration Number under {string} field Zambia country")
public void enter_data_Company_Registration_Number_under_field_Zambia_country(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("ComRegNum_Zambia");
	String JoinNowLink = String.format(original);

	Random random = new Random();

	driver.findElement(By.xpath(JoinNowLink)).sendKeys("SR"+random.nextInt(100000000));

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}
@Then("Enter data Taxpayer Identification Number under {string} field for Zambia country")
public void enter_data_Taxpayer_Identification_Number_under_field_for_Zambia_country(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("Taxpayer_Zambia");
	String JoinNowLink = String.format(original);

	Random random = new Random();

	driver.findElement(By.xpath(JoinNowLink)).sendKeys(random.nextInt(1000000000)+"A");

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}
@Then("Enter data Taxpayer Identification Number under {string} field Zambia country")
public void enter_data_Taxpayer_Identification_Number_under_field_Zambia_country(String string) {
	driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
	String original = ec.getObjects("TaxpayerNum_Zambia");
	String JoinNowLink = String.format(original);

	Random random = new Random();

	driver.findElement(By.xpath(JoinNowLink)).sendKeys(random.nextInt(1000000000)+"A");

	logger.info("Entered Tax Registration number on Basic Information page" + "\n");
	System.out.println("Entered Tax Registration number on Basic Information page" + "\n");
}
@When("Enter Zambia Supplier Email in Email Address field")
public void enter_Zambia_Supplier_Email_in_Email_Address_field() {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Zambia_supplierusr"));

	logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	System.out.println(
			"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
}
@Then("select first contact from dropdown")
public void select_first_contact_from_dropdown() {

	String original = ec.getObjects("SelectContact");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(formatXPATH)).click();
	// driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.BACK_SPACE);
	String original1 = ec.getObjects("SelectContact_dropdown");
	String formatXPATH1 = String.format(original1);

	WaitClass.clickableWait(formatXPATH1);

	driver.findElement(By.xpath(formatXPATH1)).click();


	logger.info("Selected " + "'" + "Contact" + "'" + " in " + "SelectContact_dropdown" + " dropdown" + "\n");
	System.out.println("Selected " + "'" + "Contact" + "'" + " in " + "SelectContact_dropdown" + " dropdown" + "\n");
	

}
}


