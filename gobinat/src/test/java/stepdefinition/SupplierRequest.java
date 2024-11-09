package stepdefinition;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.Assert;
import pages.SupplierRequestPage;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import java.util.concurrent.TimeUnit;

public class SupplierRequest extends DriverEngine {
    public static ElementControl ec = new ElementControl();
    WebDriverWait wait = new WebDriverWait(driver, 300);
    Logger logger = Logger.getLogger(SupplierRequestPage.class);
    SupplierRequestPage supplierRequestPage = new SupplierRequestPage();
    @Then("Verify the {string} tab on first option")
    public void verifyTheTabOnFirstOption(String label) throws InterruptedException {
        String original = ec.getObjects("page_button") + label + ec.getObjects("end_button");
        String formatXPATH = String.format(original);
        Thread.sleep(100);
       // wait.until(webDriver -> formatXPATH);
        // WaitClass.webDriverWait(formatXPATH);
        //assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info("Label name   " + " " + label + " " + " is showing on  in buyer view" + "\n");

    }
    @Then("Click on Request Initiate Supplier Request button")
    public void click_on_Request_Initiate_Supplier_Request_button() throws InterruptedException {
       driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
              String original = ec.getObjects("Initiate_Supplier_Request");
              String formatXPATH = String.format(original);
              Thread.sleep(3000);
              driver.findElement(By.xpath(formatXPATH)).click();

              logger.info("Clicked on Request Initiate Supplier Request button " + "\n");
        		System.out.println("Clicked on Request Initiate Supplier Request button " + "\n");
        		}
    
    @Then("Enter select the Tax Country in the dropdwon field")
    public void enter_select_the_Tax_Country_in_the_dropdwon_field() throws InterruptedException {
       driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
              String original = ec.getObjects("taxCountry");
              String formatXPATH = String.format(original);
              driver.findElement(By.xpath(formatXPATH)).click();
              Thread.sleep(3000);
              driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
              driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
              logger.info("Tax Country Selected " + "\n");
      		System.out.println("Tax Country Selected " + "\n");

    }

    @Then("click on the search button")
    public void click_on_the_search_button() {
       driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
              String original = ec.getObjects("searchBtn");
              String formatXPATH = String.format(original);
              driver.findElement(By.xpath(formatXPATH)).click();
              logger.info("Clicked on the Search button " + "\n");
        		System.out.println("Clicked on the Search button " + "\n");

    }

    @Then("Click on the Request New Supplier")
    public void click_on_the_Request_New_Supplier() {
    	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
        String original = ec.getObjects("requestNewSupplier");
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Clicked on the Request New Supplier " + "\n");
		System.out.println("Clicked on the Request New Supplier " + "\n");

    }
    
   
    @Then("Select the state in dropdown field")
    public void select_the_state_in_dropdown_field() throws InterruptedException {
    	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
        String original = ec.getObjects("state");
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();
        Thread.sleep(3000);
        driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
        driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
        logger.info("Selected the state " + "\n");
		System.out.println("Selected the state " + "\n");

    }

        
    @Then("Click on the save locatoin in address verificatoin page")
    public void click_on_the_save_locatoin_in_address_verificatoin_page() {
    	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
        String original = ec.getObjects("saveLocation");
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Saved the locatoin " + "\n");
		System.out.println("Saved the locatoin " + "\n");

    }

        @Then("Click on the Submit Request")
    public void click_on_the_Submit_Request() {
    	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
        String original = ec.getObjects("submitBtn");
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info("Clicked on the Submit Request " + "\n");
		System.out.println("Clicked on the Submit Request " + "\n");

    }
        @Then("Click on the first record under the {string} records")
        public void click_on_the_first_record_under_the_records(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("notificationList");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("First record selected " + "\n");
    		System.out.println("First record selected " + "\n");

        }
        
