package stepdefinition;

import io.cucumber.java.en.Then;
import org.apache.commons.lang.RandomStringUtils;
import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;
import utility.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static org.testng.Assert.assertTrue;

public class TPRM extends DriverEngine {
    public Miscellaneous mis = new Miscellaneous();

    public static ElementControl ec = new ElementControl();

    public static String Emailidsup;
    public static String Email;
    public static String cName;
    public static String Australiancn;
    public static String firstSupplier;
    public static String legalBusinessName;
    public static String Expected_req_ID;
    public static String Expected_req_by;
    public static String Expected_req_time;
    public static String getSupID;
    public WebDriverWait wait = new WebDriverWait(driver, 120);
    public Map<String, String> supplierRequest = new HashMap<String, String>();
    Logger logger = Logger.getLogger(TPRM.class);

    Actions action = new Actions(driver);

    ArrayList<Object> timeStamp = new ArrayList<Object>();

    ArrayList<String> VerificationCode = new ArrayList<String>();

    ArrayList<String> tabs = new ArrayList<String>();

    ArrayList<String> discovercompanyname = new ArrayList<String>();

    @Then("Enter {string} Supplier Company Name on Invite Supplier modal")
    public void enter_Supplier_Company_Name_on_Invite_Supplier_modal(String cName) throws Throwable {
        String original = ec.getObjects("companyNameid");
        String formatXPATH = String.format(original);
        TPRM.cName=cName;
        driver.findElement(By.xpath(formatXPATH)).sendKeys(cName);

        logger.info("Entered : " + "'" + cName+ "'" + " in Company Name field" + "\n");
    }

