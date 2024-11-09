package stepdefinition;

import static org.testng.Assert.assertTrue;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.User;
import utility.UserUtils;
import utility.WaitClass;

public class rolesforidd extends DriverEngine{
	public Miscellaneous mis = new Miscellaneous();

	public static ElementControl ec = new ElementControl();

	public static String Emailidsup;
	public static String Email;


	Logger logger = Logger.getLogger(ProfileContacts.class);

	Actions action = new Actions(driver);

	ArrayList<Object> timeStamp = new ArrayList<Object>();

	ArrayList<String> VerificationCode = new ArrayList<String>();

	ArrayList<String> tabs = new ArrayList<String>();

	ArrayList<String> discovercompanyname = new ArrayList<String>();
	
	
	
	@Then("Click on Join Now Link supplier Email from maildrop")
	public void click_on_Join_Now_Link_supplier_email_maildrop() throws Throwable {

		driver.manage().timeouts().implicitlyWait(1, TimeUnit.MINUTES);
		String original = ec.getObjects("joinnow");
		String JoinNowLink = String.format(original);

		// Using do-while loop in case driver fails to click on Join Now
		
			driver.switchTo().frame(0);
			//driver.switchTo().frame("html_msg_body");
			WaitClass.clickableWait(JoinNowLink);
			driver.findElement(By.xpath(JoinNowLink)).click();
			Thread.sleep(3000);

			logger.info("Clicked on Join Now button" + "\n");
			System.out.println("Clicked on Join Now button" + "\n");
		}
	
	@Then ("Verify label {string} is displying under {string}")
	public void verify_label_is_displying_under(String Label, String subCat) {

		String original = ec.getObjects("questionnairelabel") + Label +ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	@Then ("Verify {string} is displying under {string}")
	public void verify_is_displying_under(String Label, String subCat) {

		String original = ec.getObjects("workflowlabel");
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}	
	
	@Then("Click on {string} under for {string}")
	public void click_on_under_for(String Label, String subCat) {

		String original = ec.getObjects("wflabel1")+ subCat+ec.getObjects("wflabel2")+"[4]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		driver.findElement(By.xpath(formatXPATH)).click();

		logger.info("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
		System.out.println("Clicked " + "'" + subCat + "'" + " label under " + Label + "\n");
	}
	@Then ("Verify {string} is visible as a type under for {string} questionnaire")
	public void verify_is_visible_as_a_type_under_for_questionnaire(String Label, String subCat) {

		String original = ec.getObjects("wflabel1")+ subCat+ec.getObjects("wflabel2")+"[1]";
		String formatXPATH = String.format(original);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());
		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().equalsIgnoreCase(Label));


		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	
	
	@Then("Verify {string} tooltip on {string}")
	public void verify_tooltip_on(String TTdescription, String label)
			throws InterruptedException {

		String original = ec.getObjects("discoversupplier1") + TTdescription + ec.getObjects("discoversupplier2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		WebElement BusinessName = driver.findElement(By.xpath(original));

		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
		Thread.sleep(3000);
		
		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));

		logger.info("Verified '" + TTdescription + "' tooltip: " + TTdescription + "\n");
		System.out.println("Verified '" + TTdescription + "' tooltip: " + TTdescription + "\n");

	}
	
