package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.io.File;
import java.io.FileWriter;
import java.util.concurrent.TimeUnit;

import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;

import io.cucumber.java.en.Then;
import utility.Base;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

import au.com.bytecode.opencsv.CSVWriter;


public class UUID extends DriverEngine {
	
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);
	
	@Then("Click on Download Bulk Invite template button")
	public void click_on_Download_Bulk_Invite_template_button() {

		String original = ec.getObjects("downloadbulkInviteTemplate_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Cicked on Download Bulk Invite template button" + "\n");
		System.out.println("Cicked on Download Bulk Invite template button" + "\n");
	
	}

	@Then("Update {int} suppliers data in invitesuppliers sheet {string}")
	public void update_suppliers_data_in_invitesuppliers_sheet(Integer supplierCount, String supplierEmail) throws Throwable {
		/*
		File listofFilePath[] = Base.folder.listFiles();
		System.out.println("File Path: " + listofFilePath[0] + "\n");
		
		CSVReader reader = new CSVReader(new FileReader(listofFilePath[0]));
		List<String[]> list=reader.readAll();
		
		Iterator<String[]>iterator= list.iterator();
		
		 int c = 0;
			int Emailcolumn = 0;
			int FirstNameColumn = 0;
			int LastNameColumn = 0;
			int businessnameColumn = 0;
			int taxCountryColumn = 0;
			
		 while(iterator.hasNext())
			{  
			 String[] str=iterator.next();
			 
			 if (str[c].equalsIgnoreCase("supplieremail*")) {
					Emailcolumn = c;
				}
				else if (str[c].equalsIgnoreCase("firstname*")) {
					FirstNameColumn = c;
				}
				else if (str[c].equalsIgnoreCase("lastname*")) {
					LastNameColumn = c;
				}
				else if (str[c].equalsIgnoreCase("businessname*")) {
					businessnameColumn = c;
				}
				else if (str[c].equalsIgnoreCase("taxCountry*")) {
					taxCountryColumn = c;
				}
				c++;
			*/	
			mis.addTimeStamp();
			File listofFilePath[] = Base.folder.listFiles();
			System.out.println("File Path: " + listofFilePath[0] + "\n");
			
			CSVWriter writer = null;
				
				for(int i=0;i<supplierCount; i++)
				 {
					String FirstName = RandomStringUtils.randomAlphabetic(7);
					String LastName = RandomStringUtils.randomAlphabetic(7);
					//String BusinessName = "Supplier" + RandomStringUtils.randomAlphabetic(10);
					String BusinessName = "Supplier" + mis.getTimeStamp();
					
					 writer = new CSVWriter(new FileWriter(listofFilePath[0]));
				
					 String[] supplierData = {supplierEmail, FirstName, LastName, BusinessName, "United States of America" };
					 
					 writer.writeNext(supplierData);

					 System.out.println("\n" + "Entery 1: " + "\n");
					 System.out.println(supplierEmail);
					 System.out.println(FirstName);
					 System.out.println(LastName);
					 System.out.println(BusinessName);
					 System.out.println("United States of America");
					 
					 
				 }
				writer.close();
		
		/*
		
		XSSFWorkbook workBook = new XSSFWorkbook(fis);
		
		XSSFSheet sheet1 = workBook.getSheetAt(0);
		
		Iterator<Row> rows = sheet1.iterator();
		Row firstrow = rows.next();
		
		Iterator<Cell> ce = firstrow.cellIterator();

		int c = 0;
		int Emailcolumn = 0;
		int FirstNameColumn = 0;
		int LastNameColumn = 0;
		int businessnameColumn = 0;
		int taxCountryColumn = 0;
		
		while (ce.hasNext()) {
			Cell value = ce.next();
			if (value.getStringCellValue().equalsIgnoreCase("supplieremail*")) {
				Emailcolumn = c;
			}
			else if (value.getStringCellValue().equalsIgnoreCase("firstname*")) {
				FirstNameColumn = c;
			}
			else if (value.getStringCellValue().equalsIgnoreCase("lastname*")) {
				LastNameColumn = c;
			}
			else if (value.getStringCellValue().equalsIgnoreCase("businessname*")) {
				businessnameColumn = c;
			}
			else if (value.getStringCellValue().equalsIgnoreCase("taxCountry*")) {
				taxCountryColumn = c;
			}
			c++;

		}
		
		for(int i = 1; i <= supplierCount; i++ )
		{
			sheet1.getRow(i).createCell(Emailcolumn).setCellValue(supplierEmail);
			sheet1.getRow(i).createCell(FirstNameColumn).setCellValue("John" + i);
			sheet1.getRow(i).createCell(LastNameColumn).setCellValue("Trader" + i);
			sheet1.getRow(i).createCell(businessnameColumn).setCellValue("supplier" + mis.getTimeStamp());
			sheet1.getRow(i).createCell(taxCountryColumn).setCellValue("United States of America");
			
			FileOutputStream FOS = new FileOutputStream(listofFilePath[0]);
			
			workBook.write(FOS);
		}
		
		workBook.close();
	*/
	}

	@Then("Upload updated invite suppliers sheet under Select files")
	public void upload_updated_invite_suppliers_sheet_under_Select_files() {
		
		String original = ec.getObjects("label_var") + "Select Files" + ec.getObjects("upload_btn_upload_var2");

		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		File listofFilePath[] = Base.folder.listFiles();
		
		String filepath = listofFilePath[0].toString();
		logger.info("filepath" + " " + filepath + "\n");
		WebElement fileInput = driver.findElement(By.xpath(original));

		// Send key with path
		fileInput.sendKeys(filepath);
		
		logger.info("Uploded invite suppliers sheet under Select files" + "\n");
		System.out.println("Uploded invite suppliers sheet under Select files" + "\n");
	}

	
	@Then("Click Select an Organisation button")
	public void click_Select_an_Organisation_button() {
		
		String original = ec.getObjects("UUID_OrganisationLogin_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Clicked on Select Organisation Dropdown" + "\n");
		System.out.println("Clicked on Select Organisation Dropdown" + "\n");
		
	
	}

	@Then("Verify Login with {int} Organisations with email {string}")
	public void verify_Login_with_Organisations_with_email(Integer iterations, String SupplierEmail) throws Throwable {
		
	for(int i = 1; i<= iterations; i++)
	{	
		String original = ec.getObjects("UUID_OrganisationLogin_options_var1") + i + "]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		CorpRelationships ch = new CorpRelationships();
		ch.click_button("Continue");
		
		Dashboard dash = new Dashboard();
		dash.show_Dashboard_tab_on_Dashboard_page("true");
		
		LoginPage lp = new LoginPage();
		lp.logout_from_the_system();
		lp.enter_data_in_Email_Address_field(SupplierEmail);
		lp.click_on_Continue_button_on_Login_page();
		lp.enter_data_in_Password_field();
		lp.click_on_sign_in_button_on_login();
		click_Select_an_Organisation_button();
	}
	
		
	}
	
	@Then("Select supplier Organisation {int}")
	public void select_supplier_Organisation(Integer index) {
		
		String original = ec.getObjects("UUID_OrganisationLogin_dropdown") + index + "]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(formatXPATH)).click();
		
		logger.info("Selected Organisation number " + index + "\n" );
		System.out.println("Selected Organisation number " + index + "\n");
	
	}
	
	@Then("Verify {string} field in My Account")
	public void verify_field_in_My_Account(String Label) {
	    
		String original = ec.getObjects("label_var") + Label + ec.getObjects("inputText_var2");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getAttribute("value").equals(mis.getCurrentTime()));
		
		logger.info("Verified data in " + Label + "is" + mis.getCurrentTime() + "\n");
		System.out.println("Verified data in " + Label + "is" + mis.getCurrentTime() + "\n");
	}
	//updated
	@Then("Verify Email received in supplier {string} Inbox with subject {string} in maildrop")
	public void verify_received_an_email_in_supplier_inbox_with_subject_maildrop(String Email,String subject) throws Throwable {

		driver.get(ec.getObjects("maildropurl"));
		Thread.sleep(5000);

		String original = ec.getObjects("maildrop_input");
		String viewMailbox = ec.getObjects("veiwMailBox_btn");
		driver.findElement(By.xpath(original)).clear();
		System.out.println("Cleared the text in maildrop input" + "\n");
		Thread.sleep(3000);
		driver.findElement(By.xpath(original)).sendKeys(Email);
		driver.findElement(By.xpath(viewMailbox)).click();
		logger.info("Entered " + Email + " in mailinator search box" + "\n");
		System.out.println("Entered " + Email+ " in mailinator search box" + "\n");
		Thread.sleep(5000);
		String SubjectLine = ec.getObjects("maildrop_subjectline") + subject + "')]";
		String EmailformatXPATH = String.format(SubjectLine);
		WaitClass.webDriverWait(EmailformatXPATH);
		assertTrue(driver.findElement(By.xpath(SubjectLine)).getText().contains(subject));
		logger.info("Showing email subject " + "'" + subject + "'" + "\n");
		System.out.println("Showing email subject " + "'" + subject + "'" + "\n");
		}
	
	@Then("Enter Contact same Email Address on Invite Supplier window from maildrop")
	public void enter_Contact_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("contactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.Email);

		logger.info("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter Confirm same Contact Email Address on Invite Supplier window from maildrop")
	public void enter_Confirm_Contact_Email_Address_on_Invite_Supplier_window_maildrop() {

		String original = ec.getObjects("confirmcontactemailaddress");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
	
		
		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.Email);

		logger.info("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");

	}
	@Then("Enter the Reason for Decline")
	public void enter_the_Notes_under_the_Notes_Box() {
		driver.manage().window().maximize();
		String original = ec.getObjects("decline_reason_note");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("Decline");

		
		System.out.println("Entered the Notes" + "\n");
		logger.info("Entered the Notes" + "\n");
	}
	@Then("Click on decline button")
	public void clickDeclinebtn() {
		String original = ec.getObjects("declineBtn");
		String formatXPATH = String.format(original);

		driver.findElement(By.xpath(original)).click();

		
		System.out.println("Clicked decline button" + "\n");
		logger.info("Clicked decline button" + "\n");
	}
	@Then("Click on link JOIN NOW from maildrop")
	public void click_on_Register_and_Connect_Now_Link_discover() throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("voda_joinNow");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		
			driver.switchTo().frame(0);
			//driver.switchTo().frame("html_msg_body");
			WaitClass.clickableWait(JoinNowLink);
			driver.findElement(By.xpath(JoinNowLink)).click();
			Thread.sleep(3000);

			logger.info("Clicked on JOIN NOW button" + "\n");
			System.out.println("Clicked on JOIN NOW button" + "\n");
		}
	
	@Then("Enter {string} in {string} field for supplier liason")
	public void firstname_liason(String input,String name) throws Throwable {
		
		String original = ec.getObjects("inputfield1")+name+"']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys("First Name");

		logger.info("Entered "+input+ "in "+name+" field" + "\n");
		System.out.println("Entered "+input+"in "+name+ " field" + "\n");

	}
	@Then("Enter supplier laison Email in {string} field")
	public void enter_Contact_Email_Address_on_supplierLaison(String sEmail) {

		String original = ec.getObjects("inputfield1")+sEmail+"']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String email = InviteSupplierPage.companyname.trim().replaceAll("\\s", "");
		InviteSupplierPage.Email = email + "ab@maildrop.cc";
		// String email = RandomStringUtils.randomAlphanumeric(3);

		// Email = email + format + "@mailinator.com";
		// timeStamp.add(0, Email);

		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.Email);

		logger.info("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");

	}

	@Then("Enter supplier laison Confirm Email in {string} field")
	public void enter_Confirm_Contact_Email_Address_supplierLiason(String cEmail) {

		String original = ec.getObjects("inputfield1")+cEmail+"']";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		String email = InviteSupplierPage.companyname.trim().replaceAll("\\s", "");
		InviteSupplierPage.Email = email + "ab@maildrop.cc";
		/*
		 * Date date = new Date(); String pattern = "yyyyMMddhh"; SimpleDateFormat
		 * simpledateformat = new SimpleDateFormat(pattern); String format =
		 * simpledateformat.format(date);
		 */

		// String email = RandomStringUtils.randomAlphanumeric(3);

		/*
		 * String Email = email + format + "@mailinator.com"; timeStamp.add(0, Email);
		 */
		driver.findElement(By.xpath(original)).sendKeys(InviteSupplierPage.Email);

		logger.info("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");
		System.out.println("Entered : " + "'" + InviteSupplierPage.Email + "'" + " in Contact Email Address field" + "\n");

	}

}
