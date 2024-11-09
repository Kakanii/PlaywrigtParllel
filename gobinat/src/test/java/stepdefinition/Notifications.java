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

public class Notifications extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();
	public static String newSupplierName;

	Logger logger = Logger.getLogger(ManageUsersInviteANewUser.class);

	ArrayList<Object> timeStamp = new ArrayList<Object>();
	
		@Then("verify category as {string}")
		public void verify_category_as(String string) throws Throwable {
			String original = ec.getObjects("Notifi_seresult") + string + ec.getObjects("filterby_role_multiple2");


			//String original = ec.getObjects("LocationCard");
			String formatXPATH = String.format(original);
			WaitClass.webDriverWait(formatXPATH);

			String actualStringvalue = driver.findElement(By.xpath(original)).getText();

			assertTrue(actualStringvalue.equals(string));

			logger.info("Verified filtered values as " + string + "" + "\n");
			System.out.println("Verified filtered values as " + string + "" + "\n");


			

		}
		
		@Then("Click on the {string} check box")
		public void Click_on_the_check_box(String string) {

			String original1 = ec.getObjects(string);
			String formatXPATH1 = String.format(original1);

			WaitClass.webDriverWait(formatXPATH1);
			driver.findElement(By.xpath(ec.getObjects(string))).click();
			logger.info("Clicked on check box " + " on Dashboard page" + "\n");
			System.out.println(" Clicked on check box " + " on Dashboard page" + "\n");
		}
		@Then("Verify {string} button in Filters tab in {string}")
	    public void verify_something_button_in_filters_tab_in_something(String strArg1, String strArg2) throws Throwable {
	        String original = ec.getObjects(strArg1);
			String formatXPATH = String.format(original);
			
			WaitClass.webDriverWait(formatXPATH);
			
			assertTrue(driver.findElement(By.xpath(original)).isEnabled(),strArg2);
			logger.info("Supplier Filter Enabled "+ " "+ strArg1 +" "+" "+"\n"); 
			System.out.println("Supplier Filter Enabled "+ " "+ strArg1 +" "+""+"\n"); 
	    }
		
		@Then("^Verify \"([^\"]*)\" tab on the filterby \"([^\"]*)\"$")
	    public void verify_something_tab_on_the_filterby_something(String strArg1, String strArg2) throws Throwable {
	        String original = "(" + ec.getObjects("filters1") + strArg1 + ec.getObjects("filters2") + ")[1]";
			String formatXPATH = String.format(original);
			
			WaitClass.webDriverWait(formatXPATH);
			
			assertTrue(driver.findElement(By.xpath(original)).isEnabled(),strArg2);
			logger.info("Supplier Filter Enabled "+ " "+ strArg1 +" "+" "+"\n"); 
			System.out.println("Supplier Filter Enabled "+ " "+ strArg1 +" "+""+"\n"); 
	    }
		
		@Then("Verify {string} button in Filters tab in {string} in notification")
	    public void verify_something_button_in_filters_tab_in_in_notification(String strArg1, String strArg2) throws Throwable {
	        String original = ec.getObjects("filter_label")+strArg1 +ec.getObjects("source2");
			String formatXPATH = String.format(original);
			
			WaitClass.webDriverWait(formatXPATH);
			
			assertTrue(driver.findElement(By.xpath(original)).isEnabled(),strArg2);
			logger.info("Verified filter "+ " "+ strArg1 +" "+" "+"\n"); 
			System.out.println("Verified Filter  "+ " "+ strArg1 +" "+""+"\n"); 
	    }
		
		@Then("Click on the filtered options {string}")
		public void verify_on_the_filtered_options(String strvalue) throws Throwable {
			
			String original = ec.getObjects("filteredstatus") + strvalue + ec.getObjects("filteredstatuspre");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();


			logger.info("clicked on" + strvalue + "" + "\n");
			System.out.println("clicked on" + strvalue + "" + "\n");

		}
		@Then("Click on the {string} button in Filters tab in notification")
	    public void Click_on_the_button_in_filters_tab_in_in_notification(String strArg1) throws Throwable {
	        String original = ec.getObjects("filter_label")+strArg1 +ec.getObjects("source2");
			String formatXPATH = String.format(original);
			
			WaitClass.webDriverWait(formatXPATH);
		
			driver.findElement(By.xpath(original)).click();

			logger.info("clicked on" + strArg1 + "" + "\n");
			System.out.println("clicked on" + strArg1 + "" + "\n");

	    }
		
		@Then("Click on the edit icon on manage users")
		public void Click_on_the_edit_icon_on_manage_users() throws Throwable {
			
			String original = ec.getObjects("editiconnoti");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).click();


			logger.info("clicked on" + "Edit Icon" + "" + "\n");
			System.out.println("clicked on" + "Edit Icon"  + "" + "\n");

		}

		@Then("Select a {string} role from the dropdown on Invite a New User on Mu {string}")
		public void select_a_Role_from_the_dropdown_on_Invite_a_New_User_on_Mu(String string, String val1) throws Throwable {
			String original = ec.getObjects("inviteanewuserrole");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);
			driver.findElement(By.xpath(original)).click();

			String original1 = ec.getObjects("selctrole")+ string +ec.getObjects("document_source2");
			String formatXPATH1 = String.format(original1);
			WaitClass.webDriverWait(formatXPATH1);

			driver.findElement(By.xpath(original1)).click();


			logger.info("Select" + " " + string + "role from the dropdown on Invite a New User Modal" + "\n");
			System.out.println("Select " + " " + string + " role from the dropdown on Invite a New User Modal" + "\n");
		}
		
		@When("Enter App name as {string} in search field")
		public void enter_App_name_as_in_search_field(String str) 
		{
			String original = ec.getObjects("market_place_app_search");
			String formatXPATH = String.format(original);

			WaitClass.clickableWait(formatXPATH);
			
			driver.findElement(By.xpath(original)).sendKeys(str);

			logger.info("Shows Marketplace title" + "\n");
			System.out.println("Shows Marketplace title" + "\n");
		}
		
		@Then("Click on {string} tab on supplier notification")
	    public void Click_on_tab_on_supplier_notification(String strArg1) throws Throwable {
			String original = ec.getObjects("pendingAndPublished_Tab_var1") + strArg1 + ec.getObjects("pendingAndPublished_Tab_var2");
			String formatXPATH = String.format(original);
			
			WaitClass.webDriverWait(formatXPATH);
		
			driver.findElement(By.xpath(original)).click();

			logger.info("clicked on" + strArg1 + "" + "\n");
			System.out.println("clicked on" + strArg1 + "" + "\n");

	    }
		@Then("Enter the Notes under the reasonForUndoReturn buyer Notes Box")
		public void enter_the_Notes_under_the_Notes_Box() {
			String original = ec.getObjects("reasonForUndoReturn");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			driver.findElement(By.xpath(original)).sendKeys("UndoReturn");

			
			System.out.println("Entered the Notes" + "\n");
			logger.info("Entered the Notes" + "\n");
		}
		
		//@Then("Show {string} Supplier {string} in notifications")
		//public void show_something_supplier_something_in_notifications(String country, String notification)
			//	throws Throwable {

		//	Thread.sleep(1000);

		//	String Email = country + "supplier" + mis.getTimeStamp() + notification;
		//	String original = ec.getObjects("verify_notification1") + Email + ec.getObjects("verify_notification2");
			
			//String original = ec.getObjects("verify_notification1") + InviteSupplierPage.companyname+ ec.getObjects("verify_notification2");
			//String formatXPATH = String.format(original);

			//WaitClass.webDriverWait(formatXPATH);

			//assertTrue(driver.findElement(By.xpath(original)).getText().contains(Email));
			//logger.info(" " + "'" + Email + "'" + " in " + "Notification" + "\n");
			//System.out.println(" " + "'" + Email + "'" + " in " + " Notification" + "\n");

		//}

		@Then("^Show \"([^\"]*)\" in notifications$")
		public void show_something_in_notifications(String strArg1) throws Throwable {
			String original = ec.getObjects("verify_notification1") + strArg1 + ec.getObjects("verify_notification2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);
			assertTrue(driver.findElement(By.xpath(original)).getText().contains(strArg1));
			logger.info("Displayed" + "'" + strArg1 + "'" + " in " + "Notification" + "\n");
			System.out.println("Displayed" + "'" + strArg1 + "'" + " in " + " Notification" + "\n");
		}

		@Then("Show {string} Brazil Supplier {string} in notifications")
		public void show_something_brazil_supplier_something_in_notifications(String strArg1, String strArg2)
				throws Throwable {
			Thread.sleep(1000);

			String Email = strArg1 + "Brazilsupplier" + mis.getTimeStamp() + strArg2;
			String original = ec.getObjects("verify_notification1") + Email + ec.getObjects("verify_notification2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).getText().contains(Email));
			logger.info(" " + "'" + Email + "'" + " in " + "Notification" + "\n");
			System.out.println(" " + "'" + Email + "'" + " in " + " Notification" + "\n");

		}
		
		
		
		
		@Then("Show the {string} Supplier {string} in document manager notifications")
		public void show_something_supplier_something_in_document_manager_notifications(String country, String notification)
				throws Throwable {

			Thread.sleep(1000);

			String original = "(" + ec.getObjects("verify_notification12") + notification + ec.getObjects("verify_notification2")+")[1]";
			
			//String original = ec.getObjects("verify_notification1") + InviteSupplierPage.companyname+ ec.getObjects("verify_notification2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).getText().contains(notification));
			logger.info(" " + "'" + "'" + " in " + "Notification" + "\n");
			System.out.println(" " + "'" + "'" + " in " + " Notification" + "\n");

		}
		
		
	}


