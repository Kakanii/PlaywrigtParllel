Feature: Add New Contact

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @SupplierContact @CDCI @Sanity @SanitySuiteCheck @SanityCheck
  Scenario: As a Supplier I should be able to add a new contact
    When Enter EmailAdress in Email Address field "sanitysupplier@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    And Minimize Your Profile in Profile
    And Click on Contacts/Locations tab
    Then Shows a title Contacts/Locations
    And Shows Add Contact button
    When Click Add Contact button
    Then Shows Add Contact title in right drawer
    And Switch to the active window
    When Enter "suppliercontactfirstname" on supplier contact page "ram"
    And Enter "suppliercontactlastname" on supplier contact page "rabissnsdra"
    And Enter "suppliercontactjobtitle1" on supplier contact page "relation manager"
    And Enter "suppliercontactprimaryphone" on supplier contact page "98745467853"
    #And Enter "suppliercontactemail1" on supplier contact page "automationnsaatest@maildrop.cc"
    And Enter "suppliercontactemail1" on supplier contact page
    And Select the location "Select Location" dropdown
    And Wait for 3 seconds
    And Click on Save Contact button on Supplier Contacts page
    And Wait for 1 seconds
    Then Show the Toast message "Your contact is saved successfully." 
    And Wait for 8 seconds
    And Shows a title Contacts/Locations   
    When Enter Contact "ram" Keyword in Search box
    And Wait for 8 seconds
    Then Show contact details in search results
    # Since we are adding Email address dynamically, Delete is not requried hence commented the code
    #When Click on Contact Menu on Contact/Locations page
    #And Wait for 10 seconds
    #Then Show Update Contact and Delete Contact
    #And Wait for 10 seconds
    #When Click on Delete Contact
    #And Click on Delete button on Delete Contact Window
    #And Wait for 1 seconds
    #Then Show the Toast message "Your contact is deleted successfully."
    #And Wait for 5 seconds
    And Logout from the system

  @Smoke @SupplierContact @CDCI @Sanity
  Scenario: Verify delete in Add a New Contact page
    And Wait for 7 seconds
    When Click "Contacts" tab
    Then Wait for 3 seconds
    Then Click on "Update Contact" page
    Then Click on the Delete button on update contact
    And Wait for 7 seconds
    And Logout from the system