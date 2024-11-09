Feature: Profile Location Tab Functionality

  #ProfileLocations
  #@SupplierProfile @BuyerProfile  @Germany  @Francesupplier @France
  Background: Login as a Buyer/Supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Locations tab visibility and status on Profile page for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Show Locations tab on Profile page "true"
    Then Verify Locations tab Clickable on Profile page "true"
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Location Page Description visibility on Locations page for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Show Location Page Description on Locations page "true"
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Add New Location Button visibility and status on Locations page for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Show Add New Location Button on Locations page "true"
    Then Verify Add New Location Button Clickable on Locations page "true"
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Add New Location Header visibility on Add New Locations modal for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Show "Add a New Location" header on Add New Locations modal
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Save Location Button visibility and status on Add New Locations modal for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Show Save Location Button on Add Locations modal "true"
    Then Verify Save Location Button Clickable on Add New Add Locations modal "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Close 'X' icon visibility and status on Add New location modal for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Verify Close X icon visibility on Add New Location modal "true"
    Then Verify Close X icon clickable on Add New Location modal "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify Closing Add New Location modal By clicking on Close 'X' icon for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Close X icon on Add New Location modal
    Then Show Location Page Description on Locations page "true"
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify visibility of all the fields when "United States of America" is selected in Country dropdown for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "United States of America" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify Address 2 field visibility "true"
    Then Verify City field visibility "true"
    Then Verify "State" dropdown visibility
    Then Verify PO Box field visibility "true"
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @BuyerProfile @Buyer
  Scenario: Verify ToolTips description by selecting country United States of America for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select "United States of America" in "Country/Region" dropdown
    And Verify "Address Line 1" tooltip of "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "State" tooltip of "Name of the State at which it is located. This is a mandatory field." in add bank account page
    And Verify "Zip Code" tooltip of "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    #Then Show "Address Line 1" tooltip " Street name, House/Building or Block number. Max length: 80 characters. This is a mandatory field. "
    # Then Show "Address Line 2" tooltip " Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 80 characters. This is an optional field. "
    #Then Show "City" tooltip " Name of the City at which it is located. This is a mandatory field. "
    #Then Show "State" tooltip " Name of the State at which it is located. This is a mandatory field. "
    #Then Show "Zip Code" tooltip " The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10 "
    # Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional. "
    And Verify "PO Box Zip Code" tooltip of "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify no data entered when special characters "@#$%!@" are entered in Postal Code field when country is United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "@#$%!@" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify no data entered when spaces are entered in Postal Code field when country is United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "      " in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  #commented
  #Failing as space is accepted SLYN-8270
  #@Regression @ProfileLocations  @BuyerProfile @Buyer
  Scenario: Verify error message when spaces are entered in City field for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter City "      " in City field
    Then Enter Address "      " in Address field
    Then Select "New York" in State drop down
    Then Enter "      " in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under City field
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  #commented
  #Failing as special characters is accepted SLYN-9686
  #@Regression @ProfileLocations  @BuyerProfile @Buyer
  Scenario: Verify error message when special characters "@#$%&" are entered in City field for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "3018 East Ave" in Address field
    Then Enter City "@#$%&" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Must be a valid City." under City field
    Then Click Close button
    Then Logout from the system

  @Regression @BuyerProfile @Buyer
  Scenario: Verify error message when saving location without "Address Type" when United States is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    Then Show error message "Required" for "Country/Region" field
    #Then Verify Error Message as "Required" under Country field
    Then Click Close button
    Then Logout from the system

  @Regression @BuyerProfile @Buyer
  Scenario: Verify error message when saving location when United States is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under City field
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under State field
    Then Verify Error Message as "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify error message "Must be a valid Zip Code." when postal code is less than 5 digits for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "1234" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Must be a valid Zip Code." under Postal code field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Location added when postal code is 9 digits for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @ProfileLocations @BuyerProfile  @TYSFunctionality
  Scenario: Verify Adding a New Location with only required fields for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Update Location Functionality for United States for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "470 Route 211 East" in Address field
    Then Enter City "Middletown" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Enter data "10940" in PO box field
    Then Click on "Update Location" button on Update Location modal
    And Click Save Location button on Address Verification modal
    Then Wait for 3 seconds
    Then Switch to the parent window
    Then Click the Location card with address "470 Route 211 East" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify visibility of all the fields when "Canada" is selected in Country dropdown for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Canada" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify Address 2 field visibility "true"
    Then Verify City field visibility "true"
    Then Verify "Province" dropdown visibility
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @BuyerProfile @Buyer
  Scenario: Verify ToolTips description with selecting country Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select Address Type from the dropdown "Branch"
    Then Select "Canada" in "Country/Region" dropdown
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "The name of the city, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Province" tooltip of "The name of the Province, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Postal Code" tooltip of "PO Box Postal Code" in add bank account page
    #Then Show "Address Line 1" tooltip " Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field. "
    #Then Show "Address Line 2" tooltip " Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field. "
    #Then Show "City" tooltip " The name of the city, as mentioned in your Company's commercial registration certificate. "
    #Then Show "Postal Code" tooltip " The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory. "
    #Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional. "
    #Then Show "PO Box Postal Code" tooltip " PO Box Postal Code "
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  #commented
  #Failing as space is accepted SLYN-8270
  # @Regression @ProfileLocations  @BuyerProfile @Buyer
  Scenario: Verify error message when spaces are entered in Address field for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "      " in Address field
    Then Enter City "Oshawa" in City field
    Then Select "Ontario" in State drop down
    Then Enter "L1G 6Z8" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify error message when saving location without "Address Type" when Canada is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @BuyerProfile @Buyer
  Scenario: Verify error message when saving location when Canada is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under City field
    Then Verify Error Message as "Required" under State field
    Then Verify Error Message as "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Adding a New Location with only required fields for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Update Location Functionality for Canada for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "476 Tunnel Street" in Address field
    Then Enter City "Devon" in City field
    Then Select "Alberta" in State drop down
    Then Enter "T9G 3K2" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Enter data "78987" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify visibility of all the fields when "Germany" is selected in Country dropdown for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Germany" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify City field visibility "true"
    Then Verify PO Box field visibility "true"
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @Germany @BuyerProfile @Buyer
  Scenario: Verify ToolTips description with selecting country Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    Then Select "Germany" in "Country/Region" dropdown
    Then Select Address Type from the dropdown "Branch"
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    # And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "The name of the city, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Postal Code" tooltip of "PO Box Postal Code" in add bank account page
    #And Verify "PO Box Postal Code" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    #Then Select "Germany" in "Country/Region" dropdown
    #Then Show "Address Line 1" tooltip " Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field. "
    #Then Show "City" tooltip " The name of the city, as mentioned in your Company's commercial registration certificate. "
    #Then Show "Postal Code" tooltip " The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory. "
    #Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional. "
    #Then Show "PO Box Postal Code" tooltip " PO Box Postal Code "
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify no data entered when special characters "@#$%!@" are entered in Postal Code field when country is Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter "@#$%!@" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify no data entered when spaces are entered in Postal Code field when country is Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter "      " in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify no data entered when alphabets "postal" are entered in Postal Code field when country is Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter "postal" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  #commented
  #Failing as space is accepted SLYN-8270
  #  @Regression @ProfileLocations @Germany   @BuyerProfile @Buyer
  Scenario: Verify error message when spaces are entered in Address field for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "      " in Address field
    Then Enter City "Wallenhorst" in City field
    Then Enter "49134" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify error message when saving location without "Address Type" when Germany is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify error message when saving location when Germany is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under City field
    Then Verify Error "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @Germany @BuyerProfile @Buyer
  Scenario: Verify error message "Must be a valid Postal Code." when postal code is less that 5 digits for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter "1234" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error "Must be a valid Postal Code." under Postal code field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @Germany @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Location added when postal code is 5 digits for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @Germany @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Adding a New Location with only required fields for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @Germany @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Dammkuhlenweg 1" in Address field
    Then Enter City "Glandorf" in City field
    Then Enter "49219" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Click on location card with Address "Dammkuhlenweg 1" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Germany @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Update Location Functionality for Germany for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter Address "Antwerpener Str. 47" in Address field
    Then Enter City "Berlin" in City field
    Then Enter "13353" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Enter data "14356" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "Antwerpener Str. 47" for Germany
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify visibility of all the fields when "France" is selected in Country dropdown for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "France" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify Address 2 field visibility "true"
    Then Verify Address 3 field visibility "true"
    Then Verify City field visibility "true"
    Then Verify PO Box field visibility "true"
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @France @BuyerProfile @Buyer
  Scenario: Verify ToolTips description for Address for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select Address Type from the dropdown "Branch"
    Then Select "France" in "Country/Region" dropdown
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    And Verify "Address Line 3" tooltip of "Address 3 used for 'ZI' (Zone Industrielle) or 'Z.U.P.' if applicable" in add bank account page
    And Verify "City" tooltip of "The name of the city, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This is an optional field." in add bank account page
    And Verify "PO Box Postal Code" tooltip of "PO Box Postal Code" in add bank account page
    #Then Show "City" tooltip " The name of the city, as mentioned in your Company's commercial registration certificate. "
    #Then Show "Postal Code" tooltip "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate."
    #Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This is an optional field. "
    #Then Show "PO Box Postal Code" tooltip " PO Box Postal Code "
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify no data entered when special characters "@#$%!@" are entered in Postal Code field when country is France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "France" in "Country/Region" dropdown
    Then Enter "@#$%!@" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify no data entered when spaces are entered in Postal Code field when country is France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "France" in "Country/Region" dropdown
    Then Enter "      " in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify no data entered when alphabets "postal" are entered in Postal Code field when country is France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "France" in "Country/Region" dropdown
    Then Enter "postal" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  #commented
  #Failing as space is accepted SLYN-8270
  # @Regression @ProfileLocations @France  @BuyerProfile @Buyer
  Scenario: Verify error message when spaces are entered in Address field for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "      " in Address field
    Then Enter City "Oyonnax" in City field
    Then Enter "01100" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify error message when saving location without "Address Type" when France is selected in Country  for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    Then Click Close button
    Then Logout from the system

  @Regression @France @BuyerProfile @Buyer
  Scenario: Verify error message when saving location when France is selected in Country for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Show error message "Required" for "City" field
    # Then Verify Error Message as "Required" under City field for France
    Then Verify Error "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @France @BuyerProfile @Buyer
  Scenario: Verify error message "Must be a valid Postal Code." when postal code is less that 5 digits for France for buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "France" in "Country/Region" dropdown
    Then Enter "1234" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error "Must be a valid Postal Code." under Postal code field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @France @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Location added when postal code is 5 digits for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @France @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Adding a New Location with only required fields for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @France @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "87 rue Michel Ange" in Address field
    Then Enter City "Le Havre" in City field
    Then Enter "13036" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on location card with Address "87 rue Michel Ange" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @France @BuyerProfile @Buyer @CDCI @Sanity
  Scenario: Verify Update Location Functionality for France for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "France" in "Country/Region" dropdown
    Then Enter Address "53 Chemin Du" in Address field
    Then Enter City "Montauban" in City field
    Then Enter "82000" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click the Location card with address "53 Chemin Du" for France
    Then Enter data "10941" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click the Location card with address "53 Chemin Du" for France
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Locations tab visibility on Profile page for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Contacts" button
    Then Verify the visibility of "Locations" button
    Then click on the "Locations" tab
    Then Verify "locationtab" tab is displayed
    #Then Click on "locationtab" tab on conatcslocation screen
    Then Show Locations nav link on Profile page "true"
    Then Verify Locations nav link Clickable on Profile page "true"
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Login Page Description visibility on Locations page for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then click on the "Locations" tab
    Then Show Location Page Description on Locations page "true"
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Add New Location Button visibility and status on Locations page for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Locations" button
    Then click on the "Locations" tab
    Then Show Add Location Button on Locations page "true"
    Then Verify Add Location Button Clickable on Locations page "true"
    Then Click on "locationtab" tab on conatcslocation screen
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Save Location Button visibility on Add New Locations modal for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Contacts" button
    Then Verify the visibility of "Locations" button
    Then click on the "Locations" tab
    Then Verify "locationtab" tab is displayed
    Then Click on "locationtab" tab on conatcslocation screen
    # Then Click Add New Location Button on Locations page
    #Then Show "Add a New Location" header on Add New Locations modal
    Then Show Save Location Button on Add Locations modal "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Save Location Button status on Locations modal for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Verify Save Location Button Clickable on Add New Add Locations modal "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Close 'X' icon visibility and status on Add New location modal for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Verify Close X icon visibility on Add New Location modal "true"
    Then Verify Close X icon clickable on Add New Location modal "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify Closing Add New Location modal By clicking on Close 'X' icon for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    #Then Click Add New Location Button on Locations page
    Then Click Close X icon on Add New Location modal
    Then Show Location Page Description on Locations page "true"
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify visibility of all the fields when "United States of America" is selected in Country dropdown for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "United States of America" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify Address 2 field visibility "true"
    Then Verify City field visibility "true"
    Then Verify "State" dropdown visibility
    Then Verify PO Box field visibility "true"
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @SupplierProfile @Supplier
  Scenario: Verify ToolTips description with country united States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Verify "locationtab" tab is displayed
    Then Click on "locationtab" tab on conatcslocation screen
    #Then Click Location nav link
    #Then Click Add New Location Button on Locations page
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select "United States of America" in "Country/Region" dropdown
    And Verify "Address Line 1" tooltip of "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "State" tooltip of "Name of the State at which it is located. This is a mandatory field." in add bank account page
    And Verify "Zip Code" tooltip of "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Zip Code" tooltip of "The PO Box Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is an Optional field. Max Length: 10" in add bank account page
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify no data entered when special characters "@#$%!@" are entered in Postal Code field when country is United States
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "@#$%!@" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify no data entered when spaces are entered in Postal Code field when country is United States
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "      " in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify no data entered when alphabets "postal" are entered in Postal Code field when country is United States
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "postal" in Postal Code field
    Then Verify Postal Code field is blank "true"
    Then Click Close button
    Then Logout from the system

  #commented
  # should error but not due to SLYN-9686
  # @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify error message when spaces are entered Postal code field for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "3018 East Ave" in Address field
    Then Enter City "New York" in City field
    Then Select "New York" in State drop down
    Then Enter " " in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  #commented
  # should fail but not failing SLYN-9686
  #  @Regression @ProfileLocations @Supplier
  Scenario: Verify error message when special characters "@#$%&" are entered in City field for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click Location nav link
    Then Click Add New Location Button on Locations page
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "3018 East Ave" in Address field
    Then Enter City "@#$%&" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Must be a valid City" under City field
    Then Click Close button
    Then Logout from the system

  @Regression @SupplierProfile @Supplier
  Scenario: Verify error message when saving location without "Address Type" when United States is selected in Country for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    #Then Verify Error Message as "Required" under Country field
    Then Show error message "Required" for "Country/Region" field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify error message when saving location with country United States is selected in Country for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under City field
    Then Verify Error Message as "Required" under State field
    Then Verify Error Message as "Required" under Postal code field
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify error message "Must be a valid Postal Code." when postal code is less than 5 digits for United States
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "1234" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Must be a valid Postal Code." under Postal code field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @SupplierProfile @Supplier @CDCI @Sanity
  Scenario: Verify Location added when postal code is 5 digits for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "12345" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @SupplierProfile @Supplier @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for United States for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "1201 Rt 300" in Address field
    Then Enter City "Newburgh" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    #Then Click on location card with Address "1201 Rt 300" for United States
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @SupplierProfile @Supplier @CDCI @Sanity
  Scenario: Verify Update Location Functionality for United States for supplier
    When Enter Nokia Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 20 seconds
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter Address "470 Route 211 East" in Address field
    Then Enter City "Middletown" in City field
    Then Select "New York" in State drop down
    Then Enter "123456789" in Postal Code field
    Then Click Save Location button on Add New Location modal
    And Click Save Location button on Address Verification modal
    Then Wait for 3 seconds
    Then Click on the Location card with address "470 Route 211 East" for United States
    #Then Click the Location card with address "560 Route 211 East" for United States
    Then Enter data "10940" in PO box field
    Then Click on "Update Location" button on Update Location modal
    And Click Save Location button on Address Verification modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    #Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileLocations @Supplier
  Scenario: Verify visibility of all the fields when "Canada" is selected in Country dropdown for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Canada" in "Country/Region" dropdown
    Then Verify Address Type dropdown visibility "true"
    Then Verify Address field visibility "true"
    Then Verify Address 2 field visibility "true"
    Then Verify City field visibility "true"
    Then Verify "Province" dropdown visibility
    Then Verify Postal Code field visibility "true"
    Then Verify D-U-N-S Number field visibility "true"
    Then Click Close button
    Then Logout from the system

  @Regression @SupplierProfile @Supplier
  Scenario: Verify ToolTips description with country selected for Canada for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select Address Type from the dropdown "Branch"
    Then Select "Canada" in "Country/Region" dropdown
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "The name of the city, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Province" tooltip of "The name of the Province, as mentioned in your Company's commercial registration certificate." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Postal Code" tooltip of "PO Box Postal Code" in add bank account page
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    Then Click Close button
    Then Logout from the system

  @Regression @ProfileLocations @SupplierProfile @Supplier
  Scenario: Verify error message when saving location without "Address Type" when Canada is selected in Country for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Canada" in "Country/Region" dropdown
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address Type field
    Then Click Close button
    Then Logout from the system

  @Regression @SupplierProfile @Supplier
  Scenario: Verify error message when saving location with country canada selected for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter "L1G 6Z8" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Verify Error Message as "Required" under Address field
    Then Verify Error Message as "Required" under City field
    Then Verify Error Message as "Required" under State field
    Then Click Close button
    Then Logout from the system

  @Smoke @ProfileLocations @SupplierProfile @Supplier @CDCI @Sanity
  Scenario: Verify Delete Location Functionality for Canada for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Switch to the parent window
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileLocations @SupplierProfile @Supplier @CDCI @Sanity
  Scenario: Verify Update Location Functionality for Canada for supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts/Locations" tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "476 Tunnel Street" in Address field
    Then Enter City "Devon" in City field
    Then Select "Alberta" in State drop down
    Then Enter "T9G 3K2" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Click on the Location card with address "470 Route 211 East" for United States
    #Then Click the Location card with address "476 Tunnel Street" for Canada
    Then Enter data "78987" in PO box field
    Then Click on "Update Location" button on Update Location modal
    Then Switch to the parent window
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system
