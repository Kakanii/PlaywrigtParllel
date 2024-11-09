package stepdefinition;

import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.Then;


public class SsoConfiguration extends DriverEngine
{
	public static ElementControl ec = new ElementControl();
	
	Logger logger=Logger.getLogger(SsoConfiguration.class);
	
	@Then("Click on SSO Configuration Tab")
    public void click_on_sso_configuration_tab() throws Throwable 
	{	
		String original = ec.getObjects("sso_configuration_tab");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on SSO Configuration Tab"+"\n");
		System.out.println("Click on SSO Configuration Tab"+"\n");
		Thread.sleep(3000);
	}
	
	@Then("Strategy dropdown should be clickable {string}")
	public void strategy_dropdown_should_be_clickable_something(String string) throws Throwable 
	{	
		String original = ec.getObjects("strategy_dropdown");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();		
		logger.info("Click on Strategy Dropdown"+"\n");
		System.out.println("Click on Strategy Dropdown"+"\n");
	}
	
	@Then("SSO Configuration Title text Visibility {string}")
    public void sso_configuration_title_text_visibility(String string) throws Throwable
	{
		String original = ec.getObjects("sso_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}
	
	@Then("Single Sign On Checkbox Title Visibility {string}")
    public void single_sign_on_checkbox_title_visibility(String string) throws Throwable
	{
		String original = ec.getObjects("is_ssoenabled_checkboxtext");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
    	logger.info("Showing title" +" "+ string +" "+ "on window"+"\n"); 
    	System.out.println("Showing title" +" "+ string +" "+ "on window"+"\n");
	}
	
	@Then("Save Changes button Visiblility {string}")
    public void save_changes_button_visiblility(String string) throws Throwable
	{
		String original = ec.getObjects("save_changes");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Save Changes button visible "+ string +" on SSO Configuration page"+"\n"); 
    	System.out.println("Save Changes visible "+ string +" on SSO Configuration page"+"\n");
	}


	@Then("Save Changes button is not clickable {string}")
    public void save_changes_button_is_not_clickable(String string) throws Throwable
	{
		String original = ec.getObjects("save_changes");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
   		boolean isEnabled = driver.findElement(By.xpath(original)).isEnabled();	
   		
   		if (isEnabled) {
   			
   	logger.info("Save Changes button is enabled "+ string +" on SSO Configuration page"+"\n"); 
    System.out.println("Save Changes is enabled "+ string +" on SSO Configuration page"+"\n");
	}
   		else {
		//asserTrue(driver.findElement(By.xpath(original)).isEnabled());
   		logger.info("Save Changes button is Disabled "+ string +" on SSO Configuration page"+"\n"); 
   	   	System.out.println("Save Changes is Disabled "+ string + " on SSO Configuration page"+"\n");
	}
	}	
	
	@Then("Is Single Sign On Enabled Checkbox Available")
    public void is_single_sign_on_enabled_checkbox_available() throws Throwable
	{
		String original = ec.getObjects("is_ssoenabled_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Is SSO Check Box" + " "+ "available"+"\n"); 
    	System.out.println("Is SSO Check Box" +" "+ "available"+"\n");
	}
	
	@Then("Is Single Sign On Enabled Checkbox Clickable")
    public void is_single_sign_on_enabled_checkbox_clickable() throws Throwable
	{
		String original = ec.getObjects("is_ssoenabled_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		if (!driver.findElement(By.xpath(original)).isSelected())
		{
		     driver.findElement(By.xpath(original)).click();
		}
    	logger.info("Is SSO Check Box is Clickable"+"\n"); 
    	System.out.println("Is SSO Check Box is Clickable"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Is Single Sign On Enabled Checkbox {string}")
	public void tool_tip_available_on_mouse_hover_for_is_single_sign_on_enabled_checkbox_something(String string) throws Throwable
	{
		String original = ec.getObjects("is_ssoenabled_checkbox_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Is SSO Enabled Checkbox Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Is SSO Enabled Checkbox Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Strategy {string}")
	public void tool_tip_available_on_mouse_hover_for_strategy_something(String string) throws Throwable
	{
		String original = ec.getObjects("strategy_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Strategy Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Strategy Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Base URL {string}")
	public void tool_tip_available_on_mouse_hover_for_base_url_something(String string) throws Throwable
	{
		String original = ec.getObjects("base_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Base URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Base URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Client ID {string}")
	public void tool_tip_available_on_mouse_hover_for_client_id_something(String string) throws Throwable
	{
		String original = ec.getObjects("client_id_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Client ID Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Client ID Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Client Secret {string}")
	public void tool_tip_available_on_mouse_hover_for_client_secret_something(String string) throws Throwable
	{
		String original = ec.getObjects("client_secret_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Client Secret Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Client Secret Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Return URL {string}")
	public void tool_tip_available_on_mouse_hover_for_return_url_something(String string) throws Throwable
	{
		String original = ec.getObjects("return_url_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Return URL Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Return URL Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Scope {string}")
	public void tool_tip_available_on_mouse_hover_for_scope_something(String string) throws Throwable
	{
		String original = ec.getObjects("scope_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Scope Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Scope Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Response Type {string}")
	public void tool_tip_available_on_mouse_hover_for_response_type_something(String string) throws Throwable
	{
		String original = ec.getObjects("response_type_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Response Type Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Response Type Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Authorize URI {string}")
	public void tool_tip_available_on_mouse_hover_for_authorize_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("authorize_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Authorize URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Authorize URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Token URI {string}")
	public void tool_tip_available_on_mouse_hover_for_token_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("token_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Token URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Token URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Introspect URI {string}")
	public void tool_tip_available_on_mouse_hover_for_introspect_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("introspect_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Introspect URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Introspect URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Userinfo URI {string}")
	public void tool_tip_available_on_mouse_hover_for_userinfo_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("userinfo_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Userinfo URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Userinfo URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Revoke URI {string}")
	public void tool_tip_available_on_mouse_hover_for_revoke_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("revoke_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Revoke URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Revoke URI Field"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Logout URI {string}")
	public void tool_tip_available_on_mouse_hover_for_logout_uri_something(String string) throws Throwable
	{
		String original = ec.getObjects("logout_uri_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Logout URI Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Logout URI Field"+"\n");
	}
	
	
	@Then("Choose {string} From the Strategy Dropdown")
    public void choose_something_from_the_strategy_dropdown(String string) throws Throwable{
	   
    	String original = ec.getObjects("select_strategy");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		Select drpstrategy = new Select(driver.findElement(By.xpath(original)));
		drpstrategy.selectByVisibleText(string);

		logger.info("Selected " +" "+ string + " "+ "from the drop down list"+"\n"); 
    	System.out.println("selected" +" "+ string + " "+ "from the drop down list"+"\n");
	}
	
	@Then("Base URL field text Visibility {string}")
	public void base_url_field_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("baseuri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Base URL Free From Text Box Availability")
	public void base_url_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("baseuri_textfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for BASE URL field"+"\n"); 
    	System.out.println("Free From Text Box Available for BASE URL field"+"\n");
	}
	
	@Then("Title of Client ID Text Visibility {string}")
	public void title_of_client_id_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("clientid_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Free From Text Box for client id Availability")
    public void free_from_text_box_for_client_id_availability() throws Throwable
	{
		String original = ec.getObjects("clientid_textfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Client ID field"+"\n"); 
    	System.out.println("Free From Text Box Available for Client ID field"+"\n");
	}
	
	
	@Then("Title of Client Secret Text Visibility {string}")
	public void title_of_client_secret_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("client_secret_field_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Free From Text Box for Client Secret Availability")
	public void free_from_text_box_for_client_secret_availability() throws Throwable
	{
		String original = ec.getObjects("client_secret_field_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Client Secret field"+"\n"); 
    	System.out.println("Free From Text Box Available for Client Secret field"+"\n");
	}
	
	@Then("Title of Return URL Text Visibility {string}")
	public void title_of_return_url_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("return_url_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Return URL Free From Text Box Availability")
	public void return_url_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("return_url_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Return URL field"+"\n"); 
    	System.out.println("Free From Text Box Available for Return URL field"+"\n");
	}
	
	@Then("Title of Scope Text Visibility {string}")
	public void title_of_scope_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("scope_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Scope Free From Text Box Availability")
    public void scope_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("scope_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Scope field"+"\n"); 
    	System.out.println("Free From Text Box Available for Scope field"+"\n");
	}
	
	@Then("Title of Response Type Text Visibility {string}")
	public void title_of_response_type_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("response_type_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Response Type Free From Text Box Availability")
	public void response_type_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("responsetype_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Response Type field"+"\n"); 
    	System.out.println("Free From Text Box Available for Response Type field"+"\n");
	}
	
	@Then("Title of Authorize URI Text Visibility {string}")
	public void title_of_authorize_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("authorize_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Authorize URI Free From Text Box Availability")
	public void authorize_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("authorizeuri_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Authorize URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Authorize URI field"+"\n");
	}
	
	@Then("Title of Token URI Text Visibility {string}")
	public void title_of_token_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("token_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Token URI Free From Text Box Availability")
	public void token_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("tokenuri_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Token URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Token URI field"+"\n");
	}
	
	@Then("Title of Introspect URI Text Visibility {string}")
	public void title_of_introspect_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("introspect_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Introspect URI Free From Text Box Availability")
	public void introspect_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("introspecturi_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Introspect URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Introspect URI field"+"\n");
	}
	
	@Then("Title of Userinfo URI Text Visibility {string}")
	public void title_of_userinfo_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("userinfo_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Userinfo URI Free From Text Box Availability")
	public void userinfo_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("userinfouri_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Userinfo URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Userinfo URI field"+"\n");
	}
	
	@Then("Title of Revoke URI Text Visibility {string}")
	public void title_of_revoke_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("revoke_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("^Revoke URI Free From Text Box Availability")
	public void revoke_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("revooke_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Revoke URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Revoke URI field"+"\n");
	}
	
	@Then("Title of Logout URI Text Visibility {string}")
	public void title_of_logout_uri_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("logout_uri_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Logout URI Free From Text Box Availability")
	public void logout_uri_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("logout_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Logout URI field"+"\n"); 
    	System.out.println("Free From Text Box Available for Logout URI field"+"\n");
	}
	
	@Then("Select a protocol from the strategy dropdown {string}")
	public void select_a_protocol_from_the_strategy_dropdown_something(String string) throws Throwable{
	   
    	String original = ec.getObjects("saml_protocol");
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		Select ssostrategyselection = new Select(driver.findElement(By.xpath(original)));
		
		ssostrategyselection.selectByVisibleText(string);

		logger.info("Selected" +" "+ string + " "+ "from the drop down list"+"\n"); 
    	System.out.println("Selected" +" "+ string + " "+ "from the drop down list"+"\n");
	}
	
	@Then("Title of SAML Login URL Text Visibility {string}")
	public void title_of_saml_login_url_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("saml_loginurl_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For SAML Login URL {string}")
	public void tool_tip_available_on_mouse_hover_for_saml_login_url_something(String string) throws Throwable
	{
		String original = ec.getObjects("saml_loginurl_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for SAML Login URL Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for SAML Login URL Field"+"\n");
	}
	
	@Then("SAML Login URL Free From Text Box Availability")
	public void saml_login_url_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("saml_loginurl_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for SAML Login URL field"+"\n"); 
    	System.out.println("Free From Text Box Available for SAML Login URL field"+"\n");
	}
	
	@Then("Title of SAML EntityID Text Visibility {string}")
	public void title_of_saml_entityid_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("saml_entityid_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For SAML EntityID {string}")
	public void tool_tip_available_on_mouse_hover_for_saml_entityid_something(String string) throws Throwable
	{
		String original = ec.getObjects("saml_entityid_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for SAML EntityID Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for SAML EntityID Field"+"\n");
	}
	
	@Then("SAML EntityID Free From Text Box Availability")
	public void saml_entityid_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("saml_entityid_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for SAML EntityID field"+"\n"); 
    	System.out.println("Free From Text Box Available for SAML EntityID field"+"\n");
	}
	
	@Then("Title of ACS URL Text Visibility {string}")
	public void title_of_acs_url_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("acs_url_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For ACS URL {string}")
	public void tool_tip_available_on_mouse_hover_for_acs_url_something(String string) throws Throwable
	{
		String original = ec.getObjects("acs_url_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for ACS URL Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for ACS URL Field"+"\n");
	}
	
	@Then("ACS URL Free From Text Box Availability")
	public void acs_url_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("acs_url_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for ACS URL field"+"\n"); 
    	System.out.println("Free From Text Box Available for ACS URL field"+"\n");
	}
	
	@Then("Title of Relay State Text Visibility {string}")
	public void title_of_relay_state_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("relay_state_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Relay State {string}")
	public void tool_tip_available_on_mouse_hover_for_relay_state_something(String string) throws Throwable
	{
		String original = ec.getObjects("relay_state_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Relay State Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Relay State Field"+"\n");
	}
	
	@Then("Relay State Free From Text Box Availability")
	public void relay_state_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("relay_state_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Relay State field"+"\n"); 
    	System.out.println("Free From Text Box Available for Relay State field"+"\n");
	}
	
	@Then("Title of Name ID Format Text Visibility {string}")
	public void title_of_name_id_format_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("name_id_format_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Name ID Format {string}")
	public void tool_tip_available_on_mouse_hover_for_name_id_format_something(String string) throws Throwable
	{
		String original = ec.getObjects("name_id_format_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Name ID Format Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Name ID Format Field"+"\n");
	}
	
	@Then("Name ID Format Free From Text Box Availability")
	public void name_id_format_free_from_text_box_availability() throws Throwable
	{
		String original = ec.getObjects("name_id_format_inputfield");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Free From Text Box Available for Name ID Format field"+"\n"); 
    	System.out.println("Free From Text Box Available for Name ID Format field"+"\n");
	}
	
	@Then("Title of Attach X509 Certificate Text Visibility {string}")
	public void title_of_attach_x509_certificate_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("attach_x509_certificate_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Attach X509 Certificate {string}")
	public void tool_tip_available_on_mouse_hover_for_attach_x509_certificate_something(String string) throws Throwable
	{
		String original = ec.getObjects("attach_x509_certificate_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Attach X509 Certificate Format File Picker Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Attach X509 Certificate Format File Picker Field"+"\n");
	}
	
	@Then("Attach X509 Certificate Upload File Picker Availability")
	public void attach_x509_certificate_upload_file_picker_availability() throws Throwable
	{
		String original = ec.getObjects("attach_x509_certificate_upload_field");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Upload File Picker Available for Attach X509 Certificate field"+"\n"); 
    	System.out.println("Upload File Picker Available for Attach X509 Certificate field"+"\n");
	}
	
	@Then("Attach X509 Certificate Note Availability for Accepted File Types {string}")
	public void attach_x509_certificate_note_availability_for_accepted_file_types_something(String string) throws Throwable
	{
		String original = ec.getObjects("attach_x509_certificate_note");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Accepted file types Note Available for Attach X509 Certificate field"+"\n"); 
    	System.out.println("Accepted file types Note Available for Attach X509 Certificate field"+"\n");
	}
	
	@Then("Title of Private Key Text Visibility {string}")
	public void title_of_private_key_text_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("private_key_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Private Key {string}")
	public void tool_tip_available_on_mouse_hover_for_private_key_something(String string) throws Throwable
	{
		String original = ec.getObjects("private_key_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Private Key Format File Picker Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Private Key Format File Picker Field"+"\n");
	}
	
	@Then("Private Key Upload File Picker Availability")
	public void private_key_upload_file_picker_availability() throws Throwable
	{
		String original = ec.getObjects("private_key_upload");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Upload File Picker Available for Private Key field"+"\n"); 
    	System.out.println("Upload File Picker Available for Private Key field"+"\n");
	}
	
	@Then("Private Key Note Availability for Accepted File Types {string}")
	public void private_key_note_availability_for_accepted_file_types_something(String string) throws Throwable
	{
		String original = ec.getObjects("private_key_note");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Accepted file types note  Available for Private Key field"+"\n"); 
    	System.out.println("Accepted file types note Available for Private Key field"+"\n");
	}
	
	
	@Then("Title of Allow Unencrypted Assertion  Visibility {string}")
	public void title_of_allow_unencrypted_assertion_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("allow_unencrypted_assertion_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Allow Unencrypted Assertion {string}")
	public void tool_tip_available_on_mouse_hover_for_allow_unencrypted_assertion_something(String string) throws Throwable
	{
		String original = ec.getObjects("allow_unencrypted_assertion_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Allow Unencrypted Assertion Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Allow Unencrypted Assertion Field"+"\n");
	}
	
	@Then("Allow Unencrypted Assertion CheckBox Availability")
	public void allow_unencrypted_assertion_checkbox_availability() throws Throwable
	{
		String original = ec.getObjects("allow_unencrypted_assertion_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Allow Unencrypted Assertion check box is available "+"\n"); 
    	System.out.println("Allow Unencrypted Assertion check box is available"+"\n");
	}
	
	@Then("Verify if Allow Unencrypted Assertion is Clickable")
	public void verify_if_allow_unencrypted_assertion_is_clickable() throws Throwable
	{
		String original = ec.getObjects("allow_unencrypted_assertion_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		if (!driver.findElement(By.xpath(original)).isSelected())
		{
		     driver.findElement(By.xpath(original)).click();
		}
    	logger.info("Allow Unencrypted Assertion is Clickable"+"\n"); 
    	System.out.println("Allow Unencrypted Assertion is Clickable"+"\n");
	}
	
	@Then("Title of SignIn Get Request Visibility {string}")
	public void title_of_signin_get_request_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("signIn_get_request_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For SignIn Get Request {string}")
	public void tool_tip_available_on_mouse_hover_for_signin_get_request_something(String string) throws Throwable
	{
		String original = ec.getObjects("signIn_get_request_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Sign in Get Request Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Sign in Get Request Field"+"\n");
	}
	
	@Then("SignIn Get Request CheckBox Availability")
	public void signin_get_request_checkbox_availability() throws Throwable
	{
		String original = ec.getObjects("signIn_get_request_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("SignIn Get Request CheckBox field is available"+"\n"); 
    	System.out.println("SignIn Get Request CheckBox field is available"+"\n");
	}
	
	@Then("Verify if SignIn Get Request is Clickable")
	public void verify_if_signin_get_request_is_clickable() throws Throwable
	{
		String original = ec.getObjects("signIn_get_request_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		if (!driver.findElement(By.xpath(original)).isSelected())
		{
		     driver.findElement(By.xpath(original)).click();
		}
    	logger.info("SignIn Get Request is Clickable"+"\n"); 
    	System.out.println("SignIn Get Request is Clickable"+"\n");
	}
	
	
	@Then("Title of Force Authentication Visibility {string}")
	public void title_of_force_authentication_visibility_something(String string) throws Throwable
	{
		String original = ec.getObjects("force_authentication_title");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(),string);
    	logger.info("Title "+ string +" Available"+"\n"); 
    	System.out.println("Title "+ string +" Available"+"\n");
	}
	
	@Then("Tool Tip Available on Mouse Hover For Force Authentication {string}")
	public void tool_tip_available_on_mouse_hover_for_force_authentication_something(String string) throws Throwable
	{
		String original = ec.getObjects("force_authentication_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+"is the tooltip for Force Authentication Field"+"\n"); 
    	System.out.println(" "+ string +" "+"is the tooltip for Force Authentication Field"+"\n");
	}
	
	@Then("Force Authentication CheckBox Availability")
	public void force_authentication_checkbox_availability() throws Throwable
	{
		String original = ec.getObjects("force_authentication_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
    	logger.info("Force Authentication CheckBox field is available"+"\n"); 
    	System.out.println("Force Authentication CheckBox field is available"+"\n");
	}
	
	@Then("Verify if Force Authentication is Clickable")
	public void verify_if_force_authentication_is_clickable() throws Throwable
	{
		String original = ec.getObjects("force_authentication_checkbox");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		if (!driver.findElement(By.xpath(original)).isSelected())
		{
		     driver.findElement(By.xpath(original)).click();
		}
    	logger.info("Force Authentication is Clickable"+"\n"); 
    	System.out.println("Force Authentication is Clickable"+"\n");
	}
	
	
	
	/*@Then("Save Changes button is clickable")
    public void save_changes_button_is_clickable() throws Throwable
	{
		String original = ec.getObjects("save_changes");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		logger.info("Clicked on Save Changes" + "\n");
		System.out.println("Clicked on Save Changes" + "\n");
		}
	
	@Then("Clicking on Save Changes Should Display Success Toast Notification {string}")
    public void clicking_on_save_changes_should_display_success_toast_notification_something(String string) throws Throwable
	{	
		
		
		
		String original = ec.getObjects("sso_saved_success_toast_notification");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath("save_changes")).click();
		String text = driver.findElement(By.xpath(original)).getAttribute("sso_saved_success_toast_notification");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);
		logger.info(" "+ string +" "+" is the Toast notification"+"\n"); 
    	System.out.println(" "+ string +" "+" is the Toast notification"+"\n");
		}
	*/
	
}
