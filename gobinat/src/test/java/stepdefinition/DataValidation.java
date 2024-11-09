package stepdefinition;

import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class DataValidation extends DriverEngine {
public static ElementControl ec = new ElementControl();

Logger logger = Logger.getLogger(LoginPage.class);
WebDriverWait wait = new WebDriverWait(driver, 300);

@Then("verify {string} supplier on connected supplier page")
public void verify_supplier_on_connected_supplier_page(String string) {
	String original = ec.getObjects("p_input1") + string + ec.getObjects("btn2");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

	logger.info("Showing " + "'" + string + "'" + " Supplier Name " + "\n");
	System.out.println("Showing " + "'" + string + "'" + " Supplier Name " + "\n");


 
}
@Then("Enter buyer emailid in Email Address field")
public void enter_buyer_emailid_in_Email_Address_field() throws Throwable {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Sourceconnect_email"));
	logger.info("Entered data" + " " + ec.getObjects("Sourceconnect_email") + " " + "Email Address field" + "\n");
	System.out.println("Entered data" + " " + ec.getObjects("Sourceconnect_email") + " " + "Email Address field" + "\n");
}
@Then("click on Next page")
public void click_on_Next_page() {
	String original = ec.getObjects("Next_button");
	String formatXPATH = String.format(original);

	WaitClass.clickableWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();

	logger.info("Clicked on Next icon" + "\n");
	System.out.println("Clicked on Next icon" + "\n");
}

}