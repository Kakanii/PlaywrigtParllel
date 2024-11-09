package stepdefinition;

import static org.testng.Assert.assertEquals;
import static org.testng.Assert.assertTrue;

import org.apache.log4j.Logger;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import utility.DriverEngine;
import utility.ElementControl;
import utility.WaitClass;

public class ProfileLocations extends DriverEngine {

	public static ElementControl ec = new ElementControl();

	Logger logger = Logger.getLogger(Dashboard.class);
	Actions a = new Actions(driver);

	@Then("^Click Profile tab on Dashboard page$")
	public void click_profile_tab_on_dashboard_page() throws Throwable {

		String original = ec.getObjects("profile");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Profile Tab on Dashboard page" + "\n");
		System.out.println("Clicked on Profile Tab on Dashboard page" + "\n");
	}

	@Then("^Show Locations tab on Profile page \"([^\"]*)\"$")
	public void show_locations_tab_on_profile_page_something(String string) throws Throwable {

		String original = ec.getObjects("locations_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Locations Tab visible on Profile page" + "\n");
		System.out.println("Locations Tab visible on Profile page" + "\n");

	}

	@Then("^Verify Locations tab Clickable on Profile page \"([^\"]*)\"$")
	public void verify_locations_tab_clickable_on_profile_page_something(String string) throws Throwable {

		String original = ec.getObjects("locations_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Locations Tab clickable on Profile page" + "\n");
		System.out.println("Locations Tab clickable on Profile page" + "\n");
	}

	@Then("^Click Locations tab on Profile page$")
	public void click_locations_tab_on_profile_page() throws Throwable {

		String original = ec.getObjects("locations_tab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Locations Tab on Profile page" + "\n");
		System.out.println("Clicked on Locations Tab on Profile page" + "\n");

	}

	@Then("^Show Location Page Description on Locations page \"([^\"]*)\"$")
	public void show_location_page_description_on_locations_page_something(String string) throws Throwable {
		String original = ec.getObjects("locationsPage_description");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Locations page Description visible on Locations page" + "\n");
		System.out.println("Locations page Description visible on Locations page" + "\n");

	}

	@Then("^Show Add New Location Button on Locations page \"([^\"]*)\"$")
	public void show_add_new_location_button_on_locations_page_something(String string) throws Throwable {

		String original = ec.getObjects("AddLocation_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add a New Locations Button visible on Locations page" + "\n");
		System.out.println("Add a New Locations Button visible on Locations page" + "\n");

	}

	@Then("^Verify Add New Location Button Clickable on Locations page \"([^\"]*)\"$")
	public void verify_add_new_location_button_clickable_on_locations_page_something(String string) throws Throwable {
		String original = ec.getObjects("AddLocation_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Add New Location Button is clickable on Locations page" + "\n");
		System.out.println("Add New Location Button is clickable on Locations page" + "\n");

	}

	@Then("^Click Add New Location Button on Locations page$")
	public void click_add_new_location_button_on_locations_page() throws Throwable {
		String original = ec.getObjects("AddLocation_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Add a New Locations Button on Locations page" + "\n");
		System.out.println("Clicked on a New Locations Button on Locations page" + "\n");

	}

	@Then("^Show \"([^\"]*)\" header on Add New Locations modal$")
	public void show_something_header_on_add_new_locations_modal(String string) throws Throwable {

		String original = ec.getObjects("AddNewLocation_header");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add New Location Hearder visible on Add New Location modal" + "\n");
		System.out.println("Add New Location Hearder visible on Add New Location modal" + "\n");

	}

	@Then("^Show Save Location Button on Add Locations modal \"([^\"]*)\"$")
	public void show_save_location_button_on_add_locations_modal_something(String string) throws Throwable {

		String original = ec.getObjects("AddLocation_Save_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Save Location Button visible on Add Location modal" + "\n");
		System.out.println("Save Location Button visible on Add Location modal" + "\n");

	}

	@Then("^Verify Save Location Button Clickable on Add New Add Locations modal \"([^\"]*)\"$")
	public void verify_save_location_button_clickable_on_add_new_add_locations_modal_something(String string)
			throws Throwable {

		String original = ec.getObjects("AddLocation_Save_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Save button clickable on Add New Location modal" + "\n");
		System.out.println("Save button clickable on Add New Location modal" + "\n");

	}

