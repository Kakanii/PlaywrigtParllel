package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;

public class LocalizationPhilippines extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationPhilippines.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	public static void main(String[] args) {
		
	}

@Then("Enter Philippines Supplier Email in Email Address field")
public void Enter_Philippines_Supplier_Email_in_Email_Address_field() throws Throwable {
	String original = ec.getObjects("email");
	String formatXPATH = String.format(original);

	// WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("Philippines_supplier"));

	logger.info("Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
	System.out.println(
			"Entered data" + " " + ec.getObjects("nokia_supplierusr") + " " + "Email Address field" + "\n");
}

}
