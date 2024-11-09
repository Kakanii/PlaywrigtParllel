package utility;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import io.github.bonigarcia.wdm.WebDriverManager;

import constants.FrameworkConstants;

import org.openqa.selenium.Dimension;


public class Base 
{
	public static WebDriver driver;
	public static ChromeOptions options;
	

	//public static String Path = System.getProperty("user.dir")+ File.separator + "target" + File.separator + "File-Downloads" + File.separator + UUID.randomUUID().toString();
	//public static String Path = System.getProperty("user.dir")+ File.separator + "target" + File.separator + "File-Downloads";
	public static File folder;
	
	//public static String DownloadFolderPath  = System.getProperty("user.dir")+ File.separator + "target" + File.separator + "File-Downloads";
	public static File DownloadFolder ;

	public static ArrayList<String> selectBrowser = new ArrayList<String>();
	public static ArrayList<String> handlesList = new ArrayList<String>();
	
	public static WebDriver ChooseBrowser(String browser)
	{
		folder = new File(FrameworkConstants.getPath());
		DownloadFolder = new File(FrameworkConstants.getDownloadFolderPath());
		folder.mkdir();
		try
		{
		
			if (browser.equalsIgnoreCase("Chrome"))
			{
				WebDriverManager.chromedriver().setup();
				//System.setProperty("webdriver.chrome.driver", FrameworkConstants.getChromeDriverPath());
				options = new ChromeOptions();
				options.addArguments("enable-automation"); 
			    options.addArguments("--no-sandbox"); 
			    options.addArguments("--disable-infobars"); 
			    options.addArguments("--disable-dev-shm-usage"); 
			    options.addArguments("--disable-browser-side-navigation"); 
			    options.addArguments("--disable-gpu");
				options.addArguments("--disable-extensions");
				options.addArguments("chrome.switches", "--disable-extensions");
				options.addArguments("--test-type");
				options.addArguments("--disable-notifications");
				//options.addArguments("--disable-popup-blocking");
				options.addArguments("--disable-web-security");
				options.setExperimentalOption("useAutomationExtension", false);
				options.setPageLoadStrategy(PageLoadStrategy.NONE);
				//options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
				options.setExperimentalOption("excludeSwitches", Arrays.asList("enable-automation"));
				//options.setExperimentalOption("excludeSwitches", new String[]{"enable-automation"});
				//options.addArguments("--headless");
				// Download file 
				Map<String, Object> prefs = new HashMap<String, Object>();
				prefs.put("credentials_enable_service", false);
				prefs.put("password_manager_enabled", false);
				
				prefs.put("profile.default_content_settings.popups", 0);
				prefs.put("download.default_directory", FrameworkConstants.getPath());
				
				options.setExperimentalOption("prefs", prefs);
				
				DesiredCapabilities cap = DesiredCapabilities.chrome();
				cap.setCapability(ChromeOptions.CAPABILITY, options);
				
				driver = new ChromeDriver(options);
				driver.manage().window().maximize();
				//driver.manage().timeouts().pageLoadTimeout(120, TimeUnit.SECONDS);
				driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
				
				selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			else if(browser.equalsIgnoreCase("Firefox"))
			{
				System.setProperty("webdriver.gecko.driver", FrameworkConstants.getFirefoxDriverPath());
				System.setProperty(FirefoxDriver.SystemProperty.DRIVER_USE_MARIONETTE, "true");
				System.setProperty(FirefoxDriver.SystemProperty.BROWSER_LOGFILE, "/dev/null");
				driver = new FirefoxDriver();
				driver.manage().window().maximize();
				driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
				
				selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			else if(browser.equalsIgnoreCase("Edge"))
			{
				System.setProperty("webdriver.edge.driver", FrameworkConstants.getEdgeDriverPath());					
				EdgeOptions edgeOptions = new EdgeOptions();
				edgeOptions.setCapability("useAutomationExtension", false);
				driver = new EdgeDriver(edgeOptions);
				driver.manage().window().maximize();
				driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
				
				selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			else if(browser.equalsIgnoreCase("IE"))
			{
				DesiredCapabilities capabilities = DesiredCapabilities.internetExplorer();
				capabilities.setCapability(InternetExplorerDriver.INTRODUCE_FLAKINESS_BY_IGNORING_SECURITY_DOMAINS,true);				
				System.setProperty("webdriver.ie.driver", FrameworkConstants.getIeDriverPath());				 
				driver = new InternetExplorerDriver();
				driver.manage().window().maximize();
				driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
				
				selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			else if (browser.equalsIgnoreCase("Chromeheadless"))
			{
				WebDriverManager.chromedriver().setup();
				//System.setProperty("webdriver.chrome.driver", FrameworkConstants.getChromeDriverPath());
                options = new ChromeOptions();
                options.addArguments("disable-infobars");
                options.addArguments("--disable-extensions");
                options.addArguments("chrome.switches", "--disable-extensions");
                options.addArguments("--test-type");
                options.addArguments("--disable-notifications");
				options.addArguments("--headless");
                options.addArguments("--no-sandbox");
				options.addArguments("--window-size=1920,1080");
                options.addArguments("--disable-dev-shm-usage");
                options.addArguments("--disable-browser-side-navigation"); 
                options.addArguments("--disable-gpu");
                options.setExperimentalOption("useAutomationExtension", false);
                options.setPageLoadStrategy(PageLoadStrategy.NONE);
                options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
                //options.addArguments("--headless");
                //options.addArguments("--no-sandbox");
                //options.addArguments("--disable-dev-shm-usage");
                Map<String, Object> prefs = new HashMap<String, Object>();
                prefs.put("credentials_enable_service", false);
                prefs.put("password_manager_enabled", false);
				options.setExperimentalOption("prefs", prefs);
				
				DesiredCapabilities cap = DesiredCapabilities.chrome();
				cap.setCapability(ChromeOptions.CAPABILITY, options);
				
				driver = new ChromeDriver(options);
				// maximize the browser
				driver.manage().timeouts().implicitlyWait(12, TimeUnit.SECONDS);
				// fetching the current window size with getSize()
				System.out.println(driver.manage().window().getSize());
				//driver.manage().window().maximize();
				Dimension dimension = new Dimension(1920, 1080);
				driver.manage().window().setSize(dimension);
				System.out.println(driver.manage().window().getSize());

                driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
                driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
                
                selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			
			else if (browser.equalsIgnoreCase("ChromeheadlessJob"))
			{

				WebDriverManager.chromedriver().setup();
				//System.setProperty("webdriver.chrome.driver", FrameworkConstants.getChromedriverpathforjenkins());
                options = new ChromeOptions();
                options.addArguments("disable-infobars");
                options.addArguments("--disable-extensions");
                options.addArguments("chrome.switches", "--disable-extensions");
                options.addArguments("--test-type");
                options.addArguments("--disable-notifications");
				options.addArguments("--headless");
                options.addArguments("--no-sandbox");
				options.addArguments("--window-size=1920,1080");
                options.addArguments("--disable-dev-shm-usage");
                options.addArguments("--disable-browser-side-navigation"); 
                options.addArguments("--disable-gpu");
                options.setExperimentalOption("useAutomationExtension", false);
                options.setPageLoadStrategy(PageLoadStrategy.NONE);
                options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
                //options.addArguments("--headless");
                //options.addArguments("--no-sandbox");
                //options.addArguments("--disable-dev-shm-usage");
                Map<String, Object> prefs = new HashMap<String, Object>();
                prefs.put("credentials_enable_service", false);
                prefs.put("password_manager_enabled", false);
				options.setExperimentalOption("prefs", prefs);
				
				DesiredCapabilities cap = DesiredCapabilities.chrome();
				cap.setCapability(ChromeOptions.CAPABILITY, options);
				
				driver = new ChromeDriver(options);
				// maximize the browser
				driver.manage().timeouts().implicitlyWait(12, TimeUnit.SECONDS);
				// fetching the current window size with getSize()
				System.out.println(driver.manage().window().getSize());
				//driver.manage().window().maximize();
				Dimension dimension = new Dimension(1920, 1080);
				driver.manage().window().setSize(dimension);
				System.out.println(driver.manage().window().getSize());

                driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
                driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
                
                selectBrowser.add(0, browser);
				handlesList.add(0, driver.getWindowHandle());
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			System.out.println("Exception:--"+e.getMessage());
			
		}
		
		return driver;
		
	}

	
}
