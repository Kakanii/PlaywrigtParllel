Feature: ContactsBulkUpload

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
   
  @ContactsBulkUpload @SanityCheck @Sanity @SanitySuiteCheck @SanitySuiteCheck
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with valid data
    #When Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Successfully associated relationship managers"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with missing supplier name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with missing supplier name
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Invalid supplier details - Missing supplier name"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with missing tax country
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with missing tax country
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Invalid supplier details - Missing Tax Country"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with missing relationship manager role
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with missing relationship manager role
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Invalid supplier details - Missing relationship manager role"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with missing user email
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with missing user email
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Invalid supplier details - Missing user email"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with wrong tax country name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with wrong tax country name
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "no business entity found for supplier"
    Then Logout from the system

  @ContactsBulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should able to send an invite through contacts bulk upload with missing all column name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Contacts Bulk Upload Tab
    And Click on "Download Buyer Contacts Data Template" span button
    And Wait for 3 seconds
    Then Add Buyers data information in the Excel file for the contacts bulk upload with missing all columns name
    And Wait for 3 seconds
    Then Click "Upload Buyer Contact Data" button
    And Wait for 3 seconds
    And Upload Buyer contact data file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	When Click on download CBU logs
   	Then Verify the status message of uploaded contact bulk upload file is "Invitee Email"
    Then Logout from the system
