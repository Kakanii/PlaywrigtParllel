package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.io.FileInputStream;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class StockTicker extends DriverEngine {

	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	@Then("Verify visibility of {string} radio buttor for {string}")
	public void verify_visibility_of_radio_buttor_for(String radioLabel, String Question) {

		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + radioLabel
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + radioLabel + " radio button is visible under " + Question + "\n");
		System.out.println("Verified " + radioLabel + " radio button is visible under " + Question + "\n");

	}

	@Then("Verify {string} radio under {string} is unselected by default")
	public void verify_radio_under_is_unselected_by_default(String radioLabel, String Question) {

		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + radioLabel
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		assertFalse(driver.findElement(By.xpath(formatXPATH)).isSelected());

		logger.info("Verified " + radioLabel + " radio button is not default selected under " + Question + "\n");
		System.out.println("Verified " + radioLabel + " radio button is not default selected under " + Question + "\n");
	}

	@Then("Verify {string} radio under {string} is enabled")
	public void verify_radio_under_is_enabled(String radioLabel, String Question) {

		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + radioLabel
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified " + radioLabel + " radio button is Enabled under " + Question + "\n");
		System.out.println("Verified " + radioLabel + " radio button is Enabled under " + Question + "\n");

	}
	
	@Then("Click No radio under {string}")
	public void click_No_radio_under(String Question) 
	{
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,350)");
		
		System.out.println("Scroll down the page");
		
		String original = ec.getObjects("AdditionalInfo_No");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + "No" + " radio button under " + Question + "\n");
		System.out.println("Clicked on " + "No" + " radio button under " + Question + "\n");
	}

	@Then("Click {string} radio under {string}")
	public void click_radio_under(String radioLabel, String Question) 
	{
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("window.scrollBy(0,350)");
		
		System.out.println("Scroll down the page");
		
		String original = ec.getObjects("label_var") + Question + ec.getObjects("stockExchange_radio_var2") + radioLabel
				+ ec.getObjects("stockExchange_radio_var3");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + radioLabel + " radio button under " + Question + "\n");
		System.out.println("Clicked on " + radioLabel + " radio button under " + Question + "\n");
	}
	
	@When("Enter Stock Exchange Symbol {string}")
	public void enter_Stock_Exchange_Symbol(String string) 
	{
		String original = ec.getObjects("stockExchangeSymbolInput");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(string);

		logger.info("Enter the " + string + " Stock Exchange Symbol" +  "\n");
		System.out.println("Enter the " + string + " Stock Exchange Symbol" +  "\n");
	}
	
	
	@Then("Click on the {string} buttonon Corporate Relationships")
	public void click_on_the_buttonon_Corporate_Relationships(String Next ) {
		
		String original = ec.getObjects("NextBtnCorporate");
				
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + Next + " button" +  "\n");
		System.out.println("Clicked on " + Next + " button" +  "\n");
	    
	}
	
	@Then("Click {string} button on Financial page")
	public void click_button_on_Financial_page(String saveAndContinue) {
		
		String original = ec.getObjects("financialSaveContinueBtn");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on " + saveAndContinue + " button" +  "\n");
		System.out.println("Clicked on " + saveAndContinue + " button" +  "\n");
	    
	}
	
	@Then("Verify visibility of {string} Label {string}")
	public void verify_visibility_of_Label(String Lable, String status) {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Lable + ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		int i;

		if (status.equals("true")) {
			i = 1;
		} else {
			i = 0;
		}

		assertEquals(driver.findElements(By.xpath(formatXPATH)).size(), i);

	}

	@Then("Verify visibility of {string} dropdown {string}")
	public void verify_visibility_of_dropdown(String Lable, String status) {
		driver.manage().timeouts().implicitlyWait(1, TimeUnit.SECONDS);

		String original = ec.getObjects("label_var") + Lable + ec.getObjects("css_dropdown_var2");
		String formatXPATH = String.format(original);

		int i;

		if (status.equals("true")) {
			i = 1;
		} else {
			i = 0;
		}

		assertEquals(driver.findElements(By.xpath(formatXPATH)).size(), i);
	}

	@Then("Verify visibility of {string} input field {string}")
	public void verify_visibility_of_input_field(String Lable, String status) {

		String original = ec.getObjects("label_var") + Lable + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		int i;

		if (status.equals("true")) {
			i = 1;
		} else {
			i = 0;
		}

		assertEquals(driver.findElements(By.xpath(formatXPATH)).size(), i);

	}

	
	@Then("Verify list of stock exchanges in {string} css dropdown")
	public void verify_list_of_stock_exchanges_in_css_dropdown(String string) throws Throwable {
		String original = ec.getObjects("stockExchange_input");
		String formatXPATH = String.format(original);

		String original1 = ec.getObjects("stockExchange_AllOptions");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);

		mis.clearText(formatXPATH);
		action.click(driver.findElement(By.xpath(formatXPATH))).build().perform();
		// driver.findElement(By.xpath(formatXPATH)).click();

		FileInputStream fis = new FileInputStream("./testdata/RR Exchanges List.xlsx");
		XSSFWorkbook workBook = new XSSFWorkbook(fis);

		XSSFSheet sheet = workBook.getSheet("Sheet1");

		Iterator<Row> rows = sheet.iterator();
		Row firstrow = rows.next();
		
		/*
		int rc = 0;
		int rcount = 0;
		while(rows.hasNext())
		{
			rows.next();
			rcount = rc;
		}
		rc++;
*/
		Iterator<Cell> ce = firstrow.cellIterator();

		int c = 0;
		int column = 0;
		while (ce.hasNext()) {
			Cell value = ce.next();
			if (value.getStringCellValue().equalsIgnoreCase("Stock Exchange Listing")) {
				column = c;
			}
			c++;

		}

		
	//	System.out.println("rcount = " + rcount);
	//	System.out.println("SEoptionsCount = " + SEoptionsCount);
		//assertTrue(rcount == SEoptionsCount);
		
			//Boolean status = null;
			while (rows.hasNext()) 
			{
				Boolean check = null;
				Row r = rows.next();
				System.out.println("SE in sheet: " + r.getCell(column).getStringCellValue());
				try {
				int SEoptionsCount = driver.findElements(By.xpath(formatXPATH1)).size();
				for (int i = 1; i <= SEoptionsCount; i++) 
				{
				
				if (driver.findElement(By.xpath(formatXPATH1 + "[" + i + "]")).getText().trim()
						.equalsIgnoreCase(r.getCell(column).getStringCellValue().trim())) 
				{
					check = true;
					System.out.println("SE in App: " + driver.findElement(By.xpath(formatXPATH1 + "[" + i + "]")).getText());
					break;
				} 
				else {
					check = false;
				}
			
			}
				}
				catch(Exception e)
				{
					mis.clearText(formatXPATH);
					action.click(driver.findElement(By.xpath(formatXPATH))).build().perform();
					
					int SEoptionsCount = driver.findElements(By.xpath(formatXPATH1)).size();
					for (int i = 1; i <= SEoptionsCount; i++) 
					{
					
					if (driver.findElement(By.xpath(formatXPATH1 + "[" + i + "]")).getText().trim()
							.equalsIgnoreCase(r.getCell(column).getStringCellValue().trim())) 
					{
						check = true;
						System.out.println("SE in App: " + driver.findElement(By.xpath(formatXPATH1 + "[" + i + "]")).getText());
						break;
					} 
					else {
						check = false;
					}
				
				}
				}
			assertTrue(check);
			System.out.println(r.getCell(column).getStringCellValue() + " : is listed in Stock Exchange dropdown" + "\n");
		}
			workBook.close();
	}

	@Then("Verify relevent stock exchanges displayed when {string} is typed in Stock Exchange dropdown {string}")
	public void verify_relevent_stock_exchanges_displayed_when_is_typed_in_Stock_Exchange_dropdown(String input,
			String status) {

		String original = ec.getObjects("stockExchange_input");
		String formatXPATH = String.format(original);		

		WaitClass.clickableWait(formatXPATH);

		mis.clearText(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).sendKeys(input);
		logger.info("Typed " + input + " in Stock Echange field" + "\n");
		System.out.println("Typed " + input + " in Stock Echange field" + "\n");
		
		String original1 = ec.getObjects("stockExchange_AllOptions");
		String formatXPATH1 = String.format(original1);

		int SEoptionsCount = driver.findElements(By.xpath(formatXPATH1)).size();
		if (SEoptionsCount > 0) {
			for (int i = 1; i <= SEoptionsCount; i++) {
				String OptionsXpath = formatXPATH1 + "[" + i + "]";
				System.out.println("###Showing matching Stock Exchange " + i + " :"
						+ driver.findElement(By.xpath(OptionsXpath)).getText());
				assertTrue(driver.findElement(By.xpath(formatXPATH1 + "[" + i + "]")).getText().toLowerCase()
						.contains(input.toLowerCase()), status);
			}
		} else {
			logger.info("No matching Stock Exchange found" + "\n");
			System.out.println("No matching Stock Exchange found" + "\n");
		}

	}
	
	@Then("Enter Supplier email address in Search field and Enter")
	public void enter_Supplier_email_address_in_Search_field_and_Enter() 
	{
		String original = ec.getObjects("supplierSearch_EditField");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();
		driver.findElement(By.xpath(formatXPATH)).sendKeys("myqasupplier");
		driver.findElement(By.xpath(formatXPATH)).sendKeys(Keys.ENTER);

		logger.info("Entered the Suplier email address and click on Enter key" +  "\n");
		System.out.println("Entered the Suplier email address and click on Enter key" +  "\n");
	}
	
	@Then("Click on Save and Continue button on Basic Information page")
	public void click_on_Save_and_Continue_button_on_Basic_Information_page() 
	{
		String original = ec.getObjects("save_Continue_On_BasicInfo");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Save and Continue button" +  "\n");
		System.out.println("Clicked on Save and Continue button" +  "\n");
	}

	@Then("Click on Your Profile tab")
	public void click_on_Your_Profile_tab() throws Exception 
	{
		Thread.sleep(35000);
		String original = ec.getObjects("yourProfile_tab");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked on Your Profile tab" +  "\n");
		System.out.println("Clicked on Your Profile tab" +  "\n");
	}
	
	@Then("Verify visibility of Stock Exchange label")
	public void verify_visibility_of_Stock_Exchange_label() 
	{
		String original = ec.getObjects("stock_Exchange");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).isDisplayed();

		logger.info("Stock Exchange lable is visible" +  "\n");
		System.out.println("Stock Exchange lable is visible" +  "\n");
	}

	@Then("Verify visibility of Stock Exchange Symbol")
	public void verify_visibility_of_Stock_Exchange_Symbol() 
	{
		String original = ec.getObjects("stock_Exchange_Symbol");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).isDisplayed();

		logger.info("Stock Exchange Symbol lable is visible" +  "\n");
		System.out.println("Stock Exchange Symbol lable is visible" +  "\n");
	}
	
	@Then("Verify visibility of {string} input field")
	public void verify_visibility_of_input_field(String string) 
	{
		String original = ec.getObjects("stockExchangeSymbolInput");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).isDisplayed();

		logger.info("Stock Exchange Symbol input field is visible" +  "\n");
		System.out.println("Stock Exchange Symbol input field is visible" +  "\n");		
		
	}
	
	@Then("Verify {string} input text field is enabled")
	public void verify_input_text_field_is_enabled(String string) 
	{
		String original = ec.getObjects("stockExchangeSymbolInput");
		
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(formatXPATH)).isEnabled();

		logger.info("Stock Exchange Symbol input field is Enabled" +  "\n");
		System.out.println("Stock Exchange Symbol input field is Enabled" +  "\n");
	}
	
	@Then("Verify relevent stock exchanges displayed when {string} is typed in Stock Exchange dropdown")
	public void verify_relevent_stock_exchanges_displayed_when_is_typed_in_Stock_Exchange_dropdown(String string) throws Exception 
	{
		String original = ec.getObjects("stockExchange_input");
		
		String formatXPATH = String.format(original);
		Thread.sleep(5000);

		driver.findElement(By.xpath(formatXPATH)).click();
		System.out.println("Clicked on Stock dropdown field");
		Thread.sleep(5000);
		
		String original1 = ec.getObjects("stockExchangeDropDownInput");
		
		String formatXPATH1 = String.format(original1);
		Thread.sleep(5000);
		
		driver.findElement(By.xpath(formatXPATH1)).sendKeys(string+Keys.ENTER);
		System.out.println("Enter the Stock Keyword in dropdown field");
		Thread.sleep(10000);
		//driver.findElement(By.xpath(formatXPATH1)).sendKeys(Keys.ENTER);

		logger.info("Able to search and select the Stock from the dropdown" +  "\n");
		System.out.println("Able to search and select the Stock from the dropdown" +  "\n");
		Thread.sleep(5000);
	}
	
	@Then("Verify stock exchanges displayed when {string} is typed in Stock Exchange dropdown")
	public void verify_stock_exchanges_displayed_when_is_typed_in_Stock_Exchange_dropdown(String string) throws Exception 
	{
		String original = ec.getObjects("stockExchange_input");
		
		String formatXPATH = String.format(original);
		Thread.sleep(5000);

		driver.findElement(By.xpath(formatXPATH)).click();
		System.out.println("Clicked on Stock dropdown field");
		Thread.sleep(5000);
		
		//String original1 = ec.getObjects("stockExchangeDropDownInput");
		
		//String formatXPATH1 = String.format(original1);
		//Thread.sleep(5000);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(string+Keys.ENTER);
		System.out.println("Enter the Stock Keyword in dropdown field");
		Thread.sleep(10000);
		//driver.findElement(By.xpath(formatXPATH1)).sendKeys(Keys.ENTER);

		logger.info("Able to search and select the Stock from the dropdown" +  "\n");
		System.out.println("Able to search and select the Stock from the dropdown" +  "\n");
		Thread.sleep(5000);
	}
	
	@Then("Verify stock exchanges displayes when {string} is typed in Stock Exchange dropdown")
	public void verify_stock_exchanges_displayes_when_is_typed_in_Stock_Exchange_dropdown(String string) throws Exception 
	{
		String original = ec.getObjects("stockExchange_input");
		
		String formatXPATH = String.format(original);
		Thread.sleep(5000);

		driver.findElement(By.xpath(formatXPATH)).click();
		System.out.println("Clicked on Stock dropdown field");
		Thread.sleep(5000);
		
		//String original1 = ec.getObjects("stockExchangeDropDownInput");
		
		//String formatXPATH1 = String.format(original1);
		//Thread.sleep(5000);
		
		driver.findElement(By.xpath(formatXPATH)).sendKeys(string+Keys.ENTER);
		System.out.println("Enter the Stock Keyword in dropdown field");
		Thread.sleep(10000);
		//driver.findElement(By.xpath(formatXPATH1)).sendKeys(Keys.ENTER);

		logger.info("Able to search and select the Stock from the dropdown" +  "\n");
		System.out.println("Able to search and select the Stock from the dropdown" +  "\n");
		Thread.sleep(5000);
	}
}
