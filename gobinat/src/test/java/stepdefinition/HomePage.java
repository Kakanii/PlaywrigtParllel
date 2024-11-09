package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.concurrent.TimeUnit;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchSessionException;
import org.openqa.selenium.NoSuchWindowException;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriverException;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.core.api.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.Base;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class HomePage extends DriverEngine {
	
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(HomePage.class);
	WebDriverWait wait = new WebDriverWait(driver,300);

	ArrayList<String> tabs = new ArrayList<String>();

	@After
	public void screenshot(Scenario scenario) throws Throwable 
	{		 
		
		if (scenario.isFailed())
		{
	        
	        	try {
	        		try {
		            logger.info(scenario.getName() +" "+ "is Failed");
		            System.out.println(scenario.getName() + " "+ "is Failed"+"\n");
		            System.out.println("Scenario FAILED... screen shot taken"+"\n");
		            final byte[] screenShot = ((TakesScreenshot) Base.driver).getScreenshotAs(OutputType.BYTES);
		            scenario.embed(screenShot, "image/png");
				   // publish_popup
		            driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
		            if(driver.findElements(By.xpath(ec.getObjects("modal_x_button"))).size() > 0){
					   // close it
		            	driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
					CommonStepDefs cm = new CommonStepDefs();
					cm.close_the_modal();
					// Switch to parent window
					driver.switchTo().defaultContent();
					  // Log out
					LoginPage lp = new LoginPage();
					lp.logout_from_the_system();
				   }
				   else if(driver.findElements(By.xpath(ec.getObjects("profile_btn"))).size() > 0)
				   {
					// Log out
					   driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
					LoginPage lp = new LoginPage();
					lp.logout_from_the_system();
				   }
		        	logger.info("Logout from the system"+"\n");
					System.out.println("Logout from the system"+"\n");
					
					// More than 1 tab after failure
					if (driver.getWindowHandles().size() > 1) { // 3
						driver.manage().timeouts().implicitlyWait(0, TimeUnit.SECONDS);
						System.out.println("\n" +"THERE ARE MORE THAN ONE TABS" + driver.getWindowHandles().size() + "\n"); 
						for(int i = 1;i<driver.getWindowHandles().size();) {
						 driver.close();
						 System.out.println("\n" + "Closed tab number: " + i + " on failure" + "\n");
						} 
						driver.switchTo().window(Base.handlesList.get(0));
											
				}
	        		}catch(Exception e0)
	        		{
	        			e0.printStackTrace();
	        			Base.ChooseBrowser(Base.selectBrowser.get(0).toString());
				}
			} catch (WebDriverException e)
		        {
		           e.printStackTrace();
		        }
	        }			
			
	}
	
	@Given("Open the tys login page")
	public void open_the_tys_login_page() throws Exception 
	{
		driver.get(ec.getObjects("loginurl"));
		System.out.print("Login URL---"+ec.getObjects("loginurl")+"\n");
		Thread.sleep(3000);
		logger.info("Application started" + "\n");
		System.out.println("Application started" + "\n");
	}

	@Given("Open the login page")
	public void open_the_login_page() throws Exception 
	{
		
		System.out.println("Get URL from the OS: " + System.getenv("URL"));
		
		String loginurl = System.getenv("URL");
		if(loginurl !=null)
		{
			System.out.println("Inside if loop url is not null:- " + loginurl);
			driver.get(loginurl);
		}
		else
		{
			try {
			do {
				driver.get(ec.getObjects("loginurl"));
				Thread.sleep(3000);
			}while(driver.getCurrentUrl().contains("?"));
			System.out.println("URL="+ loginurl);
			}catch(NoSuchWindowException e0) {
				Base.ChooseBrowser(Base.selectBrowser.get(0));
				driver.get(ec.getObjects("loginurl"));
				logger.info("HANDLING NoSuchWindowException & Initiating the Browser" + "\n");
				System.out.println("HANDLING NoSuchWindowException & Initiating the Browser" + "\n");
			}catch(NoSuchSessionException e1) {
				Base.ChooseBrowser(Base.selectBrowser.get(0));
				driver.get(ec.getObjects("loginurl"));
				logger.info("HANDLING NoSuchSessionException & Initiating the Browser" + "\n");
				System.out.println("HANDLING NoSuchSessionException & Initiating the Browser" + "\n");
			}
		}
		logger.info("Application started" + "\n");
		System.out.println("Application started" + "\n");
	}

	@Given("Start the application")
	public void start_the_application() throws Exception 
	{
		
		System.out.println("Get URL from the OS: " + System.getenv("URL"));
		
		String url = System.getenv("URL");
		if(url !=null)
		{
			System.out.println("Inside if loop url is not null:- " + url);
			driver.get(url);
		}
		else
		{
			try {
			do {
				driver.get(ec.getObjects("url"));
				Thread.sleep(300);
			}while(driver.getCurrentUrl().contains("?"));
			System.out.println("URL="+ url);
			}catch(NoSuchWindowException e0) {
				Base.ChooseBrowser(Base.selectBrowser.get(0));
				driver.get(ec.getObjects("url"));
				logger.info("HANDLING NoSuchWindowException & Initiating the Browser" + "\n");
				System.out.println("HANDLING NoSuchWindowException & Initiating the Browser" + "\n");
			}catch(NoSuchSessionException e1) {
				Base.ChooseBrowser(Base.selectBrowser.get(0));
				driver.get(ec.getObjects("url"));
				logger.info("HANDLING NoSuchSessionException & Initiating the Browser" + "\n");
				System.out.println("HANDLING NoSuchSessionException & Initiating the Browser" + "\n");
			}
		}
		logger.info("Application started" + "\n");
		System.out.println("Application started" + "\n");
	}

	@When("^Request Demo button visibility on Home page \"([^\"]*)\"$")
	public void request_Demo_button_visibility(String message) throws Throwable {
		String original = ec.getObjects("request_demo");
		String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	
		assertTrue(driver.findElement(By.xpath(ec.getObjects("request_demo"))).isDisplayed(), message);
	logger.info("Request Demo button visible on Home page" + "\n");
		System.out.println("Request Demo button visible on Home page" + "\n");
	}

	@And("^Request Demo button enable on Home page \"([^\"]*)\"$")
	public void request_demo_button_enable_on_home_page_something(String message) throws Throwable {
		String original = ec.getObjects("request_demo");
		String formatXPATH = String.format(original);

	//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("request_demo"))).isEnabled(), message);
	logger.info("Request Demo button clickable on Home page" + "\n");
		System.out.println("Request Demo button clickable on Home page" + "\n");
	}

	@Then("^Sign In button visibility on Home page \"([^\"]*)\"$")
	public void sign_in_button_visibility_on_home_page_something(String message) throws Throwable {
		String original = ec.getObjects("signin_link");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("signin_link"))).isDisplayed(), message);
		logger.info("Sign In button visible on Home page" + " \n");
		System.out.println("Sign In button visible on Home page" + "\n");
	}

	@And("^Sign In button enable on Home page \"([^\"]*)\"$")
	public void sign_in_button_enable_on_home_page_something(String message) throws Throwable {
		String original = ec.getObjects("signin_link");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("signin_link"))).isEnabled(), message);
		logger.info("Sign In button clickable on Home page" + "\n");
		System.out.println("Sign In button clickable on Home page" + "\n");
	}

	@When("^Click on Request Demo button$")
	public void click_on_request_demo_button() throws Throwable {
		String original = ec.getObjects("request_demo");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		driver.findElement(By.xpath(ec.getObjects("request_demo"))).click();
		logger.info("Clicked on Request Demo button on Home page" + "\n");
	System.out.println("Clicked on Request Demo button on Home page" + "\n");
	}

	@Then("^Show Request a Demo title \"([^\"]*)\"$")
	public void show_request_a_demo_title_something(String message) throws Throwable {
		String original = ec.getObjects("request_demo_title");
		String formatXPATH = String.format(original);
	
		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("request_demo_title"))).getText().contains(message));
		logger.info("Showing the title" + " " + message + "\n");
	System.out.println("Showing the title" + " " + message + "\n");

}

	@When("^Click on Sign In button$")
	public void click_on_sign_in_button() throws Throwable 
	{

		String tab0 = driver.getWindowHandle();
		tabs.add(0, tab0);
		driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
		String original = ec.getObjects("signin_link");
		String formatXPATH = String.format(original);
		
		

		System.out.println("\n" + "@@@@ Current URL after 'Start the application: " + driver.getCurrentUrl());

		int f = 5;
		for(int i = 1; i<=f; i++)
		{
			driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
			
	
			
		if(driver.findElements(By.xpath(formatXPATH)).size() == 0)
		{
			// Check for profile button size > 0
				// if modal is present > 0 then close it
					// Switch to parent window and click profilebtn and logout
			if(driver.findElements(By.xpath(ec.getObjects("profile_btn"))).size() > 0)
			{
				LoginPage loginPage = new LoginPage();
				loginPage.logout_from_the_system();
			}
			driver.get(ec.getObjects("url"));
			
		}
		else
		{
			do 
			{
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
			driver.findElement(By.xpath(formatXPATH)).click();
			System.out.println("@@@@@ Email fiend count: " + driver.findElements(By.xpath(ec.getObjects("email"))).size());
			}while(driver.findElements(By.xpath(ec.getObjects("email"))).size() == 0);
			
			break;
		}
		}
		
		
			//WaitClass.webDriverWait(original);
			//WaitClass.clickableWait(original);
		
		

		logger.info("Clicked on Sign In button on Home page" + "\n");
		System.out.println("Clicked on Sign In button on Home page" + "\n");
		Thread.sleep(15000);
	}

	@Then("^Show Welcome title \"([^\"]*)\"$")
	public void show_welcome_title_something(String message) throws Throwable {
		String original = ec.getObjects("login_title");
		String formatXPATH = String.format(original);

		//WaitClass.webDriverWait(formatXPATH);
		wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

		assertTrue(driver.findElement(By.xpath(ec.getObjects("login_title"))).getText().contains(message));
		logger.info("Showing the title" + " " + message + "on Login page" + "\n");
		System.out.println("Showing the title" + " " + message + "on Login page" + "\n");
	}

}
