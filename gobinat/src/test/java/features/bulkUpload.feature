Feature: BulkUpload

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
   
  @BulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should able to send an invite through bulk upload with valid data
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 10 seconds
    Then Add Supplier data information in the Excel file
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    And Wait for 5 seconds
    #Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
   	When Click on download logs
   	Then Verify the status messageof bulk upload is "Invite Supplier"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through bulk upload without supplier email
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing supplier email
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invalid supplier email"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should not able to send an invite through bulk upload without first name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing first name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invalid supplier first name"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through bulk upload without last name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing last name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    And Wait for 1 seconds
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invalid supplier last name"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should not able to send an invite through bulk upload without business name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing business name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invalid supplier business name"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through bulk upload without taxCountry name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing taxCountry name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invalid supplier tax country"
    Then Logout from the system

  @BulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should able to send an invite through bulk upload without preferredlanguage name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing preferredlanguage name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Not a TYS user email"
    Then Logout from the system


  @BulkUpload @SanityCheck @Sanity 
  Scenario: Verify As a Buyer, I should not able to to see the ActualInvitedby field in the relationship history When invitebyemail field is blank 
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing invitebyemail name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Invite Supplier"
    Then Logout from the system


  @BulkUpload @SanityCheck @Sanity
  Scenario: Verify As a Buyer, I should be able to view error message, When Invalid data is given in the Bulk invite Template 
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    And Click on "Download Supplier Bulk Invite Template" span button
    And Wait for 5 seconds
    Then Add Supplier information in the csv file for missing invitebyemail name
    And Wait for 3 seconds
    Then Click "Upload Supplier Bulk Invite" button
    And Wait for 3 seconds
    And Upload Invite supplier excel file
    And Wait for 3 seconds
    Then Click Upload button
    And Wait for 3 seconds
    And Switch to the active window
    Then Confirmed the override button
    Then Verify toast message "Upload Successful." successfully is shown
    And Wait for 10 seconds
    When Click on download logs
    Then Verify the status messageof bulk upload is "Not a TYS user email address"
    Then Logout from the system