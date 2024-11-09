Feature: Verify Countries list on Banking, Questionnaire and Add Contacts page

#CountriesList
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

@Smoke  @Countrieslist @Supplier
  Scenario: Verify Countries Listed in Countries dropdown on Add Bank Account page 
  When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click "Bank Account" tab
    And Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    And Supplier can able to see Countries Count and Print all options on Add Bank Account page
    Then Logout from the system
    
@Smoke  @Countrieslist @Supplier
  Scenario: Verify Countries Listed in Countries dropdown on Assign a Contact to Management Team page
  When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds    
    And Click "Management" tab
    Then Wait for 5 seconds
    When Click on Add Other button on Management page
    And Wait for 5 seconds
    Then Select "Add a New Location" in "Select Location" dropdown
    And Wait for 5 seconds
    And Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page
    When Click on Close button on Assign a Contact to Management page
    Then Logout from the system
    
@Smoke  @Countrieslist @Supplier
  Scenario: Verify Countries Listed in Countries dropdown on Contacts/Locations page
  When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    When Click "Contacts/Locations" tab
    And click on the "Locations" tab
    And Click on Add Location button
    And Wait for 5 seconds
    Then Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page
    When Click on Close button on Assign a Contact to Management page
    Then Logout from the system
    
#@Smoke  @Countrieslist @Supplier
  Scenario: Verify Countries Listed in Countries dropdown on Questionnaire page
  When Enter data in Supplier Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    When Click on Questionnaires Nav link
    And Click on Published Questionnaire tab
    And Click on Company Operations Edit Answers button
    And Wait for 5 seconds
    And Click on Country dropdown
    Then Supplier can able to see Countries Count and Print all options on Company Operations Questionnaire
    And Wait for 4 seconds
    Then Logout from the system
    
@Smoke  @Countrieslist @Buyer
  Scenario: Verify Countries Listed in Countries dropdown on Invite Supplier page
  When Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    And Switch to the new window
    And Click on the Supplier Company Name text box
    And Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    And Click on the IgnoreAndProceed button     
    Then Supplier can able to see Countries Count and Print all options on Invite Supplier page
    Then Logout from the system
    
@Smoke  @Countrieslist @Buyer
  Scenario: Verify Countries Listed in Countries dropdown on Add a New Location page
  When Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 7 seconds
    And Click on "Company" Down arrow on Dashboard
    And Show Profile tab on Dashboard page "true"
    And Click on Profile tab under Company Menu
    And Click "Suppliers" tab
    And Click on Locations tab on Profile page
    And Click on Add a New Location button on Locations page
    And Supplier can able to see Countries Count and Print all options on Assign a Contact to Management page
    When Click on Close button on Assign a Contact to Management page
    Then Logout from the system
