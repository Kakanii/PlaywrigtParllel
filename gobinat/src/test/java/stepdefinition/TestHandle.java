package stepdefinition;

import static org.testng.Assert.assertFalse;

import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class TestHandle extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();
	
	@Then("Fail test")
	public void fail_test() {

		String original = ec.getObjects("termsofuser_title");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		System.out.println("\n" + "intentionally failing the test case" + "\n");
		assertFalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		
	}
	

}
