Feature: Profile Contacts of IBM Buyer
#ProfileContacts

  Background: Login as a Buyer/Supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    

  @Regression  @ProfileContacts @Buyer 
  Scenario: Verify Add a New Contact button visibility and title on Add a New Contact Modal
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Wait 2 seconds
    #Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Wait 2 seconds
    Then Click on Contacts on Profile page
    Then Wait 2 seconds
    Then Show Add a New Contact button on Contacts "true"
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Wait 2 seconds
    Then Show title on Add a New Contact modal "Add a New Contact"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Wait 3 seconds
    Then Logout from the system

  @Regression @ProfileContacts @Buyer 
  Scenario: Verify error messages on Add a New Contact Modal without input data
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait 3 seconds
   	Then Click on "Company" Down arrow on Dashboard
   	Then Wait 3 seconds
   	Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Wait 3 seconds
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Wait 3 seconds
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" under "First Name" field
    Then Show error message "Required" under "Last Name" field
    Then Show error message "Required" under "Job Title" field
    Then Show error message for primary phone "Required"
    Then Wait 3 seconds
    Then Show error message "Required" under "Email ID" field
    #Then Show error message "Required" under "Select Location" field
    Then Wait 3 seconds
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Wait 3 seconds
    Then Logout from the system

  @Regression @ProfileContacts @Buyer 
  Scenario: Verify error message on Add a New Contact Modal while entering special characters
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Wait 3 seconds
    Then Click on Profile tab on Dashboard
    Then Wait 3 seconds
    Then Click on Contacts on Profile page
    Then Wait 3 seconds
    Then Click on Add a New Contact button on Contacts
    Then Wait 3 seconds
    Then Switch to the active window
    Then Wait 3 seconds
    Then Enter data in Fist Name field "$^%^&^"
    Then Enter data in Middle Name field "$^%^&^"
    Then Enter data in Last Name field "$^%^&^"
    Then Enter data in Job Title field "$^%^&^"
    Then Enter data in Primary Phone field "$^%^"
    Then Enter data in Email field "$$#&^*&*((*"
    Then Wait 3 seconds
    Then Click on Save Contact button on Add a New Contact Modal
    Then Wait 3 seconds
    Then Show error message "Only alphabets should be allowed" under "First Name" field 
    Then Show error message "Only alphabets should be allowed" under "Last Name" field
    Then Show error message "Only alphabets should be allowed" under "Job Title" field
    Then Wait 3 seconds
    Then Show error message for invalid phone number "Must be a full phone number"
    Then Show error message for invalid email "Invalid email address"
    Then Wait 3 seconds
    Then Click on Cancel button on Add a New Contact Modal
    Then Wait 3 seconds
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Contact Modal while entering space
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter space in Fist Name field
    Then Enter space in Middle Name field
    Then Enter space in Last Name field
    Then Enter space in Job Title field
    Then Enter space in Email field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" under "First Name" field
    Then Show error message "Required" under "Last Name" field
    Then Show error message "Only alphabets should be allowed" under "Job Title" field
    Then Show error message "Required" under "Email ID" field
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system
    
#raised issue on this scenario
  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message at Secondary Phone on Add a New Contact Modal while entering valid data
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Primary Phone field "9949761536"
    #Then Enter data in Secondary Phone field "$^%^"
    Then Enter data in Secondary Phone field "9949761536"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message for invalid phone number at Secondary Phone "Must be different from primary phone number"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Contact Modal while entering invalid data
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Email field "1111"
    Then Enter data in Alternate Email field "1111"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message for invalid email "Invalid email address"
    Then Show error message for invalid email "Invalid email address"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message at Alternate Email on Add a New Contact Modal while entering special characters
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Alternate Email field "%$^%&^&*&*&"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message for invalid email "Invalid email address"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system
    
