package stepdefinition;

import java.util.ArrayList;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.Select;
import static org.testng.Assert.assertTrue;
import static org.testng.Assert.assertFalse;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class CountriesList extends DriverEngine {
    public static ElementControl ec = new ElementControl();
    List<String> list=new ArrayList<String>();  

    

    @Then("Get the list of Countries from country dropdown is {int}")
    public void get_the_list_of_countries_from_country_dropdown_is_something(Integer noOfCountries) throws Throwable {

    String original = ec.getObjects("selectcountry_class");
    String formatXPATH = String.format(original);

    WaitClass.webDriverWait(formatXPATH);
    Select countrylist = new Select(driver.findElement(By.xpath(ec.getObjects("selectcountry_class"))));
    List <WebElement> op = countrylist.getOptions();
    int size = op.size();
    boolean isCountrylist = false;
    if(size==noOfCountries){
        isCountrylist = true;
    }
    System.out.println(op.size());
    for(int i =0; i<size ; i++){
       String options = op.get(i).getText();
       System.out.println(options);
    }
    assertTrue(isCountrylist);
    //logger.info("No of countries listed in Bank account country dropdown = " + noOfCountries);
		System.out.println("No of countries listed in Bank account country dropdown = " + noOfCountries);
    
}
@Then("Get the  list of Countries from country dropdown in {string} Questionnaires")
public void get_the_list_of_Countries_from_country_dropdown_in_Questionnaires(String string) {
    List<WebElement> countries_count = driver.findElements(By.cssSelector("div.optionListContainer li"));
    List<WebElement> countries_count1 = driver.findElements(By.xpath("countries_checkbox"));
    for(WebElement countries:countries_count1)
         System.out.println("Text is : " + countries.getAttribute("innerHTML").toString());
    

    //logger.info("No of countries listed in Company Operations dropdown" + countries_count.size());
    System.out.println("No of countries listed in Company Operations dropdown" + countries_count.size());
}

@Then("Verify Listed Countries in Questionnaire with actual Countries {int} is {string}")
    public void verify_listed_countries_in_questionnaire_with_actual_countries_something_is_something(Integer count,String strArg1) throws Throwable {
    
        Thread.sleep(3000);
		String original = ec.getObjects("banknavlink");
		String formatXPATH = String.format(original);
		WaitClass.clickableWait(formatXPATH);
		driver.findElement(By.xpath(original)).click();
		//logger.info("Click on Bank Account tab on Dashboard" + "\n");
		System.out.println("Click on Bank Account on Dashboard " + "\n");
		Thread.sleep(3000);
        String add_bank = "Add a Bank account";
        String bank = ec.getObjects("ownership_button_variable") + add_bank + "')]";
		String formatbankXPATH = String.format(bank);
		Thread.sleep(2000);
		WaitClass.clickableWait(formatbankXPATH);
		driver.findElement(By.xpath(bank)).click();
		Thread.sleep(1000);
		//logger.info("Clicked on " + "'" + string + "'" + " button" + "\n");
		System.out.println("Clicked on " + "'" + add_bank + "'" + " button" + "\n");
		Thread.sleep(2000);
    String country_class = ec.getObjects("selectcountry_class");
    String formatcountryXPATH = String.format(country_class);
    WaitClass.webDriverWait(formatcountryXPATH);
    Select countrylist = new Select(driver.findElement(By.xpath(ec.getObjects("selectcountry_class"))));
    List <WebElement> op = countrylist.getOptions();
    int size = op.size();
    boolean isCountrylist = true;
    if(size==count){
        isCountrylist = false;
    }
    System.out.println(op.size());
    for(int i =0; i<size ; i++){
       String options = op.get(i).getText();
       System.out.println(options);
    }
    //logger.info("No of countries listed in Bank account country dropdown = " + count);
		System.out.println("No of countries listed in Bank account country dropdown = " + count);
        Thread.sleep(5000);
        String tab ="Questionnaires";
		String questab = ec.getObjects("sideBar_tabs_var1") + tab + ec.getObjects("inputfield_end");
		String formatquestabXPATH = String.format(questab);
		WaitClass.clickableWait(formatquestabXPATH);
		driver.findElement(By.xpath(questab)).click();
		//logger.info("Clicked on " + tab + " tab" + "\n");
		System.out.println("Clicked on " + tab + " tab" + "\n");
        String publishedQ = ec.getObjects("published");		
		String formatqpublishedXPATH = String.format(publishedQ);
		WaitClass.webDriverWait(formatqpublishedXPATH);
		driver.findElement(By.xpath(ec.getObjects("published"))).click();
    	//logger.info("Click upon Dashboard Tab on Dashboard page"+"\n");
    	System.out.println("Clicked on Published"+"\n");
        Thread.sleep(3000);
        String edit = "Edit Answers";
		String edit_answers = ec.getObjects("CH_variable_button") + edit + "')]";
		String formateditXPATH = String.format(edit_answers);
		WaitClass.clickableWait(formateditXPATH);
		driver.findElement(By.xpath(edit_answers)).click();
		Thread.sleep(2000);
		System.out.println("Clicked on " + "'" + edit_answers + "'" + " button" + "\n");
        List<WebElement> countries_count = driver.findElements(By.cssSelector("div.optionListContainer li"));
    for(WebElement countries:countries_count)
         System.out.println("Text is : " + countries.getAttribute("innerHTML").toString());
    //logger.info("No of countries listed in Company Operations dropdown" + countries_count.size());
    System.out.println("No of countries listed in Company Operations dropdown" + countries_count.size());
        assertFalse(isCountrylist,strArg1);
        System.out.println("-----------------------"+countries_count.size());
        System.out.println("-----------------------"+op.size());
    
}

@Then("^Click published link$")
    public void click_published_link() throws Throwable {
        String original = ec.getObjects("published");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("published"))).click();
    	//logger.info("Click upon Dashboard Tab on Dashboard page"+"\n");
    	System.out.println("Click upon Dashboard Tab on Dashboard page"+"\n");
    }


}
