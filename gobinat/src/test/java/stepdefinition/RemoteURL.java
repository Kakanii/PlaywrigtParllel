package stepdefinition;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.PageLoadStrategy;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.RemoteWebDriver;

import org.openqa.selenium.chrome.ChromeOptions;

public class RemoteURL {
	static WebDriver driver;
	public static ChromeOptions options;

	public static void url() throws MalformedURLException {
		String url = System.getenv("URL");
		System.setProperty("webdriver.chrome.driver", "drivers/chromedriver");
		options = new ChromeOptions();
		options.addArguments("disable-infobars");
		options.addArguments("--disable-extensions");
		options.addArguments("chrome.switches", "--disable-extensions");
		options.addArguments("--test-type");
		options.addArguments("--disable-notifications");
		options.setExperimentalOption("useAutomationExtension", false);
		options.setPageLoadStrategy(PageLoadStrategy.NONE);
		options.setExperimentalOption("excludeSwitches", Collections.singletonList("enable-automation"));
		options.addArguments("--headless");
		options.addArguments("--no-sandbox");
		options.addArguments("--disable-dev-shm-usage");
		Map<String, Object> prefs = new HashMap<String, Object>();
		prefs.put("credentials_enable_service", false);
		prefs.put("password_manager_enabled", false);
		options.setExperimentalOption("prefs", prefs);
		// driver = new ChromeDriver(options);
		driver = new RemoteWebDriver(new URL(url), options);
		driver.manage().window().maximize();
		driver.manage().timeouts().pageLoadTimeout(60, TimeUnit.SECONDS);
		driver.manage().timeouts().implicitlyWait(120, TimeUnit.SECONDS);
	}

	public static WebDriver getDriver() {
		return driver;
	}

}
