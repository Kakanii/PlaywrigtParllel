package stepdefinition;

import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;

import static org.testng.Assert.assertFalse;
import static org.testng.Assert.assertTrue;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import utility.Base;
import utility.DataDriven;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

public class DownloadQuesionnairs extends DriverEngine {
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<String> QuesionnairNames = new ArrayList<String>();

	String Generic[] = { "Trade Compliance", "Sustainability (Social, Environmental, Health & Safety)",
			"Quality Management", "Liability Insurance", "Intellectual Property", "Information Security",
			"Import Export Compliance", "Government Relations", "GDPR - General Data Protection Regulation",
			"Ethics and Compliance", "Diversity", "Diversity - United States of America", "Company Operations",
			"Anti-Bribery, Anti-Corruption", "Conflict Minerals" };

	String IBM[] = { "Social and Environmental Management - IBM", "IBM Relations", "PIF Integrity Training- IBM",
			"Import Export Compliance - IBM", "Government Relations - IBM", "Environment and Safety - IBM",
			"Conflict Minerals - IBM" };

	ArrayList<String> GenericQuesUI = new ArrayList<String>();
	ArrayList<String> IBMQuesUI = new ArrayList<String>();

	List<String> GenericQuesSheet = new ArrayList<String>();
	List<String> IBMQuesSheet = new ArrayList<String>();

	ArrayList<String> equalQues = new ArrayList<String>();
	ArrayList<String> QuestMising = new ArrayList<String>();

	@Then("Verify Quesionnairs in the downloaded sheet in supplier view {string}")
	public void verify_Quesionnairs_in_the_downloaded_sheet_in_supplier_view(String QuestType) throws IOException {

		String original = ec.getObjects("supplier_AssignedQues_count");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		int i;

		int QuesUICount = driver.findElements(By.xpath(formatXPATH)).size();

		System.out.println("\n" + "List of Sheets(Quesionnairs) in downloaded file:");

		for (i = 1; i <= QuesUICount; i++) {
			DataDriven.readData(i - 1);
			String QuesUI = "(" + original + ")[" + i + "]";
			String QuesNameUI = driver.findElement(By.xpath(QuesUI)).getText();
			if (Arrays.asList(Generic).contains(QuesNameUI)) {
				GenericQuesUI.add(QuesNameUI);
			} else if (Arrays.asList(IBM).contains(QuesNameUI)) {
				IBMQuesUI.add(QuesNameUI);
			}
		}

		if (folder.list()[0].contains("Generic-Questionnaires")) {

			System.out.println("\n" + "List of Generic Ques in UI: ");
			for (int p = 0; p < GenericQuesUI.size(); p++) {
				System.out.println(GenericQuesUI.get(p));
			}
			System.out.println("\n" + "Generic Question in UI : " + GenericQuesUI.size());
			System.out.println("Quesion in downloaded sheet : " + DataDriven.sheetsCount);

			assertTrue(GenericQuesUI.size() == DataDriven.sheetsCount);
			for (int j = 0; j < DataDriven.sheetsCount; j++) {
				GenericQuesSheet.add(DataDriven.workBook.getSheetName(j));
			}
			int count = 0;
			Boolean isExist = false;
			for (int j = 0; j < GenericQuesUI.size(); j++) {
				for (int k = 0; k < GenericQuesSheet.size(); k++) {

					if (GenericQuesUI.get(j).contains(GenericQuesSheet.get(k))) {
						String equal = "'" + GenericQuesUI.get(j) + "'" + " is equal " + "'" + GenericQuesSheet.get(k);
						System.out.println("SheetQues vs GenericQues : " + equal);
						equalQues.add(equal);
						assertTrue(true);
						count++;
					}
				}
			}
			System.out.println("Count of GenericQues in UI equals Sheets : " + equalQues.size());
			if (count == equalQues.size()) {

				isExist = true;
				assertTrue(isExist, "true");
			} else {
				isExist = false;
				assertTrue(isExist, "false");
			}

		} else if (folder.list()[0].contains("International Business Machines")) {
			System.out.println("\n" + "List of IBM Ques in UI: ");
			for (int p = 0; p < IBMQuesUI.size(); p++) {
				System.out.println(IBMQuesUI.get(p));
			}
			System.out.println("\n" + "@@@@@@@@ IBM Quest in UI : " + IBMQuesUI.size());
			System.out.println("@@@@@@@@ Question in downloaded sheet : " + DataDriven.sheetsCount);
			assertTrue(IBMQuesUI.size() == DataDriven.sheetsCount);
			for (int j = 0; j < DataDriven.sheetsCount; j++) {
				IBMQuesSheet.add(DataDriven.workBook.getSheetName(j));
			}

			int count = 0;
			Boolean isExist = false;
			for (int j = 0; j < IBMQuesSheet.size(); j++) {
				for (int k = 0; k < IBMQuesUI.size(); k++) {

					if (IBMQuesUI.get(j).contains(IBMQuesSheet.get(k))) {
						String equal = "'" + IBMQuesUI.get(j) + "'" + " is equal " + "'" + IBMQuesSheet.get(k);
						System.out.println("SheetQues vs IBMQues : " + equal);
						equalQues.add(equal);
						assertTrue(true);
						count++;
					}

				}
			}
			System.out.println("Count of IBMQues in UI equals sheet: " + equalQues.size());
			if (count == equalQues.size()) {

				isExist = true;
				assertTrue(isExist, "true");
			} else {
				isExist = false;
				assertTrue(isExist, "false");
			}

		}
		GenericQuesUI.clear();
		GenericQuesSheet.clear();
		IBMQuesSheet.clear();
		IBMQuesUI.clear();
		equalQues.clear();
	}

