package stepdefinition;

import static org.testng.Assert.assertTrue;
import static org.testng.Assert.assertFalse;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class IBMBuyerExpRegRole extends DriverEngine {
	public static ElementControl ec = new ElementControl();
	
	Logger logger = Logger.getLogger(Dashboard.class);
	
	@Then("Enter {string} in Email Address")
	public void enter_something_in_email_address_field(String string) throws Throwable

	{
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "In Email Address field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "In Email Address field" + "\n");

	}

	@Then("Show Dashboard on Dashboard page {string}")
	public void show_Dashboard_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("dashboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isDisplayed(), string);
		logger.info("Dashboard Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click Upon Dashboard menu on Dashboard page")
	public void click_upon_dashboard_tab_on_dashboard_page() throws Throwable {
		String original = ec.getObjects("dashboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("dashboard"))).click();
		logger.info("Click upon Dashboard Tab on Dashboard page" + "\n");
		System.out.println("Click upon Dashboard Tab on Dashboard page" + "\n");
	}

	@Then("Show Notifications on Dashboard page {string}")
	public void show_Notifications_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications"))).isDisplayed(), string);
		logger.info("Notifications Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Notifications Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click Upon Notifications on Dashboard page")
	public void click_upon_notifications_tab_on_dashboard_page() throws Throwable {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(ec.getObjects("notifications"))).click();
		logger.info("Click upon Notifications Tab on Dashboard page" + "\n");
		System.out.println("Click upon Notifications Tab on Dashboard page" + "\n");
	}

	@Then("Show Suppliers on Dashboard page {string}")
	public void show_Suppliers_label_on_Dashboard_page(String string) {
		String original = ec.getObjects("suppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("suppliers"))).isDisplayed(), string);
		logger.info("Suppliers label visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Suppliers label visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show My Suppliers on Dashboard page {string}")
	public void show_My_Suppliers_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("mysuppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isDisplayed(), string);
		logger.info("My Suppliers tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Suppliers tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("My Suppliers clickable on Dashboard page {string}")
	public void my_Suppliers_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("mysuppliers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isEnabled(), string);
		logger.info("My Suppliers Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Suppliers Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Settings on Dashboard page {string}")
	public void show_Settings_title_on_Dashboard_page(String string) {
		String original = ec.getObjects("settings");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		for (int i = 0; i <= 2; i++) {
			try {
				assertTrue(driver.findElement(By.xpath(ec.getObjects("settings"))).isDisplayed(), string);
				logger.info("Settings label visible " + " " + string + " " + " on Dashboard page" + "\n");
				System.out.println("Settings label visible " + " " + string + " " + " on Dashboard page" + "\n");
				break;
			} catch (Exception e) {
				System.out.println(e.getMessage());
			}
		}

	}

	@Then("Show Help on Dashboard page {string}")
	public void show_Help_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("help");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isDisplayed(), string);
		logger.info("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Help clickable on Dashboard page {string}")
	public void help_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("help");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isEnabled(), string);
		logger.info("Help Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Help Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show ER Supplier in search result {string}")
	public void show_Supplier_in_search_result(String string) {

		// String original = "//span[contains(text(),'" + string + "')]";
		String original = ec.getObjects("suppliersearch_var1") + string + ec.getObjects("suppliersearch_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows Supplier " + " " + string + " " + "in search results" + "\n");
		System.out.println("Shows Supplier " + " " + string + " " + "in search results" + "\n");

	}

	@Then("Show selected ERSupplier in statussearch results {string}")
	public void show_selected_ERSupplier_in_statussearch_results(String string) {
		String original = ec.getObjects("erstatussearch_var1") + string + ec.getObjects("erstatussearch_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows Supplier " + " " + string + " " + "in search results" + "\n");
		System.out.println("Shows Supplier " + " " + string + " " + "in search results" + "\n");

	}
	
	@Then("select the erb option in the Supplier Questionnaire Group filter")
	public void select_the_erb_option_in_the_Supplier_Questionnaire_Group_filter() throws Throwable {
		String original = ec.getObjects("erqg_filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		logger.info("selected the erb option in the Supplier Questionnaire Group filter" + "\n");
		System.out.println("selected the erb option in the Supplier Questionnaire Group filter" + "\n");
	}
	@Then("Show selected ERSupplier in erqgsearch results {string}")
	public void show_selected_ERSupplier_in_erqgsearch_results(String string) {
		String original = ec.getObjects("erstatussearch_var1") + string + ec.getObjects("erstatussearch_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows Supplier " + " " + string + " " + "in search results" + "\n");
		System.out.println("Shows Supplier " + " " + string + " " + "in search results" + "\n");

	}

@Then("Click on unread notifications")
public void click_on_unread_notifications() {
	String original = ec.getObjects("unread_notifications");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(ec.getObjects("unread_notifications"))).click();
	logger.info("Click upon Notifications Tab on Dashboard page" + "\n");
	System.out.println("Click upon Notifications Tab on Dashboard page" + "\n");
}

@Then("Click on read notifications")
public void click_on_read_notifications() {
	String original = ec.getObjects("read_notifications");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(ec.getObjects("read_notifications"))).click();
	logger.info("Click on read Notifications Tab on Notifications page" + "\n");
	System.out.println("Click on read Notifications Tab on Notifications page" + "\n");
}

@Then("Notifications Checkbox Unchecked on Notifications Page {string}")
public void notifications_Checkbox_Unchecked_on_Notifications_Page(String string) {
	String original = ec.getObjects("notifications_checkbox");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
	logger.info("Checkbox  disabled on Notifications page By Default"+" "+string+"\n");
	System.out.println("Checkbox  disabled on Notifications page By Default"+" "+string+"\n");
}

@Then("Click on settings on Notifications")
public void click_on_settings_on_Notifications() {
	String original = ec.getObjects("settingstab");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	driver.findElement(By.xpath(ec.getObjects("settingstab"))).click();
	logger.info("clicked on settingstab Notifications page\n");
	System.out.println("clicked on settingstab Notifications page\n");
}

@Then("verify settings tab label on Notifications page {string}")
public void verify_settings_tab_label_on_Notifications_page(String string) {
	String original = ec.getObjects("settings_label");
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("settings label visible " + " " + string + " " + " on Notifications page" + "\n");
	System.out.println("settings label visible " + " " + string + " " + " on Notifications page" + "\n");
}

@Then("Click on Main checkbox")
public void click_on_Main_checkbox() throws Throwable {
	String original = ec.getObjects("notifications_checkbox");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	driver.findElement(By.xpath(ec.getObjects("notifications_checkbox"))).click();
	Thread.sleep(2000);
	logger.info("clicked on Main Checkbox on Notifications page\n");
	System.out.println("clicked on Main Checkbox on Notifications page\n");
}

@Then("verify Actions button enabled {string}")
public void verify_Actions_button_enabled(String string) {
	String original = ec.getObjects("actions_dropdown");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
	logger.info("Actions button disabled on Notifications page"+" "+string+"\n");
	System.out.println("Actions button disabled on Notifications page"+" "+string+"\n");
}


@Then("verify Actions button")
public void verify_actions_button() throws Throwable {
	String original = ec.getObjects("actions_dropdown");		
	String formatXPATH = String.format(original);
	
	String unreadNotifications = ec.getObjects("unread_notifications_var1");	
	String formatXPATH1 = String.format(unreadNotifications);
	String numonly = driver.findElement(By.xpath(unreadNotifications)).getText();
    String zeroOrNot = extractInt(numonly);
	WaitClass.webDriverWait(formatXPATH);
	
	
	if(zeroOrNot.equals("0"))
	{
		assertFalse(driver.findElement(By.xpath(original)).isEnabled(),"false");
	logger.info("Actions button on Notifications page false \n");
	System.out.println("Actions button  on Notifications page false \n");
	}
	else
	{
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),"true");
	logger.info("Actions button on Notifications page true \n");
	System.out.println("Actions button  on Notifications page true \n");
	}
	
}

@Then("verify Actions button on readNotifications")
public void verify_actions_button_on_readnotifications() throws Throwable {
	String original = ec.getObjects("actions_dropdown");		
	String formatXPATH = String.format(original);
	
	String unreadNotifications = ec.getObjects("unread_notifications_var1");	
	String formatXPATH1 = String.format(unreadNotifications);
	String numonly = driver.findElement(By.xpath(unreadNotifications)).getText();
    String zeroOrNot = extractInt(numonly);
	WaitClass.webDriverWait(formatXPATH);
	
	
	if(zeroOrNot.equals("0"))
	{
		assertFalse(driver.findElement(By.xpath(original)).isEnabled(),"false");
	logger.info("Actions button on Notifications page false \n");
	System.out.println("Actions button  on readNotifications page false \n");
	}
	else
	{
		assertTrue(driver.findElement(By.xpath(original)).isEnabled(),"true");
	logger.info("Actions button on Notifications page true \n");
	System.out.println("Actions button  on readNotifications page true \n");
	}
}

static String extractInt(String str)
{
	// Replacing every non-digit number
	// with a space(" ")
	str = str.replaceAll("[^\\d]", " ");

	// Remove extra spaces from the beginning
	// and the ending of the string
	str = str.trim();

	// Replace all the consecutive white
	// spaces with a single space
	str = str.replaceAll(" +", " ");

	if (str.equals(""))
		return "-1";

	return str;
} 


@Then("Click on Actions button")
public void click_on_Actions_button() throws Throwable {
	String original = ec.getObjects("actions_dropdown");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	driver.findElement(By.xpath(ec.getObjects("actions_dropdown"))).click();
	
	logger.info("clicked on Actions Dropdown on Notifications page\n");
	System.out.println("clicked on Actions Dropdown on Notifications page\n");
}

@Then("Select Mark As Read option")
public void select_Mark_As_Read_option() {
	String original = ec.getObjects("mark_as_read");		
	String formatXPATH = String.format(original);
	
	WaitClass.clickableWait(formatXPATH);
	
	driver.findElement(By.xpath(formatXPATH)).click();
	logger.info("clicked on Actions Dropdown on Notifications page\n");
	System.out.println("clicked on Actions Dropdown on Notifications page\n");
}

@Then("Verify default checkbox Unchecked {string}")
public void verify_default_checkbox_Unchecked(String string) {
	String original = ec.getObjects("default_checkbox");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
	logger.info("otherCheckbox  enabled on Notifications page By Default"+" "+string+"\n");
	System.out.println("otherCheckbox  enabled on Notifications page By Default"+" "+string+"\n");
}

@Then("show no unread notifications {string}")
public void show_no_unread_notifications(String string) {
	String original = ec.getObjects("nounread_notifications_msg");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	driver.switchTo().activeElement();
	
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows a message" +" "+ string + " "+  "in manage user search results"+"\n");
	System.out.println("Shows a message " +" "+ string + " "+  "in manage user search results"+"\n");
}
@Then("Select Mark As Unread option")
public void select_Mark_As_Unread_option() {
	String original = ec.getObjects("mark_as_unread");		
	String formatXPATH = String.format(original);
	
	WaitClass.clickableWait(formatXPATH);
	//action.click(driver.findElement(By.xpath(ec.getObjects("mark_as_read"))));
	driver.findElement(By.xpath(formatXPATH)).click();
	logger.info("clicked on Actions Dropdown on Notifications page\n");
	System.out.println("clicked on Actions Dropdown on Notifications page\n");
}
@Then("Verify Actions button disabled {string}")
public void verify_Actions_button_disabled(String string) {
	String original = ec.getObjects("actions_dropdown");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Actions button disabled on Notifications page"+" "+string+"\n");
	System.out.println("Actions button disabled on Notifications page"+" "+string+"\n");
}



}
