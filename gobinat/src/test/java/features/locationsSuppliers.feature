Feature: Add New Location

  Background: Login as a supplier
   Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
      
    @Smoke @SupplierLocations @CDC @TYSFunctionality
  Scenario: Verify address fields in Add a New Location page 
     Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
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
      
   @Smoke @SupplierLocations @CDCI
  Scenario: Verify Delete in Add a New Location page 
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
    
   @Smoke @SupplierLocations @CDCI
  Scenario: Verify Close in Add a New Location page
     Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click Profile tab on Dashboard page
    Then Click Locations tab on Profile page
    Then Click Add New Location Button on Locations page
    Then Click Close button
		Then Wait for 5 seconds
    Then Logout from the system