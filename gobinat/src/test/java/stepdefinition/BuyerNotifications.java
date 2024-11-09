package stepdefinition;

import io.cucumber.java.en.Then;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import utility.DriverEngine;
import utility.ElementControl;
import utility.Miscellaneous;
import utility.WaitClass;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import static org.testng.Assert.assertTrue;

public class BuyerNotifications extends DriverEngine {
    public Miscellaneous mis = new Miscellaneous();

    public static ElementControl ec = new ElementControl();

    public static String Emailidsup;
    public static String Email;
    public String cName;
    public static String Australiancn;
    public static String firstSupplier;
    public static String legalBusinessName;
    public static String Expected_req_ID;
    public static String Expected_req_by;
    public static String Expected_req_time;
    public static String getSupID;
    public WebDriverWait wait = new WebDriverWait(driver, 120);
    public Map<String, String> supplierRequest = new HashMap<String, String>();
    Logger logger = Logger.getLogger(BuyerNotifications.class);

    Actions action = new Actions(driver);

    ArrayList<Object> timeStamp = new ArrayList<Object>();

    ArrayList<String> VerificationCode = new ArrayList<String>();

    ArrayList<String> tabs = new ArrayList<String>();

    ArrayList<String> discovercompanyname = new ArrayList<String>();


    @Then("Verify notification from buyer sent as {string} by {string}")
    public void verifybuyernotification(String subject, String user) {

        String original = ec.getObjects("td_contains_Txt") + InviteSupplierPage.companyname + " has been returned by " + user + "')]";
        String formatXPATH = String.format(original);
        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

        logger.info("Verified buyer notification " + subject + "\n");
    }

    @Then("Click on notification from buyer sent as {string} by {string}")
    public void clickbuyernotification(String subject, String user) {

        String original = ec.getObjects("td_contains_Txt") + InviteSupplierPage.companyname + " has been returned by " + user + "')]//parent::tr";
        String formatXPATH = String.format(original);
        WaitClass.webDriverWait(formatXPATH);
        driver.findElement(By.xpath(formatXPATH)).click();

        logger.info("Clicked buyer notification " + subject + "\n");

    }

