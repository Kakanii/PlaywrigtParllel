package stepdefinition;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class DemoEnvironment extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger = Logger.getLogger(ProfileContacts.class);
	
	@When("Enter EmailAdress in Email Address field {string}")
	public void enter_EmailAdress_in_Email_Address_field(String string) throws Exception 
	{
		Thread.sleep(2000);
		String original = ec.getObjects("email");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);		

		logger.info("Entered data" + "'" + string + "'" + "Email Address field" + "\n");
		System.out.println("Entered data" + "'" + string + "'" + "Email Address field" + "\n");
	}
	
	@When("Enter {string} Supplier in Search field")
	public void enter_Supplier_in_Search_field(String string) throws Exception 
	{
		String original = ec.getObjects("search_connected_suppliers");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(string);
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		//driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);

		logger.info("Entered " + "'" + string + "'" + "in Search field" + "\n");
		System.out.println("Entered " + "'" + string + "'" + "in Search field" + "\n");
	}
	
	@Then("User can able to see Supplier name in search results")
	public void user_can_able_to_see_Supplier_name_in_search_results() 
	{
		String original = ec.getObjects("supplierName_Search");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		boolean value = driver.findElement(By.xpath(original)).isDisplayed();
		System.out.println("Display Result:--"+value);		

		logger.info("Shows supplier name in search results" + "\n");
		System.out.println("Shows supplier name in search results" + "\n");
	}
	
	@When("User click on the Supplier name in search results")
	public void user_click_on_the_Supplier_name_in_search_results() 
	{
		String original = ec.getObjects("supplierName_Search");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on supplier name in search results" + "\n");
		System.out.println("Clicked on supplier name in search results" + "\n");
	}

	@Then("User can see the title under Profile on Supplier Wider screen")
	public void user_can_see_the_title_under_Profile_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("company_profile_overview");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();	

		logger.info("Shows the title under profile on supplier wider screen" + "\n");
		System.out.println("Shows the title under profile on supplier wider screen" + "\n");
	}
	
	@Then("User can see Clear All link")
	public void user_can_see_Clear_All_link() 
	{
		String original = ec.getObjects("clear_all_link");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();	

		logger.info("Shows clear all link on Connected Suppliers page" + "\n");
		System.out.println("Shows clear all link on Connected Suppliers page" + "\n");
	}

	@When("Click on Clear All link")
	public void click_on_Clear_All_link() 
	{
		String original = ec.getObjects("clear_all_link");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on clear all link on Connected Suppliers page" + "\n");
		System.out.println("Clicked on clear all link on Connected Suppliers page" + "\n");
	}
	
	@When("Click on Tax Registration Document on Supplier Wider screen")
	public void click_on_Tax_Registration_Document_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("tax_reg_doc");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Tax Reg Document on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Tax Reg Document on Supplier Wider Screen" + "\n");
	}
	
	@Then("Scroll Down till the element Visible on the page")
	public void scroll_Down_till_the_element_Visible_on_the_page() 
	{
		String original = ec.getObjects("company_profile_overview");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);

		logger.info("Shows the title under profile on supplier wider screen" + "\n");
		System.out.println("Shows the title under profile on supplier wider screen" + "\n");
	}
	
	@Then("Scroll Down until {string} dimension on the page")
	public void scroll_Down_until_dimension_on_the_page(String string) throws Exception 
	{
		//Converting String into int using Integer.parseInt()  
		int i=Integer.parseInt(string);  
		//Printing value of i  
		System.out.println("Integer value:--"+i);  
		
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		//jse.executeScript("scroll(0, 500);");
		jse.executeScript("scroll(0,"+i+");");
		Thread.sleep(5000);
	}
	
	@Then("Scroll Up until dimension on the page")
	public void scroll_Up_until_dimension_on_the_page() throws Exception 
	{
		//Converting String into int using Integer.parseInt()  
		//int i=Integer.parseInt(string);  
		//Printing value of i  
		//System.out.println("Integer value:--"+i);  
		
		JavascriptExecutor jse = (JavascriptExecutor) driver;
		//jse.executeScript("scroll(0, 500);");
		jse.executeScript("scroll(0,-400);");
		Thread.sleep(2000);
	}
	
	@Then("User can see Diversity Category on Supplier Wider screen")
	public void user_can_see_Diversity_Category_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("diversity_category_value");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Diversity Category displayed on Supplier Wider Screen" + "\n");
		System.out.println("Diversity Category displayed on Supplier Wider Screen" + "\n");
	}

	@When("Click on Diversity Document on Supplier Wider screen")
	public void click_on_Diversity_Document_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("diversity_document");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Diversity Document on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Diversity Document on Supplier Wider Screen" + "\n");
	}
	
	@Then("User can see BVI Id on Supplier Wider screen")
	public void user_can_see_BVI_Id_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("bvi_id");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows BVD Id on Supplier Wider Screen" + "\n");
		System.out.println("Shows BVD Id on Supplier Wider Screen" + "\n");
	}
	
	@Then("User can see Contacts label on Supplier Wider screen")
	public void user_can_see_Contacts_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("contacts_on_supplierwider");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Contacts label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Contacts label on Supplier Wider Screen" + "\n");
	}

	@When("Click on Contact Types on Supplier Wider screen")
	public void click_on_Contact_Types_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("contact_types");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Contact Types count link on Supplier Wider Screen" + "\n");
		System.out.println("Click on Contact Types count link on Supplier Wider Screen" + "\n");
	}

	@When("Click on Close icon on Contact Type Modal")
	public void click_on_Close_icon_on_Contact_Type_Modal() 
	{
		String original = ec.getObjects("close_icon_on_contact_type");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Close Icon in Contact Type Modal on Supplier Wider Screen" + "\n");
		System.out.println("Click on Close Icon in Contact Type Modal on Supplier Wider Screen" + "\n");
	}
	
	@Then("User can see Questionnaires label on Supplier Wider screen")
	public void user_can_see_Questionnaires_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("questionnaires_on_supplierwider");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Questionnaires label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Questionnaires label on Supplier Wider Screen" + "\n");
	}

	@When("Download AntiBribery and AntiCorruption on Supplier Wider screen")
	public void download_AntiBribery_and_AntiCorruption_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_ab_ac");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
		System.out.println("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
	}
	
	@When("Download AntiBribery and AntiCorruption Question on Supplier Wider screen")
	public void download_AntiBribery_and_AntiCorruption_Question_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_ab_ac_q");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
		System.out.println("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
	}

	@When("Click on Download down arrow on Supplier Wider screen")
	public void click_on_Download_down_arrow_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_downarrow");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Download Questionnaire down arrow on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Download Questionnaire down arrow on Supplier Wider Screen" + "\n");
	}

	@When("Download Questionnaires on Supplier Wider screen")
	public void download_Questionnaires_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Questionnaires on Supplier Wider Screen" + "\n");
		System.out.println("Download Questionnaires on Supplier Wider Screen" + "\n");
	}

	@When("Download Questionnaires with Response on Supplier Wider screen")
	public void download_Questionnaires_with_Response_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_questionnaire_with_response");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Questionnaires with Response on Supplier Wider Screen" + "\n");
		System.out.println("Download Questionnaires with Response on Supplier Wider Screen" + "\n");
	}
	
	@Then("User can see Documents label on Supplier Wider screen")
	public void user_can_see_Documents_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("documents_on_supplierwider");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows document label on Supplier Wider Screen" + "\n");
		System.out.println("Shows document label on Supplier Wider Screen" + "\n"); 
	}

	@When("Click elipse icon on Supplier Wider screen")
	public void click_elipse_icon_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("documents_elipse");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on elipse icon on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on elipse icon on Supplier Wider Screen" + "\n"); 
	}

	@When("Download the document on Supplier Wider screen")
	public void download_the_document_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("documents_download_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Downloaded the document on Supplier Wider Screen" + "\n");
		System.out.println("Downloaded the document on Supplier Wider Screen" + "\n"); 
	}
	
	@Then("User can see Bank Accounts label on Supplier Wider screen")
	public void user_can_see_Bank_Accounts_label_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("bank_accounts_on_supplierwider");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Bank Accounts label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Bank Accounts label on Supplier Wider Screen" + "\n"); 
	}

	@When("Click View Details on Supplier Wider screen")
	public void click_View_Details_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("bank_accounts_view_details");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on View Details on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on View Details on Supplier Wider Screen" + "\n"); 
	}

	@Then("User can see Bank Account Information label")
	public void user_can_see_Bank_Account_Information_label() 
	{
		String original = ec.getObjects("bank_account_info_title_on_view_details");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Bank Account Information label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Bank Account Information label on Supplier Wider Screen" + "\n"); 
	}

	@When("Clic on Close button on Bank View Details window")
	public void clic_on_Close_button_on_Bank_View_Details_window() 
	{
		String original = ec.getObjects("close_button_on_view_details");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close button on View Details window" + "\n");
		System.out.println("Clicked on Close button on View Details window" + "\n"); 
	}
	
	@When("Click on Risk Insights tab")
	public void click_on_Risk_Insights_tab() 
	{
		String original = ec.getObjects("riskInsights_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Risk Insights tab on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Risk Insights tab on Supplier Wider Screen" + "\n"); 
	}	

	@When("Enter {string} in App Search field")
	public void enter_in_App_Search_field(String string) throws Exception 
	{
		//driver.switchTo().frame("iFrameResizer1");
		//System.out.println("Switched to Iframe" + "\n"); 
		
		String original = ec.getObjects("app_name_search");
		String formatXPATH = String.format(original);
		
		String original1 = ec.getObjects("clear_search_input");
		String formatXPATH1 = String.format(original1);

		WaitClass.clickableWait(formatXPATH);
		WebElement element = (WebElement) driver.findElement(By.xpath(formatXPATH1));
		if(element.isDisplayed())
		{
			driver.findElement(By.xpath(formatXPATH1)).click();
			System.out.println("Clicked on Clear Search Input button" + "\n"); 
			System.out.println("Enabled Clear Search Input button" + "\n"); 
		}
		else
		{
			System.out.println("Disabed Clear Search Input button" + "\n"); 
		}		
		Thread.sleep(5000);
		//driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);
		driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
		Thread.sleep(3000);

		logger.info("Enetered"+ string + "in App Name Search field on Supplier Wider Screen" + "\n");
		System.out.println("Enetered"+ string + "in App Name Search field on Supplier Wider Screen" + "\n"); 
	}

	@When("Expand {string} panel")
	public void expand_panel(String string) 
	{
		String original = ec.getObjects("app_expand_icon");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Expand" +string+ "panel on Supplier Wider Screen" + "\n");
		System.out.println("Expand" +string+ "panel on Supplier Wider Screen" + "\n"); 
	}
	
	@When("Expand D&B Company Information panel")
	public void expand_D_B_Company_Information_panel() 
	{
		String original = ec.getObjects("app_expand_icon_button");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Expand panel on Supplier Wider Screen" + "\n");
		System.out.println("Expand panel on Supplier Wider Screen" + "\n"); 
	}

	@Then("Shows the title Supplier IO")
	public void shows_the_title_Supplier_IO() 
	{
		String original = ec.getObjects("supplier_io_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Supplier IO title on Supplier Wider Screen" + "\n");
		System.out.println("Shows Supplier IO title on Supplier Wider Screen" + "\n"); 
	}

	@Then("Shows Contact Details title for {string}")
	public void shows_Contact_Details_title_for(String string) 
	{
		String original = ec.getObjects("contact_details_supplier_io");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Contact Details label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Contact Details label on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for KYC SiteScan")
	public void shows_the_title_for_KYC_SiteScan() 
	{
		String original = ec.getObjects("kycsite_scan_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows KYC SiteScan title on Supplier Wider Screen" + "\n");
		System.out.println("Shows KYC SiteScan title on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for GDC")
	public void shows_the_title_for_GDC() 
	{
		String original = ec.getObjects("gdc_scan_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows GDC title on Supplier Wider Screen" + "\n");
		System.out.println("Shows GDC title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Request Data Verification button")
	public void shows_Request_Data_Verification_button() 
	{
		String original = ec.getObjects("gdc_req_data_verify_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Request Data Verify button on Supplier Wider Screen" + "\n");
		System.out.println("Shows Request Data Verify button on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for ComplyAdvantage")
	public void shows_the_title_for_ComplyAdvantage() 
	{
		String original = ec.getObjects("comply_adv_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows ComplyAdvantage title on Supplier Wider Screen" + "\n");
		System.out.println("Shows ComplyAdvantage title on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows request screening button")
	public void shows_request_screening_button() 
	{
		String original = ec.getObjects("comply_adv_org_result_rs");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows request screening button" + "\n");
		System.out.println("Shows request screening button" + "\n");
	}

	@Then("Shows Organization Results tab")
	public void shows_Organization_Results_tab() 
	{
		String original = ec.getObjects("comply_adv_org_result");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Organization Results tab on Supplier Wider Screen" + "\n");
		System.out.println("Shows Organization Results tab on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for RapidRatings")
	public void shows_the_title_for_RapidRatings() 
	{
		String original = ec.getObjects("rapid_rating_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows RapidRatings title on Supplier Wider Screen" + "\n");
		System.out.println("Shows RapidRatings title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Risk Level Label")
	public void shows_Risk_Level_Label() 
	{
		String original = ec.getObjects("rapid_rating_frh_metrics_result");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows FRH Metrics title on Supplier Wider Screen" + "\n");
		System.out.println("Shows FRH Metrics title on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for Consolidated Screening List")
	public void shows_the_title_for_Consolidated_Screening_List() 
	{
		String original = ec.getObjects("csl_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows CSL title on Supplier Wider Screen" + "\n");
		System.out.println("Shows CSL title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Business name match category")
	public void shows_Business_name_match_category() 
	{
		String original = ec.getObjects("csl_business_name_match");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows CSL Business name match category on Supplier Wider Screen" + "\n");
		System.out.println("Shows CSL Business name match category on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for Dun & Bradstreet Supplier Risk Assessment")
	public void shows_the_title_for_Dun_Bradstreet_Supplier_Risk_Assessment() 
	{
		String original = ec.getObjects("duns_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Duns title on Supplier Wider Screen" + "\n");
		System.out.println("Shows Duns title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Fiserv Solutions label")
	public void shows_Fiserv_Solutions_label() 
	{
		String original = ec.getObjects("fiserve_sol");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Fiserve label on Supplier Wider Screen" + "\n");
		System.out.println("Shows Fiserve label on Supplier Wider Screen" + "\n");
	}
	
	@Then("Shows the title for EcoVadis - Sustainability Badge")
	public void shows_the_title_for_EcoVadis_Sustainability_Badge() 
	{
		String original = ec.getObjects("eco_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Echovadis title on Supplier Wider Screen" + "\n");
		System.out.println("Shows Echovadis title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows View Score Card link")
	public void shows_View_Score_Card_link() 
	{
		String original = ec.getObjects("ecovadis_view_score_card");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		boolean vscore = driver.findElement(By.xpath(original)).isDisplayed();
		System.out.println(vscore);
		if(vscore==true)
		{
			logger.info("Shows echovadis view score card label on Supplier Wider Screen" + "\n");
			System.out.println("Shows echovadis view score card label on Supplier Wider Screen" + "\n");
		}
		else
		{
			String original1 = ec.getObjects("ecovadis_error");
			String formatXPATH1 = String.format(original1);
			String errormessage = driver.findElement(By.xpath(formatXPATH1)).getText();
			System.out.println("Error Message:---"+errormessage + "\n");
			logger.info("Error Message:---"+errormessage + "\n");
			
		}	
		
	}
	
	@When("Expand Moodys POD panel")
	public void expand_Moodys_POD_panel() 
	{
		String original = ec.getObjects("expand_moodys_pod_app");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Expand POD panel on Supplier Wider Screen" + "\n");
		System.out.println("Expand POD panel on Supplier Wider Screen" + "\n");
	}

	@Then("Shows the title for Moodys - Probability Of Default app")
	public void shows_the_title_for_Moodys_Probability_Of_Default_app() 
	{
		String original = ec.getObjects("moodys_pod_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Moody's POD title on Supplier Wider Screen" + "\n");
		System.out.println("Shows Moody's POD title on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Probability of Default label")
	public void shows_Probability_of_Default_label() 
	{
		String original = ec.getObjects("moodys_pod_pro_def");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Moody's POD Probability Defination on Supplier Wider Screen" + "\n");
		System.out.println("Shows Moody's POD Probability Defination on Supplier Wider Screen" + "\n");
	}
	
	@When("Click on Action Center tab")
	public void click_on_Action_Center_tab() 
	{
		String original = ec.getObjects("action_center_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Action Ceter tab on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Action Ceter tab on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Approval Requests title")
	public void shows_Approval_Requests_title() 
	{
		String original = ec.getObjects("ac_approval_req_label");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Approval Request label under Action Center on Supplier Wider Screen" + "\n");
		System.out.println("Shows Approval Request label under Action Center on Supplier Wider Screen" + "\n");
	}

	@When("Click on first Approval under Approval Request section")
	public void click_on_first_Approval_under_Approval_Request_section() 
	{
		String original = ec.getObjects("ac_approval_first_row");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on first approval under Action Center on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on first approval under Action Center on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Approval Details page of selected approval request")
	public void shows_Approval_Details_page_of_selected_approval_request() 
	{
		String original = ec.getObjects("ac_approval_details_for_first_row");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Approval Details page of selected approval under Action Center on Supplier Wider Screen" + "\n");
		System.out.println("Shows Approval Details page of selected approval under Action Center on Supplier Wider Screen" + "\n");
	}
	
	@When("Click on Notifications tab")
	public void click_on_Notifications_tab() 
	{
		String original = ec.getObjects("notifications_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Notification Tab on Supplier Wider Screen" + "\n");
		System.out.println("Clicked on Notification Tab on Supplier Wider Screen" + "\n");
	}

	@Then("Shows Notifications title")
	public void shows_Notifications_title() 
	{
		String original = ec.getObjects("notifi_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Notification Tab under Notifications on Supplier Wider Screen" + "\n");
		System.out.println("Shows Notification Tab under Notifications on Supplier Wider Screen" + "\n");
	}
	@Then("Shows Onboaded label")
	public void shows_Onboaded_label() 
	{
		String original = ec.getObjects("discover_obboard_label");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Onboard label on Discover Supplier page" + "\n");
		System.out.println("Shows Onboard label on Discover Supplier page" + "\n");
	}
	
	@When("Click on Manage Approvals tab")
	public void click_on_Manage_Approvals_tab() 
	{
		String original = ec.getObjects("manage_approvals_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Manage Approvals tab" + "\n");
		System.out.println("Clicked on Manage Approvals tab" + "\n");
	}

	@Then("Shows Manage Approvals title on Manage Approvals page")
	public void shows_Manage_Approvals_title_on_Manage_Approvals_page() 
	{
		String original = ec.getObjects("manage_approvals_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show the title on Manage Approvals page" + "\n");
		System.out.println("Show the title on Manage Approvals page" + "\n");
	}
	
	@Then("Shows Manage Approvals title on Manage Approvals screen")
	public void shows_Manage_Approvals_title_on_Manage_Approvals_screen() 
	{
		String original = ec.getObjects("manage_approvals_title_name");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Show the title on Manage Approvals page" + "\n");
		System.out.println("Show the title on Manage Approvals page" + "\n");
	}

	@When("Click on first approval record on Manage Approvals page")
	public void click_on_first_approval_record_on_Manage_Approvals_page() 
	{
		String original = ec.getObjects("manage_approvals_first_approval");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on first approval on Manage Approvals page" + "\n");
		System.out.println("Clicked on first approval on Manage Approvals page" + "\n");
	}
	
	@When("Click on Manage Contacts tab")
	public void click_on_Manage_Contacts_tab() 
	{
		String original = ec.getObjects("manage_contacts_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Manage Contacts Tab" + "\n");
		System.out.println("Clicked on Manage Contacts Tab" + "\n");
	}

	@Then("Shows Manage Contacts title on Manage Contacts screen")
	public void shows_Manage_Contacts_title_on_Manage_Contacts_screen() 
	{
		String original = ec.getObjects("manage_contacts_title_name");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Manage Contacts title on Manage Contacts page" + "\n");
		System.out.println("Shows Manage Contacts title on Manage Contacts page" + "\n");
	}
	
	@When("Expand Admin Actions Tab")
	public void expand_Admin_Actions_Tab() 
	{
		String original = ec.getObjects("expand_admin_actions_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Expand Admin Actions" + "\n");
		System.out.println("Expand Admin Actions" + "\n");
	}

	@When("Click on Configure link on Manage Questionnaire page")
	public void click_on_Configure_link_on_Manage_Questionnaire_page() 
	{
		String original = ec.getObjects("mq_configure_link");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Configure link on Manage Questionnaires page" + "\n");
		System.out.println("Clicked on Configure link on Manage Questionnaires page" + "\n");
	}

	@Then("Shows Configure Scroring title")
	public void shows_Configure_Scroring_title() 
	{
		String original = ec.getObjects("configure_score_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Configure Scoring title" + "\n");
		System.out.println("Shows Configure Scoring title" + "\n");
	}
	
	@When("Click on Configure Workflows tab")
	public void click_on_Configure_Workflows_tab() 
	{
		String original = ec.getObjects("configure_workflows_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Configure Workflows tab" + "\n");
		System.out.println("Clicked on Configure Workflows tab" + "\n");
	}
	
	@Then("Shows Configure Workflows title")
	public void shows_Configure_Workflows_title() 
	{
		String original = ec.getObjects("configure_workflows_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Configure Workflows title" + "\n");
		System.out.println("Shows Configure Workflows title" + "\n");
	}

	@When("Click on Add Approvals button on Configure Approvals page")
	public void click_on_Add_Approvals_button_on_Configure_Approvals_page() 
	{
		String original = ec.getObjects("add_approvals_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add Approvals button" + "\n");
		System.out.println("Clicked on Add Approvals button" + "\n");
	}
	
	@When("Click on Revalidation Configuration tab")
	public void click_on_Revalidation_Configuration_tab() 
	{
		String original = ec.getObjects("revalidation_config_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Revalidation Configuration tab" + "\n");
		System.out.println("Clicked on Revalidation Configuration tab" + "\n");
	}

	@Then("Shows Revalidation Configuration title")
	public void shows_Revalidation_Configuration_title() 
	{
		String original = ec.getObjects("revalidation_config_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Shows Revalidation Configuration title" + "\n");
		System.out.println("Shows Revalidation Configuration title" + "\n");
	}
	@Then("Shows Create Periodic Revalidation button")
	public void shows_Create_Periodic_Revalidation_button() 
	{
		String original = ec.getObjects("create_periodic_revalidation_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Shows Create Periodic Revalidation button" + "\n");
		System.out.println("Shows Create Periodic Revalidation button" + "\n");
	}
	
	@When("Click on Marketplace tab")
	public void click_on_Marketplace_tab() 
	{
		String original = ec.getObjects("market_place_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Marketplace tab" + "\n");
		System.out.println("Clicked on Marketplace tab" + "\n");
	}

	@Then("Shows Marketplace title")
	public void shows_Marketplace_title() 
	{
		String original = ec.getObjects("market_place_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Marketplace title" + "\n");
		System.out.println("Shows Marketplace title" + "\n");
	}

	@When("Enter App name in search field")
	public void enter_App_name_in_search_field() 
	{
		String original = ec.getObjects("market_place_app_search");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).sendKeys("Moody’s - Key Information");

		logger.info("Shows Marketplace title" + "\n");
		System.out.println("Shows Marketplace title" + "\n");
	}

	@When("Select App from search results")
	public void select_App_from_search_results() 
	{
		String original = ec.getObjects("market_place_app_select");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Select the app from search results" + "\n");
		System.out.println("Select the app from search results" + "\n");
	}

	@When("Click on the App on Marketplace page")
	public void click_on_the_App_on_Marketplace_page() 
	{
		String original = ec.getObjects("market_place_app_logo");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the app" + "\n");
		System.out.println("Clicked on the app" + "\n");
	}

	@Then("Shows App details page")
	public void shows_App_details_page() 
	{
		String original = ec.getObjects("market_place_cate");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Marketplace Category page" + "\n");
		System.out.println("Shows Marketplace Category page" + "\n");
	}

	@When("Click on Access tab on App details page")
	public void click_on_Access_tab_on_App_details_page() 
	{
		String original = ec.getObjects("market_place_access_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the Access tab on app details page" + "\n");
		System.out.println("Clicked on the Access tab on app details page" + "\n");
	}

	@When("Click on App Configurations button")
	public void click_on_App_Configurations_button() 
	{
		String original = ec.getObjects("market_place_app_config");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on the app configuration button on app details page" + "\n");
		System.out.println("Clicked on the app configuration button on app details page" + "\n");
	}

	@Then("Shows App Configurations settings page")
	public void shows_App_Configurations_settings_page() 
	{
		String original = ec.getObjects("market_place_settings_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows settings title" + "\n");
		System.out.println("Shows settings title" + "\n");
	}
	
	@When("Click on Workflow down arrow")
	public void click_on_Workflow_down_arrow() 
	{
		String original = ec.getObjects("workflow_down_arrow");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Workflow down arrow" + "\n");
		System.out.println("Clicked on Workflow down arrow" + "\n");
	}

	@Then("Shows Approval Requests under Workflows dropdown")
	public void shows_Approval_Requests_under_Workflows_dropdown() 
	{
		String original = ec.getObjects("workflow_approval_request");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Approval Requests under Workflows dropdown" + "\n");
		System.out.println("Shows Approval Requests under Workflows dropdown" + "\n");
	}

	@Then("Shows Dependednt Questionnaire under Workflows dropdown")
	public void shows_Dependednt_Questionnaire_under_Workflows_dropdown() 
	{
		String original = ec.getObjects("workflow_dependent_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows Dependednt Questionnaire under Workflows dropdown" + "\n");
		System.out.println("Shows Dependednt Questionnaire under Workflows dropdown" + "\n");
	}

	@When("Click on Approval Requests under Workflows dropdown")
	public void click_on_Approval_Requests_under_Workflows_dropdown() 
	{
		String original = ec.getObjects("workflow_approval_request");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Approval Requests under Workflows dropdown" + "\n");
		System.out.println("Clicked on Approval Requests under Workflows dropdown" + "\n");
	}

	@Then("Shows the title on Approval Requests page")
	public void shows_the_title_on_Approval_Requests_page() 
	{  
		String original = ec.getObjects("automotive_industry_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows the title on Approval Requests page" + "\n");
		System.out.println("Shows the title on Approval Requests page" + "\n");
	}
	
	@When("Click on Dependednt Questionnaire under Workflows dropdown")
	public void click_on_Dependednt_Questionnaire_under_Workflows_dropdown() 
	{
		String original = ec.getObjects("workflow_dependent_questionnaire");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Click on Dependednt Questionnaire under Workflows dropdown" + "\n");
		System.out.println("Click on Dependednt Questionnaire under Workflows dropdown" + "\n");
	}

	@Then("Shows the title on Configure Dependent Questionnaire page")
	public void shows_the_title_on_Configure_Dependent_Questionnaire_page() 
	{
		String original = ec.getObjects("config_dependent_questionnaire_title");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).isDisplayed();

		logger.info("Shows the title on Configure Dependent Questionnaire page" + "\n");
		System.out.println("Shows the title on Configure Dependent Questionnaire page" + "\n");
	}
	
	@When("Click Back button")
	public void click_back_btn() 
	{
		String original = ec.getObjects("back_btn_arrow");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Clicked on back arrow" + "\n");
		System.out.println("Clicked on back arrow" + "\n");
	}
	
	@When("Click on Questionnaire Type All")
	public void click_on_Questionnaire_Type_All() 
	{
		String original = ec.getObjects("questionnaire_type_all");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		logger.info("Click on Questionnaire Type All" + "\n");
		System.out.println("Click on Questionnaire Type All" + "\n");
	}
	
	@Then("Shows the title for Moodys - Key Information")
	public void shows_the_title_for_Moodys_Key_Information() 
	{
		String original = ec.getObjects("moodys_key_information");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		logger.info("Shows the title for Moodys - Key Information" + "\n");
		System.out.println("Shows the title for Moodys - Key Information" + "\n");
	}

	@Then("Shows Supplier name in app panel under Risk Informaiton")
	public void shows_Supplier_name_in_app_panel_under_Risk_Informaiton() 
	{
		String original = ec.getObjects("riskInfo_supplier_name");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Supplier name in app panel under Risk Informaiton" + "\n");
		System.out.println("Shows Supplier name in app panel under Risk Informaiton" + "\n");
	}
	
	@Then("Shows the Supplier name in app panel under Risk Informaiton")
	public void shows_the_Supplier_name_in_app_panel_under_Risk_Informaiton() 
	{
		String original = ec.getObjects("riskInfo_supplier_name_stage");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the Supplier name in app panel under Risk Informaiton" + "\n");
		System.out.println("Shows the Supplier name in app panel under Risk Informaiton" + "\n");
	}
	
	@Then("Shows the title for Moodys - ESG Risk Review")
	public void shows_the_title_for_Moodys_ESG_Risk_Review() 
	{
		String original = ec.getObjects("moodys_esg_risk_review");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for Moodys - ESG Risk Review" + "\n");
		System.out.println("Shows the title for Moodys - ESG Risk Review" + "\n");
	}

	@Then("Shows ESG predicted score title in app panel")
	public void shows_ESG_predicted_score_title_in_app_panel() 
	{
		String original = ec.getObjects("esg_predicted_score_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows ESG predicted score title in app panel" + "\n");
		System.out.println("Shows ESG predicted score title in app panel" + "\n");
	}
	
	@Then("Shows Probability of Default title in app panel")
	public void shows_Probability_of_Default_title_in_app_panel() 
	{    
		String original = ec.getObjects("moodys_pod_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Probability of Default title in app panel" + "\n");
		System.out.println("Shows Probability of Default title in app panel" + "\n");
	}
	
	@Then("Shows the title for Moodys Ownership app")
	public void shows_the_title_for_Moodys_Ownership_app() 
	{
		String original = ec.getObjects("moodys_ownership_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for Moodys Ownership app" + "\n");
		System.out.println("Shows the title for Moodys Ownership app" + "\n");
	}

	@Then("Shows Supplier name in app panel")
	public void shows_Supplier_name_in_app_panel() 
	{
		String original = ec.getObjects("moodys_ownership_under_global");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Supplier name in app panel" + "\n");
		System.out.println("Shows Supplier name in app panel" + "\n");
	}
	
	@Then("Shows the title for Moodys Cyber risk rating by BitSight app")
	public void shows_the_title_for_Moodys_Cyber_risk_rating_by_BitSight_app() 
	{
		String original = ec.getObjects("moodys_cyber_risk_rating_by_bitsight");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for Moodys Cyber risk rating by BitSight app" + "\n");
		System.out.println("Shows the title for Moodys Cyber risk rating by BitSight app" + "\n");
	}

	@Then("Shows Cyber risk rating by BitSight title in app panel")
	public void shows_Cyber_risk_rating_by_BitSight_title_in_app_panel() 
	{
		String original = ec.getObjects("cyber_risk_rating_by_risk");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Cyber risk rating by BitSight title in app panel" + "\n");
		System.out.println("Shows Cyber risk rating by BitSight title in app panel" + "\n");
	}
	
	@Then("Shows the title for EcoVadis IQ Badge")
	public void shows_the_title_for_EcoVadis_IQ_Badge() 
	{    
		String original = ec.getObjects("ecovadis_iq_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for EcoVadis IQ Badge" + "\n");
		System.out.println("Shows the title for EcoVadis IQ Badge" + "\n");
	}
	
	@Then("Shows the Country Theme Risks")
	public void shows_the_Country_Theme_Risks() 
	{
		String original = ec.getObjects("ecovadis_iq_info_theme");
		String formatXPATH = String.format(original);
		
		boolean theme = driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		System.out.println(theme);
		if(theme==true)
		{
			logger.info("Shows the Country Theme Risks" + "\n");
			System.out.println("Shows the Country Theme Risks" + "\n");
		}
		else
		{
			String original1 = ec.getObjects("ecovadis_error");
			String formatXPATH1 = String.format(original1);
			String errormessage = driver.findElement(By.xpath(formatXPATH1)).getText();
			System.out.println("Error Message:---"+errormessage + "\n");
			logger.info("Error Message:---"+errormessage + "\n");
			
		}		
		
	}
	
	@Then("Shows Country Theme Risks")
	public void shows_Country_Theme_Risks() 
	{
		String original = ec.getObjects("ecovadis_iq_info");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Country Theme Risks" + "\n");
		System.out.println("Shows Country Theme Risks" + "\n");
	}
	
	@Then("Shows the title for D&B - Company Information app")
	public void shows_the_title_for_D_B_Company_Information_app() 
	{
		String original = ec.getObjects("dandb_comp_info_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B - Company Information app" + "\n");
		System.out.println("Shows the title for D&B - Company Information app" + "\n");
	}
	
	@Then("Shows the Supplier name in Company Information app panel")
	public void shows_the_Supplier_name_in_Company_Information_app_panel() 
	{
		String original = ec.getObjects("dandb_netflix_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the Supplier name in Company Information app panel" + "\n");
		System.out.println("Shows the Supplier name in Company Information app panel" + "\n");
	}

	@Then("Shows Supplier name in Company Information app panel")
	public void shows_Supplier_name_in_Company_Information_app_panel() 
	{
		String original = ec.getObjects("dandb_sun_pharma_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Supplier name in Company Information app panel" + "\n");
		System.out.println("Shows Supplier name in Company Information app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Principals app")
	public void shows_the_title_for_D_B_Principals_app() 
	{
		String original = ec.getObjects("dandb_principle_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Principals app" + "\n");
		System.out.println("Shows the title for D&B Principals app" + "\n");
	}
	
	@Then("Shows the Principals Summary in Principals app panel")
	public void shows_the_Principals_Summary_in_Principals_app_panel() 
	{
		String original = ec.getObjects("dandb_principle_summary_title_stage");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the Principals Summary in Principals app panel" + "\n");
		System.out.println("Shows the Principals Summary in Principals app panel" + "\n");
	}

	@Then("Shows Principals Summary in Principals app panel")
	public void shows_Principals_Summary_in_Principals_app_panel() 
	{
		String original = ec.getObjects("dandb_principle_summary_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Principals Summary in Principals app panel" + "\n");
		System.out.println("Shows Principals Summary in Principals app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Third Party Risk Assessment app")
	public void shows_the_title_for_D_B_Third_Party_Risk_Assessment_app() 
	{
		String original = ec.getObjects("dandb_third_party_risk_assessment_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Third Party Risk Assessment app" + "\n");
		System.out.println("Shows the title for D&B Third Party Risk Assessment app" + "\n");
	}

	@Then("Shows Supplier Evaluation Risk Score in Third Party Risk Assessment app panel")
	public void shows_Supplier_Evaluation_Risk_Score_in_Third_Party_Risk_Assessment_app_panel() 
	{
		String original = ec.getObjects("dandb_supplier_evaluation_risk_score_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Supplier Evaluation Risk Score in Third Party Risk Assessment app panel" + "\n");
		System.out.println("Shows Supplier Evaluation Risk Score in Third Party Risk Assessment app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Hierarchies & Connections app")
	public void shows_the_title_for_D_B_Hierarchies_Connections_app() 
	{
		String original = ec.getObjects("dandb_hirarchie_connection_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Hierarchies & Connections app" + "\n");
		System.out.println("Shows the title for D&B Hierarchies & Connections app" + "\n");
	}

	@Then("Shows Supplier Name in Hierarchies & Connections app panel")
	public void shows_Supplier_Name_in_Hierarchies_Connections_app_panel() 
	{
		String original = ec.getObjects("dandb_supplier_primary_name_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Supplier Name in Hierarchies & Connections app panel" + "\n");
		System.out.println("Shows Supplier Name in Hierarchies & Connections app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Company Financials app")
	public void shows_the_title_for_D_B_Company_Financials_app() 
	{
		String original = ec.getObjects("dandb_company_financials_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Company Financials app" + "\n");
		System.out.println("Shows the title for D&B Company Financials app" + "\n");
	}

	@Then("Shows Financials to date in Company Financials app panel")
	public void shows_Financials_to_date_in_Company_Financials_app_panel() 
	{
		String original = ec.getObjects("dandb_sales_revenue_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Financials to date in Company Financials app panel" + "\n");
		System.out.println("Shows Financials to date in Company Financials app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Ownership Insight app")
	public void shows_the_title_for_D_B_Ownership_Insight_app() 
	{
		String original = ec.getObjects("dandb_ownership_insight_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Ownership Insight app" + "\n");
		System.out.println("Shows the title for D&B Ownership Insight app" + "\n");
	}

	@Then("Shows Capital Details in Ownership Insight app panel")
	public void shows_Capital_Details_in_Ownership_Insight_app_panel() 
	{
		String original = ec.getObjects("dandb_capital_details_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Capital Details in Ownership Insight app panel" + "\n");
		System.out.println("Shows Capital Details in Ownership Insight app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Payment Insights app")
	public void shows_the_title_for_D_B_Payment_Insights_app() 
	{
		String original = ec.getObjects("dandb_payment_insight_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Payment Insights app" + "\n");
		System.out.println("Shows the title for D&B Payment Insights app" + "\n");
	}

	@Then("Shows Capital Details in Payment Insights app panel")
	public void shows_Capital_Details_in_Payment_Insights_app_panel() 
	{
		String original = ec.getObjects("dandb_paydex_score_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Capital Details in Payment Insights app panel" + "\n");
		System.out.println("Shows Capital Details in Payment Insights app panel" + "\n");
	}
	
	@Then("Shows the title for D&B Financial Strength Insights app")
	public void shows_the_title_for_D_B_Financial_Strength_Insights_app() 
	{
		String original = ec.getObjects("dandb_financial_strength_insights_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title for D&B Financial Strength Insights app" + "\n");
		System.out.println("Shows the title for D&B Financial Strength Insights app" + "\n");
	}

	@Then("Shows Failure Score in Financial Strength Insights app panel")
	public void shows_Failure_Score_in_Financial_Strength_Insights_app_panel() 
	{
		String original = ec.getObjects("dandb_failure_score_title");
		String formatXPATH = String.format(original);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows Failure Score in Financial Strength Insights app panel" + "\n");
		System.out.println("Shows Failure Score in Financial Strength Insights app panel" + "\n");
	}
	
	@When("Verify the title on the dashboard")
	public void verify_the_title_on_the_dashboard() 
	{
		String original = ec.getObjects("demo_my_dashboard");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).isDisplayed();
		
		logger.info("Shows the title on Dashboad" + "\n");
		System.out.println("Shows the title on Dashboad" + "\n");
	}
	
	@When("Click Delete button for the remainder settings")
	public void click_Delete_button_for_the_remainder_settings() 
	{
		String original = ec.getObjects("delete_reminder");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Deleted the reminder on settings page" + "\n");
		System.out.println("Deleted the reminder on settings page" + "\n");
	}

}
