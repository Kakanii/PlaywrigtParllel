package stepdefinition;

import static org.testng.Assert.assertEquals;

import java.util.ArrayList;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class LinkRequest extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();

	
	
	@Then("Click on the same Supplier from other buyer")
	public void click_on_the_Search_by_supplier_name_and_press_Enter() throws InterruptedException {
		  String cName = InviteSupplierPage.companyname;
          String original = ec.getObjects("link_var1")+cName+ec.getObjects("TYS_Discover");
          String formatXPATH = String.format(original);
          WaitClass.clickableWait(formatXPATH);
          Thread.sleep(3000);
          driver.findElement(By.xpath(original)).click();
          Thread.sleep(3000);
          /*
           * Actions builder = new Actions(driver); Thread.sleep(3000);
           * builder.sendKeys(Keys.ENTER).build().perform();
           */
           logger.info("Clicked on the " +cName+ "Supplier from other buyer" + "\n");
           System.out.println("Clicked on the " +cName+ " Supplier from other buyer" + "\n");

	    }
	
}
