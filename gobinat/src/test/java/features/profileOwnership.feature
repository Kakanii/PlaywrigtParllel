Feature: Ownership Tab all scenarios
#Ownership

   Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 7 seconds

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Ownership Tab visibility and status
    Then Show Ownership Tab "true"
    Then Verify Ownership Tab clickable "true"
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Ownership page description,Add Ownership button visiblity and status    
    Then Click on Ownership nav link
    Then Show Ownership page desctiption "true"
    Then Show Add Ownership button "true"
    Then Verify Add Ownership button clickable "true"    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify ownership types visibility and Verify Add Ownership button functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Show "Individual" ownership type
    Then Show "Parent Company" ownership type
    Then Show "Ultimate Parent Company" ownership type
    Then Show "Entity or Organization" ownership type    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify ownership types status    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Verify "Individual" clickable
    Then Verify "Parent Company" clickable
    Then Verify "Ultimate Parent Company" clickable
    Then Verify "Entity or Organization" clickable    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify "Individual" ownership button functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Show "Add a new ownership - Individual" header
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify "Parent Company" ownership button functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Show "Add a new ownership - Parent Company" header
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify "Ultimate Parent Company" ownership button functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Show "Add a new ownership - Ultimate Parent Company" header
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify "Entity or Organization" ownership button functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Show "Add a new ownership - Entity or Organization" header
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Label and Field visibitilty when ownership type is "Individual"    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Show Select Ownership label
    Then Show Select Ownership dropdown
    Then Show Ownership Percentage label
    Then Show "Ownership Percentage" tooltip "The amount of equity, as a percentage, that this entity owns of the company."
    Then Show Ownership Percentage input box
    Then Show "Close" button
    Then Show "Save" button
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Error message when required fields are not filled when ownership type is "Individual"
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Click on "Save" button
    Then Show error message "Required" under "Select Ownership"
    Then Show error message "Required" under "Ownership Percentage"
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Error message when required fields are not filled while adding a new contact from Ownership dropdown
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from ownership dropdown
    Then Click on "Save" button
    Then Show error message "Required" under "First Name"
    Then Show error message "Required" under "Last Name"
    Then Show error message "Required" under "Year of Birth"
    Then Show error message "Required" under "Ownership Percentage"
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Error message when required fields are not filled when ownership type is "Parent Company"
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Click on "Save" button
    Then Show error message "Required" under "Company Name"
    Then Show error message "Required" under "Tax Country/Region"
    Then Show error message "Required" under "Ownership Percentage"
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @QuickSanity
  Scenario: Verify Error message when required fields are not filled when ownership type is "Ultimate Parent Company"
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Click on "Save" button
    Then Show error message "Required" under "Company Name"
    Then Show error message "Required" under "Tax Country/Region"
    Then Show error message "Required" under "Ownership Percentage"
    Then Click on "Close" button    
    Then Logout from the system

  @Regression @Ownership @Supplier @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Error message when required fields are not filled when ownership type is "Entity or Organization"
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Click on "Save" button
    Then Show error message "Required" under "Company Name"
    Then Show error message "Required" under "Tax Country/Region"
    Then Show error message "Required" under "Ownership Percentage"
    Then Click on "Close" button
    Then Logout from the system

  #@Smoke @Ownership @Supplier @CDCI @Sanity @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Adding new "Individual" ownership functionality by selecting existing contacts
    Then Click on Contact nav link
    When Click Add Contact button    
    Then Shows Add Contact title in right drawer
    And Switch to the active window
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Enter data in Job Title field "ExistAutomation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field
    Then Select Add a New Location from the dropdown
    Then Click on Save Contact button on Add a New Contact Modal
    Then Wait for 5 seconds
    #Then Close toast message
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select from existing contacts
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify Individual ownership added
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Logout from the system

  @Smoke @Ownership @Supplier @TYSFunctionality
  Scenario: Verify Adding new "Individual" ownership functionality by adding new contact from Add ownership modal
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Switch to the parent window
    Then Verify Individual ownership added
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Adding new "Parent Company" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Adding new "Ultimate Parent Company" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Adding new "Entity or Organization" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Verify ownership added
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Delete "Individual" Ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Verify if Individual ownership card is deleted    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Delete "Parent Company" Ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Verify if ownership card is deleted    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Delete "Ultimate Parent Company" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Verify if ownership card is deleted    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Delete "Entity or Organization" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Verify if ownership card is deleted    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Update "Individual" Ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the Individual ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Update "Parent Company" Ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Update "Ultimate Parent Company" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Ultimate Parent Company" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system

  @Smoke @Ownership @Supplier @CDCI @ProfileOwnership @Sanity @QuickSanity
  Scenario: Verify Update "Entity or Organization" ownership functionality    
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Entity or Organization" ownership type
    Then Switch to the active window
    Then Enter data in the Company Name field
    Then Select "Canada" in Tax Country
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Click on the ownership card
    Then Enter "10" in Ownership Percentage
    Then Click on "Update " button
    Then Verify ownership percentage updated to "10%"
    Then Click on the ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal    
    Then Logout from the system