@Regression @ProfileContacts @Buyer
  Scenario: Verify error message at Alternate Email on Add a New Contact Modal while entering correct data
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Email field "ram@m.cc"
    Then Enter data in Alternate Email field "ram@m.cc"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message for duplicate email "Must be different from primary email"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system
    
  @Regression @ProfileContacts @Buyer
  Scenario: Verify error messages on Add a New Contact Modal with First Name
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Wait 3 seconds
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Wait 3 seconds
    Then Switch to the active window
    Then Wait 3 seconds
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Wait 3 seconds
    Then Select Address Type from the dropdown "Branch"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Wait 3 seconds
    Then Click on Save Contact button on Add a New Contact Modal
    Then Wait 3 seconds
    Then Show error message "Required" under "First Name" field
    Then Show error message "Required" under "Last Name" field
    Then Show error message "Required" under "Job Title" field
    Then Show error message for primary phone "Required"
    Then Show error message "Required" under "Email ID" field
    #Then Show error message "Required" under "Email ID" field
    Then Wait 3 seconds
    Then Click on Cancel button on Add a New Contact Modal
    Then Wait 3 seconds
    Then Switch to the parent window
    Then Logout from the system
    
   @Smoke @ProfileContacts @Buyer @CDCI 
  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Conact Modal if we enter valid data with country "Germany"  and without address city state postal code
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CEO"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Enter data in Alternate Email field "test1@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Germany" in "Country/Region" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    #Then Show error message for Address "Required"
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Postal Code" field      
    # Then Show error message for City "Required"
    #Then Show error message for State "Required"
    #Then Show error message for Postal Code "Required"
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Conact Modal if we enter valid data with country "Germany"  and without address city state postal code
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CEO"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Germany" in "Country/Region" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Postal Code" field 
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Conact Modal if we enter valid data with country "Canada" and without address city state postal code
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CEO"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Canada" in "Country/Region" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Postal Code" field 
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify error message on Add a New Conact Modal if we enter valid data with country "France" and without address city state postal code
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CEO"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "France" in "Country/Region" dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Postal Code" field 
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @TYSFunctionality
  Scenario: Add a New Contact with valid data with Country "USA"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Wait for 3 seconds
    Then Click on Contacts on Profile page
    Then Wait for 3 seconds
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "USAUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "USAAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "San Francisco"
    Then Select State from the dropdown "California"
    Then Enter data in Zip Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "USAAutomation"
    Then Close toast message
    Then Wait for 5 seconds
    Then Click on "USAAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click Locations tab on Profile page
    Then Click on location card with Address "Cross Road 2" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Add a New Contact with valid data with Country "Germany"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "Munich"
    Then Enter data in Postal Code field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "GAutomation"
    Then Close toast message
    Then Wait for 5 seconds
    Then Click on "GAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Wait for 5 seconds
    Then Click Locations tab on Profile page
    Then Click on location card with Address "Cross Road 2" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Add a New Contact with valid data with Country "Canada"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "CUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "CAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "Toronto"
    Then Select State from the dropdown "Ontario"
    Then Enter data in Postal Code for Canada
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show created contact on Contacts list "CAutomation"
    Then Close toast message
    Then Wait for 5 seconds
    Then Click on "CAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Click Locations tab on Profile page
    Then Click on location card with Address "Cross Road 2" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Add a New Contact with valid data with Country "France"
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Wait for 5 seconds
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "FAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "France" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "Paris"
    Then Enter data in Postal Code field
    Then Wait for 5 seconds
    Then Click on Save Contact button on Add a New Contact Modal
    Then Wait for 5 seconds
    Then Show created contact on Contacts list "FAutomation"
    Then Wait for 5 seconds
    Then Wait for 5 seconds
    Then Click on "FAutomation" Contact
    Then Wait for 5 seconds
    Then Click on Delete button on Update Contact Modal
    Then Click Locations tab on Profile page
    Then Click on location card with Address "Cross Road 2" for United States
    Then Click on Delete button on Update Location modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
    Scenario: Add a New Contact with valid data by selecting existing location
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Existing"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "ExistAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Distribution Center - 201 Copley parkway"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Close toast message
    Then Wait for 5 seconds
    Then Show created contact on Contacts list "ExistAutomation"
    Then Click on "ExistAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Delete the created contact from the list
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Delete"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "DeleteAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Distribution Center - 201 Copley parkway"
    Then Click on Save Contact button on Add a New Contact Modal
    Then Close toast message
    Then Wait for 5 seconds
    Then Show created contact on Contacts list "DeletetAutomation"
    Then Click on "DeleteAutomation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Update the created contact from the list
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "Update"
    Then Enter data in Last Name field "FirstName"
    Then Enter data in Job Title field "UpdateAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Distribution Center - 201 Copley parkway"
    Then Click on Save Contact button on Add a New Contact Modal
    #Then Close toast message
    Then Wait for 5 seconds
    Then Show created contact on Contacts list "UpdateAutomation"
    Then Click on "UpdateAutomation" Contact
    Then Enter data in Fist Name field "UpdatedData"
    Then Enter data in Last Name field "UpdatedData"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "345435453457"
    #Then Enter data in Email field "updated@contact.com"
    Then Click on Update Contact button on Update Contact Modal
    #Then Close toast message
    Then Wait for 5 seconds
    Then Show created contact on Contacts list "Automation"
    Then Click on "Automation" Contact
    Then Click on Delete button on Update Contact Modal
    Then Logout from the system

  @Smoke @ProfileContacts @Buyer @CDCI @Sanity
  Scenario: Verify mouseover text for First Name on Add a New Contact modal
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field."
    #Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field."
    #Then Show "Last Name" tooltip " The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters. "
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip "The official email address of this person. This is a required field."
        When Wait 5 seconds
        #Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    #  Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This field cannot be changed after save." in Assign a Contact modal
    #Then Show "Address Line 1" tooltip "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field. " in Assign a Contact modal
    #Then Show "Address Line 2" tooltip " Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field. " in Assign a Contact modal
    #Then Show "City" tooltip " Name of the City at which it is located. This is a mandatory field. " in Assign a Contact modal
    #Then Show "State" tooltip " Name of the State at which it is located. This is a mandatory field. " in Assign a Contact modal
    #Then Show "Zip Code" tooltip " The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10 " in Assign a Contact modal
    #Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional. " in Assign a Contact modal
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    And Verify "Address Line 1" tooltip of "Street name, House/Building or Block number. Max length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "State" tooltip of "Name of the State at which it is located. This is a mandatory field." in add bank account page
    And Verify "Zip Code" tooltip of "The Zip Code of the company address. The format is five digits, additionally with a hyphen, and four digits as optional. This is a mandatory field. Max Length: 10" in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    #Then Verify "D-U-N-S Number" tooltip of "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank." in add bank account page
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify mouseover text for Postal Code on Add a New Contact modal with country "Germany" for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Wait for 3 seconds
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Wait for 3 seconds
    Then Select "Germany" in "Country/Region" dropdown
    And Verify "Postal Code" tooltip of "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in add bank account page
    #Then Show "Postal Code" tooltip "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory." in Assign a Contact modal
    Then Wait for 3 seconds
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

 @Regression @ProfileContacts @Buyer
  Scenario: Verify mouseover text for Province on Add a New Contact modal with country "Canada" for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select "Canada" in "Country/Region" dropdown
    And Verify "Province" tooltip of "The name of the Province, as mentioned in your Company's commercial registration certificate." in add bank account page
    #Then Show "Province" tooltip "The name of the Province, as mentioned in your Company's commercial registration certificate." in Assign a Contact modal
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @ProfileContacts @Buyer
  Scenario: Verify mouseover text for Address3 on Add a New Contact modal with country "France" for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Company" Down arrow on Dashboard
    Then Click on Profile tab on Dashboard
    Then Click on Contacts on Profile page
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select "France" in "Country/Region" dropdown
    And Verify "Address Line 3" tooltip of "Address 3 used for 'ZI' (Zone Industrielle) or 'Z.U.P.' if applicable" in add bank account page
    #Then Show "Address Line 3" tooltip "Address 3 used for 'ZI' (Zone Industrielle) or 'Z.U.P.' if applicable" in Assign a Contact modal
    Then Click on Cancel button on Add a New Contact Modal
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @ProfileContacts @Supplier @CDCI @Sanity
  Scenario: Verify if supplier is able to add contacts  on the contacts and locations screen with germany as country
    When Enter Nokia Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 20 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Contacts" button
    Then Verify "contattab" tab is displayed
    Then Click on "contattab" tab on conatcslocation screen
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Click on location "Click here"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "Munich"
    Then Enter data in Postal Code field
    Then Click on "suppliercontactsave" button on supplier contact page
    #Then Click on Save Contact button on Add a New Contact Modal
    #Then Enter "suppliercontactfirstname" on supplier contact page "Autoomatioontest"
    #Then Enter "suppliercontactlastname" on supplier contact page "Testtdraam"
   # Then Enter "suppliercontactjobtitle1" on supplier contact page "supplsieerqaa"
    #Then Enter "suppliercontactprimaryphone" on supplier contact page "987444567853"
    #Then Enter "suppliercontactemail1" on the supplier contact page "supplier"
    #Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is saved successfully."
    Then Wait for 5 seconds
     Then Verify new contact in mangement contact "GUAT"
    #Then Show created contact on Contacts list "GAutomation"
    ###*****ellipsis blocker to delete*****
    #Then Verify delete option on supplier contact "GUAT"
    #Then Wait for 5 seconds
    Then Logout from the system
    
 ### @Smoke @ProfileContacts @Supplier @CDCI @Sanity
  Scenario: Add a New Contact with valid data with Country "Germany"
    Then Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login    
    Then Click on Contact nav link
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Germany" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Enter data in City field "Munich"
    Then Enter data in Postal Code field
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is saved successfully."
    Then Wait for 5 seconds
     Then Verify new contact in mangement contact "GUAT"
    ##*****ellipsis blocker to delete*****
    #Then Verify delete option on supplier contact "GUAT"
    #Then Wait for 5 seconds
    Then Logout from the system

  @Smoke @ProfileContacts @Supplier @CDCI @Sanity
  Scenario: Add a New Conact with valid data with Country "Canada"
    When Enter Nokia Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Wait for 20 seconds
    Then Verify If user able to view supplier Contacts screen
    Then Verify the visibility of "Contacts" button
    Then Verify "contattab" tab is displayed
    Then Click on "contattab" tab on conatcslocation screen
    Then Enter data in Fist Name field "GUAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "GAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Click on location "Click here"
   # Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Canada" in "Country/Region" dropdown
    Then Enter data in Address field "Cross Road 2"
    Then Select State from the dropdown "Ontario"
    Then Enter data in City field "Toronto"
    Then Enter data in Postal Code for Canada
    Then Click on "suppliercontactsave" button on supplier contact page
    Then Show the Toast message "Your contact is saved successfully."
    Then Wait for 5 seconds
    Then Verify new contact in mangement contact "GUAT"
    ##*****ellipsis blocker to delete*****
    #Then Verify delete option on supplier contact "GUAT"
    #Then Wait for 5 seconds
    Then Logout from the system

   