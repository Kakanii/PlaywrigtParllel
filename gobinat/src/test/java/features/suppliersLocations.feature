Feature: Add New Location

  Background: Login as a supplier
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Supplier Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  @Smoke @addnewcontact @CDCI @Sanity
  Scenario: Verify address fields tooltips in Add Location page
    And Click on Contacts/Locations tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
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

  @Smoke @addnewcontact @CDCI @Sanity @TYSFunctionality
  Scenario: Verify able to add address in Location page
    And Click on Contacts/Locations tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click Save Location button on Add New Location modal
    Then Logout from the system

  @Smoke @addnewcontact @CDCI @Sanity
  Scenario: Verify Delete in Add a New Location page
    And Click on Contacts/Locations tab
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
    #Then Click on location card with Address "95 Lancaster Ave" for Canada
    Then Click on Delete button on location screen
    Then Click on "Delete" button on popup location Modal
    Then Show the Toast message "Successfully deleted address"
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @addnewcontact @CDCI @Sanity
  Scenario: Verify Close in Add a New Location page
    And Click on Contacts/Locations tab
    Then click on the "Locations" tab
    Then Click on "locationtab" tab on conatcslocation screen
    Then Select "Branch" in Address type drop down
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter Address "95 Lancaster Ave" in Address field
    Then Enter City "Manitoba" in City field
    Then Select "Ontario" in State drop down
    Then Enter "R2C 8K7" in Postal Code field
    Then Click on the "Close"
    Then Wait for 5 seconds
    Then Logout from the system
