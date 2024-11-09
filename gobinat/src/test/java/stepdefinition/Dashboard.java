package stepdefinition;

import static org.testng.Assert.assertTrue;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.ElementClickInterceptedException;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class Dashboard extends DriverEngine 
{
	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(Dashboard.class);
	
	WebDriverWait wait = new WebDriverWait(driver,300);

	@Then("Show the title on Dashboard page")
	public void show_the_title_on_Dashboard_page() 
	{
		String original = ec.getObjects("supplierdashboardtitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		logger.info("Shows the title My Dashboard on Dashboard page" + "\n");
		System.out.println("Shows the title My Dashboard on Dashboard page" + "\n");
	}

	@Then("Show Dashboard tab on Dashboard page {string}")
	public void show_Dashboard_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("dashboard");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isDisplayed(), string);
		logger.info("Dashboard Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Dashboard tab on Supplier Dashboard page {string}")
	public void show_Dashboard_tab_on_Supplier_Dashboard_page(String string) {
		String original = ec.getObjects("dashboard_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard_supplier"))).isDisplayed(), string);
		logger.info("Dashboard Tab visible " + " " + string + " " + " on supplier Dashboard page" + "\n");
		System.out.println("Dashboard Tab visible " + " " + string + " " + " on supplier Dashboard page" + "\n");
	}

	@Then("Dashboard tab clickable on Dashboard page {string}")
	public void dashboard_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("dashboard");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isEnabled(), string);
		logger.info("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Notifications tab on Dashboard page {string}")
	public void show_Notifications_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications"))).isDisplayed(), string);
		logger.info("Notifications Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Notifications Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}
	
	@When("Click on Notifications tab on Dashboard page")
	public void click_on_Notifications_tab_on_Dashboard_page() 
	{
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		driver.findElement(By.xpath(ec.getObjects(formatXPATH))).click();
		
		logger.info("Clicked on Notifications Tab" + "\n");
		System.out.println("Clicked on Notifcations Tab" + "\n");
	}
	
	@Then("Shows Notifications title on Notifications page")
	public void shows_Notifications_title_on_Notifications_page() 
	{
		String original = ec.getObjects("notificationtitle");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects(formatXPATH))).isDisplayed());
		
		logger.info("Clicked on Notifications Tab" + "\n");
		System.out.println("Clicked on Notifcations Tab" + "\n");
	}
	
	@Then("Show Invite Supplier tab on Dashboard page {string}")
	public void show_Invite_Supplier_tab_on_Dashboard_page(String string) {
		
		String original = ec.getObjects("inviteSupplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);		
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("inviteSupplier"))).isDisplayed(), string);
		logger.info("inviteSupplier Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("inviteSupplier Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	
	}

	@Then("Invite Supplier tab clickable on Dashboard page {string}")
	public void invite_Supplier_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("inviteSupplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("inviteSupplier"))).isEnabled(), string);
		logger.info("inviteSupplier Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("inviteSupplier Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	
	}

	@Then("^Clear browser cookie$")
	public void clear_browser_cookie() throws Throwable {
		driver.manage().deleteAllCookies();
		logger.info("Clear browser cookie" + "\n");
		System.out.println("Clear browser cookie" + "\n");
	}

	@Then("Notifications tab clickable on Dashboard page {string}")
	public void notifications_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications"))).isEnabled(), string);
		logger.info("Notifications Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Notifications Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Reports tab on Dashboard page {string}")
	public void show_Reports_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("reports");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("reports"))).isDisplayed(), string);
		logger.info("Reports Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Reports Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Reports tab clickable on Dashboard page {string}")
	public void reports_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("reports");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("reports"))).isEnabled(), string);
		logger.info("Reports Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Reports Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Suppliers label on Dashboard page {string}")
	public void show_Suppliers_label_on_Dashboard_page(String string) {
		String original = ec.getObjects("suppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("suppliers"))).isDisplayed(), string);
		logger.info("Suppliers label visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Suppliers label visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show My Suppliers tab on Dashboard page {string}")
	public void show_My_Suppliers_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("mysuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isDisplayed(), string);
		logger.info("My Suppliers tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Suppliers tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("My Suppliers tab clickable on Dashboard page {string}")
	public void my_Suppliers_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("mysuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("mysuppliers"))).isEnabled(), string);
		logger.info("My Suppliers Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Suppliers Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Discover tab on Dashboard page {string}")
	public void show_Discover_tab_on_Dashboard_page(String string) {
		// String original = ec.getObjects("suppliers_dropdown");
		// String formatXPATH = String.format(original);

		// WaitClass.webDriverWait(formatXPATH);
		// driver.findElement(By.xpath(original)).click();
		// logger.info("Clicked on Suppliers dropdown"+"\n");
		// System.out.println("Clicked on Suppliers dropdown"+"\n");
		
		String original1 = ec.getObjects("discover_dropdown");		
		String formatXPATH1 = String.format(original1);
		
		//WaitClass.webDriverWait(formatXPATH1);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH1)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("discover_dropdown"))).isDisplayed(), string);
		logger.info("Discover tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Discover tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Discover tab clickable on Dashboard page {string}")
	public void discover_tab_clickable_on_Dashboard_page(String string) throws Throwable{
				
		String original = ec.getObjects("discover_dropdown");		
		String formatXPATH = String.format(original);
		
		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("discover_dropdown"))).isEnabled(), string);
		logger.info("Discover tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Discover tab visible " + " " + string + " " + " on Dashboard page" + "\n");

	}

	@Then("Show Company label on Dashboard page {string}")
	public void show_Company_label_on_Dashboard_page(String string) {
		String original = ec.getObjects("company");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("company"))).isDisplayed(), string);
		logger.info("Company label visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Company label visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Profile tab on Dashboard page {string}")
	public void show_Profile_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("profile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("profile"))).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Profile tab clickable on Dashboard page {string}")
	public void profile_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("profile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("profile"))).isEnabled(), string);
		logger.info("Profile Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Profile Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Manage Questionnaires tab on Dashboard page {string}")
	public void show_Manage_Questionnaires_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("managequestionnaires");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("managequestionnaires"))).isDisplayed(), string);
		logger.info("Manage Questionnaires tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Manage Questionnaires tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Manage Questionnaires tab clickable on Dashboard page {string}")
	public void manage_Questionnaires_tab_clickable_on_Dashboard_page(String string) {
		String original = ec.getObjects("managequestionnaires");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("managequestionnaires"))).isEnabled(), string);
		logger.info("Manage Questionnaires Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Manage Questionnaires Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Admin Actions label on Dashboard page {string}")
	public void show_Admin_Actions_label_on_Dashboard_page(String string) {
		String original = ec.getObjects("adminactions");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("adminactions"))).isDisplayed(), string);
		logger.info("Admin Actions label visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Admin Actions label visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Manage Users tab on Dashboard page {string}")
	public void show_Manage_Users_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("manageusers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("manageusers"))).isDisplayed(), string);
		Thread.sleep(3000);
		logger.info("Manage Users tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Manage Users tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Manage Users tab clickable on Dashboard page {string}")
	public void manage_Users_tab_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("manageusers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("manageusers"))).isEnabled(), string);
		logger.info("Manage Users Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Manage Users Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	/*
	 * @Then("Show Supplier Data Upload tab on Dashboard page {string}") public void
	 * show_Supplier_Data_Upload_tab_on_Dashboard_page(String string) { String
	 * original = ec.getObjects("supplierdataupload"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(ec.getObjects("supplierdataupload"))).
	 * isDisplayed(), string); logger.info("Supplier Data Upload tab visible " + " "
	 * + string + " " + " on Dashboard page" + "\n");
	 * System.out.println("Supplier Data Upload tab visible " + " " + string + " " +
	 * " on Dashboard page" + "\n"); }
	 * 
	 * @Then("Supplier Data Upload tab clickable on Dashboard page {string}") public
	 * void supplier_Data_Upload_tab_clickable_on_Dashboard_page(String string) {
	 * String original = ec.getObjects("supplierdataupload"); String formatXPATH =
	 * String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(ec.getObjects("supplierdataupload"))).
	 * isEnabled(), string); logger.info("Supplier Data Upload Tab clickable " + " "
	 * + string + " " + " on Dashboard page" + "\n");
	 * System.out.println("Supplier Data Upload Tab clickable " + " " + string + " "
	 * + " on Dashboard page" + "\n"); }
	 */

	@Then("Show B{int}B Profile label on Dashboard page {string}")
	public void show_B_B_Profile_label_on_Dashboard_page(Integer int1, String string) {
		String original = ec.getObjects("b2bprofile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bprofile"))).isDisplayed(), string);
		logger.info("B2B Profile label visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("B2B Profile label visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	/*
	 * @Then("Show Contact Info tab on Dashboard page {string}") public void
	 * show_Contact_Info_tab_on_Dashboard_page(String string) { String original =
	 * ec.getObjects("contactinfo"); String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfo"))).
	 * isDisplayed(), string); logger.info("Contact Info tab visible " + " " +
	 * string + " " + " on Dashboard page" + "\n");
	 * System.out.println("Contact Info tab visible " + " " + string + " " +
	 * " on Dashboard page" + "\n"); }
	 * 
	 * @Then("Contact Info tab clickable on Dashboard page {string}") public void
	 * contact_Info_tab_clickable_on_Dashboard_page(String string) { String original
	 * = ec.getObjects("contactinfo"); String formatXPATH = String.format(original);
	 * 
	 * WaitClass.webDriverWait(formatXPATH);
	 * 
	 * assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfo"))).
	 * isEnabled(), string); logger.info("Contact Info Tab clickable " + " " +
	 * string + " " + " on Dashboard page" + "\n");
	 * System.out.println("Contact Info Tab clickable " + " " + string + " " +
	 * " on Dashboard page" + "\n"); }
	 */

	@Then("Show B{int}B Config tab on Dashboard page {string}")
	public void show_B_B_Config_tab_on_Dashboard_page(Integer int1, String string) {
		String original = ec.getObjects("b2bprofile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bprofile"))).isDisplayed(), string);
		logger.info("B2B Config tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("B2B Config tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("B{int}B Config tab clickable on Dashboard page {string}")
	public void b_B_Config_tab_clickable_on_Dashboard_page(Integer int1, String string) {
		String original = ec.getObjects("b2bprofile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bprofile"))).isEnabled(), string);
		logger.info("B2B Config Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("B2B Config Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Help tab on Dashboard page {string}")
	public void show_Help_tab_on_Dashboard_page(String string) {
		String original = ec.getObjects("help");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("help"))).isDisplayed(), string);
		logger.info("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Notifications on Dashboard page {string}")
	public void click_on_Notifications_on_Dashboard_page(String string) {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Notification tab on Dashboard page" + "\n");
		System.out.println("Clicked on Notification tab on Dashboard page" + "\n");
	}

	@Then("Show title {string} on Notification page")
	public void show_title_on_Notification_page(String string) {
		String original = ec.getObjects("notifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Notification page" + "\n");
		System.out.println("Title" + string + " showing on Notification page" + "\n");

	}

	@Then("Show title {string} on My Buyer page")
	public void show_title_on_My_Buyer_page(String string) {
		String original = ec.getObjects("buyer_suppliertitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title - " + string + " showing on My Buyer page" + "\n");
		System.out.println("Title - " + string + " showing on My Buyer page" + "\n");

	
	}
	@Then("Click on {string} Down arrow on Dashboard page")
	public void click_on_Down_arrow_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("Suppliers_dropdown");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Shows title " + " " + string + " " + "on  Suppliers page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Suppliers page" + "\n");  
	}


	@Then("Click on {string} Down arrow on Dashboard")
	public void click_on_Down_arrow_on_Dashboard(String string) throws Exception {

		Thread.sleep(6000);
		String original = ec.getObjects("buyeragentsvg1") + string + ec.getObjects("buyeragentsvg2");
		String formatXPATH = String.format(original);

		//WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Clicked on " + string + " Down arrow on Dashboard" + "\n");
		System.out.println("Clicked on " + string + " Down arrow on Dashboard" + "\n");
		Thread.sleep(3000);
	}

	@Then("Click on My Buyers Nav link")
	public void click_on_My_Buyers_Nav_link() {
		String original = ec.getObjects("mybuyernavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Show MyBuyers tab on Dashboard page {string}")
	public void show_MyBuyers_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("mybuyerstab");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("My Buyers Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Buyers Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("MyBuyers tab clickable on Dashboard page {string}")
	public void mybuyers_tab_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("mybuyerstab");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("My Buyer Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Buyer Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on My Buyers on Dashboard page {string}")
	public void click_on_My_Buyers_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("mybuyerstab");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers tab on Dashboard page" + "\n");
		System.out.println("Clicked on My Buyers tab on Dashboard page" + "\n");
	}

	@Then("Click on Basic Information on Dashboard page {string}")
	public void click_on_Basic_Information_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("basicinformationnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Basic Information on Dashboard page" + "\n");
		System.out.println("Clicked on Basic Information on Dashboard page " + "\n");
	}
	
	@Then("Click on Expand icon at Your profile")
	public void click_on_expand_icon_at_your_profile() throws Throwable {
		String original = ec.getObjects("ExpandYourprofile");
		String formatXPATH = String.format(original);

		//WaitClass.clickableWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Expand icon at Your profile" + "\n");
		System.out.println("Clicked on Expand icon at Your profile" + "\n");
	}

	@Then("Show Questionnaires tab on Dashboard page {string}")
	public void show_Questionnaires_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("Questionnairesnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Questionnaires Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Questionnaires Tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Questionnaires Nav link")
	public void click_on_Questionnaires_Nav_link() throws Throwable {
		Thread.sleep(4000);
		
		String original = ec.getObjects("questionnairesLink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		try {
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		}
		catch(ElementClickInterceptedException e) {
			logger.info("Recovering from ElementClickInterceptedException " + "\n");
			System.out.println("Recovering from ElementClickInterceptedException " + "\n");
			for (int i = 0; i < 10; i++) {
				try {
					WebDriverWait wait = new WebDriverWait(driver, 120);
					wait.until(ExpectedConditions.elementToBeClickable(driver.findElement(By.xpath(formatXPATH))));
					Thread.sleep(5000);
					driver.findElement(By.xpath(original)).click();
					break;
				} catch (ElementClickInterceptedException e1) {
					logger.info("Recovering from ElementClickInterceptedException " + "\n");
					System.out.println("Recovering from ElementClickInterceptedException " + "\n");
				}
			}
		}
		logger.info("Clicked on Questionnaires Nav link" + "\n");
		System.out.println("Clicked on Questionnaires Nav link" + "\n");
	}

	@Then("Click on Review and publish nav link")
	public void click_on_Review_and_publish_nav_link() {

		String original = ec.getObjects("reviewandpublishnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Review and publish Nav link" + "\n");
		System.out.println("Clicked on Review and publish Nav link" + "\n");
	}

	@Then("Questionnaires tab clickable on Dashboard page {string}")
	public void questionnaires_tab_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("Questionnairesnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Questionnaires Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Questionnaires Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Questionnaires on Dashboard page {string}")
	public void click_on_Questionnaires_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("Questionnairesnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Questionnaires tab on Dashboard page" + "\n");
		System.out.println("Clicked on Questionnaires tab on Dashboard page" + "\n");
	}

	@Then("Show title on Questionnaires page {string}")
	public void show_title_on_Questionnaires_page(String string) throws Throwable {
		String original = ec.getObjects("assignedquestionnairestab");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Questionnaires page" + "\n");
		System.out.println("Title" + string + " showing on Questionnaires page" + "\n");
	}

	@Then("Click on Manage Users Nav link")
	public void click_on_Manage_Users_Nav_link() {

		String original = ec.getObjects("manageusernavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Manage Users Nav link" + "\n");
		System.out.println("Clicked on Manage Users Nav link" + "\n");
	}
	
	@Then("Click on Manage Users Nav link for Suppliers")
	public void click_on_Manage_Users_Nav_link_for_Suppliers() {

		String original = ec.getObjects("manageusernavlinkforsuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Manage Users Nav link for supppliers" + "\n");
		System.out.println("Clicked on Manage Users Nav link for suppliers" + "\n");
	}

	@Then("Click on Contact Info Nav link")
	public void click_on_Contact_Info_Nav_link() {

		String original = ec.getObjects("contactinfonavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Contact Info Nav link" + "\n");
		System.out.println("Clicked on Contact Info Nav link" + "\n");
	}

	@Then("Click on Contact Info on Dashboard page {string}")
	public void click_on_Contact_Info_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("contactinfo");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Contact Info tab on Dashboard page" + "\n");
		System.out.println("Clicked on Contact Info tab on Dashboard page" + "\n");
	}

	@Then("Show Contact Info tab on Supplier Dashboard page {string}")
	public void show_Contact_Info_tab_on_Supplier_Dashboard_page(String string) {

		String original = ec.getObjects("contactinfonavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfonavlink"))).isDisplayed(), string);
		logger.info("Contact Info tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Contact Info tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Contact Info tab clickable on Supplier Dashboard page {string}")
	public void contact_Info_tab_clickable_on_Supplier_Dashboard_page(String string) {
		String original = ec.getObjects("contactinfonavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("contactinfonavlink"))).isDisplayed(), string);
		logger.info("Contact Info tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Contact Info tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show title on Contact Info page {string}")
	public void show_title_on_Contact_Info_page(String string) throws Throwable {
		String original = ec.getObjects("b2bcontaactinfotitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Contact Info page" + "\n");
		System.out.println("Title" + string + " showing on Contact Info page" + "\n");
	}

	@Then("Click on B{int}B Config on Dashboard page {string}")
	public void click_on_B_B_Config_on_Dashboard_page(Integer int1, String string) throws Throwable {
		String original = ec.getObjects("b2bconfig");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on B2B Config tab on Dashboard page" + "\n");
		System.out.println("Clicked on B2B Config tab on Dashboard page" + "\n");
	}

	@Then("Show title on B{int}B Config page {string}")
	public void show_title_on_B_B_Config_page(Integer int1, String string) throws Throwable {
		String original = ec.getObjects("b2bconfigtitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on B2B Configuration page" + "\n");
		System.out.println("Title" + string + " showing on B2B Configuration page" + "\n");
	}

	@Then("Click on B{int}B Config Nav link")
	public void click_on_B_B_Config_Nav_link(Integer int1) {

		String original = ec.getObjects("b2bconfignavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on B{int}B Config Nav link" + "\n");
		System.out.println("Clicked on B{int}B Config Nav link" + "\n");
	}

	@Then("Show B{int}B Config tab on Supplier Dashboard page {string}")
	public void show_B_B_Config_tab_on_Supplier_Dashboard_page(Integer int1, String string) {
		String original = ec.getObjects("b2bconfignavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("b2bconfignavlink"))).isDisplayed(), string);
		logger.info("Contact Info tab visible " + " " + string + " " + " on Supplier Dashboard page" + "\n");
		System.out.println("Contact Info tab visible " + " " + string + " " + " on Supplier Dashboard page" + "\n");
	}

	@Then("B{int}B Config tab clickable on Supplier Dashboard page {string}")
	public void b_B_Config_tab_clickable_on_Supplier_Dashboard_page(Integer int1, String string) {
		String original = ec.getObjects("b2bconfignavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("My Buyer Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("My Buyer Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show Bank Account tab on Dashboard page {string}")
	public void show_Bank_Account_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("banknavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Bank Account tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Bank Account tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Bank Account tab clickable on Dashboard page {string}")
	public void bank_Account_tab_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("banknavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Bank Account Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Bank Account Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Bank Account on Dashboard page {string}")
	public void click_on_Bank_Account_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("banknavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Bank Account tab on Dashboard page" + "\n");
		System.out.println("Clicked on Bank Account tab on Dashboard page" + "\n");
	}

	@Then("Click on Billing Nav link")
	public void click_on_Billing_Nav_link() {

		String original = ec.getObjects("billingnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Show Billing tab on Dashboard page {string}")
	public void show_Billing_tab_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("billingnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Billing tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Billing tab visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Billing tab clickable on Dashboard page {string}")
	public void billing_tab_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("billingnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Billing Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Billing Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Billing on Dashboard page {string}")
	public void click_on_Billing_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("billingnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Billing tab on Dashboard page" + "\n");
		System.out.println("Clicked on Billing tab on Dashboard page" + "\n");
	}

	@Then("Show title on Billing page {string}")
	public void show_title_on_Billing_page(String string) throws Throwable {
		String original = ec.getObjects("addapaymentitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Billing page" + "\n");
		System.out.println("Title" + string + " showing on Billing page" + "\n");
	}

	@Then("Click on Help Nav link")
	public void click_on_Help_Nav_link() {

		String original = ec.getObjects("helpnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Click on Help on Dashboard page {string}")
	public void click_on_Help_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("helpnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Help tab on Dashboard page" + "\n");
		System.out.println("Clicked on Help tab on Dashboard page" + "\n");
	}

	@Then("Show Help tab on Supplier Dashboard page {string}")
	public void show_Help_tab_on_Supplier_Dashboard_page(String string) {

		String original = ec.getObjects("helpnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("helpnavlink"))).isDisplayed(), string);
		logger.info("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Help tab visible " + " " + string + " " + " on Dashboard page" + "\n");

	}

	@Then("Help tab clickable on Supplier Dashboard page {string}")
	public void help_tab_clickable_on_Supplier_Dashboard_page(String string) {

		String original = ec.getObjects("helpnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("helpnavlink"))).isEnabled(), string);
		logger.info("Help Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Help Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");

	}

	@Then("Show title on Help page {string}")
	public void show_title_on_Help_page(String string) throws Throwable {
		String original = ec.getObjects("supportcentertitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Help page" + "\n");
		System.out.println("Title" + string + " showing on Help page" + "\n");
	}

	public void show_the_title_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("supplierdashboardtitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on Contact nav link")
	public void click_on_Contact_nav_link() {

		String original = ec.getObjects("contactsnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Click Location nav link")
	public void click_Location_nav_link() {

		String original = ec.getObjects("locationnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Show Locations nav link on Profile page {string}")
	public void show_Locations_nav_link_on_Profile_page(String string) throws Throwable {

		String original = ec.getObjects("locationnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Locations Tab visible on Profile page" + "\n");
		System.out.println("Locations Tab visible on Profile page" + "\n");

	}

	@Then("Verify Locations nav link Clickable on Profile page {string}")
	public void verify_Locations_nav_link_Clickable_on_Profile_page(String string) throws Throwable {

		String original = ec.getObjects("locationnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Locations Tab clickable on Profile page" + "\n");
		System.out.println("Locations Tab clickable on Profile page" + "\n");

	}

	@Then("Click on Management nav link")
	public void click_on_Management_nav_link() {

		String original = ec.getObjects("managementnavlink");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on My Buyers Nav link" + "\n");
		System.out.println("Clicked on My Buyers Nav link" + "\n");
	}

	@Then("Show Notifications tab on supplier Dashboard page {string}")
	public void show_Notifications_tab_on_supplier_Dashboard_page(String string) {
		String original = ec.getObjects("notifications_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications_supplier"))).isDisplayed(), string);
		logger.info("Notifications Tab visible " + " " + string + " " + " on Supplier Dashboard page" + "\n");
		System.out.println("Notifications Tab visible " + " " + string + " " + " on Supplier Dashboard page" + "\n");
	}

	@Then("Notifications tab clickable on supplier Dashboard page {string}")
	public void notifications_tab_clickable_on_supplier_Dashboard_page(String string) {
		String original = ec.getObjects("notifications_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("notifications_supplier"))).isEnabled(), string);
		logger.info("Notifications Tab clickable " + " " + string + " " + " on Supplier Dashboard page" + "\n");
		System.out.println("Notifications Tab clickable " + " " + string + " " + " on Supplier Dashboard page" + "\n");
	}

	@Then("Click on Notifications on Supplier Dashboard page {string}")
	public void click_on_Notifications_on_Supplier_Dashboard_page(String string) {
		String original = ec.getObjects("notifications_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Notification tab on Dashboard page" + "\n");
		System.out.println("Clicked on Notification tab on Dashboard page" + "\n");
	}

	@Then("Dashboard tab clickable on Supplier Dashboard page {string}")
	public void dashboard_tab_clickable_on_Supplier_Dashboard_page(String string) {
		String original = ec.getObjects("dashboard_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard_supplier"))).isEnabled(), string);
		logger.info("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Show title {string} on Supplier Notification page")
	public void show_title_on_Supplier_Notification_page(String string) {
		String original = ec.getObjects("notifications_suppliertitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Notification page" + "\n");
		System.out.println("Title" + string + " showing on Notification page" + "\n");

	}

	@Then("Show Profile tab on suplier Dashboard page {string}")
	public void show_Profile_tab_on_suplier_Dashboard_page(String string) {
		String original = ec.getObjects("profile_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("profile_supplier"))).isDisplayed(), string);
		logger.info("Profile tab visible " + " " + string + " " + " on suppplier Dashboard page" + "\n");
		System.out.println("Profile tab visible " + " " + string + " " + " on suppplier Dashboard page" + "\n");
	}

	@Then("Profile tab clickable on suplier Dashboard page {string}")
	public void profile_tab_clickable_on_suplier_Dashboard_page(String string) {
		String original = ec.getObjects("profile_supplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("profile_supplier"))).isEnabled(), string);
		logger.info("Profile Tab clickable " + " " + string + " " + " on suppplier Dashboard page" + "\n");
		System.out.println("Profile Tab clickable " + " " + string + " " + " on suppplier Dashboard page" + "\n");
	}

	@Then("Show Manage Users tab on supplier Dashboard page {string}")
	public void show_Manage_Users_tab_on_supplier_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("manageusernavlinkforsuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("manageusernavlinkforsuppliers"))).isDisplayed(), string);
		Thread.sleep(3000);
		logger.info("Manage Users tab visible " + " " + string + " " + " on suppplier Dashboard page" + "\n");
		System.out.println("Manage Users tab visible " + " " + string + " " + " on suppplier Dashboard page" + "\n");
	}

	@Then("Manage Users tab clickable on supplier Dashboard page {string}")
	public void manage_Users_tab_clickable_on_supplier_Dashboard_page(String string) {
		String original = ec.getObjects("manageusernavlinkforsuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("manageusernavlinkforsuppliers"))).isEnabled(), string);
		logger.info("Manage Users Tab clickable " + " " + string + " " + " on suppplier Dashboard page" + "\n");
		System.out.println("Manage Users Tab clickable " + " " + string + " " + " on suppplier Dashboard page" + "\n");
	}

	@Then("Click on Ownership nav link")
	public void click_on_Ownership_nav_link() throws Throwable {
		String original = ec.getObjects("Ownershipnavlink");
		//WaitClass.webDriverWait(original);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(original)));

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Ownership Tab on Profile" + "\n");
		System.out.println("Clicked on Ownership on Profile" + "\n");

	}

	@Then("Show Go to my suppliers on Dashboard page {string}")
	public void show_Go_to_my_suppliers_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomysuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Go to my suppliers visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my suppliers visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Go to my suppliers clickable on Dashboard page {string}")
	public void go_to_my_suppliers_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomysuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Go to my suppliers clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my suppliers clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Go to my suppliers on Dashboard page {string}")
	public void click_on_Go_to_my_suppliers_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomysuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Go to my suppliers link on Dashboard page" + "\n");
		System.out.println("Clicked on Go to my suppliers link on Dashboard page" + "\n");
	}

	@Then("Show Go to my Notifications on Dashboard page {string}")
	public void show_Go_to_my_Notifications_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomynotifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Go to my notifications visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my notifications visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Go to my Notifications clickable on Dashboard page {string}")
	public void go_to_my_Notifications_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomynotifications");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Go to my notifications clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my notifications clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Go to my notifications on Dashboard page {string}")
	public void click_on_Go_to_my_notifications_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("Notifications_new");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		//wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Go to my notifications link on Dashboard page" + "\n");
		System.out.println("Clicked on Go to my notifications link on Dashboard page" + "\n");
	}

	@Then("Show title on Notifications page {string}")
	public void show_title_on_Notifications_page(String string) throws Throwable {
		String original = ec.getObjects("notifications_suppliertitle");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on Notifications page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on Notifications page" + "\n");
	}

	@Then("Show {string} on Dashboard page {string}")
    public void show_something_on_dashboard_page_something(String strArg1, String strArg2) throws Throwable {
		String original = ec.getObjects("dashboard_disabled_navlink1") + strArg1 + ec.getObjects("dashboard_disabled_navlink2");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), strArg2);
		logger.info( strArg1 + " " + "Not visible on Dashboard page" + "\n");
		System.out.println( strArg1 + " " + " Not visible on Dashboard page" + "\n");
    }

	@Then("Show Ready For Review on Dashboard page {string}")
	public void show_Ready_For_Review_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_readyforreview");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Ready For Review visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Ready For Review visible " + " " + string + " " + " on Dashboard page" + "\n");
	}
	
	
	@Then("Show Accepted Invites on Dashboard page {string}" )
	public void Show_Accepted_Invites_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_acceptedinvites");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("ccepted Invites visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("ccepted Invites visible " + " " + string + " " + " on Dashboard page" + "\n");
		
	}
	