        @Then("Verify the notification text {string}")
        public void verify_the_notification_text(String NotificationText) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS); 
            String original = ec.getObjects("notificationList1") + NotificationText + ec.getObjects("notificationList2");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Verified the notification text  " + NotificationText + "\n");
    		System.out.println("Verify the notification text  " + NotificationText + "\n");
            
        }

        @Then("Click on Submitted Requests on Supplier Requests page")
        public void click_on_Submitted_Requests_on_Supplier_Requests_page() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("SubmittedRequestsTab");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Submit requests " + "\n");
    		System.out.println("Clicked on the Submit requests " + "\n");

        }
        @Then("Click on the first record under the Submitted Requests records")
        public void click_on_the_first_record_under_the_Submitted_Requests_records() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("SubmittedRequestsList");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Submit requests " + "\n");
    		System.out.println("Clicked on the Submit requests " + "\n");
        }

        @Then("Enter the Company Name in the Supplier Company Name field {string}")
        public void enter_the_Company_Name_in_the_Supplier_Company_Name_field(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("supplierCompnayName");
            String formatXPATH = String.format(original);
            WaitClass.clickableWait(formatXPATH);

            driver.findElement(By.xpath(original)).sendKeys(string);

            logger.info("Company Name entered " + "\n");
      		System.out.println("Company Name entered " + "\n");

        }

        @Then("Click on Actions Box")
        public void click_on_Actions_Box() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("actionsTab");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Actions " + "\n");
    		System.out.println("Clicked on the Actions " + "\n");

        }

        @Then("Click on the Reject Request")
        public void click_on_the_Reject_Request() throws InterruptedException {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("rejectRequest");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
			/*
			 * driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
			 * Thread.sleep(2000);
			 * driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
			 * Thread.sleep(2000);
			 * driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
			 */
            logger.info("Clicked on the Reject Request " + "\n");
    		System.out.println("Clicked on the Reject Request " + "\n");
        }
        @Then("Click on the Cancel Request")
        public void click_on_the_Cancel_Request() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("cancelRequest");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Cancel Request " + "\n");
    		System.out.println("Clicked on the Cancel Request " + "\n");

        }
        @Then("Click on the Complete Request")
        public void click_on_the_Complete_Request() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("completeRequest");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Complete Request " + "\n");
    		System.out.println("Clicked on the Complete Request " + "\n");
    		
    		
        }
        
        @Then("Enter the Reason under Complete Request {string}")
        public void enter_the_Reason_under_Complete_Request(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("reasonBox");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).sendKeys(string);
            logger.info("Entered the Reason under Complete Request " + "\n");
    		System.out.println("Entered the Reason under Complete Request " + "\n");
        }

        @Then("Click on Proceed to Invite button")
        public void click_on_Proceed_to_Invite_button() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("proceedToInvite");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Proceed to Invite button " + "\n");
    		System.out.println("Clicked on the Proceed to Invite button " + "\n");
        }
        
        @Then("Click on the pending segmentation notification")
        public void click_on_the_pending_segmentation_notification() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("pendingSegmentation");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the pending segmentation notification " + "\n");
    		System.out.println("Clicked on the pending segmentation notification " + "\n");
        }

        @Then("Click on the Complete segmentation")
        public void click_on_the_Complete_segmentation() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("completeSegmentation");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Complete segmentation " + "\n");
    		System.out.println("Clicked on the Complete segmentation " + "\n");
        }

        @Then("Select the {string} under the Category dropdown")
        public void select_the_under_the_Category_dropdown(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("selectCategory");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            driver.findElement(By.xpath(original)).sendKeys(Keys.ARROW_DOWN);
            driver.findElement(By.xpath(original)).sendKeys(Keys.ENTER);
            logger.info("Selected under the dropdown " + "\n");
    		System.out.println("Selected under the dropdown " + "\n");
        }
        
        @Then("Click on Submit button")
        public void click_on_Submit_button() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("submitBtn");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("Clicked on the Submit " + "\n");
    		System.out.println("Clicked on the Submit  " + "\n");
        }

        @Then("Enter company name in Supplier Company Name field {string}")
        public void enter_company_name_in_Supplier_Company_Name_field(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("supplierCompnayName");
            String formatXPATH = String.format(original);
            WaitClass.clickableWait(formatXPATH);

            driver.findElement(By.xpath(original)).sendKeys(string);
            logger.info("Company Name entered " + "\n");
      		System.out.println("Company Name entered " + "\n");
        }

        @Then("Enter the First Name in Contact page {string}")
        public void enter_the_First_Name_in_Contact_page(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("firstName");
            String formatXPATH = String.format(original);
            WaitClass.clickableWait(formatXPATH);

            driver.findElement(By.xpath(original)).sendKeys(string);
            logger.info("First Name entered " + "\n");
      		System.out.println("First Name entered " + "\n");

        }
        @Then("Enter data in Legal Business Name field {string}")
        public void enter_data_in_Legal_Business_Name_field(String string) {
            	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
                String original = ec.getObjects("LegalBusinessName");
                String formatXPATH = String.format(original);
                WaitClass.clickableWait(formatXPATH);

                driver.findElement(By.xpath(original)).sendKeys(string);
                logger.info("Legal Business Name entered " + "\n");
          		System.out.println("Legal Business Name entered " + "\n");

        }

        @Then("Enter data in Address Line field {string}")
        public void enter_data_in_Address_Line_field(String string) {
        	
            	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
                String original = ec.getObjects("AddressLine1");
                String formatXPATH = String.format(original);
                WaitClass.clickableWait(formatXPATH);

                driver.findElement(By.xpath(original)).sendKeys(string);
                logger.info("Address Line entered " + "\n");
          		System.out.println("Address Line Name entered " + "\n");

        }

        @Then("Enter the data in Zip Code field {string}")
        public void enter_the_data_in_Zip_Code_field(String string) {
        	
            	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
                String original = ec.getObjects("zipCode");
                String formatXPATH = String.format(original);
                WaitClass.clickableWait(formatXPATH);

                driver.findElement(By.xpath(original)).sendKeys(string);
                logger.info("Zip Code entered " + "\n");
          		System.out.println("Zip Code Name entered " + "\n");

        }
        
        @Then("Select the radio button in Request Assessment")
        public void select_the_radio_button_in_Request_Assessment() {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("radioBtn");
            String formatXPATH = String.format(original);
            driver.findElement(By.xpath(formatXPATH)).click();
            logger.info("radio button entered " + "\n");
      		System.out.println("radio button entered " + "\n");

        }

        @Then("Enter the Last Name in Contact page {string}")
        public void enter_the_Last_Name_in_Contact_page(String string) {
        
            	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
                String original = ec.getObjects("lastName");
                String formatXPATH = String.format(original);
                WaitClass.clickableWait(formatXPATH);

                driver.findElement(By.xpath(original)).sendKeys(string);
                logger.info("Last Name entered " + "\n");
          		System.out.println("Last Name entered " + "\n");

        }

        @Then("Enter the Job Title in Contact page {string}")
        public void enter_the_Job_Title_in_Contact_page(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("jobTitle");
            String formatXPATH = String.format(original);
            WaitClass.clickableWait(formatXPATH);

            driver.findElement(By.xpath(original)).sendKeys(string);
            logger.info("Job Title entered " + "\n");
      		System.out.println("Job Title entered " + "\n");

        }

        @Then("Enter the Email ID in Contact page {string}")
        public void enter_the_Email_ID_in_Contact_page(String string) {
        	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
            String original = ec.getObjects("mailAdd");
            String formatXPATH = String.format(original);
            WaitClass.clickableWait(formatXPATH);

            driver.findElement(By.xpath(original)).sendKeys(string);
            logger.info("Email ID entered " + "\n");
      		System.out.println("Email ID entered " + "\n");

        }
    
    @Then("Verify the notificatoins")
    public void verify_the_notificatoins() {
    	String original = ec.getObjects("notificationList");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		driver.findElement(By.xpath(formatXPATH)).click();
		//String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		
       // System.out.println("Tool Tip: ---"+);          
    }
    
    @Then("Verify the {string} button")
    public void verifyTheButton(String label) throws InterruptedException {
        String original = ec.getObjects("page_button") + label + ec.getObjects("end_button");
        String formatXPATH = String.format(original);
        System.out.println(formatXPATH);

        // WaitClass.webDriverWait(formatXPATH);

        Thread.sleep(100);
       // assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info("Button name   " + " " + label + " " + " is showing on  in buyer view" + "\n");
    }

    @Then("Verify the {string} status")
    public void verify_the_status(String string) {
    	driver.manage().timeouts().implicitlyWait(300, TimeUnit.SECONDS);
        String original = ec.getObjects("InProgressStatus");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        Assert.assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info("Verified In-Progress Status   "  + "\n");
    }

    @Then("Click on {string} tab on Manage User page")
    public void clickOnTabOnManageUserPage(String button) {
       // SupplierRequestPage.clickButton(button);
    }


    @Then("Verify the {string} page")
    public void verifyThePage(String label) throws InterruptedException {
     supplierRequestPage.verifyButton(label);
    }

    @And("Select {string} Country from Dropdown value")
    public void selectCountryFromDropdownValue(String label) {
        supplierRequestPage.clickDropdown();
        supplierRequestPage.selectDropdownValue(label);

    }

    @Then("Verify the {string} text as under Country dropdown")
    public void verifyTheTextAsUnderCountryDropdown(String label) throws InterruptedException {
        supplierRequestPage.verifyButton(label);
    }

    @Then("Enter Supplier Company Name as {string}")
    public void enterSupplierCompanyNameAs(String label) {
        supplierRequestPage.enterCompanyName(label);
    }

    @Then("Verify the Scollbar if the count is more than {int} records")
    public void verifyTheScollbarIfTheCountIsMoreThanRecords(int num) {

        supplierRequestPage.findRecordsCount(num);
    }

    @Then("Verify the icon")
    public void verifyTheIcon() {
        supplierRequestPage.verifyIcon();
    }


    @Then("Mouse hover on the Icon and Verify the Message")
    public void mouseHoverOnTheIconAndVerifyTheMessage() {
        supplierRequestPage.mouseHoveronElement();
    }

    @Then("Verify the icon should not appear")
    public void verifyTheIconShouldNotAppear() throws Exception {
        supplierRequestPage.hideIcon();
    }

    @And("Click on existing supplier")
    public void clickOnExistingSupplier() {
        supplierRequestPage.clickFirstRecordTable();

    }

    @Then("Verify the {string} label")
    public void verifyTheLabel(String label) throws InterruptedException {
        supplierRequestPage.verifyButton(label);
    }


    @And("Enter Address line as {string}")
    public void enterAddressLineAs(String text) {
        supplierRequestPage.etnerTextintoInput(text);

    }

    @And("Click on {string} Inputfield")
    public void clickOnInputfield(String label) {
        supplierRequestPage.clickInputField(label);
    }

    @And("Verify the {string} button state")
    public void verifyTheButtonState(String label) {
        supplierRequestPage.verifyElementState(label, true);
    }

    @And("Verify the {string} button state as enabled")
    public void verifyTheButtonStateAsEnabled(String label) {
        supplierRequestPage.verifyElementState(label, false);
    }


    @And("Verify the ToolTip of Next button")
    public void verifyTheToolTipOfNextButton() {
        supplierRequestPage.toolTipOfNextButton();
    }

    @And("Enter {string} name as {string}")
    public void enterNameAs(String label, String text) {
        supplierRequestPage.enterInputFieldsWithLabel(label, text);
    }

    @Then("Verify the Popup text with Confirm Button")
    public void verifyThePopupTextWithConfirmButton() {
        supplierRequestPage.verifyPopup();
    }

    @And("Click on first record in table")
    public void clickOnFirstRecordInTable() {
        supplierRequestPage.clickOnTableFirstRecord();
    }

    @Then("Verify the {string} as {string} is disabled")
    public void verifyTheAsIsDisabled(String label, String text) {
        supplierRequestPage.verifyLabelWithDisabledState(label, text);
    }

    @And("Verify the {string} button with disabled state")
    public void verifyTheButtonWithDisabledState(String label){
        supplierRequestPage.verifyElementState(label, false);
    }

    @And("Select region as {string}")
    public void selectRegionAs(String ddValue) {
        supplierRequestPage.ddSelection(ddValue);
    }

    @And("Enter {string} name with {int} chars")
    public void enterNameWithChars(String label, int stringLength) {
        supplierRequestPage.enterRamdomString(label, stringLength);
    }

    @And("Click on {string} radio button on Request Assessment page")
    public void clickOnRadioButtonOnRequestAssessmentPage(String label) {
        supplierRequestPage.clickRadioButton(label);
    }

    @Then("Verify the {string} column in table header")
    public void verifyTheColumnInTableHeader(String label) {
        supplierRequestPage.isHeaderColumnDisplayed(label);
    }

    @And("Store the Company name")
    public void storeTheCompanyName() {
        supplierRequestPage.getCompanyName();
    }

    @Then("Verify the {string} under My submitted requests")
    public void verifyTheUnderMySubmittedRequests(String label) {
        supplierRequestPage.isLabelDisplayedInMySbumitrequest(label);
    }

    @Then("Validate {string} in drafts")
    public void validateInDrafts(String label) {
        supplierRequestPage.dateValidator(label);
    }

    @And("Click on {string} tab on Supplier request screen")
    public void clickOnTabOnSupplierRequestScreen(String label) {
       // supplierRequestPage.clickFilterOnSupplierRequestScreen(label);
    }

    @And("Select {string} dropdown value")
    public void selectDropdownValue(String ddValue) {
    }

    @And("Click on the {string} checkbox on Filter")
    public void clickOnTheCheckboxOnFilter(String checkboxButton) {
    }

    @And("Click on First record in filtered table")
    public void clickOnFirstRecordInFilteredTable() {
    }
}
