Feature: Trusted Domain Tab in Manage Users page
#trusteddomain
  Background: Login as a Buyer
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Smoke @trusteddomain @Buyer @QuickSanity
  Scenario: Verify Trusted Domains tab availability and click the tab for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Check the Title of the Trusted Domains tab "Trusted Domains"
    Then Click on Trusted Domains tab
    Then Logout from the system

  @Smoke @trusteddomain @Supplier @QuickSanity
  Scenario: Verify Trusted Domains tab availability and click on the tab for Supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Check the Title of the Trusted Domains tab "Trusted Domains"
    Then Click on Trusted Domains tab
    Then Logout from the system

  @Smoke @trusteddomain @Buyer @QuickSanity
  Scenario: Verify Add Trusted Domain button is available and clickable in Trusted Domain Tab for Buyer
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Check the Title of the Add Trusted Domains button "Add a Trusted Email Domain"
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Check Add Trusted Domain Title on the pop up "Add a Trusted Email Domain"
    Then Click on Close button in Add a Trusted Email Domain button pop up
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @trusteddomain @Supplier @QuickSanity
  Scenario: Verify Add Trusted Domain button is available and clickable in Trusted Domain Tab for Supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Check the Title of the Add Trusted Domains button "Add a Trusted Email Domain"
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Check Add Trusted Domain Title on the pop up "Add a Trusted Email Domain"
    Then Click on Close button in Add a Trusted Email Domain button pop up
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @trusteddomain @Buyer @QuickSanity
  Scenario: Verify Buyer is able Add a Trusted domain with invalid input
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Check Title of Trusted Email Domain Name input text field "Trusted Email Domain Name"
    Then Check Text input field availability
    Then Enter input in Add Trusted Email Domain field "sdfgsdfgsdfg"
    Then Click on Save Trusted Email Domain button
    Then Capture invalid input Validation error "Invalid email domain"
    Then Click on Close button in Add a Trusted Email Domain button pop up
    Then Switch to the parent window
    Then Logout from the system

  @Regression @trusteddomain @Supplier
  Scenario: Verify Supplier is able Add a Trusted domain with invalid input
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Check Title of Trusted Email Domain Name input text field "Trusted Email Domain Name"
    Then Check Text input field availability
    Then Enter input in Add Trusted Email Domain field "sdfgsdfgsdfg"
    Then Click on Save Trusted Email Domain button
    Then Capture invalid input Validation error "Invalid email domain"
    Then Click on Close button in Add a Trusted Email Domain button pop up
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Regression @trusteddomain @Buyer @CDCI @Sanity @QuickSanity
  Scenario: Verify Buyer is able Update a Trusted Domain
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Enter input in Add Trusted Email Domain field "dispostable.com"
    Then Click on Save Trusted Email Domain button
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable.com"
    Then Choose Update option from the actions dropdown
    Then Switch to the active window
    Then Check Update Trusted Domain Title on the pop up "Update Trusted Email Domain"
    Then Check button on the pop up "Update"
    Then Check button on the pop up "Close"
    Then Enter input in Update Trusted Email Domain field "dispostable123.com"
    Then Click on Update button in the Update Trusted Email Domain popup
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable123.com"
    Then Wait for 3 seconds
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Regression @trusteddomain @Supplier @CDCI @Sanity @QuickSanity
  Scenario: Verify Supplier is able Update a Trusted domain
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Enter input in Add Trusted Email Domain field "dispostable.com"
    Then Click on Save Trusted Email Domain button
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable.com"
    Then Choose Update option from the actions dropdown
    Then Switch to the active window
    Then Check Update Trusted Domain Title on the pop up "Update Trusted Email Domain"
    Then Check button on the pop up "Update"
    Then Check button on the pop up "Close"
    Then Enter input in Update Trusted Email Domain field "dispostable123.com"
    Then Click on Update button in the Update Trusted Email Domain popup
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable123.com"
    Then Wait for 3 seconds
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Regression @trusteddomain @Buyer @CDCI @Sanity @QuickSanity
  Scenario: Verify Buyer is able able able Add a Trusted domain, validate Successfully added toast notification and delete a Trusted domain
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Enter input in Add Trusted Email Domain field "dispostable.com"
    Then Click on Save Trusted Email Domain button
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable.com"  
    Then Wait for 3 seconds  
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Check Delete Trusted Domain Title on the pop up "Delete Trusted Email Domain"
    Then Check button on Delete trusted Domain pop up "Delete"
    Then Check button on Delete trusted Domain pop up "Close"
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system

  @Regression @trusteddomain @Supplier
  Scenario: Verify Add a Trusted Email Domain popup fields in Trusted Domain Tab for Supplier
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Check the Title of the Add Trusted Domains button "Add a Trusted Email Domain"
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Check Add Trusted Domain Title on the pop up "Add a Trusted Email Domain"
    Then Show "Trusted Email Domain Name" label in the popup
    Then Show "@" addon in the popup
    Then Verify Close button clickable in Add a Trusted Email Domain button pop up "true"
    Then Verify Close Icon clickable in Add a Trusted Email Domain button pop up "true"
    Then Click "Save Trusted Email Domain" button
    Then Show Error message "Required" under "Trusted Email Domain Name" field in the popup
    Then Click on Close button in Add a Trusted Email Domain button pop up
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Regression @trusteddomain @Supplier @CDCI @Sanity @QuickSanity
  Scenario: Verify Supplier is able able Add a Trusted domain, validate Successfully added toast notification and delete a Trusted domain
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Nav link
    Then Click on Trusted Domains tab
    Then Click on Add a Trusted Email Domain button
    Then Switch to the active window
    Then Enter input in Add Trusted Email Domain field "dispostable.com"
    Then Click on Save Trusted Email Domain button
    Then Check Saved Successfully Toast Notificaiton "true"
    Then Switch to the parent window
    Then Validate added Trusted Domain on the page "dispostable.com" 
    Then Wait for 3 seconds   
    Then Choose Remove option from the actions dropdown
    Then Switch to the active window
    Then Check Delete Trusted Domain Title on the pop up "Delete Trusted Email Domain"
    Then Check button on Delete trusted Domain pop up "Delete"
    Then Check button on Delete trusted Domain pop up "Close"
    Then Click on Delete button in the Delete Trusted Email Domain popup
    Then Switch to the parent window
    Then Logout from the system