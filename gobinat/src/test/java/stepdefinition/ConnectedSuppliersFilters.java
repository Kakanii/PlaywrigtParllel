package stepdefinition;

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.asserts.SoftAssert;

import io.cucumber.java.en.Then;
import utility.*;

public class ConnectedSuppliersFilters extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	public Miscellaneous mis = new Miscellaneous();
	ArrayList<Object> timeStamp = new ArrayList<Object>();
	WebDriverWait wait = new WebDriverWait(driver, 120);
	Actions action = new Actions(driver);
	Logger logger = Logger.getLogger(ConnectedSuppliersFilters.class);
	public String saveFilter;

	@Then("^Enter Supplier Name as \"([^\"]*)\"$")
	public void enter_Supplier_Name(String value) throws Throwable {

		String original = ec.getObjects("supplier_Name");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(value);

		logger.info("Entered " + "'" + value + "'" + " in Supplier Name field" + "\n");
		System.out.println("Entered " + "'" + value + "'" + " in Supplier Name field" + "\n");
	}
	
	@Then("Verify search results on Connected Suppliers page with {string} as {string}")
	public void verify_search_results_on_Connected_Suppliers_page_with_as(String string, String string2) 
	{
		String original = ec.getObjects("supplierName");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows supplier name in search results on Connected Suppliers page" + "\n");
		System.out.println("Shows supplier name in search results on Connected Suppliers page" + "\n");
	}

	@Then("Verify search results filtered on column {string} with {string}")
	public void verify_search_results_filtered_on_column_with(String columnHeaderName, String expectedValue) {

		String headers = ec.getObjects("connected_Suppliers_Grid_Headers_List");
		String formatXPATHHeaders = String.format(headers);

		WaitClass.webDriverWait(formatXPATHHeaders);

		List<WebElement> headerElements = driver.findElements(By.xpath(headers));

		List<String> listValues = headerElements.stream().map(s -> s.getText().trim()).collect(Collectors.toList());

		System.out.println("List of Connected Suppliers GRID Headers: " + listValues.toString());

		int columnHeaderIndexPosition = listValues.indexOf(columnHeaderName) + 1;

		String rows = ec.getObjects("connected_Suppliers_Grid_Rows_List");
		String formatXPATHRows = String.format(rows);

		WaitClass.webDriverWait(formatXPATHRows);

		List<WebElement> rowElements = driver.findElements(By.xpath(rows));

		SoftAssert softAssert = new SoftAssert();

		for (int i = 0; i < rowElements.size() - 1; i++) {

			String rowXpath = ec.getObjects("connected_Suppliers_Grid_Rows_Results");
			String formatXPATHColumnOnCurrentRow = String.format(rowXpath);

			formatXPATHColumnOnCurrentRow = formatXPATHColumnOnCurrentRow.replace("ROW_NUM", String.valueOf(i + 1))
					.replace("CURRENT_ROW_COL_NUM", String.valueOf(columnHeaderIndexPosition));

			String columnValue = driver.findElement(By.xpath(formatXPATHColumnOnCurrentRow)).getText().trim();

			softAssert.assertTrue(columnValue.toLowerCase().contains(expectedValue.toLowerCase()),
					"Grid Column Header " + columnHeaderName + " Filtered with Column Value " + expectedValue);

		}

		softAssert.assertAll();

	}

	@Then("Enter text on {string} as {string}")
	public void enter_The_Text_In_PlaceHolder_Field(String placeHolderValue, String valueToEnter) throws Throwable {

		String original = ec.getObjects("placeholder") + placeHolderValue + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		saveFilter = "Auto "+ Utils.ramndomStringGenerator(4);
		driver.findElement(By.xpath(original)).sendKeys(saveFilter);

		logger.info("Entered " + "'" + valueToEnter + "'" + " on " + placeHolderValue + " field" + "\n");
		System.out.println("Entered " + "'" + valueToEnter + "'" + " on " + placeHolderValue + " field" + "\n");

	}

	@Then("^Click on \"([^\"]*)\" button available in \"([^\"]*)\"$")
	public void click_On_Save_Button_Available_In_Save_Filter(String buttonName, String sectionName) throws Throwable {

		String original = ec.getObjects("save_Button_In_Save_Filter");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on " + "'" + buttonName + "'" + " available in " + sectionName + " Section" + "\n");
		System.out.println("Clicked on " + "'" + buttonName + "'" + " available in " + sectionName + " Section" + "\n");

	}

	@Then("Verify element {string} displayed as {string}")
	public void verify_element_displayed_Or_Not(String elementNamebasedOnText, String booleanValue) throws Exception {

		String original = ec.getObjects("element_text_Value") + saveFilter + "')]";
		String formatXPATH = String.format(original);

		boolean elementFound = false;

		try {
			wait.until(ExpectedConditions.visibilityOf(driver.findElement(By.xpath(formatXPATH))));
			elementFound = true;
		} catch (Exception e) {
			elementFound = false;
		}

		if (booleanValue.equalsIgnoreCase("true")) {
			logger.info("Is Element Displayed, Expected [" + booleanValue + "], Actual [" + elementFound + "]" + "\n");
			System.out.println(
					"Is Element Displayed, Expected [" + booleanValue + "], Actual [" + elementFound + "]" + "\n");
			assertTrue(elementFound, "Element '" + saveFilter + "' is displayed on page");
		} else {
			logger.info(
					"Is Element NOT Displayed, Expected [" + booleanValue + "], Actual [" + elementFound + "]" + "\n");
			System.out.println(
					"Is Element NOT Displayed, Expected [" + booleanValue + "], Actual [" + elementFound + "]" + "\n");
			assertFalse(elementFound, "Element '" + saveFilter + "' is NOT displayed on page");
		}

	}

	@Then("Delete saved filter {string}")
	public void delete_saved_filter(String savedFilterName) throws Exception {

		String original = ec.getObjects("saved_Filter_Delete_Icon");
		String formatXPATH = String.format(original);

		formatXPATH = formatXPATH.replace("SAVED_FILTER_NAME", saveFilter.trim());

		WaitClass.webDriverWait(formatXPATH);

		try {
			driver.findElement(By.xpath(original)).click();
		} catch (Exception e) {
			action.moveToElement(driver.findElement(By.xpath(formatXPATH))).click().build().perform();

		}

		logger.info("Clicked on Delete Icon for " + "'" + saveFilter + "'" + " Saved Filter" + "\n");
		System.out.println("Clicked on Delete Icon for " + "'" + saveFilter + "'" + " Saved Filter" + "\n");
	}

	@Then("^Close Apply Filters$")
	public void closeApplyFilters() throws Throwable {

		String original = ec.getObjects("close_Apply_Filters");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on 'X' Button for Apply Filters" + "\n");
		System.out.println("Clicked on 'X' Button for Apply Filters" + "\n");

	}

	@Then("^Enter the \"([^\"]*)\" in \"([^\"]*)\" as \"([^\"]*)\"$")
	public void enter_Text_Into_Input_Field_Based_On_Label_Name(String fieldInformation, String fieldName,
			String inputValue) throws Throwable {

		String original = ec.getObjects("inputField");
		original = original.replace("LABEL_NAME", fieldName);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(inputValue);

		logger.info("Entered " + fieldInformation + " into '" + fieldName + "' as " + inputValue + "\n");
		System.out.println("Entered " + fieldInformation + " into '" + fieldName + "' as " + inputValue + "\n");

	}
	
	@Then("Collapse dropdown {string}")
	public void close_dropdown(String dropdownName) {
		String original = ec.getObjects("collapse_Dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Closed Drop-down '"+dropdownName+"'" + "\n");
		System.out.println("Closed Drop-down '"+dropdownName+"'" + "\n");
	}

	@Then("^select on \"([^\"]*)\" dropdown as \"([^\"]*)\"$")
	public void click_And_Open_Dropdown_And_Select_Value(String dropDownName, String dropDownValueToSelect) throws Throwable {
		
		// Click and Open Drop-down
		String dropdownName = ec.getObjects("dropdown");
		String formatXPATHdropdown = String.format(dropdownName);
		
		formatXPATHdropdown = formatXPATHdropdown.replace("DROPDOWN_NAME", dropDownName);
		
		WaitClass.webDriverWait(formatXPATHdropdown);

		driver.findElement(By.xpath(formatXPATHdropdown)).click();
		
		Thread.sleep(2000);
		
		logger.info("Opened Drop-down '"+dropDownName+"'" + "\n");
		System.out.println("Opened Drop-down '"+dropDownName+"'" + "\n");
		
		//Select Option
		String dropdownToSelect = ec.getObjects("dropdown_Value_To_Select");
		String formatXPATHValueToSelect = String.format(dropdownToSelect);
		
		formatXPATHValueToSelect = formatXPATHValueToSelect.replace("DROPDOWN_NAME", dropDownName).replace("DROPDOWN_VALUE_TO_SELECT", dropDownValueToSelect);
		
		WaitClass.webDriverWait(formatXPATHValueToSelect);
		
		driver.findElement(By.xpath(formatXPATHValueToSelect)).click();
		
		logger.info("Selected Drop-down Value as '"+dropDownName+"'" + "\n");
		System.out.println("Selected Drop-down Value as '"+dropDownName+"'" + "\n");
		
		//Close/Collapse Drop-down
		String closeDropDown = ec.getObjects("collapse_Dropdown");
		String formatXPATHCloseDropDown = String.format(closeDropDown);

		WaitClass.webDriverWait(formatXPATHCloseDropDown);

		driver.findElement(By.xpath(formatXPATHCloseDropDown)).click();
		
		Thread.sleep(1000);

		logger.info("Closed Drop-down '"+dropdownName+"'" + "\n");
		System.out.println("Closed Drop-down '"+dropdownName+"'" + "\n");
		
	}

	@Then("^Open Grid Result Row (\\d+)$")
	public void click_And_Open_Grid_Row_Specified(int rowNo) throws Throwable {
		
		String original = ec.getObjects("connected_Suppliers_Grid_Rows_List");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElements(By.xpath(original)).get(rowNo).click();

		logger.info("Clicked on Row No- "+rowNo+" from Connected Suppliers Grid" + "\n");
		System.out.println("Clicked on Row No- "+rowNo+" from Connected Suppliers Grid" + "\n");
	}

	@Then("^Verify \"([^\"]*)\" role as \"([^\"]*)\" and contacts as \"([^\"]*)\"$")
	public void verifySupplierRelationshipContactsRoleAsAndContactsAs(String sectionName, String roleNameExpected, String contactNameExpected) throws Throwable {
		
		String original = ec.getObjects("relationShip_Contacts_List_Rows");
		String formatXPATH = String.format(original);
		
		boolean recordFound = false;

		WaitClass.webDriverWait(formatXPATH);

		List<WebElement> rowElements = driver.findElements(By.xpath(formatXPATH));
		
		for(int i=0; i<=rowElements.size()-1; i++) {
			String row =  formatXPATH +"["+(i+1)+"]//td";
			List<WebElement> columnElements = driver.findElements(By.xpath(row));
			
			List<String> columnValues = columnElements.stream().map(s -> s.getText()).collect(Collectors.toList());
			
			System.out.println("Row Values - "+columnValues.toString());
			
			recordFound = (columnValues.get(0).toLowerCase().contains(roleNameExpected.toLowerCase())) && ( columnValues.get(1).toLowerCase().contains(contactNameExpected.toLowerCase()));
			
			if(recordFound) {
				break;
			}
			
		}
		
		assertTrue(recordFound, "Record Identified in "+sectionName);

		logger.info(sectionName+" has Relation Ship Manager role as "+roleNameExpected+" and Contact as "+contactNameExpected+ "\n");
		System.out.println(sectionName+" has Relation Ship Manager role as "+roleNameExpected+" and Contact as "+contactNameExpected+ "\n");
		
	}
	@Then("Verify the {string} on the screen")
	public void the_on_the_screen(String apr) {
	    String original = ec.getObjects("Value1") + apr + ec.getObjects("Value2");
		String formatXPATH1 = String.format(original);

		WaitClass.webDriverWait(formatXPATH1);
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
	
		System.out.println("verified" + apr + "\n");
	}




}
