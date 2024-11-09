package constants;

import java.io.File;
import java.util.UUID;

public final class FrameworkConstants 
{
	private static final String CHROMEDRIVERPATH = System.getProperty("user.dir")+"/drivers/chromedriver.exe";
	
	private static final String FIREFOXDRIVERPATH = System.getProperty("user.dir")+"/drivers/geckodriver.exe";
	
	private static final String EDGEDRIVERPATH = System.getProperty("user.dir")+"/drivers/msedgedriver.exe";
	
	private static final String IEDRIVERPATH = System.getProperty("user.dir")+"/drivers/IEDriverServer.exe";
	
	private static final String CHROMEDRIVERPATHFORJENKINS = System.getProperty("user.dir")+"/drivers/chromedriver";	

	private static final String PATH = System.getProperty("user.dir")+ File.separator + "target" + File.separator + "File-Downloads" + File.separator + UUID.randomUUID().toString();
	
	private static final String DOWNLOADFOLDERPATH  = System.getProperty("user.dir")+ File.separator + "target" + File.separator + "File-Downloads";
	
	private static final String BULKUPLOADPATH = System.getProperty("user.dir")+ File.separator + "bulkUploads" + File.separator + UUID.randomUUID().toString();
	
	public static String getDownloadFolderPath() {
		return DOWNLOADFOLDERPATH;
	}

	public static String getChromeDriverPath() {
		return CHROMEDRIVERPATH;
	}

	public static String getFirefoxDriverPath() {
		return FIREFOXDRIVERPATH;
	}

	public static String getEdgeDriverPath() {
		return EDGEDRIVERPATH;
	}

	public static String getIeDriverPath() {
		return IEDRIVERPATH;
	}

	public static String getPath() {
		return PATH;
	}
	
	public static String getChromedriverpathforjenkins() {
		return CHROMEDRIVERPATHFORJENKINS;
	}
}
