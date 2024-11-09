package stepdefinition;
import java.util.Random;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;
public class LocalisationVietnam extends DriverEngine{
	Logger logger = Logger.getLogger(LocalizationSpain.class);
	WebDriverWait wait = new WebDriverWait(driver, 300);
	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();
	@Then("Enter random number in {string} field under {string}")
	public void enter_random_number_in_field_under(String Label, String page) {
		int min = 1;
		int max = 14;
		int InputString=5;
		String str = new String();
		Random random = new Random();
		String original = ec.getObjects("p_input1") + Label + ec.getObjects("p_EUVAT");

		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		mis.clearText(formatXPATH);
		for(int i=min;i<=max;i++) {
		InputString = random.nextInt(max-min)+min;
		str = str+Integer.toString(InputString);
		}
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(str);

		logger.info("Entered " + "'" + str + "'" + " in " + Label + " field "+"in"+page + "\n");
		System.out.println("Entered " + "'" + str + "'" + " in " + Label + " field " +"in"+page+ "\n");
	}
}
