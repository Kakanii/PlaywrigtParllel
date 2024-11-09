Feature: SupplierPReload

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
   
  @ContactsBulkUpload @Sanity
  Scenario: Verify As a Buyer, I should able to send an invite through supplier preload with valid data
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Supplier Preload Tab
    And Click on "Download Supplier Preload Templates" span button
    And Wait for 3 seconds
    Then Add Supplier data information in the Excel file for the supplier preload
    And Wait for 3 seconds
    Then Click "Upload Supplier Preload" button
    And Wait for 3 seconds
    Then Upload Supplier Preload file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	Then Click on supplier preload download logs
    And Wait for 30 seconds
    Then Verify the status message of Supplier preload logs is "Success"
    Then Logout from the system

  @ContactsBulkUpload @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through supplier preload with invalid business name
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Supplier Preload Tab
    And Click on "Download Supplier Preload Templates" span button
    And Wait for 3 seconds
    Then Add Supplier data information in the Excel file for the supplier preload with invalid business name
    And Wait for 3 seconds
    Then Click "Upload Supplier Preload" button
    And Wait for 3 seconds
    Then Upload Supplier Preload file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	Then Click on supplier preload download logs
    And Wait for 30 seconds
    Then Verify the status message of Supplier preload logs is "invalid business"
    Then Logout from the system

   
  @ContactsBulkUpload @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through supplier preload with invalid tax country
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Supplier Preload Tab
    And Click on "Download Supplier Preload Templates" span button
    And Wait for 3 seconds
    Then Add Supplier data information in the Excel file for the supplier preload with invalid tax country
    And Wait for 3 seconds
    Then Click "Upload Supplier Preload" button
    And Wait for 3 seconds
    Then Upload Supplier Preload file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	Then Click on supplier preload download logs
    And Wait for 30 seconds
    Then Verify the status message of Supplier preload logs is "invalid tax country"
    Then Logout from the system


  @ContactsBulkUpload @Sanity
  Scenario: Verify As a Buyer, I should not able to send an invite through supplier preload with invalid tax registration
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Bulk Upload" tab
    And Wait for 5 seconds
    Then Click on Supplier Preload Tab
    And Click on "Download Supplier Preload Templates" span button
    And Wait for 3 seconds
    Then Add Supplier data information in the Excel file for the supplier preload with invalid tax registration
    And Wait for 3 seconds
    Then Click "Upload Supplier Preload" button
    And Wait for 3 seconds
    Then Upload Supplier Preload file
    And Wait for 3 seconds
    Then Click confirm contact template Upload button
    And Switch to the active window
    And Wait for 10 seconds
   	Then Click on supplier preload download logs
    And Wait for 30 seconds
    Then Verify the status message of Supplier preload logs is "invalid tax registration"
    Then Logout from the system

   