	@Then("Select {string} in {string} under {string} select role")
	public void select_in_under_select_role(String Option, String Label, String SubCat) {

		String original = ec.getObjects("wflabel1")+ SubCat+ec.getObjects("wflabel2")+ec.getObjects("levelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));

		dropdown.selectByVisibleText(Option);

		logger.info("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");
		System.out.println("Selected " + "'" + Option + "'" + " in " + Label + " dropdown" + "\n");

	}
	
	@Then ("Verify {string} is visible upon hover on {string} questionnaire")
	public void verify_is_visible_upon_hover_on_questionnaire(String Label, String subCat) throws InterruptedException {

		String original = ec.getObjects("wflabel1")+ subCat+ec.getObjects("wflabel2")+ec.getObjects("levelabel1");
		//String original = ec.getObjects("preinvitell");

		String formatXPATH = String.format(original);
		
		WebElement BusinessName = driver.findElement(By.xpath(original));

		Thread.sleep(3000);
		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
		Thread.sleep(3000);
		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(Label));

		logger.info("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + Label + "'" + " label is displyed under " + subCat + "\n");
	}
	
	@Then("Verify {string} is displaying under {string} on Internal Assessments")
	public void verify_is_displaying_under_on_Internal_Assessments(String Label, String subCat) {

		String original = ec.getObjects("wflabel1")+ subCat+ec.getObjects("wflabel2")+"[2]";
		String formatXPATH = String.format(original);

		WaitClass.clickableWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().trim().contains(Label.trim()));

		logger.info("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
		System.out.println("Verifyed " + "'" + Label + "'" + " label under " + subCat + "\n");
	}
	
	
	//@Then("Select value {string} from {string}")
//	public void select_supply(String value, String SubCat) {
//
//		String original = ec.getObjects("supplierCat") + SubCat + "']";
//		String formatXPATH = String.format(original);
//
//		WaitClass.webDriverWait(formatXPATH);
//
//		Select dropdown = new Select(driver.findElement(By.xpath(formatXPATH)));
//
//		dropdown.selectByVisibleText(value);
//
//		logger.info("Selected " + "'" + value + "'" + " in " + SubCat + " dropdown" + "\n");
//		System.out.println("Selected " + "'" + value + "'" + " in " + SubCat + " dropdown" + "\n");
//
//	}
//	
	

	@Then("Verify {string} label on IDD questionnaires")
	public void verify_label_on_IDD_questionnaires(String TTdescription)
			throws InterruptedException {

		String original = ec.getObjects("maildroplabel") + TTdescription + ec.getObjects("createrule_btn2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
			
		
		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));

		logger.info("Verified '" + TTdescription  + "\n");
		System.out.println("Verified '" + TTdescription + "\n");

	}
	
	@Then("Verify {string} label tooltip on IDD questionnaires for {string}")
	public void verify_label_tooltip_on_IDD_questionnaires_as(String TTdescription, String abc)
			throws InterruptedException {

		String original = ec.getObjects("maildroplabel") + abc + ec.getObjects("createrule_btn2")+"//div";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
					
		driver.findElement(By.xpath(formatXPATH)).click();
		assertTrue(driver.findElement(By.xpath(ec.getObjects("ttip"))).getText().contains(TTdescription));


		logger.info("Verified '" + TTdescription  + "\n");
		System.out.println("Verified '" + TTdescription + "\n");

	}
	
	@Then("verify {string} in {string} under {string}")
	public void verify_in_under(String TTdescription, String Label, String SubCat) throws InterruptedException {

		String original = ec.getObjects("wflabel1")+ SubCat+ec.getObjects("wflabel2")+ec.getObjects("levelabel")+ ec.getObjects("selectrolelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));

		logger.info("Verified '" + TTdescription  + "\n");
		System.out.println("Verified '" + TTdescription + "\n");
	}
	
	@Then("Verify {string} Label disabled on IDD")
	public void verify_Label_disabled_on_IDD(String strvalue) 
	{
		String original = ec.getObjects(strvalue);
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertfalse(driver.findElement(By.xpath(formatXPATH)).isEnabled());

		logger.info("Showing Number input text under Corporate Relations "+ "\n");
		System.out.println("Showing Number input text under Corporate Relations " + "\n");
	}
	private void assertfalse(boolean enabled) {
		// TODO Auto-generated method stub
		
	}
	
	@Then ("Verify {string} text message is displying under {string}")
	public void verify_text_message_is_displying_under(String TTdescription, String subCat) throws InterruptedException {

		String original = ec.getObjects("contextidd");
		String formatXPATH = String.format(original);

		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(TTdescription.trim()));
		assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

		logger.info("Verified " + "'" + TTdescription + "'" + " displyed under " + subCat + "\n");
		System.out.println("Verified " + "'" + TTdescription + "'" + " displyed under " + subCat + "\n");
	}
	

	@Then("Verify {string} user is listed beside the role in Parenthesis")
	public void verify_user_is_listed_beside_the_role_in_Parenthesis(String label)
			throws InterruptedException {

		String original = ec.getObjects("userlist");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		WebElement BusinessName = driver.findElement(By.xpath(original));

		Actions action = new Actions(driver);
		action.moveToElement(BusinessName).build().perform();
		Thread.sleep(3000);
		
		String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
		System.out.println(ttactual + "\n");
		Thread.sleep(3000);
		assertTrue(ttactual.contains(label.trim()));

		logger.info("Verified '" + label + "' tooltip: " + label + "\n");
		System.out.println("Verified '" + label + "' tooltip: " + label + "\n");

	}
	
