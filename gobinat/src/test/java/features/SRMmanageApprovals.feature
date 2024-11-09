Feature: SRM manage approvals

  #SRM manage approvals
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window

  ################Conditionally approved status filter##############
  #SLYN-29223
  @Smoke @ManageApprovals @TYSFunctionality @SRMSanityCheck @SLYN-29223
  Scenario: Verify Buyer is able to view the "Conditionally Approved" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Wait for 3 seconds
    Then verify the dropdown "Conditionally Approved" value as "option"
    Then Close Apply Filters
    Then Logout from the system

  #SLYN-29499
  @Smoke @ManageApprovals @TYSFunctionality @SRMSanityCheck @SLYN-29499
  Scenario: Verify Buyer is able to view the "Reopened" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Wait for 3 seconds
    Then verify the dropdown "Reopened" value as "option"
    Then Close Apply Filters
    Then Logout from the system

  #SLYN-29223
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Wait for 3 seconds
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then Wait for 3 seconds
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and save the "Conditionally Approved" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    #Then Click on "Country" filter
    #Then Click on "Country" dropdown
    #Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 15 seconds
    Then Click on "Save Filter" button on leftmenu
    #Then Click on the "Save Filter" field
    Then Enter text on "Filter Name" as "AutomationTest"
    Then Click on "Save" button available in "Save Filter"
    #When Wait 5 seconds
    #Then Verify element "Filter saved successfully" displayed as "true"
    When Wait 5 seconds
    Then Click on "Filter by" button on "MangeApprovals"
    #Then Click on "Saved Filters" button on leftmenu
    Then Click on "Saved Filters" filter
    When Wait 2 seconds
    Then Verify element "AutomationTest" displayed as "true"
    Then Delete saved filter "AutomationTest"
    Then Verify element "Are you sure you want to delete the saved filter named" displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and country name in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 5 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and supplier name in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and supplier status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Approval Status" filter
    #Select Supplier status
    Then Click on black space
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Select "Accepted Invites" value from dropdown
    Then Click on black space
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Conditionally Approved"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and tax geography in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Tax geography
    Then Click on black space
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then Select "EMEA" value from dropdown
    Then Click on black space
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Conditionally Approved"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and On-Hold in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Hold
    Then Click on "On-Hold" filter
    Then Click on "Yes" option button for "onHold"
    Then Click on black space
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Approved"
    Then Logout from the system

  #SLYN-29223
  @Regression @ManageApprovals @SLYN-29223
  Scenario: Verify Buyer is able to select and search the "Conditionally Approved" approval status and Blocked in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Hold
    Then Click on black space
    Then Click on "Block" filter
    Then Click on "Yes" option button for "Blocked"
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then Show Message as "No records found."
    Then Logout from the system

  ################Reopned status filter##############
  #SLYN-29043
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29043
  Scenario: Verify Buyer is able to view the "Reopened" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Wait for 3 seconds
    Then verify the dropdown "Reopened" value as "option"
    Then Close Apply Filters
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @TYSFunctionality @SLYN-29043
  Scenario: Verify Buyer is able to select and save the "Reopened" approval status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    Then Click on "Search" button in connected supplier filter by
    Then Click on "Save Filter" button on leftmenu
    #Then Click on the "Save Filter" field
    Then Enter text on "Filter Name" as "AutomationTest"
    Then Click on "Save" button available in "Save Filter"
    When Wait 5 seconds
    #Then Verify element "Filter saved successfully" displayed as "true"
    Then Verify toast message "Filter saved successfully" successfully is shown
    Then Click on "Filter by" button on "MangeApprovals"
    #Then Click on "Saved Filters" button on leftmenu
    Then Click on "Saved Filters" filter
    When Wait 2 seconds
    Then Verify element "AutomationTest" displayed as "true"
    Then Delete saved filter "AutomationTest"
    Then Verify element "Are you sure you want to delete the saved filter named" displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and country name in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and supplier name in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and supplier status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Supplier status
    Then Click on black space
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Select "Accepted Invites" value from dropdown
    Then Click on black space
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Reopened"
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and supplier status in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Select "Accepted Invites" value from dropdown
    Then Click on black space
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    And Wait for 3 seconds
    #Select Supplier status
    Then Click on black space
    And Wait for 3 seconds
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Reopened"
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and tax geography in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Tax geography
    Then Click on black space
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then Select "EMEA" value from dropdown
    Then Click on "Tax Geography" filter
    Then Click on black space
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    When Wait 3 seconds
    Then Select "Reopened" value from dropdown
    When Wait 3 seconds
    Then Click on "Approval Status" filter
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then verify the filtered options as "Reopened"
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and On-Hold in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Hold
    Then Click on black space
    Then Click on "On-Hold" filter
    Then Click on "Yes" option button for "onHold"
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then Show Message as "No records found."
    Then Logout from the system

  #SLYN-29043
  @Regression @ManageApprovals @SLYN-29043
  Scenario: Verify Buyer is able to select and search the "Reopened" approval status and Blocked in the filter on manage approvals
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    #Select Hold
    Then Click on black space
    Then Click on "Block" filter
    Then Click on "Yes" option button for "Blocked"
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Reopened" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    When Wait 3 seconds
    And Refresh the current webpage
    Then Show Message as "No records found."
    Then Logout from the system

  #######################DASH BOARD#####################
  #SLYN-29224
  @Smoke @ManageApprovals @BuyerDashboard @TYSFunctionality @SLYN-29224
  Scenario: Verify Conditionally Approved Suppliers status is shown on Approvals section page Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show "Conditionally Approved" under Approvals section
    And Show "Conditionally Approved" count on Approvals section
    And Wait for 3 seconds
    Then Logout from the system

  #SLYN-29224
  @Smoke @BuyerDashboard @ManageApprovals @SRMSanityCheck @SLYN-29224
  Scenario: Verify Conditionally Approved Suppliers on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show "Conditionally Approved" under Approvals section
    When Click on "Conditionally Approved" under approval section on Dashboard
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Logout from the system

  #######################DASH BOARD REOPENED#####################
  #SLYN-29044
  @Smoke @BuyerDashboard @ManageApprovals @SRMSanityCheck @SLYN-29044
  Scenario: Verify Reopened Suppliers status is shown on Approvals section page Dashboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show "Reopened" under Approvals section
    And Show "Reopened" count on Approvals section
    And Wait for 3 seconds
    Then Logout from the system

  #SLYN-29044
  @Smoke @BuyerDashboard @ManageApprovals @TYSFunctionality @SLYN-29044
  Scenario: Verify Reopened Suppliers on Manage Approvals page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 10 seconds
    Then Show the title on Dashboard page
    And Show All Suppliers label on Dashboard page
    And Show "Reopened" under Approvals section
    When Click on "Reopened" under approval section on Dashboard
    And Wait for 3 seconds
    Then Verify status as "Reopened" from buyer side
    Then Logout from the system

  #SLYN-29035
  @Smoke @BuyerDashboard @ManageApprovals @TYSFunctionality @SLYN-29035
  Scenario: Verify Conditionally Approved status is visible after Approved with conditions as Mitigation Plan Created
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    #When click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "6"
    Then Wait for 10 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    #Then Enter the date "20/10/2023" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29501
  @Smoke @BuyerDashboard @ManageApprovals @SRMSanityCheck @SLYN-29501
  Scenario: As a Buyer, I should be able to to approve an approval request but with conditions. Associated follow up date optionally attached to the approval which will drive the approval to reopen at a certain date.
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 15 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    #Then Enter the date "20/10/2023" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29035
  @Regression @BuyerDashboard @ManageApprovals @SLYN-29035
  Scenario: Verify Conditionally Approved status is visible after Approved with conditions as Approved as Exception
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    #When click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "6"
    Then Wait for 10 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Approved as Exception" in Approval condition reason
    Then Enter the date "20/10/2023" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29035
  @Regression @BuyerDashboard @ManageApprovals @SLYN-29035
  Scenario: Verify Conditionally Approved status is visible after Approved with conditions as Supplier Commitment to Rectify
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Supplier Commitment to Rectify" in Approval condition reason
    Then Enter the date "20" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29035
  @Regression @BuyerDashboard @ManageApprovals @SLYN-29035
  Scenario: Verify Conditionally Approved status is visible after Approved with conditions as Other
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Other" in Approval condition reason
    Then Enter the date "20" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29227
  @Regression @BuyerDashboard @ManageApprovals @TYSFunctionality @SLYN-29227
  Scenario: Verify Conditionally Approved status is visible after Approved with conditions as Mitigation Plan Created
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
   #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "20/10/2023" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Verify "Assigned To" is displying as "Administrator"
    And Verify "Approved with Conditions" reason is displying as "Mitigation Plan Created"
    And Verify "Date" value is displying as "October" at "1"
    And Verify "Approval Status" value is displying as "Conditionally Approved" at "2"
    And Verify "Role Assigned" value is displying as "Administrator" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #######################Onboard with Conditionally Approved#####################
  #SLYN-29041
  @Smoke @TYSFunctionality @ManageApprovals @SLYN-29041
  Scenario: Verify as a buyer,Able to Onboard Supplier with Conditionally Approved Status
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 10 seconds
    Then select date "1" from the date
    Then Wait for 5 seconds
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    Then Click on the radio button "YES" for "1" in Diversity
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 2 seconds
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
    And Switch to the parent window
    And Wait for 10 seconds
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
    #Rule without criteria
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Navigate back to supplier
    Then Wait for 3 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #######################Reopen the Approved with condition status#####################
  #SLYN-29036
  @Regression @TYSFunctionality @ManageApprovals @SLYN-29036
  Scenario: Verify as a buyer , I should able to Reopen the approval request based on approved with conditions action
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12/11/2023" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Verify "Assigned To" is displying as "Administrator"
    And Verify "Approved with Conditions" reason is displying as "Mitigation Plan Created"
    And Verify "Date" value is displying as "November" at "1"
    And Verify "Approval Status" value is displying as "Conditionally Approved" at "2"
    And Verify "Role Assigned" value is displying as "Administrator" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29036
  @Regression @ManageApprovals @TYSFunctionality @SLYN-29036
  Scenario: Verify as a buyer , I should able to Reopen the approval request based on approved with conditions action and supplier relationship contact
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Internal Buyer" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    Then Click on Update contacts icon "Internal Buyer" role
    Then Wait for 3 seconds
    Then Update contacts "asd asd, ramaibsssmuat@maildrop.cc" role
    Then Click on "Save" button on "Update Contacts"
    Then Wait for 5 seconds
    #Then Click on checkbox on "Internal Buyer" role
    When Click "Next" button
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Wait for 10 seconds
    When Click "Create Approval Request" button
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on "Administrator" span button
    And Click "Create" button 2
    When Click on the "Manual" under Assigned Assessments
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Wait for 3 seconds
    Then Enter the date "14" as FollowUp date
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Verify "Assigned To" is displying as "Internal Buyer"
    Then Verify the SRC user name displayed as "asd asd"
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #######################Lifecycle Updates Review after Reopen#####################
  #SLYN-29041
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29041
  Scenario: Verify as a buyer,Able to Onboard and Lifecycle Updates Review Supplier with Re-Opened Status
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
    And Switch to the parent window
    And Wait for 10 seconds
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
    #Rule without criteria
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Navigate back to supplier
    Then Wait for 3 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Logout from the system

  #SLYN-29041
  @Smoke @ManageApprovals @SLYN-29041
  Scenario: Verify as a buyer,Able to see Lifecycle Updates Review status  based on approval request reopen from Ready to Onboard after the job run
    #After Job Run
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the supplier "GbObmfByU pvt ltd"
    #And Click "Go to details" button
    Then verify the status as "Lifecycle Updates Review"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Lifecycle Updates Review"
    And Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #######################Revalidation Review after Reopened#####################
  #SLYN-29069
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29069
  Scenario: Verify as a buyer,Able to see Revalidation Review status  based on approval request reopen from Ready to Onboard to Onboarded
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
     #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
    And Switch to the parent window
    And Wait for 10 seconds
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
    #approvals
    #Rule without criteria
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Navigate back to supplier
    Then Wait for 3 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    #Update the checklist questionnaire for PIF
    When Click on the Action Center
    When Click on "Update" button at the "Rule without criteria" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    And Click "No" for the Second Question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Logout from the system

  #SLYN-29069
  @Smoke @ManageApprovals @SLYN-29069
  Scenario: Verify as a buyer,Able to see Revalidation Review status  based on approval request reopen from Ready to Onboard after the Job Run
    #After Job Run
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the supplier "2PwUhruBI pvt ltd"
    #And Click "Go to details" button
    Then verify the status as "Revalidation Review"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Revalidation Review"
    And Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #######################Ready for Review after Reopened#####################
  #SLYN-29068
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29068
  Scenario: Verify as a buyer,Able to see based on approval request reopen from Ready to Onboard to Ready for Review
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
    And Switch to the parent window
    And Wait for 10 seconds
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
#    #Buyer Internal assessment
#    When Click on "Buyer Internal assessment" in Approval Source "1"
#    Then Wait for 3 seconds
#    And Click on "Approve" div button
#    And Click on button "Approve with conditions" for "Approval Reason" on approvals
#    Then Wait for 5 seconds
#    When Select "Mitigation Plan Created" in Approval condition reason
#    Then Enter the date "02/10/2023" as FollowUp date
#    Then Enter the Notes under the accepth buyer Notes Box
#    When Click "Approve" button
#    Then Navigate back to supplier
#    Then Wait for 3 seconds
#    ##USL Search
#    Then Click on "USL Search" in Approval Source "1"
#    Then Wait for 3 seconds
#    And Click on "Approve" div button
#    And Click on button "Approve with conditions" for "Approval Reason" on approvals
#    Then Wait for 5 seconds
#    When Select "Mitigation Plan Created" in Approval condition reason
#    Then Enter the date "20/10/2023" as FollowUp date
#    Then Enter the Notes under the accepth buyer Notes Box
#    When Click "Approve" button
#    Then Navigate back to supplier
#    Then Wait for 3 seconds
#    ##DPL Search
#    Then Click on "DPL Search" in Approval Source "1"
#    Then Wait for 3 seconds
#    And Click on "Approve" div button
#    And Click on button "Approve with conditions" for "Approval Reason" on approvals
#    Then Wait for 5 seconds
#    When Select "Mitigation Plan Created" in Approval condition reason
#    Then Enter the date "20/10/2023" as FollowUp date
#    Then Enter the Notes under the accepth buyer Notes Box
#    When Click "Approve" button
#    Then Navigate back to supplier
#    Then Wait for 3 seconds
#    #Anti-Bribery, Anti-Corruption
#    Then Click on "Anti-Bribery, Anti-Corruption" in Approval Source "1"
#    Then Wait for 3 seconds
#    And Click on "Approve" div button
#    And Click on button "Approve with conditions" for "Approval Reason" on approvals
#    Then Wait for 5 seconds
#    When Select "Mitigation Plan Created" in Approval condition reason
#    Then Enter the date "20/10/2023" as FollowUp date
#    Then Enter the Notes under the accepth buyer Notes Box
#    When Click "Approve" button
#    Then Navigate back to supplier
#    Then Wait for 3 seconds
    #Rule without criteria
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Navigate back to supplier
    Then Wait for 3 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    And Logout from the system

  #SLYN-29068
  @Smoke @ManageApprovals @SLYN-29068
  Scenario: Verify as a buyer,Able to see based on approval request reopen from Ready to Onboard to Ready for Review after the Job Run
    #After Job Run
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the supplier "2PwUhruBI pvt ltd"
    #And Click "Go to details" button
    Then verify the status as "Ready for Review"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready for Review"
    And Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29070
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29070
  Scenario: As a Buyer, I should be able to see the Notifications trigger for approval request reopen
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "22" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29070
  @Smoke @ManageApprovals @SLYN-29070
  Scenario: As a Buyer, I should be able to see the Notifications trigger for approval request reopen after jobrun
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Verify the "ynHay3mtI pvt ltd" text is displaying under notifications
    Then Verify the "Administrator" text is displaying under notifications
    Then verify category as "Approval Requests"
    And Wait for 5 seconds
    And Logout from the system
    And Verify received an email for supplier "ynHay3mtI pvt ltd"  maildrop Inbox with subject "An approval request has been reopened for follow-up for ynHay3mtI pvt ltd’ and assigned to Administrator"

  #SLYN-29070
  @Regression @ManageApprovals @TYSFunctionality @SLYN-29070
  Scenario: Verify as a buyer , I should able to see Notification should be sent to all the users in the role to which that approval is assigned to and the buyer admins
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "EDI Manager" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    Then Click on Update contacts icon "Internal Buyer" role
    Then Wait for 3 seconds
    Then Update contacts "rama l, ramaltestsrc@maildrop.cc" role
    Then Click on "Save" button on "Update Contacts"
    Then Wait for 5 seconds
    #Then Click on checkbox on "Internal Buyer" role
    When Click "Next" button
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 3 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Wait for 3 seconds
    Then Enter the date "14" as FollowUp date
    Then Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    And Wait for 3 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Verify "Assigned To" is displying as "EDI Manager"
    Then Verify the SRC user name displayed as "rama l"
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system

  #SLYN-29070
  @Smoke @ManageApprovals @SLYN-29070
  Scenario: As a Buyer, I should be able to see the Notifications trigger for approval request reopen after jobrun for assigned user
    When Enter EmailAdress in Email Address field "mahendraibmautobuyer@maildrop.cc"
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Verify the "30VjlF7YT pvt ltd" text is displaying under notifications
    Then Verify the "Administrator" text is displaying under notifications
    Then verify category as "Approval Requests"
    And Wait for 5 seconds
    And Logout from the system
    And Verify received an email for supplier "30VjlF7YT pvt ltd"  maildrop Inbox with subject "An approval request has been reopened for follow-up for ynHay3mtI pvt ltd’ and assigned to Administrator"

  #SLYN-29046
  @Smoke @ManageApprovals @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the Approvals followup date under filter by on manage approvals
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 3 seconds
		Then Click "Manage Approvals" tab
		And Wait for 3 seconds
  	Then Click on "Filter by" button on "Notifications"
  	Then Verify "Approvals Follow-Up Date" tab on the filterby "true"
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Logout from the system
  	
	  #SLYN-29046
  @Smoke @ManageApprovals @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the From and To date under Approvals followup date on filter by on manage approvals
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
		And Wait for 3 seconds
  	Then Click on "Filter by" button on "Notifications"
  	Then Click on "Approvals Follow-Up Date" filter
  	And Verify From date is visible under FollowUpDate filter
  	And Wait for 3 seconds
  	And Verify To date is visible under FollowUpDate filter
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Logout from the system
  	
  	#SLYN-29046
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the To date is always the future date than the From date selected
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	When Click on From date icon
  	When Enter todays date as input date at 1
  	And Click on To date icon
  	And Wait for 5 seconds
  	Then Verify the To date is always the future date than the From date
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Logout from the system
  	
  	  	#SLYN-29046
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the filtered date is greater when I select only the From date
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	When Click on From date icon
  	When Enter 15 as input date
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Wait for 5 seconds
  	And Refresh the current webpage
  	And Wait for 5 seconds
  	Then Verify the filtered date is greater than the input date
  	And Logout from the system
  	
  		  	#SLYN-29046
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the filtered date is Lesser when I select only the To date
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	And Click on To date icon
  	When Enter todays date as input date at 2
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Wait for 5 seconds
  	And Refresh the current webpage
  	And Wait for 5 seconds
  	Then Verify the filtered date is less than the input date
  	And Logout from the system
  	
  		#SLYN-29046
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the filtered date is equal to the date entered when select same date range
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	And Click on To date icon
  	And Wait for 3 seconds
  	When Enter todays date as input date at 1
  	When Click on From date icon
  	And Wait for 3 seconds
  	When Enter todays date as input date at 1
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Wait for 5 seconds
  	And Refresh the current webpage
  	And Wait for 5 seconds
  	Then Verify the filtered date is same range as input date
  	And Logout from the system
   
   
   #SLYN-29046
  @Smoke @ManageApprovals @SLYN-29046
  Scenario: Verify as a buyer, I should able to see the text as "Enter the same date in both 'From' and 'To' fields for specific date results. Input dates in both fields for results within a date range. Use 'From' field alone for results after a specific date. Use 'To' field alone for results before a specific date." under Approvals followup date
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	And Wait for 3 seconds
  	Then Verify the followup text as "Enter the same date in both 'From' and 'To' fields for specific date results. Input dates in both fields for results within a date range. Use 'From' field alone for results after a specific date. Use 'To' field alone for results before a specific date."
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Logout from the system
  	
  			#SLYN-29046
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29046
  Scenario: Verify as a buyer, I should able to use the conjuction with other filter options under filter by on manage approvals
		Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
		Then Click "Manage Approvals" tab
  	Then Click on "Filter by" button on "Notifications"
  	#Then Click on "Clear All" link on filterBy
  	Then Click on "Approvals Follow-Up Date" filter
  	When Click on From date icon
  	When Enter todays date as input date at 1
  	Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Wait for 3 seconds
    Then Select "Conditionally Approved" value from dropdown
  	And Wait for 3 seconds
  	And Click "Search" button
  	And Wait for 5 seconds
  	And Refresh the current webpage
  	And Wait for 5 seconds
  	Then verify the filtered options as "Approval Status"
  	And Logout from the system
  	
  	
  	
  	#SLYN-29046
  @Smoke @ManageApprovals @SLYN-29046
  Scenario: Verify as a buyer, I should able to save the filter with Approvals followup date under filter by on manage approvals
  	Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approvals Follow-Up Date" filter
  	When Click on From date icon
  	When Enter todays date as input date at 1
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Conditionally Approved" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    Then Click on "Search" button in connected supplier filter by
    Then Click on "Save Filter" button on leftmenu
    #Then Click on the "Save Filter" field
    Then Enter text on "Filter Name" as "AutomationTest"
    Then Click on "Save" button available in "Save Filter"
    When Wait 5 seconds
    Then Verify element "Filter saved successfully" displayed as "true"
    Then Click on "Filter by" button on "MangeApprovals"
    #Then Click on "Saved Filters" button on leftmenu
    Then Click on "Saved Filters" filter
    When Wait 2 seconds
    Then Verify element "AutomationTest" displayed as "true"
    Then Delete saved filter "AutomationTest"
    Then Verify element "Are you sure you want to delete AutomationTest ?" displayed as "true"
    Then Click on "Confirm" button
    When Wait 5 seconds
    Then Verify element "AutomationTest" displayed as "false"
    Then Close Apply Filters
    Then Logout from the system
    
     #SLYN-29045
  @Smoke @ManageApprovals @TYSFunctionality @SRMSanityCheck @SLYN-29045
  Scenario: Verify as a buyer, I should able to view the "Re-opened approvals" on the synopsis page
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    When Wait 10 seconds
    Then Verify the pending approval count is displaying
    Then Logout from the system

  #SLYN-29045
  @Smoke @ManageApprovals @TYSFunctionality @SLYN-29045
  Scenario:  Verify as a buyer, I should able to view the "Reopen Approval" on the supplier wide screen
   When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
   #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    When Wait 10 seconds
    Then Verify the pending approval count is displaying
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Wait 5 seconds
    Then Verify the "Pending" approval count is displaying on supplier wide screen
    Then Logout from the system
    
    #SLYN-29226
    @Regression @ManageApprovals @SLYN-29226
  	Scenario: Verify as a buyer, I should able to see the Reject, Add Note, Info Request and Assign/Reassign actions on the approval in “Conditionally Approved” status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
   #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    #Button visible
    Then Verify "Actions" button is visible under "on the approval"
    Then Verify "Actions" button is enabled under "on the approval"
    Then Verify "Reject" div button is visible under "Actions"
    Then Verify "Reject" div button is enable under "Actions"
    When Click "Actions" button
    #Actions buttons enable and visible
    Then Verify "Add Note" div button is visible under "Actions"
    Then Verify "Assign/Re-assign" div button is visible under "Actions"
    Then Verify "Info Request" div button is visible under "Actions"
    Then Verify "Manage/Assign Questionnaire" div button is visible under "Actions"
    Then Verify "Add Note" div button is enable under "Actions"
    Then Verify "Assign/Re-assign" div button is enable under "Actions"
    Then Verify "Info Request" div button is enable under "Actions"
    Then Verify "Manage/Assign Questionnaire" div button is enable under "Actions"
    And Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
    #SLYN-29226
    @Regression @ManageApprovals @TYSFunctionality @SLYN-29226
  	Scenario: Verify as a buyer, I should able to Reject actions on the approval in "Conditionally Approved" status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    And Click on "Reject" div button
    And Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Reject" button
    And Wait for 5 seconds
    Then Verify status as "Rejected" from buyer side
    Then Verify "Assigned To" is displying as "Administrator"
    And Verify "Approval Status" value is displying as "Rejected" at "2"
    And Verify "Role Assigned" value is displying as "Administrator" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
     #SLYN-29226
    @Regression @ManageApprovals @SLYN-29226
  	Scenario: Verify as a buyer, I should able to Add Note actions on the approval in “Conditionally Approved” status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    When Click "Actions" button
    And Click on "Add Note" div button
    And Wait for 3 seconds
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
  	And Wait for 5 seconds
    Then Verify status as "Pending" from buyer side
    Then Verify "Assigned To" is displying as "Administrator"
    And Verify "Approval Status" value is displying as "Pending" at "2"
    And Verify "Role Assigned" value is displying as "Administrator" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
    
    #SLYN-29226
    @Regression @ManageApprovals @SLYN-29226
  	Scenario: Verify as a buyer, I should able to Info Request actions on the approval in "Conditionally Approved" status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
   #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    When Click "Actions" button
    And Click on "Info Request" div button
    And Wait for 3 seconds
    When Select role as "Internal Buyer" in under "Request Information"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Request" button
  	And Wait for 5 seconds
    Then Verify status as "Info Request" from buyer side
    Then Verify "Assigned To" role is displying as "Internal Buyer"
    And Verify "Approval Status" value is displying as "Info Request" at "2"
    And Verify "Role Assigned" value is displying as "Internal Buyer" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
    
    #SLYN-29226
    @Regression @ManageApprovals @SRMSanityCheck @SLYN-29226
  	Scenario: Verify as a buyer, I should able to Assign/Reassign actions on the approval in "Conditionally Approved" status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    Then Enter "test" as description for approval question "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    When Click on "Assign role" dropdown button for approval requests role "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    Then Select "Administrator" as assiging approval requests role for "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    When Click "Actions" button
    And Click on "Assign/Re-assign" div button
    And Wait for 3 seconds
    When Select role as "Internal Buyer" in under "Re-assign to Role"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Re-assign" button
  	And Wait for 5 seconds
    Then Verify status as "Pending" from buyer side
    Then Verify "Assigned To" role is displying as "Internal Buyer"
    And Verify "Approval Status" value is displying as "Pending" at "2"
    And Verify "Role Assigned" value is displying as "Internal Buyer" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Accept" at "5"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
    #SLYN-29226
    @Regression @ManageApprovals @SLYN-29226
  	Scenario: Verify as a buyer, I should able to Manage/assign questionnaire actions on the approval in "Conditionally Approved" status
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    When Click "Actions" button
    And Click on "Manage/Assign Questionnaire" div button
    And Wait for 5 seconds
   	When Click on "Add" button "Import Export Compliance - IBM"
    And Wait for 3 seconds
    When Click "Update" button
    And Verify toast message "Questionnaires have been successfully assigned" successfully is shown
  	And Wait for 5 seconds
  	Then Navigate back to supplier
  	And Wait for 5 seconds
    Then Verify status as "Pending" from buyer side
    Then Verify "Assigned To" role is displying as "Administrator"
    And Verify "Approval Status" value is displying as "Pending" at "2"
    And Verify "Role Assigned" value is displying as "Administrator" at "3"
    And Verify "User" value is displying as "mahendraibmautobuyer@maildrop.cc" at "4"
    And Verify "Notes" value is displying as "Questionnaire assigned: Import Export Compliance - IBM" at "5"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system
    
    #SLYN-29226
    @Smoke @TYSFunctionality @ManageApprovals @SLYN-29226
  Scenario: Verify as a buyer, I should able to see Once the supplier has been onboarded that approval status should change to Complete status
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "No" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
      Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 5 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    #Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
      Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
      When Click on the Action Center
      Then Scroll the page
      And Wait for 10 seconds
      When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
      And Click on the NO for First question
    #When Click on No for First question
      And Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      And Enter "01/02/2021" in Expiry Date field
      And add label as "VATDOCUMENT"
      When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
      And Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
      Then Switch to the parent window
      And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
      And Click on the YES for First question
      Then Enter the "Sample" for Second question in RBA/EICC Contract
      And Wait for 3 seconds
      When Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 3 seconds
      And Switch to the active window
      And Switch to the parent window
      And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
      And Switch to the parent window
      And Wait for 10 seconds
    #custom fields before Onboard
      And Wait for 3 seconds
      And Scroll the page
      And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
    #Buyer Internal assessment
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Navigate back to supplier
    Then Wait for 3 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Refresh the current webpage
    When Click on the Action Center
    And Click on "Clear All" div button
    Then Wait for 3 seconds
    When Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 5 seconds
    Then Verify status as "Complete" from buyer side
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system
    
    #SLYN-29226
    @Smoke @TYSFunctionality @SRMSanityCheck @ManageApprovalss @SLYN-29226
  Scenario: Verify as a buyer, I should able to see the onboard status even when the approval is conditionally approved status
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
      Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 20 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Wait 5 seconds
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
      #Action center
      When Click on the Action Center
      Then Scroll the page
      And Wait for 10 seconds
      When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
      And Click on the NO for First question
    #When Click on No for First question
      And Click "Attach Document" button
      Then Upload "PDF" under "Upload Document"
      And Enter "01/02/2021" in Expiry Date field
      And add label as "VATDOCUMENT"
      When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
      And Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
      Then Switch to the parent window
      And Wait for 3 seconds
    #### PIF Indicator
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
      #And Click on the NO for First question in PIF Indicator
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #Then Wait for 3 seconds
    ###USL Search
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
    #When Click on No for First question
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Switch to the active window
      #And Switch to the parent window
      #And Wait for 3 seconds
    ###S&EMS Record created
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
      #And Click on the NO for First question
      #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
      #And Wait for 3 seconds
      #When Click on the Submit button in SEMS Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Buyer Internal assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 3 seconds
      #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
      #And Click on the YES for First question
      #Then Wait for 3 seconds
      #When Click "Attach Document" button
      #Then Upload "PDF" under "Upload Document"
      #And Enter "01/02/2021" in Expiry Date field
      #And add label as "VATDOCUMENT"
      #When Click on the Confirm button.
      #And Click on the Submit button in DPL Search
      #And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###RBA/EICC Contract
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
      And Click on the YES for First question
      Then Enter the "Sample" for Second question in RBA/EICC Contract
      And Wait for 3 seconds
      When Click on the Submit button in DPL Search
      And Click Submit button in DPL Search
      And Wait for 3 seconds
      And Switch to the active window
      And Switch to the parent window
      And Wait for 3 seconds
    ###Export/Import Compliance
      #Then Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
      #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
      #And Click "No" for the First Question
      #And Click "No" for the Second Question
      #And Click "No" for the Third Question
    # #When Click on the NO for First question
      #Then Wait for 5 seconds
      #When Click on the Submit
      #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
      #Then Wait for 3 seconds
      #And Switch to the active window
      #And Switch to the parent window
    ###Pre Invite Assessment
      #And Refresh the current webpage
      #And Wait for 5 seconds
      #When Click on the Action Center
      #Then Scroll the page
      #And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
      And Switch to the parent window
      And Wait for 10 seconds
    #custom fields before Onboard
      And Wait for 3 seconds
      And Scroll the page
      And Wait for 5 seconds
    #dropdowns
      And Select value "Global Logistics (GLP)" from "supplierCategory"
      And Wait for 5 seconds
      And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
      And Select text "EMEA" under "IBM Region" for Custom Fields
      And Select text "BENELUX" under "IBM Market" for Custom Fields
      When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
      Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
      And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
      When Click on "Save Changes" button under Custom Fields
      And Verify toast message "The custom field values are successfully saved." successfully is shown
      Then Wait for 15 seconds
    #approvals
    #Rule without criteria
      When Click on "Rule without criteria" in Approval Source "1"
      Then Wait for 3 seconds
      And Click on "Approve" div button
      And Click on button "Approve with conditions" for "Approval Reason" on approvals
      Then Wait for 5 seconds
      When Select "Mitigation Plan Created" in Approval condition reason
      Then Enter the date "12" as FollowUp date
      Then Enter the Notes under the accepth buyer Notes Box
      When Click "Approve" button
      Then Navigate back to supplier
      Then Wait for 3 seconds
      And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 3 seconds
    And Verify the Status as Onboarded
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system
    
    #SLYN-29226
    @Smoke @ManageApprovals @TYSFunctionality @SLYN-29226
  	Scenario: Verify as a buyer, I should see the followup date has specific format
    
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Enter "test" as description for approval question "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click on "Assign role" dropdown button for approval requests role "Do you train your employees and your suppliers on your anti-bribery policy?"
    Then Select "Administrator" as assiging approval requests role for "Do you train your employees and your suppliers on your anti-bribery policy?"
    When Click "Save" button
    And Wait for 5 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
      #And Verify received an email in supplier maildrop Inbox with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement"
      #When Click on the email with subject "Unlock new sales opportunities with IBM B2B Commerce for Procurement" from maildrop
          When Click on the email with subject "Trust Your Supplier" from maildrop
      When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
    #When Open the registration URL
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    Then Wait for 3 seconds
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 5 seconds
   #answer questionare
      Then Click on Questionnaires Nav link
      Then Click on button "Begin Questionnaire" for questionare
      Then click on "Yes" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
      Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then Enter the Notes under notes for buyer Notes Box at "1"
      Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then Enter the Notes under notes for buyer Notes Box at "2"
      Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then Enter the Notes under notes for buyer Notes Box at "3"
      Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then Enter the Notes under notes for buyer Notes Box at "4"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
      Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
    Then click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud?" in question "8"
    Then Enter the Notes under notes for buyer Notes Box at "5"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    And Logout from the system
    Then Wait for 3 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    Then Wait for 3 seconds
    And Click on "Approve" div button
    And Wait for 3 seconds
    And Click on button "Approve with conditions" for "Approval Reason" on approvals
    Then Wait for 5 seconds
    When Select "Mitigation Plan Created" in Approval condition reason
    Then Enter the date "12" as FollowUp date
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Approve" button
    Then Wait for 5 seconds
    Then Verify status as "Conditionally Approved" from buyer side
    Then Verify followUp date is displying with specific format under "Approved with Conditions"
    #Delete approval configuration
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Logout from the system