	@Then("^Select \"([^\"]*)\" in Address type drop down$")
	public void select_something_in_address_type_drop_down(String string) throws Throwable {

		String original = ec.getObjects("location_addresstype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select addressType = new Select(driver.findElement(By.xpath(original)));

		addressType.selectByVisibleText(string);

		logger.info("Selected" + " " + string + " from the Address Type dropdown on Add a new Location modal" + "\n");
		System.out.println(
				"Selected " + " " + string + " from the Address Type dropdown on Add a new Location modal" + "\n");

	}

	@Then("^Select \"([^\"]*)\" in Country drop down$")
	public void select_something_in_country_drop_down(String string) throws Throwable
	 {
		String original = ec.getObjects("Location_Country_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select country = new Select(driver.findElement(By.xpath(original)));
		country.selectByVisibleText(string);
		Thread.sleep(2000);

		logger.info("Selected" + " " + string + " from the Country dropdown on Add a new Location modal" + "\n");
		System.out.println("Selected " + " " + string + " from the Country dropdown on Add a new Location modal" + "\n");
	}

	@Then("^Enter Address \"([^\"]*)\" in Address field$")
	public void enter_address_something_in_address_field(String string) throws Throwable {

		String original = ec.getObjects("Location_Address1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in Address field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in Address field" + "\n");

	}

	@Then("^Enter City \"([^\"]*)\" in City field$")
	public void enter_city_something_in_city_field(String string) throws Throwable {

		String original = ec.getObjects("Location_City");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + " " + string + " " + "in City field" + "\n");
		System.out.println("Entered " + " " + string + " " + "in City field" + "\n");

	}

	@Then("^Select \"([^\"]*)\" in State drop down$")
	public void select_something_in_state_drop_down(String string) throws Throwable {

		String original = ec.getObjects("Location_State_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		Select state = new Select(driver.findElement(By.xpath(original)));

		state.selectByIndex(2);

		logger.info("Selected" + " " + string + " from the State dropdown on Add a new Location modal" + "\n");
		System.out.println("Selected " + " " + string + " from the State dropdown on Add a new Location modal" + "\n");

	}

	@Then("^Enter \"([^\"]*)\" in Postal Code field$")
	public void enter_something_in_postal_code_field(String string) throws Throwable {

		String original = ec.getObjects("Location_PostalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered " + " " + string + " " + "in Postal Code field" + "\n");
		System.out.println("Entered " + " " + string + " " + "in Postal Code field" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under Address Type field$")

	public void verify_error_message_as_something_under_address_type_field(String string) throws Throwable {
		String original = ec.getObjects("AddressTypeField_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location without selecting Address Type "
				+ "\n");
		System.out.println("Error message " + string
				+ " is visible when saving the location without selecting Address Type" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under Country field$")
	public void verify_error_message_as_something_under_country_field(String string) throws Throwable {

		String original = ec.getObjects("CountryField_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(
				"Error message " + string + " is visible when saving the location without selecting Country " + "\n");
		System.out.println(
				"Error message " + string + " is visible when saving the location without selecting Country" + "\n");
	}

	@Then("^Verify Error Message as \"([^\"]*)\" under Address field$")
	public void verify_error_message_as_something_under_address_field(String string) throws Throwable {
		String original = ec.getObjects("AddressField_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location without Address " + "\n");
		System.out.println("Error message " + string + " is visible when saving the location without Address" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under City field$")
	public void verify_error_message_as_something_under_city_field(String string) throws Throwable {
		String original = ec.getObjects("CityField_error_US_Germany_Canada");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location with a invalid City " + "\n");
		System.out
				.println("Error message " + string + " is visible when saving the location with a invalid City" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under City field for France$")
	public void verify_error_message_as_something_under_city_field_for_france(String string) throws Throwable {
		String original = ec.getObjects("CityField_error_France");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location with a invalid City " + "\n");
		System.out
				.println("Error message " + string + " is visible when saving the location with a invalid City" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under State field$")
	public void verify_error_message_as_something_under_state_field(String string) throws Throwable {
		String original = ec.getObjects("StateField_error");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location without selecting State " + "\n");
		System.out.println(
				"Error message " + string + " is visible when saving the location without selecting State" + "\n");

	}

	@Then("^Verify Error Message as \"([^\"]*)\" under Postal code field$")
	public void verify_error_message_as_something_under_postal_code_field(String string) throws Throwable {

		String original = ec.getObjects("PostalCode_error_required_US_Canada");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location without selecting Postal Code "
				+ "\n");
		System.out.println("Error message " + string
				+ " is visible when saving the location without selecting Postal Code" + "\n");
	}

	@Then("^Verify Error \"([^\"]*)\" under Postal code field$")
	public void verify_error_something_under_postal_code_field(String string) throws Throwable {
		String original = ec.getObjects("PostalCode_error_required_France_Germany");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Error message " + string + " is visible when saving the location without selecting Postal Code "
				+ "\n");
		System.out.println("Error message " + string
				+ " is visible when saving the location without selecting Postal Code" + "\n");

	}

	@Then("^Verify \"([^\"]*)\" Label visible on Address Verification modal$")
	public void verify_something_label_visible_on_address_verification_modal(String string) throws Throwable {

		String original = ec.getObjects("AddressVerify_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(string + " Header visible on Address Verification modal" + "\n");
		System.out.println(string + " Header visible on Address Verification modal" + "\n");

	}

	@And("^Click Save Location button on Address Verification modal$")
	public void click_save_location_button_on_address_verification_modal() throws Throwable {

		String original = ec.getObjects("Location_SaveVerify_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Save Location button on Address Verification modal" + "\n");
		System.out.println("Clicked on Save Location button on Address Verification modal" + "\n");

	}

	@Then("^Verify New address 70 rue Bonneterie visibility on Locations Page$")
	public void verify_new_address_70_rue_bonneterie_visibility_on_locations_page() throws Throwable {

		String original = ec.getObjects("Location_NewlyAdded_70_rue_Bonneterie");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");
	}

	@Then("^Verify New address 618 Poplar Street visibility on Locations Page$")
	public void verify_new_address_618_poplar_street_visibility_on_locations_page() throws Throwable {
		String original = ec.getObjects("Location_NewlyAdded_618_Poplar_Street");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");

	}

	@Then("^Verify New address 3018 East Ave visibility on Locations Page$")
	public void verify_new_address_3018_east_ave_visibility_on_locations_page() throws Throwable {
		String original = ec.getObjects("Location_NewlyAdded_3018_East_Ave");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");

	}

	@Then("^Verify New address 3995 Toy Avenue visibility on Locations Page$")
	public void verify_new_address_3995_toy_avenue_visibility_on_locations_page() throws Throwable {

		String original = ec.getObjects("Location_NewlyAdded_3995_Toy_Avenue");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");
	}

	@Then("^Verify New address Ansgarstr 4 visibility on Locations Page$")
	public void verify_new_address_ansgarstr_4_visibility_on_locations_page() throws Throwable {

		String original = ec.getObjects("Location_NewlyAdded_Ansgarstr_4");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");
	}

	@Then("^Verify New address 54 boulevard Amiral Courbet visibility on Locations Page$")
	public void verify_new_address_54_boulevard_amiral_courbet_visibility_on_locations_page() throws Throwable {
		String original = ec.getObjects("Location_NewlyAdded_54_boulevard_Amiral_Courbet");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");

	}

	@Then("^Verify New address Lehmbergerstr 2 visibility on Locations Page$")
	public void verify_new_address_lehmbergerstr_2_visibility_on_locations_page() throws Throwable {

		String original = ec.getObjects("Location_NewlyAdded_Lehmbergerstr_2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");
	}

	@Then("^Verify New address 250 Rt 59 visibility on Locations Page$")
	public void verify_new_address_250_rt_59_visibility_on_locations_page() throws Throwable {

		String original = ec.getObjects("Location_NewlyAdded_250_Rt_59");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");
	}

	@Then("^Verify New address 13858 Rt 31 W visibility on Locations Page$")
	public void verify_new_address_13858_rt_31_w_visibility_on_locations_page() throws Throwable {
		String original = ec.getObjects("Location_NewlyAdded_13858_Rt_31_W");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info("New Location succussfully added to Locations tab" + "\n");
		System.out.println("New Location succussfully added to Locations tab" + "\n");

	}

	@Then("^Click on location card$")
	public void click_on_location_card() throws Throwable {
		String original = ec.getObjects("LocationCard");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card" + "\n");
		System.out.println("Clicked on Location Card" + "\n");

	}

	@Then("^Show \"([^\"]*)\" label on Update Location card$")
	public void show_something_label_on_update_location_card(String string) throws Throwable {

		String original = ec.getObjects("UpdateLocation_label");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Update Location Label visible on Update Location modal" + "\n");
		System.out.println("Update Location Label visible on Update Location modal" + "\n");

	}

	@Then("^Click Close button$")
	public void click_close_button() throws Throwable {
		String original = ec.getObjects("AddLocation_Close_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close Button" + "\n");
		System.out.println("Clicked on Close Button" + "\n");

	}

	@Then("^Show Delete Button on Update Location modal \"([^\"]*)\"$")
	public void show_delete_button_on_update_location_modal_something(String string) throws Throwable {
		String original = ec.getObjects("Location_Delete_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Delete button visible on Update Location modal" + "\n");
		System.out.println("Delete button visible on Update Location modal" + "\n");

	}

	@Then("^Verify Delete Button clickable on Update Location modal \"([^\"]*)\"$")
	public void verify_delete_button_clickable_on_update_location_modal_something(String string) throws Throwable {
		String original = ec.getObjects("Location_Delete_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Delete button clickable on Update Location modal" + "\n");
		System.out.println("Sign In button clickable on Update Location modal" + "\n");

	}

	@Then("^Click on location card with Address \"([^\"]*)\" for United States$")
	public void click_on_location_card_with_address_something_for_united_states(String string) throws Throwable {
		//h6[contains(text(),'1201 Rt 300')]
		String original = ec.getObjects("dashboard_disabled_navlink1") + string + "')]";
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + "string" + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("^Click on location card with Address \"([^\"]*)\" for Canada$")
	public void click_on_location_card_with_address_something_for_canada(String string) throws Throwable {

		String original = ec.getObjects("LocationCard_Delete_95_Lancaster_Ave");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + "string" + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");
	}

	@Then("^Click on location card with Address \"([^\"]*)\" for Germany$")
	public void click_on_location_card_with_address_something_for_germany(String string) throws Throwable {

		String original = ec.getObjects("LocationCard_Delete_Dammkuhlenweg_1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + "string" + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");
	}

	@Then("^Click on location card with Address \"([^\"]*)\" for France$")
	public void click_on_location_card_with_address_something_for_france(String string) throws Throwable {

		String original = ec.getObjects("LocationCard_Delete_87_rue_Michel_Ange");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + "string" + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("^Click on Delete button on Update Location modal$")
	public void click_on_delete_button_on_update_location_modal() throws Throwable {
		Thread.sleep(3000);

		String original = ec.getObjects("Location_Delete_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);

		String original1 = ec.getObjects("Delete_btn");
		String formatXPATH1 = String.format(original1);

		WaitClass.webDriverWait(formatXPATH1);

		driver.findElement(By.xpath(original1)).click();

		Thread.sleep(3000);

		logger.info("Clicked on Delete button on Location Card" + "\n");
		System.out.println("Clicked on Delete button on Location Card" + "\n");

	}

	@Then("^Verify toast message \"([^\"]*)\"$")
	public void verify_toast_message_something(String string) throws Throwable {

		String original = ec.getObjects("SuccessfullyDeleted_Message");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(string + " message is visble on Locations page" + "\n");
		System.out.println(string + " message is visble on Locations page" + "\n");

	}

	@Then("^Show Update Location Button on Update Location modal \"([^\"]*)\"$")
	public void show_update_location_button_on_update_location_modal_something(String string) throws Throwable {
		String original = ec.getObjects("UpdateLocation_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Update Location button visible on Update Location Modal" + "\n");
		System.out.println("Update Location button visible on Update Location Modal" + "\n");

	}

	@Then("^Verify Update Location Button clickable on Update Location modal \"([^\"]*)\"$")
	public void verify_update_location_button_clickable_on_update_location_modal_something(String string)
			throws Throwable {
		String original = ec.getObjects("UpdateLocation_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Update Location button clickable on Update Location Modal" + "\n");
		System.out.println("Update Location button clickable on Update Location Modal" + "\n");

	}

	@Then("^Click the Location card with address \"([^\"]*)\" for United States$")
	public void click_the_location_card_with_address_something_for_united_states(String string) throws Throwable {
		String original = ec.getObjects("LocationCard_Update_470_Route_211_East");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("^Click the Location card with address \"([^\"]*)\" for Canada$")
	public void click_the_location_card_with_address_something_for_canada(String string) throws Throwable {

		String original = ec.getObjects("LocationCard_Update_476_Tunnel_Street");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");
	}

	@Then("^Click the Location card with address \"([^\"]*)\" for Germany$")
	public void click_the_location_card_with_address_something_for_germany(String string) throws Throwable {
		String original = ec.getObjects("LocationCard_Update_Antwerpener_Str_47");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("^Click the Location card with address \"([^\"]*)\" for France$")
	public void click_the_location_card_with_address_something_for_france(String string) throws Throwable {

		String original = ec.getObjects("LocationCard_Update_53_Chemin_Du");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}

	@Then("^Enter data \"([^\"]*)\" in PO box field$")
	public void enter_data_something_in_po_box_field(String string) throws Throwable {

		String original = ec.getObjects("Location_POBox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).clear();
		driver.findElement(By.xpath(original)).sendKeys(string);

		logger.info("Entered data" + " " + string + " " + "in PO Box field" + "\n");
		System.out.println("Entered data" + " " + string + " " + "in PO Box field" + "\n");

	}

	@Then("^Click on \"([^\"]*)\" button on Update Location modal$")
	public void click_on_something_button_on_update_location_modal(String string) throws Throwable {
		String original = ec.getObjects("UpdateLocation_button");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();
		Thread.sleep(3000);

		logger.info("Clicked on " + string + " button on Update Location modal" + "\n");
		System.out.println("Clicked on " + string + " button on Update Location modal" + "\n");

	}

	@Then("^Verify PO box number \"([^\"]*)\" updated in Location card for United States$")
	public void verify_po_box_number_something_updated_in_location_card_for_united_states(String string)
			throws Throwable {

		String original = ec.getObjects("UpdateLoc_POBox_validation_10940");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("PO box number " + string + " updated in Location card" + "\n");
		System.out.println("PO box number " + string + " updated in Location card" + "\n");

	}

	@Then("^Verify PO box number \"([^\"]*)\" updated in Location card for Canada$")
	public void verify_po_box_number_something_updated_in_location_card_for_canada(String string) throws Throwable {

		String original = ec.getObjects("UpdateLoc_POBox_validation_78987");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("PO box number " + string + " updated in Location card" + "\n");
		System.out.println("PO box number " + string + " updated in Location card" + "\n");

	}

	@Then("^Verify PO box number \"([^\"]*)\" updated in Location card for Germany$")
	public void verify_po_box_number_something_updated_in_location_card_for_germany(String string) throws Throwable {

		String original = ec.getObjects("UpdateLoc_POBox_validation_14356");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("PO box number " + string + " updated in Location card" + "\n");
		System.out.println("PO box number " + string + " updated in Location card" + "\n");

	}

	@Then("^Verify PO box number \"([^\"]*)\" updated in Location card for France$")
	public void verify_po_box_number_something_updated_in_location_card_for_france(String string) throws Throwable {

		String original = ec.getObjects("UpdateLoc_POBox_validation_10941");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("PO box number " + string + " updated in Location card" + "\n");
		System.out.println("PO box number " + string + " updated in Location card" + "\n");
	}

	@Then("^Verify Address Type dropdown visibility \"([^\"]*)\"$")
	public void verify_address_type_dropdown_visibility_something(String string) throws Throwable {
		String original = ec.getObjects("location_addresstype");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Address Type dropdown is visible on Add New Location modal" + "\n");
		System.out.println("Address Type dropdown is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify Address field visibility \"([^\"]*)\"$")
	public void verify_address_field_visibility_something(String string) throws Throwable {
		String original = ec.getObjects("Location_Address1");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Address field is visible on Add New Location modal" + "\n");
		System.out.println("Address field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify Address 2 field visibility \"([^\"]*)\"$")
	public void verify_address_2_field_visibility_something(String string) throws Throwable {

		String original = ec.getObjects("Location_Address2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Address 2 field is visible on Add New Location modal" + "\n");
		System.out.println("Address 2 field is visible on Add New Location modal" + "\n");
	}

	@Then("^Verify City field visibility \"([^\"]*)\"$")
	public void verify_city_field_visibility_something(String string) throws Throwable {
		String original = ec.getObjects("Location_City");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("City field is visible on Add New Location modal" + "\n");
		System.out.println("City field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify \"([^\"]*)\" dropdown visibility$")
	public void verify_something_dropdown_visibility(String string) throws Throwable {

		String original = ec.getObjects("Location_State_dropdown");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed());
		logger.info(string + " dropdown is visible on Add New Location modal" + "\n");
		System.out.println(string + " dropdown is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify PO Box field visibility \"([^\"]*)\"$")
	public void verify_po_box_field_visibility_something(String string) throws Throwable {

		String original = ec.getObjects("Location_POBox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("PO box field is visible on Add New Location modal" + "\n");
		System.out.println("PO box field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify Postal Code field visibility \"([^\"]*)\"$")
	public void verify_postal_code_field_visibility_something(String string) throws Throwable {

		String original = ec.getObjects("Location_PostalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Postal Code field is visible on Add New Location modal" + "\n");
		System.out.println("Postal Code field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify D-U-N-S Number field visibility \"([^\"]*)\"$")
	public void verify_duns_number_field_visibility_something(String string) throws Throwable {
		String original = ec.getObjects("Location_DUNS");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("D-U-N-S Number field is visible on Add New Location modal" + "\n");
		System.out.println("D-U-N-S Number field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify Address 3 field visibility \"([^\"]*)\"$")
	public void verify_address_3_field_visibility_something(String string) throws Throwable {
		String original = ec.getObjects("Location_Address3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Address 2 field is visible on Add New Location modal" + "\n");
		System.out.println("Address 2 field is visible on Add New Location modal" + "\n");

	}

	@Then("^Verify Postal Code field is blank \"([^\"]*)\"$")
	public void verify_postal_code_field_is_blank_something(String string) throws Throwable {
		String original = ec.getObjects("Location_PostalCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		assertTrue(driver.findElement(By.xpath(original)).getAttribute("value").equals(""), string);
		logger.info("Locations Tab visible on Profile page" + "\n");
		System.out.println("Locations Tab visible on Profile page" + "\n");

	}

	@Then("^Verify Error Message \"([^\"]*)\" under Postal code field$")
	public void verify_error_message_something_under_postal_code_field(String string) throws Throwable {
		String original = ec.getObjects("PostalCode_error_valid");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info(
				"Error message " + string + " is visible when saving the location with invalid Postal Code " + "\n");
		System.out.println(
				"Error message " + string + " is visible when saving the location with invalid Postal Code" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon of Address Type$")
	public void move_mouse_pointer_to_tooltips_icon_of_address_type() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_AddressType");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Address Type ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Address Type ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for Country$")
	public void move_mouse_pointer_to_tooltips_icon_for_country() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_Country");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Country ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Country ToolTip" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon for Address$")
	public void move_mouse_pointer_to_tooltips_icon_for_address() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_Address");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Address ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Address ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for Address 2$")
	public void move_mouse_pointer_to_tooltips_icon_for_address_2() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_Address2");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Address 2 Type ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Address 2 Type ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for Address 3$")
	public void move_mouse_pointer_to_tooltips_icon_for_address_3() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_Address3");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Address 3 Type ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Address 3 Type ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for City$")
	public void move_mouse_pointer_to_tooltips_icon_for_city() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_City");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to City ToolTip" + "\n");
		System.out.println("Moved mouse pointer to City ToolTip" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon for State$")
	public void move_mouse_pointer_to_tooltips_icon_for_state() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_State");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to State ToolTip" + "\n");
		System.out.println("Moved mouse pointer to State ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for Zip Code$")
	public void move_mouse_pointer_to_tooltips_icon_for_zip_code() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_ZipCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Zip Code ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Zip Code ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for Postal Code$")
	public void move_mouse_pointer_to_tooltips_icon_for_postal_code() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_ZipCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to Postal Code ToolTip" + "\n");
		System.out.println("Moved mouse pointer to Postal Code ToolTip" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon for PO Box$")
	public void move_mouse_pointer_to_tooltips_icon_for_po_box() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_POBox");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to PO Box ToolTip" + "\n");
		System.out.println("Moved mouse pointer to PO Box ToolTip" + "\n");
	}

	@Then("^Move mouse pointer to ToolTips icon for PO Box Zip Code$")
	public void move_mouse_pointer_to_tooltips_icon_for_po_box_zip_code() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_POBoxZipCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to PO Box Zip Code ToolTip" + "\n");
		System.out.println("Moved mouse pointer to PO Box Zip Code ToolTip" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon PO Box Postal Code$")
	public void move_mouse_pointer_to_tooltips_icon_po_box_postal_code() throws Throwable {
		String original = ec.getObjects("Location_TtIcon_POBoxZipCode");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to PO Box Postal Code ToolTip" + "\n");
		System.out.println("Moved mouse pointer to PO Box Postal Code ToolTip" + "\n");

	}

	@Then("^Verify ToolTips description \"([^\"]*)\"$")
	public void verify_tooltips_description_something(String string) throws Throwable {
		String original = ec.getObjects("TtDescription");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);
		
		String tt = driver.findElement(By.xpath(original)).getText();
		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Tooltip description: " + tt + "\n");
		System.out.println("Tooltip description: " + tt + "\n");

	}

	@Then("^Verify Close X icon visibility on Add New Location modal \"([^\"]*)\"$")
    public void verify_close_x_icon_visibility_on_add_new_location_modal_something(String string) throws Throwable {
		String original = ec.getObjects("AddLocation_X_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Close 'X' icon visible on Profile page" + "\n");
		System.out.println("Close 'X' icon visible on Profile page" + "\n");

	}

	@Then("^Verify Close X icon clickable on Add New Location modal \"([^\"]*)\"$")
	public void verify_close_x_icon_clickable_on_add_new_location_modal_something(String string) throws Throwable {
		String original = ec.getObjects("AddLocation_X_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Close 'X' icon clickable on Login page" + "\n");
		System.out.println("Close 'X' icon clickable on Login page" + "\n");

	}
	
	@Then("^Click Close X icon on Add New Location modal$")
    public void click_close_x_icon_on_add_new_location_modal() throws Throwable {

		String original = ec.getObjects("AddLocation_X_btn");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Close X icon on Add New Location modal" + "\n");
		System.out.println("Clicked on Close X icon on Add New Location modal" + "\n");

	}

	@Then("^Move mouse pointer to ToolTips icon for DUNS number$")
	public void move_mouse_pointer_to_tooltips_icon_for_duns_number() throws Throwable {

		String original = ec.getObjects("Location_TtIcon_DUNS");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		a.moveToElement(driver.findElement(By.xpath(original))).build().perform();
		Thread.sleep(2000);
		logger.info("Moved mouse pointer to ToolTips icon for DUNS number" + "\n");
		System.out.println("Moved mouse pointer to ToolTips icon for DUNS number" + "\n");
	}
	
	@Then("Should show Postal code label as {string}")
	public void should_show_Postal_code_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("PostalCode_label");		
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("PostalCode_label"))).getText().contains(string));
		
		logger.info("Showing" +" "+ string +" " +"label at postal code  for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label at postal code  for France"+"\n");
	}
	
	@Then("Show error message for Postal code Label {string}")
	public void show_error_message_for_Postal_code_Label(String string) throws Throwable 
	{
		String original = ec.getObjects("PostalCode_error_required_France_Germany");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at Postal code Label "+ " "+ string +" "+" on Location Modal "+"\n"); 
		System.out.println("Show an error message at Postal code Label  "+ " "+ string +" "+" on Location Modal"+"\n");
	}
	
	@Then("Should show City label as {string}")
	public void should_show_City_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("city_label");		
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("city_label"))).getText().contains(string));
		
		logger.info("Showing" +" "+ string +" " +"label at city field  for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label at city field for France"+"\n");
	}
	
	@Then("Show error message for City field Label {string}")
	public void show_error_message_for_City_field_Label(String string) throws Throwable 
	{
		String original = ec.getObjects("emcity_label");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		assertTrue(driver.findElement(By.xpath(original)).getText().contains(string));
		logger.info("Show an error message at City field Label "+ " "+ string +" "+" on Location Modal "+"\n"); 
		System.out.println("Show an error message at city field Label  "+ " "+ string +" "+" on Location Modal"+"\n");
	}
		
	@Then("Verify ToolTips description postal code {string}")
	public void verify_ToolTips_descriptiont_postal_code(String string)
	{
		String original = ec.getObjects("postalcode_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for Postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Postal code"+"\n");
	}
	
	@Then("Verify ToolTips description City field {string}")
	public void verify_ToolTips_descriptiont_City_field(String string)
	{
		String original = ec.getObjects("city_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for city field"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for city field"+"\n");
	}
	
	@Then("Verify ToolTips description PO BOX {string}")
	public void verify_ToolTips_descriptiont_PO_BOX(String string)
	{
		String original = ec.getObjects("pobox_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO BOX"+"\n");
	}
	
	@Then("Verify ToolTips description PO Box postal code {string}")
	public void verify_ToolTips_descriptiont_PO_Box_postal_code(String string)
	{
		String original = ec.getObjects("poboxpostalcode_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}
		
	@Then("Should show PO BOX label as {string}")
	public void should_show_PO_BOX_label_as(String string) throws Throwable 
	{
		String original = ec.getObjects("pobox_label");		
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("pobox_label"))).getText().contains(string));
		
		logger.info("Showing" +" "+ string +" " +"label at PO BOX label  for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label at PO BOX label for France"+"\n");
	}
	
	@Then("Should show PO Box postal code label as {string}")
	public void should_show_PO_Box_postal_code_label_as(String string)throws Throwable 
	{
		String original = ec.getObjects("poboxpostalcode_label");		
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(ec.getObjects("poboxpostalcode_label"))).getText().contains(string));
		
		logger.info("Showing" +" "+ string +" " +"label at PO Box postal code  for France"+"\n");
		System.out.println("Showing" +" "+ string +" " +"label at PO Box postal code  for France"+"\n");
	}

	@Then("Click Save Location button on Add New Location modal")
	public void click_Save_Location_button_on_Add_New_Location_modal() throws Throwable
	{
		String original = ec.getObjects("AddLocation_Save_btn");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(original)).click();
		
        logger.info("Clicked on Save button on Add Location Modal"+"\n");
        System.out.println("Clicked on Save button on Add Location Modal"+"\n");
        Thread.sleep(2000);
	}

	@Then("Enter data {string} in PO box postal code field")
	public void enter_data_in_PO_box_postal_code_field(String string) throws Throwable
    {
    	String original = ec.getObjects("poboxzipcode_input");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		driver.findElement(By.xpath(ec.getObjects("poboxzipcode_input"))).sendKeys(string);
    	logger.info("Enter valid text " +" "+ string +" in PO box postal code field"+"\n"); 
    	System.out.println("Enter valid text" +" "+ string +" in PO box postal code field"+"\n"); 
	}


	@Then("Verify ToolTips description  of Address Type {string}")
	public void verify_ToolTips_description_of_Address_Type(String string) 
	{
	String original = ec.getObjects("pl_addressType_tooltip");		
	String formatXPATH = String.format(original);
	
	WaitClass.webDriverWait(formatXPATH);
	
	String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
	System.out.println("Tool Tip: ---"+text);

	assertEquals(text, string);

	logger.info(" "+ string +" "+" is a tooltip for Address type"+"\n"); 
	System.out.println(" "+ " "+ string +" "+" is a tooltip for address type"+"\n");
}


	@Then("Verify ToolTips description for Country {string}")
	public void verify_ToolTips_description_for_Country(String string) {
		String original = ec.getObjects("pl_country_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for Country"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for Country"+"\n");
	}

	@Then("Verify ToolTips description for Address {string}")
	public void verify_ToolTips_description_for_Address(String string) {
		String original = ec.getObjects("pl_address_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for address"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for address"+"\n");
	}

	@Then("Verify ToolTips description for Postal Code {string}")
	public void verify_ToolTips_description_for_Postal_Code(String string) {
		String original = ec.getObjects("pl_address_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for address"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for address"+"\n");
	}

	@Then("Verify ToolTips description for PO Box Zip code {string}")
	public void verify_ToolTips_description_for_PO_Box_Postal_Code(String string)
	{
		String original = ec.getObjects("poboxzipcode_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description for DUNS number {string}")
	public void verify_ToolTips_description_for_DUNS_number(String string) {
		String original = ec.getObjects("dunsNumber_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description State {string}")
	public void Verify_ToolTips_description_State(String string) {
		String original = ec.getObjects("pl_state_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description Zip code {string}")
	public void Verify_ToolTips_description_Zip_code(String string) {
		String original = ec.getObjects("pl_zipcode_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}
	
	@Then("Verify ToolTips description for Address1 {string}")
	public void verify_ToolTips_description_for_Address1(String string) {
		String original = ec.getObjects("pl_address1_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description for Address2 {string}")
	public void verify_ToolTips_description_for_Address2(String string) {
		String original = ec.getObjects("pl_address2_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description for Province {string}")
	public void verify_ToolTips_description_for_Province(String string) {
		String original = ec.getObjects("pl_province_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("Verify ToolTips description for Address3 {string}")
	public void verify_ToolTips_description_for_Address3(String string) {
		String original = ec.getObjects("pl_address3_tooltip");		
		String formatXPATH = String.format(original);
		
		WaitClass.webDriverWait(formatXPATH);
		
		String text = driver.findElement(By.xpath(original)).getAttribute("data-original-title");
		System.out.println("Tool Tip: ---"+text);

		assertEquals(text, string);

		logger.info(" "+ string +" "+" is a tooltip for PO BOX postal code"+"\n"); 
    	System.out.println(" "+ " "+ string +" "+" is a tooltip for PO Box postal code"+"\n");
	}

	@Then("^Show Add Location Button on Locations page \"([^\"]*)\"$")
	public void show_Add_location_button_on_locations_page_something(String string) throws Throwable {

		String original = ec.getObjects("locationtab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isDisplayed(), string);
		logger.info("Add Locations Button visible on Locations page" + "\n");
		System.out.println("Add Locations Button visible on Locations page" + "\n");

	}

	@Then("^Verify Add Location Button Clickable on Locations page \"([^\"]*)\"$")
	public void verify_add_location_button_clickable_on_locations_page_something(String string) throws Throwable {
		String original = ec.getObjects("locationtab");
		String formatXPATH = String.format(original);

		WaitClass.webDriverWait(formatXPATH);

		assertTrue(driver.findElement(By.xpath(original)).isEnabled(), string);
		logger.info("Add New Location Button is clickable on Locations page" + "\n");
		System.out.println("Add New Location Button is clickable on Locations page" + "\n");

	}
	
	@Then("^Click on the Location card with address \"([^\"]*)\" for United States$")
	public void click_on_the_location_card_with_address_something_for_united_states(String string) throws Throwable {
		//String original = ec.getObjects("addresscard") + string + ec.getObjects("inputfield_end");


		String original = ec.getObjects("LocationCard");
		String formatXPATH = String.format(original);
		WaitClass.webDriverWait(formatXPATH);


		driver.findElement(By.xpath(original)).click();

		logger.info("Clicked on Location Card with address " + string + "\n");
		System.out.println("Clicked on Location Card with address " + string + "\n");

	}
}
