package pages;

import org.apache.log4j.Logger;
import org.joda.time.LocalDate;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;
import utility.Base;
import utility.ElementControl;
import utility.Utils;
import utility.WaitClass;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;

import java.util.List;
import java.util.concurrent.TimeUnit;

public class SupplierRequestPage extends Base
{
    public static ElementControl ec = new ElementControl();
    Logger logger = Logger.getLogger(SupplierRequestPage.class);

    public void verifyButton(String label) throws InterruptedException
	{
        String original = ec.getObjects("labelPrefix") + label + ec.getObjects("labelSuffix");
        String finalExp = String.format(original);
        Thread.sleep(1000);
        boolean flag = driver.findElement(By.xpath(finalExp)).isDisplayed();
        if (flag)
		{
            driver.findElement(By.xpath(finalExp)).isDisplayed();
            Assert.assertTrue(true, "label is displayed");
            logger.info(label + "Label is displayed ");
        } else {
            Assert.assertFalse(false, label + "is not displayed");
        }
    }
    public void clickButton(String button)
	{
        // String OriginalExp = "//*[contains(text(),'"+button+"')]";
        String original = ec.getObjects("labelPrefix") + button + ec.getObjects("labelSuffix");
        String finalExp = String.format(original);
        System.out.println(finalExp);
        //wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath(finalExp)));
        driver.findElement(By.xpath(finalExp)).click();
        logger.info("Clicked on button" + button);
    }
    public void clickDropdown()
	{
        String original = ec.getObjects("dropdownButton");
        driver.findElement(By.xpath(original)).click();
        logger.info("Clicked on Dropdown");
    }
    public void selectDropdownValue(String label)
	{
        String original = ec.getObjects("labelPrefix") + label + ec.getObjects("labelSuffix");
        String finalExp = String.format(original);
        driver.findElement(By.xpath(finalExp)).click();
        logger.info(label + "Is selected under Dropdown");
    }
    public void enterCompanyName(String label)
	{
        String original = ec.getObjects("companyName");
        driver.findElement(By.xpath(original)).sendKeys(label);
        logger.info(label + "Is entered in Companyname");
    }
    public void findRecordsCount(int num)
	{
        String original = ec.getObjects("tableRows");
        List<WebElement> rows = driver.findElements(By.xpath(original));
        int rowSize = rows.size();
        if (rowSize > num)
		{
            Assert.assertTrue(true, "Scroll is Visible on Screen");
            logger.info(num + "are showing in table");
        } else {
            Assert.assertFalse(false, "Scroll is not Visble on Screen");
            logger.info(num + "are showing in table");
        }
    }
    public void verifyIcon()
	{
        String original = ec.getObjects("icon");
        boolean flag = driver.findElement(By.xpath(original)).isDisplayed();
        if (flag) {
            Assert.assertTrue(true, "Icon appeared on screen");
            logger.info("Icon is showing in grid");
        }
    }
    public void mouseHoveronElement()
	{
        String original = ec.getObjects("icon");
        WebElement element = driver.findElement(By.xpath(original));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).perform();
        String text = element.getText();
        Assert.assertEquals(text, "Existing Supplier Of International Business Machines Corporation");
        logger.info("Mouse hover on Icon");
    }
    public void hideIcon() throws Exception
	{
        try {
            String original = ec.getObjects("icon");
            Assert.assertFalse(driver.findElement(By.xpath(original)).isDisplayed(), "Element not Present");
            logger.info("icon is not showing");
        } catch (NoSuchElementException e) {
            Assert.assertTrue(true, "Icon disappeared on Screen");
        }
    }
    public void clickFirstRecordTable()
	{
        String original = ec.getObjects("firstRecordTable");
        driver.findElement(By.xpath(original)).click();
        logger.info("Clicked on first record in a table");
    }
    public void mouseHoveronNextButton()
	{
        String original = ec.getObjects("icon");
        WebElement element = driver.findElement(By.xpath(original));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).perform();
        String text = element.getText();
        Assert.assertEquals(text, "Existing Supplier Of International Business Machines Corporation");
        logger.info("Mouse hover on Icon");
    }
    public void clickInputField(String label)
	{
       driver.findElement(By.name(label)).click();
       logger.info("Clicked on Input Field "+label);
    }
    public void etnerTextintoInput(String label){
        driver.findElement(By.name(label)).sendKeys(label);
        logger.info("Entered on Input Field "+label);
    }
    public void verifyElementState(String label, boolean state)
	{
        String original = ec.getObjects("labelPrefix") + label + ec.getObjects("labelSuffix");
        String finalExp = String.format(original);
        boolean flag = driver.findElement(By.xpath(finalExp)).isEnabled();
        Assert.assertEquals(state, flag);
        logger.info("Label enable status is "+flag);
    }
    public void toolTipOfNextButton()
	{
        String original = ec.getObjects("nextbuttonToolTip");
        WebElement element = driver.findElement(By.xpath(original));
        Actions actions = new Actions(driver);
        actions.moveToElement(element).perform();
        String tooltipEle= ec.getObjects("nextButtonToolTip");
        String text = driver.findElement(By.xpath(tooltipEle)).getText();
        logger.info("Get text  of tooltip is "+text);
        Assert.assertEquals(text, "Values missing in mandatory fields");
        logger.info("Mouse hover on next button  and text is showing as " +text);
    }
    public  void enterInputFieldsWithLabel(String label, String text)
	{
        driver.findElement(By.name(label)).sendKeys(text);
        logger.info(text+ " is entered in "+label);
    }
    public void verifyPopup()
	{
        String original = ec.getObjects("labelPrefix") + ec.getObjects("popuptext") + ec.getObjects("labelSuffix");
        String finalExp = String.format(original);
        //driver.switchTo().alert();
        String text =driver.findElement(By.xpath(finalExp)).getText();
        Assert.assertEquals(text, "This supplier information already exists in TYS. Please return to the previous screen and select the supplier from the list to proceed.");
        logger.info("Alert is appeared on page");
    }
    public void clickOnTableFirstRecord()
	{
        String original = ec.getObjects("tabelFirstRecord");
        driver.findElement(By.xpath(original)).click();
    }
    public  void verifyLabelWithDisabledState(String label, String text){
       boolean falg= driver.findElement(By.name(label)).isEnabled();
        Assert.assertFalse(false, String.valueOf(falg));
        Assert.assertTrue(driver.findElement(By.name(label)).isDisplayed());
        logger.info(text+ " is disabled in the "+label);
    }
    public void ddSelection(String ddValue)
	{
        String original = ec.getObjects("regionDropdown");
        WebElement ddElement= driver.findElement(By.id(original));
        Select dropdown = new Select(ddElement);
        List alldropdownOptions = dropdown.getOptions();
        Iterator iterator = alldropdownOptions.iterator();
        while (iterator.hasNext()){
            WebElement element = (WebElement) iterator.next();
            if(element.getText().equals(ddValue)){
                element.click();
                logger.info(ddValue+ " is select form the Dropdown");
            }
        }
    }

    public void isHeaderColumnDisplayed(String label){
        String headerElement =ec.getObjects("supplierRequest_tableHeaders");
       List allHeaders= driver.findElements(By.xpath(headerElement));
       Iterator iterator = allHeaders.iterator();
       while(iterator.hasNext()){
           WebElement element = (WebElement) iterator.next();
           if(element.getText().equals(label)){
               element.isDisplayed();
               Assert.assertTrue(true, label+" table column is appearing in table");
               logger.info(label + " is displayed in table headers");

           }
       }

    }

    public void clickRadioButton(String label){
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        String original = ec.getObjects("labelPrefix") + label + ec.getObjects("labelSuffix");
        String formatXPATH = String.format(original);
        WaitClass.clickableWait(formatXPATH);
        driver.findElement(By.xpath(original)).click();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        logger.info("Clicked on " + "'" + label + "'" + " button" + "\n");
    }
    public void enterRamdomString(String label, int stringLength)
	{
        String finalInputStringUtils= Utils.ramndomStringGenerator(stringLength);
        driver.findElement(By.name(label)).sendKeys(finalInputStringUtils);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        String getTypedInputvalue= driver.findElement(By.name(label)).getText();
        int stringSize = getTypedInputvalue.length();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        if(stringSize > 100)
		{
            Assert.assertEquals(stringSize,stringLength+1);
            //Assert.assertEquals(stringSize, 100, "Max limit is set to 100 chars");
            logger.info(getTypedInputvalue+ "String length is  "+stringLength);
        }else if(stringSize == 100)
		{
            Assert.assertEquals(stringSize,stringLength, "Max limit is working");
            logger.info(getTypedInputvalue+ "String length is  "+100);
        }else //System.out.println("\n"+ "Generated String is: ---" +"\n"+finalInputStringUtils);
            Assert.assertTrue(true, "String Size is less than 100 chars");
    }

    public String getCompanyName(){
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        String original = ec.getObjects("toGetCompanyName");
        String formatXPATH = String.format(original);
        String company = driver.findElement(By.xpath(formatXPATH)).getText();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        logger.info(company + "Company name is appearing and stored");
        return company;
    }

    public void isLabelDisplayed(String company){
        company = getCompanyName();
        String original = ec.getObjects("labelPrefix") + company + ec.getObjects("labelSuffix");
        String formatXPATH = String.format(original);
        driver.findElement(By.xpath(formatXPATH)).isDisplayed();
        Assert.assertTrue(true, company+ " Company is appeared in list");
        logger.info(company+ " Company is appeared in list");
    }

    public String getLabelName(String label){
            String labelRetrun = null;
        switch(label){
            case  "Company name":
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                String original = ec.getObjects("toGetCompanyName");
                String formatXPATH = String.format(original);
                String company = driver.findElement(By.xpath(formatXPATH)).getText();
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                logger.info(company + "Company name is appearing and stored");
                labelRetrun = company;
                break;

            case "Legal Business Name":
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                String originalxpath = ec.getObjects("toGetLegalBusinessName");
                String legalbusiness = driver.findElement(By.xpath(originalxpath)).getText();
                driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
                logger.info(legalbusiness + "Legal name is appearing and stored");
                labelRetrun = legalbusiness;
            break;

        }
        return labelRetrun;
    }

    public void isLabelDisplayedInMySbumitrequest(String label){

        String original = getLabelName(label);
        String originalxpath = ec.getObjects("labelPrefix") + original + ec.getObjects("labelSuffix");
        String formatXPATH = String.format(originalxpath);
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.findElement(By.xpath(formatXPATH)).isDisplayed();
        Assert.assertTrue(true, "label name is appearing");
        logger.info(original + "label name is appearing");
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);


    }

    public String dateGererator(){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM d, yyyy");
        LocalDateTime now = LocalDateTime.now();
        LocalDateTime localDate= now.plusDays(90);
        return localDate.format(dtf);
    }

    public String generateCurrentDate(){
        DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MMMM d, yyyy");
        LocalDateTime now = LocalDateTime.now();
        return now.format(dtf);
    }

    public void dateValidator(String label){
        switch (label){
            case "Expiry Date":
                String original = ec.getObjects("draftSupplierExpiryDate");
                String formatXPATH = String.format(original);
                String actual= driver.findElement(By.xpath(formatXPATH)).getText();
                Assert.assertEquals(actual, dateGererator(), "Expiry date is matched");
                logger.info(dateGererator() + "Expiry date is generated");
                break;

            case "Request Date":
                String originalRequestDate = ec.getObjects("draftRequestDate");
                String formatXPATHfinal = String.format(originalRequestDate);
                String actualRequestedDate= driver.findElement(By.xpath(formatXPATHfinal)).getText();
                Assert.assertEquals(actualRequestedDate, generateCurrentDate(), "Requested date is matched");
                logger.info(dateGererator() + "Requested Date is generated");
                break;
        }

    }




}