@Then("Show title on Report page {string}")
public void show_title_on_Report_page(String string) throws InterruptedException {
	String original = ec.getObjects("Reports_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Reports page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Reports page" + "\n");
   
   
}
	
	
	
	
	
	
	
	
	
	
	
	
	

	@Then("Click on Add basic company information")
	public void click_on_Add_basic_company_information() throws Throwable {
		String original = ec.getObjects("dashboard_basiccompanyinfo");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Add basic company information on Supplier Dashboard page" + "\n");
		System.out.println("Clicked on Add basic company information on Supplier Dashboard page" + "\n");
	}

	@Then("Click on Begin button in {string}")
	public void click_on_Begin_button_in(String string) throws Throwable {
		String original = ec.getObjects("dashboard_beginbtn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info(
				"Clicked on Begin button in Add basic company information section on Supplier Dashboard page" + "\n");
		System.out.println(
				"Clicked on Begin button in Add basic company information section on Supplier Dashboard page" + "\n");
	}

	@Then("Show Financial page description on Financial page {string}")
	public void show_Financial_page_description_on_Financial_page(String string) throws Throwable {
		String original = ec.getObjects("financial_Description");
		WaitClass.webDriverWait(original);

		String Financial_description = driver.findElement(By.xpath(original)).getText();

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Showing Financial page description: " + "'" + Financial_description + "'" + "\n");
		System.out.println("Showing Financial page description: " + "'" + Financial_description + "'" + "\n");
	}

	@Then("Enter Supplier Email with RFR Status in Email Address field")
	public void enter_Supplier_Email_with_RFR_Status_in_Email_Address_field() throws Throwable {
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("supplierusr"));

		logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
		System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
	}

	@Then("Show Go to my Buyers on Dashboard page {string}")
	public void show_Go_to_my_Buyers_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomybuyers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Go to my Buyers visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my Buyers visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Go to my Buyers clickable on Dashboard page {string}")
	public void go_to_my_Buyers_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomybuyers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Go to my Buyers clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Go to my Buyers clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Go to my Buyers on Dashboard page {string}")
	public void click_on_Go_to_my_Buyers_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("gotomybuyers");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Go to my Buyers link on Dashboard page" + "\n");
		System.out.println("Clicked on Go to my Buyers link on Dashboard page" + "\n");
	}

	@Then("Show title on My Buyers page {string}")
	public void show_title_on_My_Buyers_page(String string) throws Throwable {
		String original = ec.getObjects("mybuyers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on My Buyers page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on My Buyers page" + "\n");
	}

	@Then("Show Awaiting Review on Dashboard page {string}")
	public void show_Awaiting_Review_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_awaitingreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Awaiting Review visible " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Awaiting Review visible " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Awaiting Review clickable on Dashboard page {string}")
	public void awaiting_Review_clickable_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_awaitingreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Awaiting Review clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Awaiting Review clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on Awaiting Review on Dashboard page {string}")
	public void click_on_Awaiting_Review_on_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_awaitingreview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Awaiting Review link on Dashboard page" + "\n");
		System.out.println("Clicked on Awaiting Review link on Dashboard page" + "\n");
	}

	@Then("Show selected Buyer in search results {string}")
	public void show_selected_Buyer_in_search_results(String string) throws Throwable {
		String original = ec.getObjects("buyer_status");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows Buyer status " + " " + string + " " + "in search results" + "\n");
		System.out.println("Shows Buyer status " + " " + string + " " + "in search results" + "\n");
	}

	@Then("Click on Financial tab")
	public void click_on_Financial_tab() {
		String original = ec.getObjects("financialnavlink");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Financial tab" + "\n");
		System.out.println("Clicked on Financial tab" + "\n");
	}

	@Then("Click on Password Configuration nav link")
	public void click_on_Password_Configuration_nav_link() {
		String original = ec.getObjects("passwordconfigurationtab");
		WaitClass.webDriverWait(original);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Password Configuration nav link" + "\n");
		System.out.println("Clicked on Password Configuration nav link" + "\n");
	}

	@Then("Click on Password Configuration nav link on supplier")
	public void click_on_Password_Configuration_nav_link_on_supplier() {

		String original = ec.getObjects("passwordconfignavlink");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Password Configuration nav link on supplier" + "\n");
		System.out.println("Clicked on Password Configuration nav link on supplier" + "\n");
	}

	@Then("Click on the save changes button on password configuration page")
	public void click_on_the_save_changes_button_on_password_configuration_page() {
		String original = ec.getObjects("savechanges_passwordconfig");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on the save changes button on password configuration page" + "\n");
		System.out.println("Clicked on the save changes button on password configuration page" + "\n");
	}

	@Then("Close button visibility on Change password {string}")
	public void Close_button_visibility_on_Change_password(String string) throws Throwable {
		String original = ec.getObjects("Changepwd_closebutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Close button visibility on Change password  " + "\n");
		System.out.println("Close button visibility on Change password  " + "\n");
	}

	@Then("Confirm password button visibility on Change password {string}")
	public void confirm_password_button_visibility_on_Change_password(String string) throws Throwable {
		String original = ec.getObjects("changepwd_Confirmpassword");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Confirm password button visibility on Change password  " + "\n");
		System.out.println("Confirm password button visibility on Change password  " + "\n");
	}

	@Then("Click on Profile button")
	public void click_on_profile_button() throws Throwable {
		String original = ec.getObjects("profile_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Profile button" + "\n");
		System.out.println("Clicked on Profile button" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click on Change password option")
	public void click_on_change_password_option() throws Throwable {
		String original = ec.getObjects("changepasswordoption");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Change password option" + "\n");
		System.out.println("Clicked on Change password option" + "\n");
		Thread.sleep(2000);
	}

	@Then("Click on Confirm password button")
	public void click_on_Confirm_password_button() {
		String original = ec.getObjects("changepwd_Confirmpassword");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Confirm password button" + "\n");
		System.out.println("Clicked on Confirm password button" + "\n");
	}

	@Then("Click on Close button on password change")
	public void click_on_close_button_on_password_change() {
		String original = ec.getObjects("Changepwd_closebutton");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close button on password change" + "\n");
		System.out.println("Clicked on Close button on password change" + "\n");
	}
	 
	@Then("{string} notclickable on Dashboard page {string}")
	    public void something_clickable_on_dashboard_page_something(String strArg1, String strArg2) throws Throwable {
		 String original = ec.getObjects("dashboard_disabled_navlink1") + strArg1 + ec.getObjects("dashboard_disabled_navlink2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).isEnabled(), strArg2);
			logger.info("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
			System.out.println("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
	}

	@Then("{string} clickable on Dashboard page {string}")
	    public void something_notclickable_on_dashboard_page_something(String strArg1, String strArg2) throws Throwable {
		 String original = ec.getObjects("dashboard_disabled_navlink1") + strArg1 + ec.getObjects("dashboard_disabled_navlink2");
			String formatXPATH = String.format(original);

			WaitClass.webDriverWait(formatXPATH);

			assertTrue(driver.findElement(By.xpath(original)).isEnabled(), strArg2);
			logger.info("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
			System.out.println("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
	}

	@Then("Click on {string} on Dashboard page {string}")
	public void click_on_on_Dashboard_page(String strArg1, String string2) {
			String original = ec.getObjects("dashboard_disabled_navlink1") + strArg1 + ec.getObjects("dashboard_disabled_navlink2");
			   String formatXPATH = String.format(original);
   
			   WaitClass.webDriverWait(formatXPATH);
   
			   driver.findElement(By.xpath(original)).click();
			   logger.info("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
			   System.out.println("Total clickable " + " " + strArg1 + " " + " on Dashboard page" + "\n");
	}

	@Then("Show the Head title as {string} on the Dashboard page")
	public void show_the_Head_title_as_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("getstarted_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Notification page" + "\n");
		System.out.println("Title" + string + " showing on Notification page" + "\n");

	}

	@Then("Show the description {string} on the Dashboard page")
	public void show_the_description_on_the_Dashboard_page(String string) {
		String original = ec.getObjects("getstarted_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Notification page" + "\n");
		System.out.println("Title" + string + " showing on Notification page" + "\n");
}

	@Then("Show {string} tile on the Dashboard page")
	public void show_tile_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_maintitles") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on {string} tile on the Dashboard page")
	public void click_on_tile_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("dashboard_maintitles") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		
		logger.info("Title" + string + " Clicked on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " Clicked on Supplier Dashboard page" + "\n");
	
	}

	@Then("Show {string} Subtile on the Dashboard page")
	public void show_Subtile_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("subtile_name") + string + "')]";
		String formatXPATH = String.format(original);
		System.out.println(original);
		logger.info(formatXPATH);
		WaitClass.webDriverWait(formatXPATH);
        
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	
	}
	@Then("Show {string} Subtiles on the Dashboard page")
	public void show_Subtiles_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("subtiles_name") + string + "')]";
		String formatXPATH = String.format(original);
		System.out.println(original);
		logger.info(formatXPATH);
		WaitClass.webDriverWait(formatXPATH);
        
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	
	}

	@Then("Show {string} Questionnaire tile on the Dashboard page")
	public void show_Questionnaire_tile_on_the_Dashboard_page(String string) throws Throwable {
		String original = ec.getObjects("questionnairetile") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on Dashboard tab of Supplier")
	public void click_on_Dashboard_tab_of_Supplier()  throws Throwable {
	String original = ec.getObjects("dashboard_supplier");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);
	driver.findElement(By.xpath(original)).click();

	logger.info("showing on Supplier Dashboard page" + "\n");
	System.out.println("showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on {string} Subtile on the Dashboard page")
	public void click_on_Subtile_on_the_Dashboard_page(String string)  throws Throwable {
		String original = ec.getObjects("subtile_name") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Title" + string + " Clicked on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " Clicked on Supplier Dashboard page" + "\n");
	}

	@Then("Click on {string} on the Dashboard page")
	public void click_on_on_the_Dashboard_page(String string) {
		String original = ec.getObjects("Hide_view_dashboard") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Show {string} section on Dashboard page")
	public void show_section_on_Dashboard_page(String string) {
		String original = ec.getObjects("buyeragentsvg3") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on the Navigation Arrow at {string} section")
	public void click_on_the_Navigation_Arrow_at_section(String string) {
	   String original = ec.getObjects("navigationarrow_dashboard") + string + ec.getObjects("navigationarrow_dashboardend");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Click on Down facing svg at {string} section")
	public void click_on_Down_facing_svg_at_section(String string) {
		String original = ec.getObjects("navigationarrow_dashboard") + string + ec.getObjects("HideArrow_dashboardend");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();

		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}


	@Then("Show the profile information status {string}")
	public void show_the_profile_information_status(String string) {
		String original = ec.getObjects("profile_status_dashboard") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Show the Questionaire status {string}")
	public void show_the_Questionaire_status(String string) {
		String original = ec.getObjects("Questionnaire_status_dashboard") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}

	@Then("Show Block {string} on Supplier Dashboard page")
    public void show_block_something_on_supplier_dashboard_page(String string) throws Throwable {
        String original = ec.getObjects("dashboardMsgBlocks1") + string + ec.getObjects("dashboardMsgBlocks2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Title" + string + " showing on Supplier Dashboard page" + "\n");
		System.out.println("Title" + string + " showing on Supplier Dashboard page" + "\n");
	}


	@Then("Click on Dashboard page")
	public void click_on_Dashboard_page() {
	String original = ec.getObjects("dashboard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Dashboard page" + "\n");
		System.out.println("Clicked Dashboard page" + "\n");

}


@Then("Verify {string} listed in SuppliersByCountry dropdown")
public void verify_something_listed_in_suppliersbycountry_dropdown(String string) throws Throwable {

	String original = ec.getObjects("Supplier_By_Country1") + string + ec.getObjects("Supplier_By_Country2");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
}




@Then("Show {string} tooltip {string} on Dashboard page")
public void show_something_tooltip_something(String label, String tooltiptext) throws Throwable {
	String original = ec.getObjects("open_label1") + label + ec.getObjects("open_label2");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");

	System.out.println("Tool Tip: ---" + text);
	assertTrue(text.contains(tooltiptext));
	
	logger.info(" " + tooltiptext + " " + " is a tooltip for Dashboard" + "\n");
	System.out.println(" " + " " + tooltiptext + " " + " is a tooltip for Dashboard" + "\n");
}

@Then("Verify {string} link enabled in All Suppliers")
    public void verify_something_link_enabled_in_all_suppliers(String string) throws Throwable {
        String original = ec.getObjects("Allsuppliers1") + string + ec.getObjects("Allsuppliers2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isEnabled(), string);
		logger.info("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
	}
	
	@Then("Verify {string} link displayed in All Suppliers")
    public void verify_something_link_displayed_in_all_suppliers(String string) throws Throwable {
		String original = ec.getObjects("Allsuppliers1") + string + ec.getObjects("Allsuppliers2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("dashboard"))).isDisplayed(), string);
		logger.info("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");
		System.out.println("Dashboard Tab clickable " + " " + string + " " + " on Dashboard page" + "\n");

	}
	
	@Then("verify {string} button collapsed")
    public void verify_something_button_collapsed(String string) throws Throwable {
        String original = ec.getObjects("Allsuppliers_collapse1") + string + ec.getObjects("Allsuppliers_collapse2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("collapse_div");
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		logger.info("Clicked on collapse on Dashboard page" + "\n");
		System.out.println("Clicked on collapse tab on Dashboard page" + "\n");
	}
	
	@Then("verify {string} button expanded on suppliers by country")
	public void verify_button_expanded_on_suppliers_by_country(String string) throws Throwable {
    String original = ec.getObjects("Allsuppliers_collapse1") + string + ec.getObjects("Allsuppliers_collapse2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("suppliers_collapse");
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		logger.info("Clicked on expand on Dashboard page" + "\n");
		System.out.println("Clicked on expand tab on Dashboard page" + "\n");
	}

	
	@Then("verify {string} button collapsed on suppliers by country")
	public void verify_button_collapsed_on_suppliers_by_country(String string) throws Throwable {
    String original = ec.getObjects("Allsuppliers_collapse1") + string + ec.getObjects("Allsuppliers_collapse2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("suppliers_collapse");
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		logger.info("Clicked on collapse on Dashboard page" + "\n");
		System.out.println("Clicked on collapse tab on Dashboard page" + "\n");
	}

	
	@Then("verify {string} button expanded")
    public void verify_something_button_expanded(String string) throws Throwable {
		String original = ec.getObjects("Allsuppliers_collapse1") + string + ec.getObjects("Allsuppliers_collapse2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("collapse_div");
		String formatXPATH1 = String.format(original1);
		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(formatXPATH1)).isDisplayed());
		logger.info("Clicked on Expanded on Dashboard page" + "\n");
		System.out.println("Clicked on Expanded tab on Dashboard page" + "\n");
    }

	@Then("Scroll Down")
	public void scroll_Down() 
	{
		String original = ec.getObjects("reports");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);

		WebElement scroll = driver.findElement(By.xpath(formatXPATH));
		scroll.sendKeys(Keys.PAGE_DOWN);
		scroll.sendKeys(Keys.PAGE_DOWN);
		//JavascriptExecutor js = (JavascriptExecutor) driver;
		//js.executeScript("window.scrollBy(0,450)", "");
		logger.info("Scroll down the page" + "\n");
		System.out.println("Scroll down the page" + "\n");
	}

	@Then("Click on Reports on Dashboard page {string}") 
	public void click_on_Reports_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("Reports");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(4000);
		logger.info("Clicked on Reports link on Dashboard page" + "\n");
		System.out.println("Clicked on Reports link on Dashboard page" + "\n");
		Thread.sleep(3000);
	  
	}
	@Then("Click on Third Party Risk Info on Dashboard page {string}")
	public void click_on_Third_Party_Risk_Info_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("ThirdPartyRiskInfo");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Third Party Risk Info link on Dashboard page" + "\n");
		System.out.println("Clicked on Third Party Risk Info link on Dashboard page" + "\n");
		Thread.sleep(3000); 
	}

	@Then("Show title on ReportThird Party Risk Info page {string}")
	public void show_title_on_ReportThird_Party_Risk_Info_page(String string) throws InterruptedException {
		String original = ec.getObjects("ThirdPartyRiskInfo_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on Third Party Risk Info page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on Third Party Risk Info page" + "\n");
	   
	}
	
	
	@Then("Click on Marketplace on Dashboard page {string}")
	public void click_on_Marketplace_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("Marketplace");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Marketplace link on Dashboard page" + "\n");
		System.out.println("Clicked on Marketplace link on Dashboard page" + "\n");
		Thread.sleep(3000);    
	   
	}

	@Then("Show title on Marketplace page {string}")
	public void show_title_on_Marketplace_page(String string) throws InterruptedException {
		String original = ec.getObjects("Marketplace_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on Marketplace page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on Marketplace page" + "\n");
	   
	    
	}
	
	@Then("Click on Discoverable Supplier on Dashboard page {string}")
	public void click_on_Discoverable_Supplier_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("DiscoverableSuppliers");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Discoverable Suppliers link on Dashboard page" + "\n");
		System.out.println("Clicked on Discoverable Suppliers link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on Discoverable Supplier page {string}")
	public void show_title_on_Discoverable_Supplier_page(String string)throws InterruptedException {
		String original = ec.getObjects("DiscoverableSuppliers_title");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		//wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(300);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  Discoverable Suppliers page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Discoverable Suppliers page" + "\n");
	  
	}
	
	@Then("Click on Invite Supplier on Dashboard page {string}")
	public void click_on_Invite_Supplier_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("InviteSupplier");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Invite Supplier link on Dashboard page" + "\n");
		System.out.println("Clicked on Invite Supplier link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on Invite Supplier page {string}")
	public void show_title_on_Invite_Supplier_page(String string)throws InterruptedException {
		String original = ec.getObjects("InviteSupplier_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  Invite Supplier page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Invite Supplier page" + "\n");
	  
	}
	
	@Then("Click on Manage Approvals on Dashboard page {string}")
	public void click_on_Manage_Approvals_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("ManageApprovals");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Manage Approvals link on Dashboard page" + "\n");
		System.out.println("Clicked on Manage Approvals link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on Manage Approvals page {string}")
	public void show_title_on_Manage_Approvals_page(String string)throws InterruptedException {
		String original = ec.getObjects("ManageApprovals_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  Manage Approvals page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Manage Approvals page" + "\n");
	  
	}

	@Then("Click on My Supplier Extract on Dashboard page {string}")
	public void click_on_My_Supplier_Extract_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("MySupplierExtract");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on My Supplier Extract link on Dashboard page" + "\n");
		System.out.println("Clicked on My Supplier Extract link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on My Supplier Extract page {string}")
	public void show_title_on_My_Supplier_Extract_page(String string)throws InterruptedException {
		String original = ec.getObjects("MySupplierExtracts_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  My Supplier Extract page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  My Supplier Extract page" + "\n");
	  
	}
	
	@Then("Click on Manage Contacts on Dashboard page {string}")
	public void click_on_Manage_Contacts_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("ManageContacts");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Manage Contacts link on Dashboard page" + "\n");
		System.out.println("Clicked on Manage Contacts link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on Manage Contacts page {string}")
	public void show_title_on_Manage_Contacts_Extract_page(String string)throws InterruptedException {
		String original = ec.getObjects("ManageContacts_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  Manage Contacts page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Manage Contacts page" + "\n");
	  
	}
	
	@Then("Click on Profile tab on Dashboard page {string}")
	public void click_on_Profile_tab_on_Dashboard_page(String string) throws InterruptedException {
		String original = ec.getObjects("Profile");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		Thread.sleep(3000);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);
		logger.info("Clicked on Profile tab link on Dashboard page" + "\n");
		System.out.println("Clicked on Profile tab link on Dashboard page" + "\n");
		Thread.sleep(3000);
	    
	}

	@Then("Show title on Profile tab page {string}")
	public void show_title_on_Profile_tab_Extract_page(String string)throws InterruptedException {
		String original = ec.getObjects("BasicInformation_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	    Thread.sleep(3000);
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Shows title " + " " + string + " " + "on  Profile tab page" + "\n");
		System.out.println("Shows title  " + " " + string + " " + "on  Profile tab page" + "\n");
	  
	}
	

@Then("Click on Manage Questionnaire on Dashboard page {string}")
public void click_on_Manage_Questionnaire_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("ManageQuestionnaire");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Manage Questionnaire link on Dashboard page" + "\n");
	System.out.println("Clicked on Manage Questionnaire link on Dashboard page" + "\n");
	Thread.sleep(3000);
}

@Then("Show title on Manage Questionnaire page {string}")
public void show_title_on_Manage_Questionnaire_page(String string) throws InterruptedException {
	String original = ec.getObjects("ManageQuestionnaire_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Manage Questionnaire page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Manage Questionnaire page" + "\n");
}

@Then("Click on Configure Approvals on Dashboard page {string}")
public void click_on_Configure_Approvals_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("ConfigureWorkflows");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Configure Approvals link on Dashboard page" + "\n");
	System.out.println("Clicked on Configure Approvals link on Dashboard page" + "\n");
	Thread.sleep(3000);
}

@Then("Show title on Configure Approvals page {string}")
public void show_title_on_Configure_Approvals_page(String string) throws InterruptedException {
	String original = ec.getObjects("ConfigureWorkflows_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Configure Approvals page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Configure Approvals page" + "\n");
}

@Then("Click on Manage Users on Dashboard page {string}")
public void click_on_Manage_Users_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("ManageUsers");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Manage Users link on Dashboard page" + "\n");
	System.out.println("Clicked on Manage Users link on Dashboard page" + "\n");
	Thread.sleep(3000);
}

@Then("Show title on Manage Users page {string}")
public void show_title_on_Manage_Users_page(String string) throws InterruptedException {
	String original = ec.getObjects("ManageUsers_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Manage Users page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Manage Users page" + "\n");
}



@Then("Click on SSO Configuration on Dashboard page {string}")
public void click_on_SSO_Configuration_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("SSOConfiguration");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on SSO Configuration link on Dashboard page" + "\n");
	System.out.println("Clicked on SSO Configuration link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on SSO Configuration page {string}")
public void show_title_on_SSO_Configuration_page(String string) throws InterruptedException {
	String original = ec.getObjects("SSOConfiguration_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on SSO Configuration page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on SSO Configuration page" + "\n");
}

@Then("Click on Revalidation Configuration on Dashboard page {string}")
public void click_on_Revalidation_Configuration_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("RevalidationConfiguration");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Revalidation Configuration link on Dashboard page" + "\n");
	System.out.println("Clicked on Revalidation Configuration link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on Revalidation Configuration page {string}")
public void show_title_on_Revalidation_Configuration_page(String string) throws InterruptedException {
	String original = ec.getObjects("RevalidationConfiguration_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Revalidation Configuration page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Revalidation Configuration page" + "\n");
}



@Then("Click on Password Configuration on Dashboard page {string}")
public void click_on_Password_Configuration_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("PasswordConfiguration");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Password Configuration link on Dashboard page" + "\n");
	System.out.println("Clicked on Password Configuration link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on Password Configuration page {string}")
public void show_title_on_Password_Configuration_page(String string) throws InterruptedException {
	String original = ec.getObjects("PasswordConfiguration_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Password Configuration page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Password Configuration page" + "\n");
}



@Then("Click on Bulk Upload on Dashboard page {string}")
public void click_on_Bulk_Upload_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("BulkUpload");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Bulk Upload link on Dashboard page" + "\n");
	System.out.println("Clicked on Bulk Upload link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on Bulk Upload page {string}")
public void show_title_on_Bulk_Upload_page(String string) throws InterruptedException {
	String original = ec.getObjects("BulkUpload_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Bulk Upload page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Bulk Upload page" + "\n");
}


@Then("Click on Supplier Watchlist on Dashboard page {string}")
public void click_on_Supplier_Watchlist_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("SupplierWatchlist");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Supplier Watchlist link on Dashboard page" + "\n");
	System.out.println("Clicked on Supplier Watchlist link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on Supplier Watchlist page {string}")
public void show_title_on_Supplier_Watchlist_page(String string) throws InterruptedException {
	String original = ec.getObjects("SupplierWatchlist_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Supplier Watchlist page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Supplier Watchlist page" + "\n");
}
@Then("Click on Notifications Preferences on Dashboard page {string}")
public void click_on_Notifications_Preferences_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("Notificationspreferences");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Notifications preferences link on Dashboard page" + "\n");
	System.out.println("Clicked on Notifications preferences link on Dashboard page" + "\n");
	Thread.sleep(3000);
}

@Then("Show title on Notifications Preferences page {string}")
public void show_title_on_Notifications_Preferences_page(String string) throws InterruptedException {
	String original = ec.getObjects("Notificationspreferences_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Notifications preferences page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Notifications preferences page" + "\n");
}



@Then("Click on Support on Dashboard page {string}")
public void click_on_Support_on_Dashboard_page(String string) throws InterruptedException {
	String original = ec.getObjects("Support");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	Thread.sleep(3000);
	logger.info("Clicked on Support link on Dashboard page" + "\n");
	System.out.println("Clicked on Support link on Dashboard page" + "\n");
	Thread.sleep(3000);
}
@Then("Show title on Support page {string}")
public void show_title_on_Support_page(String string) throws InterruptedException {
	String original = ec.getObjects("Support_title");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	
    Thread.sleep(3000);
	assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
	logger.info("Shows title " + " " + string + " " + "on Support page" + "\n");
	System.out.println("Shows title  " + " " + string + " " + "on Support page" + "\n");
}

@Then("Click on External Identifiers on Supplier Dashboard page {string}")
public void click_on_External_Identifiers_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("ExternalIdentifiers_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on External Identifiers tab on Dashboard page" + "\n");
	System.out.println("Clicked on External Identifiers on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier External Identifiers page")
public void show_title_on_Supplier_External_Identifiers_page(String string) {
	String original = ec.getObjects("ExternalIdentifiers_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on External Identifiers page" + "\n");
	System.out.println("Title" + string + " showing on External Identifiers page" + "\n");
    
}

@Then("Click on Management on Supplier Dashboard page {string}")
public void click_on_Management_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("Management_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Management tab on Dashboard page" + "\n");
	System.out.println("Clicked on Management on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Management page")
public void show_title_on_Supplier_Management_page(String string) {
	String original = ec.getObjects("Management_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Management page" + "\n");
	System.out.println("Title" + string + " showing on Management page" + "\n");
    
}

@Then("Click on Ownership on Supplier Dashboard page {string}")
public void click_on_Ownership_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("Ownership_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Ownership tab on Dashboard page" + "\n");
	System.out.println("Clicked on Ownership on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Ownership page")
public void show_title_on_Supplier_Ownership_page(String string) {
	String original = ec.getObjects("Ownership_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Ownership page" + "\n");
	System.out.println("Title" + string + " showing on Ownership page" + "\n");
    
}

@Then("Click on Corporate Relationship on Supplier Dashboard page {string}")
public void click_on_Corporate_Relationship_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("CorporateRelationship_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Corporate Relationship tab on Dashboard page" + "\n");
	System.out.println("Clicked on Corporate Relationship on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Corporate Relationship page")
public void show_title_on_Supplier_Corporate_Relationship_page(String string) {
	String original = ec.getObjects("CorporateRelationship_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Corporate Relationship page" + "\n");
	System.out.println("Title" + string + " showing on Corporate Relationship page" + "\n");
    
}

@Then("Click on Review and Publish on Supplier Dashboard page {string}")
public void click_on_Review_and_Publish_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("ReviewandPublish_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Review and Publish tab on Dashboard page" + "\n");
	System.out.println("Clicked on Review and Publish on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Review and Publish page")
public void show_title_on_Supplier_Review_and_Publish_page(String string) {
	String original = ec.getObjects("ReviewandPublish_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Review and Publish page" + "\n");
	System.out.println("Title" + string + " showing on Review and Publish page" + "\n");
    
}
@Then("Click on Contacts and Locations on Supplier Dashboard page {string}")
public void click_on_Contacts_and_Locations_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("ContactsandLocations_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Contacts and Locations tab on Dashboard page" + "\n");
	System.out.println("Clicked on Contacts and Locations on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Contacts and Locations page")
public void show_title_on_Supplier_Contacts_and_Locations_page(String string) {
	String original = ec.getObjects("ContactsandLocations_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Contacts and Locations page" + "\n");
	System.out.println("Title" + string + " showing on Contacts and Locations page" + "\n");
    
}
@Then("Click on Your profile on Supplier Dashboard")
public void click_on_Your_profile_on_Supplier_Dashboard() throws InterruptedException {
	String original = ec.getObjects("YourProfile_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Your profile tab on Dashboard page" + "\n");
	System.out.println("Clicked on Your profile on Dashboard page" + "\n");
	
	Thread.sleep(3000);
}


@Then("Click on Document Manager on Supplier Dashboard page {string}")
public void click_on_Document_Manager_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("DocumentManager_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Document Manager tab on Dashboard page" + "\n");
	System.out.println("Clicked on Document Manager on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Document Manager page")
public void show_title_on_Supplier_Document_Manager_page(String string) {
	String original = ec.getObjects("DocumentManager_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Document Manager page" + "\n");
	System.out.println("Title" + string + " showing on Document Manager page" + "\n");
    
}

@Then("Click on Digital Keys on Supplier Dashboard page {string}")
public void click_on_Digital_Keys_on_Supplier_Dashboard_page(String string) {
	String original = ec.getObjects("DigitalKeys_supplier");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	driver.findElement(By.xpath(original)).click();
	logger.info("Clicked on Digital Keys tab on Dashboard page" + "\n");
	System.out.println("Clicked on Digital Keys on Dashboard page" + "\n");
  
}

@Then("Show title {string} on Supplier Digital Keys page")
public void show_title_on_Supplier_Digital_Keys_page(String string) {
	String original = ec.getObjects("DigitalKeys_suppliertitle");
	String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
	wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

	assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
	logger.info("Title" + string + " showing on Digital Keys page" + "\n");
	System.out.println("Title" + string + " showing on Digital Keys page" + "\n");
    
}
@When("Click on Collapse Icon for Suppliers")
public void click_on_Collapse_Icon_for_Suppliers() 
{
	String original = ec.getObjects("collapseSuppliers");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();
	logger.info("Click on Collapse Icon for Suppliers" + "\n");
	System.out.println("Click on Collapse Icon for Suppliers" + "\n");
}
@When("Click on Collapse Icon for Suppliers page")
public void click_on_Collapse_Icon_for_Suppliers_page() 
{
	String original = ec.getObjects("collapseSupplierspage");
	String formatXPATH = String.format(original);

	WaitClass.webDriverWait(formatXPATH);

	driver.findElement(By.xpath(original)).click();
	logger.info("Click on Collapse Icon for Suppliers page" + "\n");
	System.out.println("Click on Collapse Icon for Suppliers page" + "\n");
}
}