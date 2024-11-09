package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.Wait;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class Basicprofile extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(Basicprofile.class);
	
	@Then("Click on Profile Tab")
	public void click_on_Profile_Tab() throws Throwable
	{
		String original = ec.getObjects("profile");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Profile tab on Dashboard"+"\n");
		System.out.println("Click on Profile tab on Dashboard "+"\n");
		Thread.sleep(3000);
	}

	@Then("Verify the tax country value to be {string}")
	public void verify_the_tax_country_value_to_be(String string)
	{
    	String original = ec.getObjects("tax_country_value");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
    	assertTrue(driver.findElement(By.xpath(ec.getObjects("tax_country_value"))).getAttribute("Value").contains(string));
		
    	logger.info("Showing tax country as" +" "+ string + " "+ "on basic profile"+"\n"); 
    	System.out.println("Showing tax country as" +" "+ string + " "+ "on basic profile"+"\n");
	}
	
	@Then("Verify if Civil Law Partnership company is present in the drop down")
	public void verify_if_Civil_Law_Partnership_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_civil_law_partnership");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_civil_law_partnership"))).getText();
    	assertTrue(businessType.contains("Civil Law Partnership"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Corporation company is present in the drop down")
	public void verify_if_Corporation_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_corporation");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_corporation"))).getText();
    	assertTrue(businessType.contains("Corporation"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if General Partner company is present in the drop down")
	public void verify_if_General_Partner_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_general_partner");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_general_partner"))).getText();
    	assertTrue(businessType.contains("General Partner"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if General Partnership company is present in the drop down")
	public void verify_if_General_Partnership_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_gerneal_partnership");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_gerneal_partnership"))).getText();
    	assertTrue(businessType.contains("General Partnership"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if GmbH & Co. KG company is present in the drop down")
	public void verify_if_GmbH_Co_KG_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_Gmbh_cokg");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_Gmbh_cokg"))).getText();
    	assertTrue(businessType.contains("GmbH & Co. KG"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Joint Stock Company company is present in the drop down")
	public void verify_if_Joint_Stock_Company_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_jointstock");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_jointstock"))).getText();
    	assertTrue(businessType.contains("Joint Stock Company"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Limited Partnership company is present in the drop down")
	public void verify_if_Limited_Partnership_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_limited_partnership");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_limited_partnership"))).getText();
    	assertTrue(businessType.contains("Limited Partnership"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Professional Partnership company is present in the drop down for Germany")
	public void verify_if_Professional_Partnership_company_is_present_in_the_drop_down_for_Germany()
	{
    	String original = ec.getObjects("bt_professional_partnership_Germany");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_professional_partnership_Germany"))).getText();
    	assertTrue(businessType.contains("Professional Partnership"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Sole Proprietorship company is present in the drop down")
	public void verify_if_Sole_Proprietorship_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_sole_proprietorship");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_sole_proprietorship"))).getText();
    	assertTrue(businessType.contains("Sole Proprietorship"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Verify if Subsidiary company is present in the drop down")
	public void verify_if_Subsidiary_company_is_present_in_the_drop_down()
	{
    	String original = ec.getObjects("bt_subsidiary");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String businessType = driver.findElement(By.xpath(ec.getObjects("bt_subsidiary"))).getText();
    	assertTrue(businessType.contains("Subsidiary"));
		
		logger.info("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n"); 
    	System.out.println("Having company" +" "+ businessType + " "+ "in the drop down list"+"\n");
	}

	@Then("Choose {string} company present in the drop down")
	public void choose_company_present_in_the_drop_down(String string) {

    	String original = ec.getObjects("bt_select");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		Select drpCompany = new Select(driver.findElement(By.xpath(ec.getObjects("bt_select"))));
		drpCompany.selectByVisibleText(string);

		logger.info("Selected " +" "+ string + " "+ "from the drop down list"+"\n"); 
    	System.out.println("selected" +" "+ string + " "+ "from the drop down list"+"\n");
	}
	
	@Then("Click Save & Next step button")
	public void click_Save_Next_step_button()  throws Throwable
	{
		String original = ec.getObjects("btn_save_next");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("btn_save_next"))).click();

		logger.info("Clicked on the Save and Next step Button"+"\n"); 
    	System.out.println("Clicked on the Save and Next step Button"+"\n");
		Thread.sleep(3000);
	}

	@Then("Click Previous Step button to go to Basic profile page")
	public void click_Previous_Step_button_to_go_to_Basic_profile_page()  throws Throwable
	{
	    
		String original = ec.getObjects("btn_previous_step");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("btn_previous_step"))).click();

		logger.info("Clicked on the Previous step Button"+"\n"); 
    	System.out.println("Clicked on the Previous step Button"+"\n");
		Thread.sleep(3000);
	}

	@Then("Verify if the Business type is  {string} company")
	public void verify_if_the_Business_type_is_company(String string) throws Throwable
	 {
		 Thread.sleep(3000);

		String original = ec.getObjects("indialocal_buinessTypeOptions_variable") + string + "')]";
		WaitClass.webDriverWait(original);

		 assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		 logger.info("selected company" + " " + string + "\n");
		 System.out.println("selected company" + " " + string + "\n");
	 }
	
	@Then("verify if we are able to replace Commercial registration document with {string}")
	public void verify_if_we_are_able_to_replace_Commercial_registration_document_with(String string) throws Throwable 
	 {
		// Able to upload the commercial registration document based on file extension string
		logger.info(" before uploadiing" + " " + string + "\n");
		String selectedPdf = "PDF";
		String seletctedPng = "PNG";
		String selectedJpg = "JPG";
		String selectedJpeg = "JPEG";

		if (selectedPdf.equals(string)) {

			String original = ec.getObjects("bt_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("bt_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("bt_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (seletctedPng.equals(string)) {
			String original = ec.getObjects("bt_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("bt_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePNG.png";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("bt_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpg.equals(string)) {
			String original = ec.getObjects("bt_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("bt_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPG.jpg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("bt_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpeg.equals(string)) {
			String original = ec.getObjects("bt_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("bt_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPEG.jpeg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("bt_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else {
			// TODO: what to add here
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}
	}

	@Then("Verify if the {string} file exists")
	public void verify_if_the_file_exists(String string)
	{
		String original = ec.getObjects("bt_filename");
		String formatXPATH = String.format(original);
	
		WaitClass.webDriverWait(formatXPATH);
	
		String filename = driver.findElement(By.xpath(ec.getObjects("bt_filename"))).getText();
		assertTrue(filename.contains(string));
		
		logger.info("Uploaded" + " " + string + "\n");
		System.out.println("Uploaded" + " " + string + "\n");
	}
	
	@Then("Show mouseover text for Commercial Registration Document {string}")
	public void show_mouseover_text_for_Commercial_Registration_Document(String string)
	{
		String original = ec.getObjects("bt_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for Commercial Registration Document"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Commercial Registration Document"+"\n");
	}
	
	@Then("Should have the label as {string}")
	public void should_have_the_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("siret_label");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("siret_label"))).getText().contains(string));
		logger.info("Showing" +" "+ string +" " +"label on basic profile page for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label on basic profile page for France"+"\n");
	}
	

	@Then("Show error message for SIRET Number {string}")
	public void show_error_message_for_SIRET_Number(String string)
	{
		String original = ec.getObjects("required_siret");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at  SIRET Number  "+ " "+ string +" "+" on basic profile page for France"+"\n"); 
		System.out.println("Show an error message at  SIRET Number   "+ " "+ string +" "+" on basic profile page for France"+"\n");
	}
	
	
	@Then("Enter value for SIRET Number {string}")
	public void enter_value_for_SIRET_Number(String string) throws Throwable
    {
    	String original = ec.getObjects("siret_input");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(2000);
		driver.findElement(By.xpath(original)).click();
		driver.findElement(By.xpath(original)).clear();
		
		driver.findElement(By.xpath(ec.getObjects("siret_input"))).sendKeys(string);
    	logger.info("Enter Invalid text " +" "+ string +" on basic profile page for France"+"\n"); 
    	System.out.println("Enter Invalid text" +" "+ string +" on basic profile page for France"+"\n"); 
	}
	
	@Then("show error {string} at SIRET Number")
	public void show_error_atSIRET_Number(String string) throws Throwable
	{
		String original = ec.getObjects("siret_errormsg");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message "+ " "+ string +" "+" on basic profile page for France"+"\n"); 
		System.out.println("Show an error message  "+ " "+ string +" "+" on basic profile page for France"+"\n"); 
	}
	

	@Then("Show mouseover text on SIRET Number tooltip {string}")
	public void show_mouseover_text_on_SIRET_Number_tooltip(String string)
	{
		String original = ec.getObjects("tt_siret");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for SIRET Number"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for  SIRET Number"+"\n");
	}
	
	@Then("Show an error toast message {string} on basic profile page for unique SIRET number")
	public void show_an_error_toast_message_on_basic_profile_page_for_unique_SIRET_number(String string) throws Throwable 
    {    	
    	String original = ec.getObjects("toast_siret");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
    	assertTrue(driver.findElement(By.xpath(ec.getObjects("toast_siret"))).getText().contains(string));
    	logger.info("Showing toast message" +" "+ string + " "+ "basic profile page for unique SIRET number"+"\n");
    	System.out.println("Showing toast message" +" "+ string + " "+ "basic profile page for unique SIRET number"+"\n");
    	Thread.sleep(3000);
    }

	@Then("Show mouseover text on Business Incorporation Document tooltip {string}")
	public void show_mouseover_text_on_Business_Incorporation_Document_tooltip(String string)
	{
		String original = ec.getObjects("tt_businessincorp");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Business Incorporation Document"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Business Incorporation Document"+"\n");
	}
	
	@Then("verify if we are able to replace Business Incorporation Document with {string}")
	public void verify_if_we_are_able_to_replace_Business_Incorporation_Document_with(String string) throws Throwable 
	 {
		// Able to upload the SIRET Registration Document based on file extension string
		logger.info(" before uploadiing" + " " + string + "\n");
		String selectedPdf = "PDF";
		String seletctedPng = "PNG";
		String selectedJpg = "JPG";
		String selectedJpeg = "JPEG";

		if (selectedPdf.equals(string)) {

			String original = ec.getObjects("businessincorpdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("businessincorpdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("businessincorpdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (seletctedPng.equals(string)) {
			String original = ec.getObjects("businessincorpdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("businessincorpdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePNG.png";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("businessincorpdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpg.equals(string)) {
			String original = ec.getObjects("businessincorpdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("businessincorpdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPG.jpg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("businessincorpdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpeg.equals(string)) {
			String original = ec.getObjects("businessincorpdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("businessincorpdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPEG.jpeg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("businessincorpdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else {
			// TODO: what to add here
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}
	}
	
	@Then("Verify if the {string} file exists at Business Incorporation Document")
	public void verify_if_the_file_exists_at_Business_Incorporation_Document(String string)
	{
		String original = ec.getObjects("bt_filenameBID");
		String formatXPATH = String.format(original);
	
		WaitClass.webDriverWait(formatXPATH);
	
		String filename = driver.findElement(By.xpath(ec.getObjects("bt_filenameBID"))).getText();
		assertTrue(filename.contains(string));
		
		logger.info("Uploaded" + " " + string + "\n");
		System.out.println("Uploaded" + " " + string + "\n");
	}

	@Then("Should show Commercial Registration label as {string}")
	public void should_show_Commercial_Registration_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("businessincorp_label");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("businessincorp_label"))).getText().contains(string));
		logger.info("Showing" +" "+ string +" " +"label on basic profile page for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label on basic profile page for France"+"\n");
	}
	
	@Then("Should show SIRET document label as {string}")
	public void should_show_SIRET_document_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("siretdoc_label");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(ec.getObjects("siretdoc_label"))).getText().contains(string));
		logger.info("Showing" +" "+ string +" " +"label on basic profile page"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label on basic profile page"+"\n");
	}

	@Then("verify if we are able to replace SIRET Registration Document with {string}")
	public void verify_if_we_are_able_to_replace_SIRET_Registration_Document_with(String string) throws Throwable 
	 {
		// Able to upload the SIRET Registration Document based on file extension string
		logger.info(" before uploadiing" + " " + string + "\n");
		String selectedPdf = "PDF";
		String seletctedPng = "PNG";
		String selectedJpg = "JPG";
		String selectedJpeg = "JPEG";

		if (selectedPdf.equals(string)) {

			String original = ec.getObjects("siretdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("siretdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePDF.pdf";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("siretdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (seletctedPng.equals(string)) {
			String original = ec.getObjects("siretdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("siretdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/samplePNG.png";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("siretdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpg.equals(string)) {
			String original = ec.getObjects("siretdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("siretdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPG.jpg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("siretdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else if (selectedJpeg.equals(string)) {
			String original = ec.getObjects("siretdocs_uploadfile");		
			String formatXPATH = String.format(original);
		
			WaitClass.webDriverWait(formatXPATH);
			
			WebDriverWait wait = new WebDriverWait(driver, 120);
			wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(ec.getObjects("siretdocs_uploadfile"))));
			
			String workingDir = System.getProperty("user.dir");
			String filepath = workingDir + "/testdata/fileextension/sampleJPEG.jpeg";
			logger.info("filepath" + " " + filepath + "\n");
			WebElement fileInput = driver.findElement(By.xpath(ec.getObjects("siretdocs_uploadfile")));

			// Send key with path
			fileInput.sendKeys(filepath);

			 Thread.sleep(3000);
			
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}else {
			// TODO: what to add here
			 logger.info("Uploading" + " " + string + "\n");
			 System.out.println("Uploading" + " " + string + "\n");
		}
	}

	@Then("Verify if the {string} file exists at SIRET Registration Document")
	public void verify_if_the_file_exists_at_SIRET_Registration_Document(String string)
	{
		String original = ec.getObjects("siretdocs_filename");
		String formatXPATH = String.format(original);
	
		WaitClass.webDriverWait(formatXPATH);
	
		String filename = driver.findElement(By.xpath(ec.getObjects("siretdocs_filename"))).getText();
		assertTrue(filename.contains(string));
		
		logger.info("Uploaded" + " " + string + "\n");
		System.out.println("Uploaded" + " " + string + "\n");
	}
	
	@Then("Show mouseover text on SIRET Registration Document tooltip {string}")
	public void show_mouseover_text_on_SIRET_Registration_Document_tooltip(String string)
	{
		String original = ec.getObjects("tt_siretdocs");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
        System.out.println("Tool Tip: ---"+text);
        
        assertEquals(text, string);
    	logger.info(" "+ string +" "+" is a tooltip for Registration Document"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Registration Document"+"\n");
	}
	
	@Then("Verify {string} checkbox in Diversity Category")
	public void verify_checkbox_in_Diversity_Category(String DiversityTypes) {
		
		String original = ec.getObjects("label_var") + "Diversity Category" + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		String original1 = ec.getObjects("basicInfo_diversity_checkbox_var1") + DiversityTypes + ec.getObjects("label_var2");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);
	
		assertTrue(driver.findElements(By.xpath(formatXPATH1)).size() == 1);
		
		logger.info("Verified visibility of '" + DiversityTypes + "' checkbox in  Diversity Category" + "\n");
		System.out.println("Verified visibility of '" + DiversityTypes + "' checkbox in  Diversity Category" + "\n");
	}

	@Then("Verify {string} label under {string} is visible")
	public void verify_label_under_is_visible(String label, String subCat) {

		String original = ec.getObjects("label_var") + subCat + ec.getObjects("basicInfo_AI_Label_var2") + label +  ec.getObjects("label_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
	
		logger.info("Verified Visibility of label: " + label + "\n");
		System.out.println("Verified Visibility of label: " + label + "\n");
	}

	@Then("Verify {string} button under {string} is visible")
	public void verify_button_under_is_visible(String label, String subCat) {
		String original = ec.getObjects("label_var") + subCat + ec.getObjects("basicInfo_AI_Label_var2") + label + ec.getObjects("BA_readingPane_collapseBtn_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Verified Visibility of button: " + label + "\n");
		System.out.println("Verified Visibility of button:" + label + "\n");
	}

	@Then("Verify {string} button under {string} is clickable")
	public void verify_button_under_is_clickable(String label, String subCat) {

		String original = ec.getObjects("label_var") + subCat + ec.getObjects("basicInfo_AI_Label_var2") + label + ec.getObjects("BA_readingPane_collapseBtn_var2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).isEnabled();
		
		logger.info("Verified Visibility of button: " + label + "\n");
		System.out.println("Verified Visibility of button:" + label + "\n");
	}

	
	@Then("Enter data on Business Name field")
	public void enter_data_on_Business_Name_field() throws InterruptedException {
		
		String original = ec.getObjects("BusinessName_Supplier");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("BusinessName_Supplier"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("BusinessName_Supplier"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("BusinessName_Supplier"))).sendKeys("Auto User");
		logger.info("Enter valid text " + " " + "Auto Supplier" + "on   Add Company Account Modal" + "\n");
		System.out.println("Enter valid text" + " " + "Auto Supplier" + " on  Add Company Account Modal" + "\n");
		
	}

	@Then("Enter data on Legal Business Name field")
	public void enter_data_on_Legal_Business_Name_field() {
		String original = ec.getObjects("LegalBusinessName_Supplier");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("LegalBusinessName_Supplier"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("LegalBusinessName_Supplier"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("LegalBusinessName_Supplier"))).sendKeys("Testauto");
		logger.info("Enter valid text " + " " + "Test" + "on   Legal Business Name" + "\n");
		System.out.println("Enter valid text" + " " + "Test" + " on  Legal Business Name" + "\n");
	}

	@Then("Select {string} on Date Established field")
	public void select_Date_Established_field(String string) throws InterruptedException {
		
		Thread.sleep(3000);
		String original = ec.getObjects("DateEstablich_Supplier");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("Date_supplier");
		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Date" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "Date" + "\n");
	}
		
		@Then("Select {string} on Date Established")
		public void select_Date_Established(String string) throws InterruptedException {
			
			Thread.sleep(3000);
			String original = ec.getObjects("DateEstablich_Supplier");
		    String formatXPATH = String.format(original);
			WaitClass.clickableWait(formatXPATH);
			driver.findElement(By.xpath(formatXPATH)).click();
			Thread.sleep(3000);
			String original1 = ec.getObjects("DateSupplier");
			Thread.sleep(3000);
//			WebElement Element = driver.findElement(By.xpath(original1));
			String formatXPATH1 = String.format(original1);
			driver.findElement(By.xpath(formatXPATH1)).click();
//			JavascriptExecutor js = (JavascriptExecutor) driver;
//			js.executeScript("arguments[0].click();", Element);
			Thread.sleep(2000);
			logger.info("Clicked on " + "'" + string + "'" + "Date" + "\n");
			System.out.println("Clicked on " + "'" + string + "'" + "Date" + "\n");
		
	}
	

	//@Then("Select {string} on Starting month of the fiscal year field")
		//public void Select_on_Starting_month_of_the_fiscal_year_field(String string) throws Throwable {
		
		//Thread.sleep(3000);
		//String original = ec.getObjects("FiscalYear");
		//String formatXPATH = String.format(original);
		//WaitClass.clickableWait(formatXPATH);
		//driver.findElement(By.xpath(formatXPATH)).click();
		//Thread.sleep(3000);
		//String original1 = ec.getObjects("FiscalYear_month");
		//Thread.sleep(3000);
		//WebElement Element = driver.findElement(By.xpath(original1));
		//String formatXPATH1 = String.format(original1);
		//driver.findElement(By.xpath(formatXPATH1)).click();
		//JavascriptExecutor js = (JavascriptExecutor) driver;
		//js.executeScript("arguments[0].click();", Element);
		//Thread.sleep(2000);
		//logger.info("Clicked on " + "'" + string + "'" + " month" + "\n");
		//System.out.println("Clicked on " + "'" + string + "'" + " month" + "\n");
		//}

	@Then("Enter data in Description")
	public void enter_data_in_Description() {
		String original = ec.getObjects("Description");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("Description"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("Description"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("Description"))).sendKeys("Automation Supplier Description");
		logger.info("Enter valid text " + " " + "Automation Supplier Description" + "on   Legal Business Name" + "\n");
		System.out.println("Enter valid text" + " " + "Automation Supplier Description" + " on  Legal Business Name" + "\n");
	}

	@Then("Enter EIN Number on EIN field")
	public void enter_EIN_Number_on_EIN_field() {
		
		String original = ec.getObjects("EIN_Supplier");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("EIN_Supplier"))).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(ec.getObjects("EIN_Supplier"))).sendKeys(Keys.DELETE);
		String generatedString = RandomStringUtils.randomNumeric(9);
		System.out.println(generatedString);
	    String EINNumber = RandomStringUtils.randomNumeric(9);
	    driver.findElement(By.xpath(ec.getObjects("EIN_Supplier"))).sendKeys(EINNumber);
		logger.info("Entered EIN Number " + " " + "on EIN field" + "\n");
		System.out.println("Entered valid text" + " " +  "on  EIN field" + "\n");
		
	}

	@Then("Select {string} on Business Type field")
	public void select_on_Business_Type_field(String string) throws InterruptedException {
		
		Thread.sleep(3000);
		String original = ec.getObjects("Business_Type");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("BusinessType_value");
		Thread.sleep(3000);
		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + " Business Type" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "Business Type" + "\n");
		
		
	}

	@Then("Enter DUNS Number")
	public void enter_DUNS_Number() {
		String original = ec.getObjects("DUNSNumber");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("DUNSNumber"))).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(ec.getObjects("DUNSNumber"))).sendKeys(Keys.DELETE);
		String generatedString = RandomStringUtils.randomNumeric(9);
		System.out.println(generatedString);
	    String DUNSNumber = RandomStringUtils.randomNumeric(9);
	    driver.findElement(By.xpath(ec.getObjects("DUNSNumber"))).sendKeys(DUNSNumber);
		logger.info("Entered DUNS Number " + " " + "on DUNS Number field" + "\n");
		System.out.println("Entered valid Number" + " " +  "on  DUNS Number field" + "\n");
	}

	
	@Then("Select Underutilized Zone for field")
	public void select_Underutilized_Zone_for_field() throws InterruptedException {
		String original = ec.getObjects("DisadvantageYesRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

	@Then("Select {string} on Category for Underutilized Zone")
	public void select_on_Category_for_Underutilized_Zone(String string) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("DisadvantageCategoryDropdown");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("DisadvantageCategoryDropdownValue");
		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Diversity Category" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " Diversity Category" + "\n");
		Thread.sleep(3000);
	}

	@Then("Enter Phone Number on Phone Number field")
	public void enter_Phone_Number_on_Phone_Number_field() {
		String original = ec.getObjects("PrimaryPhoneNumber");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("PrimaryPhoneNumber"))).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(ec.getObjects("PrimaryPhoneNumber"))).sendKeys(Keys.DELETE);
		String generatedString = RandomStringUtils.randomNumeric(11);
		System.out.println(generatedString);
	    String PhoneNumber = RandomStringUtils.randomNumeric(11);
	    driver.findElement(By.xpath(ec.getObjects("PrimaryPhoneNumber"))).sendKeys(PhoneNumber);
		logger.info("Entered Primary Phone Number " + " " + "on Primary Phone Number field" + "\n");
		System.out.println("Entered valid Number" + " " +  "on  Primary Number field" + "\n");
	}

	@Then("Enter Fax Number on Fax Number field")
	public void enter_Fax_Number_on_Fax_Number_field() {
		String original = ec.getObjects("PrimaryFaxNumber");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("PrimaryFaxNumber"))).sendKeys(Keys.CONTROL + "a");
		driver.findElement(By.xpath(ec.getObjects("PrimaryFaxNumber"))).sendKeys(Keys.DELETE);
		String generatedString = RandomStringUtils.randomNumeric(11);
		System.out.println(generatedString);
	    String FaxNumber = RandomStringUtils.randomNumeric(11);
	    driver.findElement(By.xpath(ec.getObjects("PrimaryFaxNumber"))).sendKeys(FaxNumber);
		logger.info("Entered Primary Fax Number " + " " + "on Primary Fax Number field" + "\n");
		System.out.println("Entered valid Number" + " " +  "on  Primary Fax Number field" + "\n");
	}

	@Then("Enter Company Email on Company Email")
	public void enter_Company_Email_on_Company_Email() {
		String original = ec.getObjects("CompanyEmail");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("CompanyEmail"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("CompanyEmail"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("CompanyEmail"))).sendKeys("Automation@mailinator.com");
		logger.info("Enter valid text " + " " + "CompanyEmail" + "on  Company Email" + "\n");
		System.out.println("Enter valid text" + " " + "CompanyEmail" + " on  Company Email" + "\n");
	}

	@Then("Enter Website on Website field")
	public void enter_Website_on_Website_field() throws InterruptedException {
		String original = ec.getObjects("WebsiteEmail");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("WebsiteEmail"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("WebsiteEmail"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
	    Thread.sleep(3000);
		driver.findElement(By.xpath(ec.getObjects("WebsiteEmail"))).sendKeys("www.trustyoursupplier.com");
		logger.info("Enter valid text " + " " + "WebsiteEmail" + "on  Website Field" + "\n");
		System.out.println("Enter valid text" + " " + "WebsiteEmail" + " on  Website Field" + "\n");
	}

	@Then("Enter No of Full time employees")
	public void enter_No_of_Full_time_employees() {
		String original = ec.getObjects("NoofFullTimeEmp");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("NoofFullTimeEmp"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("NoofFullTimeEmp"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("NoofFullTimeEmp"))).sendKeys("200");
		logger.info("Enter valid text " + " " + "NoofFullTimeEmp_Buyer" + "on  No of Full time employees Field" + "\n");
		System.out.println("Enter valid text" + " " + "NoofFullTimeEmp_Buyer" + " on  No of Full time employees Field" + "\n");
	}

	@Then("Enter No of Temparary employees")
	public void enter_No_of_Temparary_employees() {
		String original = ec.getObjects("NoofPartTimeEmp");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("NoofPartTimeEmp"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("NoofPartTimeEmp"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("NoofPartTimeEmp"))).sendKeys("300");
		logger.info("Enter valid text " + " " + "NoofPartTimeEmp_Buyer" + "on  No of Part time employees Field" + "\n");
		System.out.println("Enter valid text" + " " + "NoofPartTimeEmp_Buyer" + " on  No of Part time employees Field" + "\n");
	}

	
	
	
	@Then("Select {string} from {string} on Additional Information")

	public void select_from_on_Additional_Information(String value, String SubCat) throws InterruptedException {
    String original = ec.getObjects("StockExchange");
    //String original = ec.getObjects("naicsvalue1") + SubCat + ec.getObjects("naicsvalue2");
    String dropdownValue = ec.getObjects("Value1") + value + ec.getObjects("Value2");
    String formatXPATH = String.format(original);
    String formatXPATH2 = String.format(dropdownValue);
    WaitClass.clickableWait(formatXPATH);
    driver.findElement(By.xpath(formatXPATH)).click();
    WaitClass.clickableWait(formatXPATH2);
    WebElement element = driver.findElement(By.xpath(formatXPATH2));
    JavascriptExecutor jse = (JavascriptExecutor) driver;
    jse.executeScript("arguments[0].click();", element);
//    Actions action = new Actions(driver);
//    action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().
//    build().perform();
    logger.info("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");
    System.out.println("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");
    Thread.sleep(3000);
	}
	@Then("Enter data on Stock Exchange Symbol")
	public void enter_data_on_Stock_Exchange_Symbol() throws InterruptedException {
		
		String original = ec.getObjects("StockExchangeSymbol");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(ec.getObjects("StockExchangeSymbol"))).sendKeys(Keys.CONTROL + "a");
	    driver.findElement(By.xpath(ec.getObjects("StockExchangeSymbol"))).sendKeys(Keys.DELETE);
		// driver.findElement(By.xpath(ec.getObjects("bankName"))).clear();;
		driver.findElement(By.xpath(ec.getObjects("StockExchangeSymbol"))).sendKeys("Test123");
		logger.info("Enter valid text " + " " + "Test123" + "on   Stock Exchange Symbol" + "\n");
		System.out.println("Enter valid text" + " " + "Test123" + " on  Stock Exchange Symbol" + "\n");
	}
		
	@Then("Select {string} from {string} on NAICS")

	public void select_from_on_NAICS(String value, String SubCat) throws InterruptedException {
    String original = ec.getObjects("NAICS1");
    //String original = ec.getObjects("naicsvalue1") + SubCat + ec.getObjects("naicsvalue2");
    String dropdownValue = ec.getObjects("Value1") + value + ec.getObjects("Value2");
    String formatXPATH = String.format(original);
    String formatXPATH2 = String.format(dropdownValue);
    WaitClass.clickableWait(formatXPATH);
    driver.findElement(By.xpath(formatXPATH)).click();
    WaitClass.clickableWait(formatXPATH2);
    WebElement element = driver.findElement(By.xpath(formatXPATH2));
    JavascriptExecutor jse = (JavascriptExecutor) driver;
    jse.executeScript("arguments[0].click();", element);
//    Actions action = new Actions(driver);
//    action.moveToElement(driver.findElement(By.xpath(formatXPATH2))).click().
//    build().perform();
    logger.info("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");
    System.out.println("'" + value + "'" + " is selected in " + SubCat + " dropdown" + "\n");
    Thread.sleep(3000);
	}
		
//		Thread.sleep(3000);
//		String original = ec.getObjects("StockExchange");
//	    String formatXPATH = String.format(original);
//		WaitClass.clickableWait(formatXPATH);
//		driver.findElement(By.xpath(formatXPATH)).click();
//		Thread.sleep(3000);
//		String original1 = ec.getObjects("StockExchangeValue");
//		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
//		String formatXPATH1 = String.format(original1);
//		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
//		Thread.sleep(2000);
//		logger.info("Clicked on " + "'" + string + "'" + " Stock Exchange" + "\n");
//		System.out.println("Clicked on " + "'" + string + "'" + "Stock Exchange" + "\n");
	

	@Then("Click on Save and continue button")
	public void click_on_Save_and_continue_button() throws InterruptedException {
		String original = ec.getObjects("SaveAndContinue"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}
	
	
	
	@Then("Save Draft button enable on Basic info page")
	public void Save_Draft_button_enable_on_Basic_info_page() throws Throwable {
	String original = ec.getObjects("SaveDraft_button");
	String formatXPATH = String.format(original);
	WaitClass.webDriverWait(formatXPATH);
	//wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));
	assertTrue(driver.findElement(By.xpath(original)).isEnabled());
	logger.info("Sign In button clickable on Login page" + "\n");
	System.out.println("Sign In button clickable on Login page" + "\n");
	}
	
	
	
	
	
	
	
	
	
	@Then("Show {string} tooltip is {string}")
	public void show_tooltip_is(String Label, String TTexpected) throws InterruptedException {
		
		String original = ec.getObjects("label_var") + Label + ec.getObjects("tt_var2");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);
		WebElement BusinessName = driver.findElement(By.xpath(original));
		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
		Thread.sleep(3000);
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();
		assertTrue(TTactual.contains(TTexpected.trim()));
		logger.info("Showing " + Label + " tooltip " + TTexpected + "\n");
		System.out.println("Showing " + Label + " tooltip " + TTexpected + "\n");
 
	}
	
	@Then("Click on Yes for Diversity section")
	public void click_on_Yes_for_Diversity_section() throws InterruptedException {
		String original = ec.getObjects("DiversityYesRB1"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("DiversityYesRB2"); 
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH1);
		
		driver.findElement(By.xpath(formatXPATH1)).click();
		Thread.sleep(3000);
	}
	@Then("Click on No for Diversity section")
	public void click_on_No_for_Diversity_section() throws InterruptedException {
		String original = ec.getObjects("DiversityNoRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

	@Then("Select {string} on Diversity Category field")
	public void select_Diversity_Category_field(String string) throws InterruptedException {
		
		
		
		Thread.sleep(3000);
		String original = ec.getObjects("DiversityCategoryDropdown");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("DiversityCategoryDropdownValue");
		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Diversity Category" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "Diversity Category" + "\n");
		
//		Thread.sleep(3000);
//		String original = ec.getObjects("DiversityCategoryDropdown");
//	    String formatXPATH = String.format(original);
//		WaitClass.clickableWait(formatXPATH);
//		driver.findElement(By.xpath(formatXPATH)).click();
//		Thread.sleep(3000);
//		String original1 = ec.getObjects("DiversityCategoryDropdownValue");
//		Thread.sleep(3000);
//		WebElement Element = driver.findElement(By.xpath(original1));
//		String formatXPATH1 = String.format(original1);
//		driver.findElement(By.xpath(formatXPATH1)).click();
//		JavascriptExecutor js = (JavascriptExecutor) driver;
//		js.executeScript("arguments[0].click();", Element);
//		Thread.sleep(2000);
//		logger.info("Clicked on " + "'" + string + "'" + "Diversity Category" + "\n");
//		System.out.println("Clicked on " + "'" + string + "'" + " Diversity Category" + "\n");
		
	
	}

	@Then("Select {string} on Diversity Sub-Category field")
	public void select_on_Diversity_Sub_Category_field(String string) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("DiversitySubCategoryDropdown");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("DiversitySubCategoryDropdownValue");
		Thread.sleep(3000);
		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Diversity Sub Category" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + " Diversity Sub Category" + "\n");
		Thread.sleep(3000);
		

	}

	@Then("Click on Yes for Small Business and Disadvantaged Zone Business")
	public void click_on_Yes_for_Small_Business_and_Disadvantaged_Zone_Business() throws InterruptedException {
		String original = ec.getObjects("SmallBusinessYesRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

		

	@Then("Click on No for Small Business and Disadvantaged Zone Business")
	public void click_on_No_for_Small_Business_and_Disadvantaged_Zone_Business() throws InterruptedException {
		String original = ec.getObjects("SmallBusinessNoRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}
	
	@Then("Select {string} on Small Business Category")
	public void select_Small_Business_Category(String string) throws InterruptedException {
	
		String original = ec.getObjects("SmallBusinessCategoryDropdown");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("SmallBusinessCategoryDropdownValue");
		Thread.sleep(3000);
		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Category" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "Category" + "\n");
		
	
	}
	@Then("Select {string} on Small Business SubCategory")
	public void select_Small_Business_SubCategory(String string) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("SmallBusinessSubCategoryDropdown");
	    String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
		String original1 = ec.getObjects("SmallBusinessSubCategoryDropdownValue");
		Thread.sleep(3000);
		WebElement Element = driver.findElement(By.xpath(original1));
		String formatXPATH1 = String.format(original1);
		driver.findElement(By.xpath(formatXPATH1)).click();
		JavascriptExecutor js = (JavascriptExecutor) driver;
		js.executeScript("arguments[0].click();", Element);
		Thread.sleep(2000);
		logger.info("Clicked on " + "'" + string + "'" + "Sub Category" + "\n");
		System.out.println("Clicked on " + "'" + string + "'" + "Sub Category" + "\n");
		Thread.sleep(3000);

		
	}
	@Then("Click on Yes")
	public void click_on_Yes() throws InterruptedException {
		String original = ec.getObjects("DisadvantageYesRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}
	@Then("Click on No")
	public void click_on_No() throws InterruptedException {
		String original = ec.getObjects("DisadvantageNoRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	}

	@Then("Click on Yes for Additional Information")
	public void click_on_Yes_for_Additional_Information() throws InterruptedException {
		String original = ec.getObjects("AdditionalInfoYesRB"); 
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);
	
}
	@Then("Show {string} tooltip as {string} on EIN Field")
	public void show_tooltip_as_on_EIN_Field(String string, String string2) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("EIN_Number_tooltip");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);
		WebElement BusinessName = driver.findElement(By.xpath(original));
		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
//		BusinessName.click();
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();
		assertTrue(TTactual.contains(string2.trim()));
		logger.info("Showing " + string + " tooltip " + string2 + "\n");
		System.out.println("Showing " + string + "tooltip " + string2 + "\n");
	}
	
	@Then("Show {string} tooltip {string} on Diversity Category")
	public void show_tooltip_on_Diversity_Category(String string, String string2) throws InterruptedException {
		
		
		String original = ec.getObjects("DiversityCategory_tooltip");
        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
        String formatXPATH2 = String.format(original2);
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(5000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
	}
		
//		
//		
//		Thread.sleep(3000);
//		String original = ec.getObjects("DiversityCategory_tooltip");
//		String formatXPATH = String.format(original);
//		WaitClass.webDriverWait(formatXPATH);
//		Thread.sleep(3000);
//		WebElement BusinessName = driver.findElement(By.xpath(original));
////		Actions action = new Actions(driver);
////		action.moveToElement(BusinessName).build().perform();
//		BusinessName.click();
//		String TTactual = driver.findElement(By.xpath(formatXPATH)).getText();
//		assertTrue(TTactual.contains(string2));
//		logger.info("Showing " + string + " tooltip " + string2 + "\n");
//	    System.out.println("Showing " + string + "tooltip " + string2 + "\n");
//}
	
	@Then("Show {string} tooltip is {string} on Website")
	public void show_tooltip_is_on_Website(String string, String string2) throws InterruptedException {
		
		
		String original = ec.getObjects("WebSite_tooltip");
        String original2 = ec.getObjects("Website_TP");
        String formatXPATH2 = String.format(original2);
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(5000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        
	}
	
	@Then("Show {string} tooltip {string} on Diversity Sub Category")
	public void show_tooltip_on_Diversity_Sub_Category(String string, String string2) throws InterruptedException {
		
		
		String original = ec.getObjects("DiversitySub-Category_tooltip");
        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
        String formatXPATH2 = String.format(original2);
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(3000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
	
	}
	@Then("Show {string} tooltip {string} on Small Business category")
	public void show_tooltip_on_Small_Business_category(String string, String string2) throws InterruptedException {
		
		
		String original = ec.getObjects("SmallBusinessCategory_tooltip");
        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
        String formatXPATH2 = String.format(original2);
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(5000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
	}
	
	@Then("Show {string} tooltip {string} on Small Business Sub Category")
	public void show_tooltip_on_Small_Business_Sub_Category(String string, String string2) throws InterruptedException {
		String original = ec.getObjects("SmallBusinessSubCategory_tooltip");
        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
        String formatXPATH = String.format(original);
        String formatXPATH2 = String.format(original2);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(5000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string + "' tooltip: " + string + "\n");
        System.out.println("Verified '" + string + "' tooltip: " + string + "\n");


//		String original = ec.getObjects("SmallBusinessSubCategory_Tooltop");
//        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
//        String formatXPATH2 = String.format(original2);
//        String formatXPATH = String.format(original);
//        WaitClass.clickableWait(formatXPATH);
////        WebElement BusinessName = driver.findElement(By.xpath(original));
////		Actions action = new Actions(driver);
////		action.moveToElement(BusinessName).build().perform();
//        driver.findElement(By.xpath(formatXPATH)).click();
//        Thread.sleep(5000);
//        WaitClass.clickableWait(formatXPATH2);
//        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
//        driver.findElement(By.xpath(formatXPATH)).click();
//        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
//        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
	}
	
	@Then("Show {string} tooltip {string} on DisadvantageZone category")
	public void show_tooltip_on_DisadvantageZone_category(String string, String string2) throws InterruptedException {
		
		
		String original = ec.getObjects("Disadvantage_tooltip");
        String original2 = ec.getObjects("Value1") + string2 + ec.getObjects("Value2");
        String formatXPATH2 = String.format(original2);
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        WebElement BusinessName = driver.findElement(By.xpath(original));
		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
//        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(5000);
        WaitClass.clickableWait(formatXPATH2);
        assertTrue(driver.findElement(By.xpath(formatXPATH2)).getText().contains(string2));
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Verified '" + string2 + "' tooltip: " + string2 + "\n");
        System.out.println("Verified '" + string2 + "' tooltip: " + string2 + "\n");
	}
	
	@Then("Show {string} tooltip as {string} on Tax registration field")
	public void show_tooltip_as_on_Tax_registration_field(String string, String string2) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("TaxRegistration_tooltip");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);
		WebElement BusinessName = driver.findElement(By.xpath(original));
		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
//		BusinessName.click();
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();
		assertTrue(TTactual.contains(string2.trim()));
		logger.info("Showing " + string + " tooltip " + string2 + "\n");
		System.out.println("Showing " + string + "tooltip " + string2 + "\n");
}

	@Then("Show {string} tooltip as {string} on Business Type Field")
	public void show_tooltip_as_on_Business_Type_Field(String string, String string2) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("BusinessType_tooltip");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);
		WebElement BusinessName = driver.findElement(By.xpath(original));
//		Actions action = new Actions(driver);
//		action.moveToElement(BusinessName).build().perform();
		BusinessName.click();
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();
		assertTrue(TTactual.contains(string2.trim()));
		logger.info("Showing " + string + " tooltip " + string2 + "\n");
		System.out.println("Showing " + string + "tooltip " + string2 + "\n");

	}
	@Then("Show {string} tooltip as {string} on DUNS Number Field")
	public void show_tooltip_as_on_DUNS_Number_Field(String string, String string2) throws InterruptedException {
		Thread.sleep(3000);
		String original = ec.getObjects("DUNSNumber_tooltip");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		Thread.sleep(3000);
		WebElement BusinessName = driver.findElement(By.xpath(original));
//		Actions action = new Actions(driver);
//		action.moveToElement(BusinessName).build().perform();
		BusinessName.click();
		String TTactual = driver.findElement(By.xpath(formatXPATH)).getAttribute("data-original-title").trim();
		assertTrue(TTactual.contains(string2.trim()));
		BusinessName.click();
		logger.info("Showing " + string + " tooltip " + string2 + "\n");
		System.out.println("Showing " + string + "tooltip " + string2 + "\n");
	}
}