    @Then("Verify notification is not received from buyer as {string} by {string}")
    public void verifybuyernotificationnotreceived(String subject, String user) {

        String original = ec.getObjects("td_contains_Txt") + InviteSupplierPage.companyname + " has been returned by " + user + "')]";
        String formatXPATH = String.format(original);
        List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));

        assertTrue(elements.size() <= 0);
        logger.info("Notification mail received");
        logger.info("Verified buyer notification is not received" + "\n");
    }

    @Then("Verify undo supplier action notification for buyer by {string} as {string}")
    public void verifyundosuppliernotification(String user, String subject) {

        String original = ec.getObjects("td_contains_Txt") + user + subject + InviteSupplierPage.companyname + "')]";
        String formatXPATH = String.format(original);
        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

        logger.info("Verified buyer notification " + subject + "\n");
    }

    @Then("click undo supplier action notification for {string} on {string}")
    public void clickundosuppliernotification(String user, String subject) {

        String original = ec.getObjects("td_contains_Txt") + user + subject + InviteSupplierPage.companyname + "')]//parent::tr";
        String formatXPATH = String.format(original);
        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(subject));

        logger.info("Clicked buyer notification " + subject + "\n");
    }

    @Then("Enter data in buyer notify Email Address field")
    public void enter_data_in_buyerEmail_Address_field() throws Throwable {
        String original = ec.getObjects("email");
        String formatXPATH = String.format(original);

        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(formatXPATH)));

        driver.findElement(By.xpath(original)).sendKeys(ec.getObjects("buyernotifyusr"));
        logger.info("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
        System.out.println("Entered data" + " " + ec.getObjects("usr") + " " + "Email Address field" + "\n");
    }

    @Then("Verify unwatch or unsubcribe option is removed from secondary recipient")
    public void verifyUnsubcribe() throws Throwable {
        driver.get(ec.getObjects("maildropurl"));
        String unsubscribe = ec.getObjects("unsubscribeLink");
        String original = ec.getObjects("maildrop_input");
        String viewMailbox = ec.getObjects("veiwMailBox_btn");
        WaitClass.webDriverWait(original);
        Thread.sleep(3000);
        driver.findElement(By.xpath(original)).clear();
        System.out.println("Cleared the text in maildrop input" + "\n");
        Thread.sleep(3000);
        WaitClass.webDriverWait(original);
        String internalBuyer = ec.getObjects("otherUser");
        driver.findElement(By.xpath(original)).sendKeys(internalBuyer);
        Thread.sleep(10000);
        WaitClass.clickableWait(viewMailbox);
        driver.findElement(By.xpath(viewMailbox)).click();
        logger.info("Entered " + internalBuyer + " in mailinator search box" + "\n");
        String SubjectLine = ec.getObjects("maildrop_subjectline");
        String EmailformatXPATH = String.format(SubjectLine);
        Thread.sleep(10000);
        if (driver.findElements(By.xpath(EmailformatXPATH)).size() == 0) {
            driver.findElement(By.xpath(original)).clear();
            System.out.println("Cleared the text in maildrop input" + "\n");
            Thread.sleep(3000);
            WaitClass.webDriverWait(original);
            driver.findElement(By.xpath(original)).sendKeys(internalBuyer);
            Thread.sleep(10000);
            WaitClass.clickableWait(viewMailbox);
            driver.findElement(By.xpath(viewMailbox)).click();
        }
        String returnNotification = ec.getObjects("returnNotify");
        // driver.switchTo().frame("html_msg_body");
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        driver.findElement(By.xpath(original)).click();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
        List<WebElement> elements = driver.findElements(By.xpath(unsubscribe));

        assertTrue(elements.size() <= 0);
        logger.info("Unsubscribe option is removed");
    }

    @Then("Verify unwatch or unsubcribe option is present from primary recipient")
    public void verifysubcribe() throws Throwable {
        driver.get(ec.getObjects("maildropurl"));
        String unsubscribe = ec.getObjects("unsubscribeLink");
        String original = ec.getObjects("maildrop_input");
        String viewMailbox = ec.getObjects("veiwMailBox_btn");
        WaitClass.webDriverWait(original);
        Thread.sleep(3000);
        driver.findElement(By.xpath(original)).clear();
        System.out.println("Cleared the text in maildrop input" + "\n");
        Thread.sleep(3000);
        WaitClass.webDriverWait(original);
        String primaryUsr = ec.getObjects("usr");
        driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
        Thread.sleep(10000);
        WaitClass.clickableWait(viewMailbox);
        driver.findElement(By.xpath(viewMailbox)).click();
        System.out.println("Entered " + primaryUsr + " in mailinator search box" + "\n");
        String SubjectLine = ec.getObjects("maildrop_subjectline");
        String EmailformatXPATH = String.format(SubjectLine);
        Thread.sleep(10000);
        if (driver.findElements(By.xpath(EmailformatXPATH)).size() == 0) {
            driver.findElement(By.xpath(original)).clear();
            System.out.println("Cleared the text in maildrop input" + "\n");
            Thread.sleep(3000);
            WaitClass.webDriverWait(original);
            driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
            Thread.sleep(10000);
            WaitClass.clickableWait(viewMailbox);
            driver.findElement(By.xpath(viewMailbox)).click();
        }
        String returnNotification = ec.getObjects("returnNotify");
        // driver.switchTo().frame("html_msg_body");
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        driver.findElement(By.xpath(original)).click();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
        List<WebElement> elements = driver.findElements(By.xpath(unsubscribe));

        assertTrue(elements.size() >= 1);
        logger.info("subscribe option is present");
    }

    @Then("Verify undo supplier action notification should not receive for buyer by {string} as {string}")
    public void verifyundosuppliernotrecievenotification(String user, String subject) {

        String original = ec.getObjects("td_contains_Txt") + user + subject + InviteSupplierPage.companyname + "')]";
        String formatXPATH = String.format(original);
        List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));

        assertTrue(elements.size() <= 0);
        logger.info("Notification mail received");
        logger.info("Verified buyer notification is not received" + "\n");
    }

    @Then("Close browser")
    public void closeBrowser() {
        driver.close();
        logger.info("Browser closed");

    }

    @Then("Verify notification is not received who performs action for questionnaire as {string} by {string} with {string}")
    public void verifybuyernotificationnotreceivedquestion(String subject, String user, String templete) {

        String original = ec.getObjects("td_contains_Txt") + user + " " + InviteSupplierPage.questName + templete + InviteSupplierPage.companyname + "')]";
        String formatXPATH = String.format(original);
        List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));

        assertTrue(elements.size() <= 0);
        logger.info("Notification mail received");
        logger.info("Verified buyer notification is not received" + "\n");
    }

    @Then("Verify notification is received primary watcher for questionnaire as {string} by {string} with {string}")
    public void verifybuyernotificationnotreceiveprimary(String subject, String user, String templete) {

        String original = ec.getObjects("td_contains_Txt") + user + subject + " " + InviteSupplierPage.questName + templete + InviteSupplierPage.companyname + "')]";
        String formatXPATH = String.format(original);
        List<WebElement> elements = driver.findElements(By.xpath(formatXPATH));

        assertTrue(elements.size() >= 1);
        logger.info("Notification mail received");
        logger.info("Verified buyer notification is received" + "\n");
    }

    @Then("Verify unwatch or unsubcribe option is present from primary recipient for questionnaire")
    public void verifyassign() throws Throwable {
        driver.get(ec.getObjects("maildropurl"));
        String unsubscribe = ec.getObjects("unsubscribeLink");
        String original = ec.getObjects("maildrop_input");
        String viewMailbox = ec.getObjects("veiwMailBox_btn");
        WaitClass.webDriverWait(original);
        Thread.sleep(3000);
        driver.findElement(By.xpath(original)).clear();
        System.out.println("Cleared the text in maildrop input" + "\n");
        Thread.sleep(3000);
        WaitClass.webDriverWait(original);
        String primaryUsr = ec.getObjects("usr");
        driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
        Thread.sleep(10000);
        WaitClass.clickableWait(viewMailbox);
        driver.findElement(By.xpath(viewMailbox)).click();
        System.out.println("Entered " + primaryUsr + " in mailinator search box" + "\n");
        String SubjectLine = ec.getObjects("maildrop_subjectline");
        String EmailformatXPATH = String.format(SubjectLine);
        Thread.sleep(10000);
        if (driver.findElements(By.xpath(EmailformatXPATH)).size() == 0) {
            driver.findElement(By.xpath(original)).clear();
            System.out.println("Cleared the text in maildrop input" + "\n");
            Thread.sleep(3000);
            WaitClass.webDriverWait(original);
            driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
            Thread.sleep(10000);
            WaitClass.clickableWait(viewMailbox);
            driver.findElement(By.xpath(viewMailbox)).click();
        }
        String returnNotification = ec.getObjects("assign_quest");
        // driver.switchTo().frame("html_msg_body");
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        driver.findElement(By.xpath(returnNotification)).click();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
        List<WebElement> elements = driver.findElements(By.xpath(unsubscribe));

        assertTrue(elements.size() >= 1);
        logger.info("subscribe option is present");
    }

    @Then("Click on notification received for questionnaire as {string} by {string} with {string}")
    public void clickbuyernotificationnotreceivedquestion(String subject, String user, String templete) {

        String original = ec.getObjects("td_contains_Txt") + user + subject + InviteSupplierPage.questName + templete + InviteSupplierPage.companyname + "')]";
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).click();

        logger.info("Clicked on Notification received for quetionnaire");

    }
    @Then("Verify unwatch or unsubcribe option is not present from secondary recipient for questionnaire")
    public void verifyassignnotpresent() throws Throwable {
        driver.get(ec.getObjects("maildropurl"));
        String unsubscribe = ec.getObjects("unsubscribeLink");
        String original = ec.getObjects("maildrop_input");
        String viewMailbox = ec.getObjects("veiwMailBox_btn");
        WaitClass.webDriverWait(original);
        Thread.sleep(3000);
        driver.findElement(By.xpath(original)).clear();
        System.out.println("Cleared the text in maildrop input" + "\n");
        Thread.sleep(3000);
        WaitClass.webDriverWait(original);
        String primaryUsr = ec.getObjects("otherUser");
        driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
        Thread.sleep(10000);
        WaitClass.clickableWait(viewMailbox);
        driver.findElement(By.xpath(viewMailbox)).click();
        System.out.println("Entered " + primaryUsr + " in mailinator search box" + "\n");
        String SubjectLine = ec.getObjects("maildrop_subjectline");
        String EmailformatXPATH = String.format(SubjectLine);
        Thread.sleep(10000);
        if (driver.findElements(By.xpath(EmailformatXPATH)).size() == 0) {
            driver.findElement(By.xpath(original)).clear();
            System.out.println("Cleared the text in maildrop input" + "\n");
            Thread.sleep(3000);
            WaitClass.webDriverWait(original);
            driver.findElement(By.xpath(original)).sendKeys(primaryUsr);
            Thread.sleep(10000);
            WaitClass.clickableWait(viewMailbox);
            driver.findElement(By.xpath(viewMailbox)).click();
        }
        String returnNotification = ec.getObjects("assign_quest");
        // driver.switchTo().frame("html_msg_body");
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        driver.findElement(By.xpath(returnNotification)).click();
        driver.manage().timeouts().implicitlyWait(5, TimeUnit.MINUTES);
        wait.until(ExpectedConditions.frameToBeAvailableAndSwitchToIt(0));
        List<WebElement> elements = driver.findElements(By.xpath(unsubscribe));

        assertTrue(elements.size()<=0);
        logger.info("subscribe option is not present");
    }
}
