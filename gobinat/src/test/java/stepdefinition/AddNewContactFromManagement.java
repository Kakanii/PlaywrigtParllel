package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class AddNewContactFromManagement extends DriverEngine {

	public Miscellaneous mis = new Miscellaneous();
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(AddNewContactFromManagement.class);
	
	@When("Click on Add Other button on Management page")
	public void click_on_Add_Other_button_on_Management_page() 
	{
		String original = ec.getObjects("add_other_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add Other button on Management page " + "\n");
		System.out.println("Clicked on Add Other button on Management page " + "\n");
	}

	

}