    @Then("Enter connected Supplier Company Name on Supplier Request")
    public void enter_Supplier_Name_on_Supplier_requestmodal(String cName) throws Throwable {
        String original = ec.getObjects("companyNameid");
        String formatXPATH = String.format(original);
        TPRM.cName=cName;
        driver.findElement(By.xpath(formatXPATH)).sendKeys(cName);

        logger.info("Entered : " + "'" + cName+ "'" + " in Company Name field" + "\n");
    }
    @Then("Click on {string} Businessname from Supplier Request")
    public void click_on_business_name(String cName) throws InterruptedException {
        String original = ec.getObjects("SRM_details3") + TPRM.cName + ec.getObjects("tprm_businessname");
        String formatXPATH = String.format(original);
        Actions builder = new Actions(driver);
        builder.moveToElement(driver.findElement(By.xpath(formatXPATH))).click().build().perform();
        logger.info("Clicked on  "+cName+" Businessname from Supplier Request " + "\n");
    }
    @Then("Verify tootltip text {string} on {string} screen")
    public void Verify_the_on_screen(String strArg1, String abc) throws Throwable {

        String original = ec.getObjects("any_button_var1") + abc + "')]";
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(original)).getText().contains(strArg1));

        logger.info("Verified the" + strArg1 + "on" + abc + "screen" + "\n");
    }
    @Then("Click on the Same supplier name after supplier request and press Enter")
    public void click_on_the_supplier_name_and_press_Enter() throws InterruptedException {

        String original = ec.getObjects("span_contains_Txt") + TPRM.cName + ec.getObjects("tprm_supplier");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(original)).click();

        logger.info("Clicked on the Same supplier name" + "\n");

    }
    @Then("Show TPRM {string} tooltip {string} in {string}")
    public void show_tooltip_in(String Label, String TTexpected, String SubCat) {

        String original = ec.getObjects("p_input1") + Label + ec.getObjects("tprm_tooltip");
        String formatXPATH = String.format(original);

        WaitClass.webDriverWait(formatXPATH);

        String TTactual = driver.findElement(By.xpath(formatXPATH)).getText();

        assertTrue(TTactual.contains(TTexpected.trim()));

        logger.info("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");
        System.out.println("Showing " + Label + " Tool Tip: " + TTexpected + " in " + SubCat + "\n");

    }
    @Then("Verify the label {string} displayed on {string} page")
    public void verify_label(String label, String page) throws Throwable {
        String original = ec.getObjects("open_label1") + label + "')]";
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(original)).getText().contains(label));

        logger.info(" " + label + " " + " is displaying on "+page+ "\n");
        System.out.println(" " + label + " " + " is displaying on "+page+ "\n");
    }
    @Then("Verify the radio button for {string} displayed on {string} page at {string}")
    public void verify_radiobtn(String label, String page,String pos) throws Throwable {
        String original = ec.getObjects("tprm_p_contains_txt") + label + ec.getObjects("tprm_radiobtn")+pos+"]";
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info(" " + label + " " + " is displaying on "+page+ "\n");
        System.out.println(" " + label + " " + " is displaying on "+page+ "\n");
    }
    @Then("Verify {string} option is default selected on {string} for DUNS")
    public void verify_recommended_select(String label, String page) throws Throwable {
        String original = ec.getObjects("tprm_p_contains_txt") + page + ec.getObjects("tprm_recommend")+label+"']";
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info(" " + page + " " + " is displaying on "+label+ "\n");
        System.out.println(" " + page + " " + " is displaying on "+label+ "\n");
    }
    @Then("Verify {string} option is default selected on {string} for Moody's")
    public void verify_moody_recommended_select(String label, String page) throws Throwable {
        String original = ec.getObjects("tprm_p_contains_txt") + page + ec.getObjects("tprm_moodyRecom")+label+"']";
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info(" " + page + " " + " is displaying on "+label+ "\n");
        System.out.println(" " + page + " " + " is displaying on "+label+ "\n");
    }
    @Then("Verify potential match for {string} ID is selected on {string} at {string}")
    public void verify_selectedID(String label, String section,String pos) throws Throwable {
        String original = ec.getObjects("tprm_sectionID") + label + ec.getObjects("tprm_sectionID2")+pos+"]";
        String formatXPATH = String.format(original);
        String selectedID = ec.getObjects("tprm_selectedID1");
        String clickonID = ec.getObjects("tprm_p_contains_txt") + label + ec.getObjects("tprm_radiobtn")+pos+"]";
        driver.findElement(By.xpath(clickonID)).click();
       String ExpectedID = driver.findElement(By.xpath(formatXPATH)).getText();
       String ActualID = driver.findElement(By.xpath(selectedID)).getText().substring(10);
       assertTrue(ExpectedID.equals(ActualID));

        logger.info(" " + ExpectedID + " " + " is displaying on "+label+ "\n");
        System.out.println(" " + ExpectedID + " " + " is displaying on "+label+ "\n");
    }
    @Then("Verify potential match when {string} is selected on {string} at {string}")
    public void verify_selectednomatch(String label, String section,String pos) throws Throwable {
        String radioBtn = ec.getObjects("tprm_noMatch1") + label + ec.getObjects("tprm_nomatch2")+pos+ec.getObjects("Nomatch_radio_btn");
        String formatradioBtn = String.format(radioBtn);
        String actualTxt = ec.getObjects("tprm_selectedID1");
        String expectedTxt = ec.getObjects("tprm_noMatch1") + label +"r')])["+pos+"]";
        driver.findElement(By.xpath(formatradioBtn)).click();
        String ExpectedID = driver.findElement(By.xpath(expectedTxt)).getText();
        String ActualID = driver.findElement(By.xpath(actualTxt)).getText().substring(10);
        assertTrue(ExpectedID.equals(ActualID));

        logger.info(" " + ExpectedID + " " + " is displaying on "+label+ "\n");
        System.out.println(" " + ExpectedID + " " + " is displaying on "+label+ "\n");
    }
    @Then("Verify {string} is selected as {string}")
    public void verify_the_supplier_status_as(String string,String text) throws Throwable {
        String original = ec.getObjects("p_input1") + string + ec.getObjects("p_following_sibling");
        String formatXPATH = String.format(original);

        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(original)).getText().contains(text));
        logger.info( string + " " + " selected as " + text+"\n");
    }
    @Then("Click on {string} for {string} at {string}")
    public void clickOnNosuchmatch(String string,String text,String pos) throws Throwable {
        String original = ec.getObjects("tprm_p_contains_txt") + string + "')])["+pos+ec.getObjects("Nomatch_radio_btn");
        String formatXPATH = String.format(original);

        driver.findElement(By.xpath(formatXPATH)).click();
        logger.info( string + " " + " selected as " + text+"\n");
    }
    @Then("Verify {string} is displayed under {string}")
    public void verify_text_is_displyed(String string,String text) throws Throwable {
        String original = ec.getObjects("p_contains_txt") + string + "')]";
        String formatXPATH = String.format(original);

        WaitClass.webDriverWait(formatXPATH);
        assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
        logger.info( string + " " + " displyed under " + text+"\n");
    }
    @Then("Enter {string} Company Name on Invite Supplier modal")
    public void enter_Supplier_Company_Name_Invite_Supplier_modal(String cName) throws Throwable {
        String original = ec.getObjects("suppliercompanyname");
        String formatXPATH = String.format(original);
        TPRM.cName=cName;
        driver.findElement(By.xpath(formatXPATH)).sendKeys(cName);

        logger.info("Entered : " + "'" + cName+ "'" + " in Company Name field" + "\n");
    }
    @Then("Click on Businessname from supplier request")
    public void click_on_name() throws InterruptedException {
        String original = ec.getObjects("span_contains_Txt") + TPRM.cName + ec.getObjects("parentbutton");
        String formatXPATH = String.format(original);
        Actions builder = new Actions(driver);
        builder.moveToElement(driver.findElement(By.xpath(formatXPATH))).click().build().perform();
    }

    @Then("Verify {string} is displaying in supplier info screen")
    public void verify_supplier_info(String label) throws Throwable {
        String original = ec.getObjects("span_contains_Txt") + label + ec.getObjects("tprm_companyName");
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(InviteSupplierPage.companyname));

        logger.info(" " + label + " " + " is displaying supplier info screen "+"\n");
        System.out.println(" " + label + " " + " is displaying on supplier info screen "+"\n");
    }
    @Then("Verify {string} displaying in supplier info screen")
    public void verify_supplier_business_info(String label) throws Throwable {
        String original = ec.getObjects("span_contains_Txt") + label + ec.getObjects("tprm_businessName");
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).getText().contains(CommonStepDefs.legalBusinessName));

        logger.info(" " + label + " " + " is displaying supplier info screen "+"\n");
        System.out.println(" " + label + " " + " is displaying on supplier info screen "+"\n");
    }
    @Then("Verify company address displaying in supplier info screen")
    public void verify_supplier_companyAddress_info() throws Throwable {
        String original = ec.getObjects("tprm_companyAddress");
        String formatXPATH = String.format(original);

        assertTrue(driver.findElement(By.xpath(formatXPATH)).isDisplayed());

        logger.info(" Company address is displaying supplier info screen "+"\n");
        System.out.println(" Company address is displaying supplier info screen "+"\n");
    }
}