	@Then("Select {string} from Download All in Questionnaires section")
	public void select_from_Download_All_in_Questionnaires_section(String Option) {

		String original = ec.getObjects("buyer_ques_downlaodAll_options_var1") + Option + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Selected " + Option + " from Download All in Questionnairs section" + "\n");
		System.out.println("Selected " + Option + " from Download All in Questionnairs section" + "\n");

	}

	@Then("Click on Download All button in Questionnaires section")
	public void click_on_Download_All_button_in_Questionnaires_section() throws Throwable {

		Thread.sleep(3000);
		String original = ec.getObjects("buyer_ques_downloadAll_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		WebElement targetElement = driver.findElement(By.xpath(original));
		JavascriptExecutor js = ((JavascriptExecutor) driver);
		js.executeScript("arguments[0].scrollIntoView(false);", targetElement);

		driver.findElement(By.xpath(formatXPATH)).click();
		Thread.sleep(3000);

		logger.info("Clicked on Download All button in Quesionnairs section" + "\n");
		System.out.println("Clicked on Download All button in Quesionnairs section" + "\n");
	}

	@Then("Verify visiblity of Download All button in supplier reading pane")
	public void verify_visiblity_of_Download_All_button_in_supplier_reading_pane() {

		String original = ec.getObjects("buyer_ques_downloadAll_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified visibility of Download All button in supplier reading pane" + "\n");
		System.out.println("Verified visibility of Download All button in supplier reading pane" + "\n");
	}

	@Then("Verify status of Download All button in supplier reading pane")
	public void verify_status_of_Download_All_button_in_supplier_reading_pane() {
		String original = ec.getObjects("buyer_ques_downloadAll_btn");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Verified Download All button is Enabled in supplier reading pane" + "\n");
		System.out.println("Verified Download All button is Enabled in supplier reading pane" + "\n");

	}

	@Then("Select {string} in Assigned Questionnaires page")
	public void select_in_Assigned_Questionnaires_page(String Option) {

		String original = ec.getObjects("supplier_ques_downlaodAll_options_var1") + Option + "']";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Selected " + Option + " from Download All in Questionnairs section" + "\n");
		System.out.println("Selected " + Option + " from Download All in Questionnairs section" + "\n");

	}

	@Then("Verify downloaded file {string}")
	public void verify_downloaded_file(String FileName) throws Throwable {
		// Thread.sleep(5000);

		System.out.println("Folder name: " + folder.getName() + "\n");
		Thread.sleep(5000);

		System.out.println("File Name: " + folder.list()[0] + "\n");

		File listofFilePath[] = Base.folder.listFiles();
		System.out.println("File Path: " + listofFilePath[0] + "\n");

		assertTrue(folder.list()[0].equals(FileName));

		logger.info("File is downloaded: " + folder.list()[0] + "\n");
		System.out.println("File is downloaded: " + folder.list()[0] + "\n");

	}

	@Then("Verify Quesionnairs in the downloaded sheet in buyer account")
	public void verify_Quesionnairs_in_the_downloaded_sheet_in_buyer_account() throws IOException {

		String AnsweredQues = ec.getObjects("buyer_ques_AnsweredQues_count");
		String formatAnsweredQues = String.format(AnsweredQues);

		String PendingQues = ec.getObjects("buyer_ques_pendingQues_count");
		String formatPendingQues = String.format(PendingQues);

		WaitClass.webDriverWait(formatAnsweredQues);
		WaitClass.webDriverWait(formatPendingQues);

		int AnsweredQuesCount = driver.findElements(By.xpath(formatAnsweredQues)).size();
		for (int i = 1; i <= AnsweredQuesCount; i++) {
			String UIquesionnair = driver.findElement(By.xpath("(" + formatAnsweredQues + ")[" + i + "]")).getText();
			QuesionnairNames.add(UIquesionnair);
			System.out.println("   UI: " + UIquesionnair + " - Answered");
			System.out.print("Sheet: ");
			DataDriven.readData(i - 1);
			System.out.println("\n");

		}

		int PendingQuesCount = driver.findElements(By.xpath(formatPendingQues)).size();
		for (int j = 1; j <= PendingQuesCount; j++) {
			String UIquesionnair = driver.findElement(By.xpath("(" + formatPendingQues + ")[" + j + "]")).getText();
			QuesionnairNames.add(UIquesionnair);
			System.out.println("   UI: " + UIquesionnair + " - Pending");
			System.out.print("Sheet: ");
			DataDriven.readData(j + AnsweredQuesCount - 1);
			System.out.println("\n");

		}
		assertTrue(AnsweredQuesCount + PendingQuesCount == DataDriven.sheetsCount);
		System.out.println("Verified: Count of Questionnairs = Count of Sheets");

	}

	@Then("Delete the downloaded file")
	public void delete_the_downloaded_file() throws Throwable {

		String[] entries = folder.list();
		for (String s : entries) {
			File currentFile = new File(folder.getPath(), s);
			currentFile.delete();
		}
		FileUtils.deleteDirectory(folder);
		FileUtils.deleteDirectory(DownloadFolder);

		assertFalse(folder.exists());
		assertFalse(DownloadFolder.exists());

		logger.info("Deleted the downloaded file: " + folder.getName() + "\n");
		System.out.println("Deleted the downloaded file: " + folder.getName() + "\n");
	}

	@Then("Click on the first supplier on Connected Supplier")
	public void click_on_the_first_supplier_on_Connected_Supplier() {
		String original = ec.getObjects("first_supplier");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on First supplier on Connected Suppliers Screen" + "\n");
		System.out.println("Clicked on First supplier on Connected Suppliers Screen" + "\n");
	}
	
	@When("Download AntiBribery and AntiCorruption Questionnaire on Supplier Wider screen")
	public void download_AntiBribery_and_AntiCorruption_Questionnaire_on_Supplier_Wider_screen() 
	{
		String original = ec.getObjects("download_anti_bri_anti_corrup");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
		System.out.println("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier Wider Screen" + "\n");
	}
	
	@When("Download AntiBribery and AntiCorruption Questionnaire on Supplier profile")
	public void download_AntiBribery_and_AntiCorruption_Questionnaire_on_Supplier_profile() 
	{
		String original = ec.getObjects("download_anti_bri_anti_corrup_supplier");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier profile" + "\n");
		System.out.println("Download Anti-bribery and Anti-Corruption Questionnaire on Supplier profile" + "\n");
	}
	@When("Click on Published tab")
	public void click_on_Published_tab() 
	{
		String original = ec.getObjects("supplier_published_tab");
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Supplier Questionnaire Publish tab" + "\n");
		System.out.println("Clicked on Supplier Questionnaire Publish tab" + "\n");
	}

}
