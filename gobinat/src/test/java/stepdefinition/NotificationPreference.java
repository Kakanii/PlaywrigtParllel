package stepdefinition;

import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.WaitClass;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class NotificationPreference extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();
	public static String newSupplierName;

	Logger logger = Logger.getLogger(NotificationPreference.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();
		
		@Then("Verify the {string} on the Notificationpreferences screen")
		public void verify_the_on_the_Notificationpreferences_screen(String abc ) {
		    String original = ec.getObjects("Notipreferlabel");
			String formatXPATH1 = String.format(original);

			WaitClass.webDriverWait(formatXPATH1);
			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		
			System.out.println("verified" + abc + "\n");
		}
		
		@Then("Verify the buyer is able to view the Notification preferences content as {string}")
		public void Verify_the_buyer_is_able_to_view_the_Notification_preferences_as(String str) throws Throwable {
			String original = ec.getObjects("contenttext");
			WaitClass.webDriverWait(original);

			assertTrue(driver.findElement(By.xpath(original)).getText().contains(str));


			
			logger.info("content is displayed as" + str+ "\n");
			System.out.println("content is displayed as" + str+ "\n");

		}
		@Then("Verify the buyer is able to view the {string} disabled button")
		public void Verify_the_buyer_is_able_to_view_the_disabled_button (String xyz) throws Throwable {
			String original = ec.getObjects("buttons_normalize") + xyz + ec.getObjects("label_var2");
			WaitClass.webDriverWait(original);

			assertFalse(driver.findElement(By.xpath(original)).isEnabled(), xyz);
			logger.info("save preferences button is disabled" + "\n");
			System.out.println("save preferences button is disabled" + "\n");

		}
		
		@Then("Verify the buyer is able to view the {string} label name as {string} table header")
		public void Verify_the_buyer_is_able_to_view_the_label_name_as (String xyz, String abc) throws Throwable {
		String original = ec.getObjects(xyz);
		WaitClass.webDriverWait(original);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(abc));
		logger.info("Buyer is able to view" + abc +"\n");
		System.out.println("Buyer is able to view" + abc +"\n");

	}
		@Then("Verify the buyer is able to select the {string} roles for {string} category on  NotificationPreferences")
		public void Verify_the_buyer_is_able_to_select_the_roles_for_category_on_NotificationPreferences (String abc, String xyz) throws Throwable {
			driver.findElement(By.xpath("(//input[@id='react-select-2-input'])[1]")).sendKeys(abc);

			driver.findElement(By.xpath("(//input[@id='react-select-2-input'])[1]")).sendKeys(Keys.ENTER);
			
		logger.info("Buyer is able to select" + xyz +"\n");
		System.out.println("Buyer is able to select" + xyz +"\n");

	}
		
		@Then("verify the {string} category option is visible")
		public void verify_the_category_option_is_visible(String string) throws Throwable {
			
			String original = ec.getObjects("addresscard") + string + ec.getObjects("inputfield_end");

			String formatXPATH = String.format(original);
			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).isDisplayed());

			logger.info("verified the category is visible" + string + "\n");
			System.out.println("verified the category is visible" + string + "\n");

		}
		
		@Then("verify the {string} filter {string} are not visible")
		public void verify_the_filter_are_not_visible(String string, String actualtext) throws Throwable {
			
			String original = ec.getObjects("looplabel1") + string + ec.getObjects("looplabel12");

			String formatXPATH = String.format(original);
			WaitClass.webDriverWait(formatXPATH);
			
			List<WebElement> elements = driver.findElements(By.xpath(original));
			
			for(int i=0;i<elements.size();i++)
			{
				String text = elements.get(i).getText();
				if(!text.contains(actualtext))
				{
					logger.info("category is not visible" + actualtext + "\n");
					System.out.println("category is not visible" + actualtext + "\n");
				
				}
				else
				{
					logger.info("category is visible" + actualtext + "\n");
					System.out.println("category is visible" + actualtext + "\n");
				
				}
			}
		}


			

		
		
		@When("Click on {string} dropdown arrow")

		public void click_on_dropdown_arrow(String abc)

		{			

			driver.findElement(By.xpath("(//*[name()='svg'][@class='css-8mmkcg'])[1]")).click();	

	 

			logger.info("Click on Invite Process dropdown arrow" + "\n");

			System.out.println("Click on Invite Process dropdown arrow" + "\n");

		}

		

		@When("Select the {string} Category in dropdown on Notifictaion preferences {int}")

		public void Select_the_Category_in_dropdown_on_Notifictaion_preferences(String abc, int a)

		{			
			String original = ec.getObjects("xyzlabel") + a + ec.getObjects("xyzlabel12");
			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();
			logger.info("selected the"+ abc +"Category in dropdown" + "\n");
			System.out.println("selected the"+ abc +"Category in dropdown"+ "\n");

		}
		@When("UnSelect the {string} Category in dropdown on Notifictaion preferences")

		public void UnSelect_the_Category_in_dropdown_on_Notifictaion_preferences(String abc)

		{			
			String original = ec.getObjects("removeselectlabel") + abc + ec.getObjects("removeselectlabel1");
			WaitClass.webDriverWait(original);
			driver.findElement(By.xpath(original)).click();
			logger.info("unselected the"+ abc +"Category in dropdown" + "\n");
			System.out.println("unselected the"+ abc +"Category in dropdown"+ "\n");

		}

		@Then("Verify the buyer is able to select the {string} roles for {string} AandN category on  NotificationPreferences")
		public void Verify_the_buyer_is_able_to_select_the_roles_for_AandN_category_on_NotificationPreferences (String abc, String xyz) throws Throwable {
			driver.findElement(By.xpath("(//input[@id='react-select-4-input'])[1]")).sendKeys(abc);

			driver.findElement(By.xpath("(//input[@id='react-select-4-input'])[1]")).sendKeys(Keys.ENTER);
			
		logger.info("Buyer is able to select" + xyz +"\n");
		System.out.println("Buyer is able to select" + xyz +"\n");

	}
		@Then("Verify the buyer is able to select the {string} roles for {string} bank category on  NotificationPreferences")
		public void Verify_the_buyer_is_able_to_select_the_roles_for_bank_category_on_NotificationPreferences (String abc, String xyz) throws Throwable {
			driver.findElement(By.xpath("(//input[@id='react-select-10-input'])[1]")).sendKeys(abc);

			driver.findElement(By.xpath("(//input[@id='react-select-10-input'])[1]")).sendKeys(Keys.ENTER);
			
		logger.info("Buyer is able to select" + xyz +"\n");
		System.out.println("Buyer is able to select" + xyz +"\n");

	}
}