	@Then("Verify user mailid {string} upon hover over on user")
	public void verify_user_mailid_upon_hover_over_on_user(String label)
			throws InterruptedException {
		
	
	String original = ec.getObjects("userlist");


	driver.findElement(By.xpath(original)).click();
	
	String original1 = ec.getObjects("userlistmailid");
	String formatXPATH = String.format(original1);

	WaitClass.webDriverWait(formatXPATH);
	
	WebElement BusinessName = driver.findElement(By.xpath(original));


	Actions action = new Actions(driver);
	action.moveToElement(BusinessName).build().perform();
	Thread.sleep(3000);
	String ttactual = driver.findElement(By.xpath(formatXPATH)).getText();
	System.out.println(ttactual + "\n");
	Thread.sleep(3000);
	assertTrue(ttactual.contains(label.trim()));

	logger.info("Verified '" + label + "' tooltip: " + label + "\n");
	System.out.println("Verified '" + label + "' tooltip: " + label + "\n");


	}

	
	@Then("Click on Update contacts of {string} role in Relationship contacts screen")
	public void click_on_update_contacts_of_role_in_Relationship_contacts_screen(String role) {
		// role = role.replaceAll("\\s", "");
				String original = ec.getObjects("td_contains_Txt") + role +ec.getObjects("wflabel2")+ ec.getObjects("levelabel1");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				driver.findElement(By.xpath(formatXPATH)).click();

				logger.info("Selected contact: " +role + "\n");
				System.out.println("Selected contact: " + role + "\n");
			}
	
	@Then("select {string} mail Id in Relationship contacts screen")
	public void select_mail_Id_in_Relationship_contacts_screen(String role) {
		// role = role.replaceAll("\\s", "");
				String original = ec.getObjects("span_contains_Txt") + role + ec.getObjects("single_mark_end");
				String formatXPATH = String.format(original);
				WaitClass.webDriverWait(formatXPATH);
				driver.findElement(By.xpath(formatXPATH)).click();

				logger.info("Selected contact: " +role + "\n");
				System.out.println("Selected contact: " + role + "\n");
			}
	
	@Then("Verify {string} in {string} under {string} select role")
	public void Verify_in_under_select_role(String Option, String Label, String SubCat) {

		String original = ec.getObjects("wflabel1")+ SubCat+ec.getObjects("wflabel2")+ec.getObjects("levelabel");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

			
		// Boolean dropdownPresent = driver.findElement(By.xpath(formatXPATH)).
			//assertfalse(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

       // if(dropdownPresent==true)
       // {
          //  System.out.println("Dropdown is appearing");
       // }
       // else{
       //     System.out.println("Dropdown is not appearing");
       // }
            Select se = new Select(driver.findElement(By.xpath(formatXPATH)));
    		List<WebElement> list  = se.getOptions();
    		if(!list.contains(Option))
    		{
    				System.out.println("Text is not visible");
    			}
    			else {
    				System.out.println("Text is visible");
    			}
	
	}
	
	@Then("Verify {string} is under {string} screen")
	public void Verify_is_under_screen(String Option, String Label) {

		String original = ec.getObjects("listoftaboncw");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
	List<WebElement> lists  = driver.findElements(By.xpath(formatXPATH));
	List<String> texts = new ArrayList<String>();
	for(int i=0;i<lists.size();i++) {
		String str = lists.get(i).getText();
		texts.add(str);
	}
	if(texts.contains(Option)) {
		System.out.println("label is visible");
	}
	else {
		System.out.println("Text is visible");
	}	
	}
	
	@Then("Verify the {string} is under {string} screen")
	public void Verify_the_is_under_screen(String Option, String Label) {

		String original = ec.getObjects("listoftaboncw");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
	List<WebElement> lists  = driver.findElements(By.xpath(formatXPATH));
	List<String> texts = new ArrayList<String>();
	for(int i=0;i<lists.size();i++) {
		String str = lists.get(i).getText();
		texts.add(str);
	}
	if(texts.contains(Option)) {
		System.out.println("label is visible");
	}
	else {
		System.out.println("Text is visible");
	}	
	}
	}
	
