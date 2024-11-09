Feature: Mange Approvals and Approvals Details page

  #Mange Approvals
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify if Buyer is able to view Approvals Panel on dashboard
    #Then Click on "Suppliers" Down arrow on Dashboard
    Then Click "Manage Approvals" tab
    And Show the title "Mange Approvals" on Manage Approvals Page
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify if Buyer User is able to view role name on Approvals Dropdown on dashboard
    #Then Show the title "My Dashboard" on the Dashboard page
    And Show Roles on Approvals Dropdown
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify if Buyer User is able to view all the approval status on Approvals Dropdown on dashboard
    Then Wait for 5 seconds
    And Verify "Pending" Approval Request is visible
    And Verify "Approved" Approval Request is visible
    And Verify "Rejected" Approval Request is visible
    And Verify "Requested Info" Approval Request is visible
    And Verify "Complete" Approval Request is visible
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: All Approval status on Approvals Dropdown on dashboard are clickable
    Then Wait for 5 seconds
    And Verify "Pending" Approval Request is clickable
    And Verify "Approved" Approval Request is clickable
    And Verify "Rejected" Approval Request is clickable
    And Verify "Requested Info" Approval Request is clickable
    And Verify "Complete" Approval Request is clickable
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: As a Buyer I should be able to navigate to ManageApprovals page from Dashboard after clicking Pending Approval request
    Then Wait for 5 seconds
    Then Click on "Pending" Approval link on Dashboard page
    Then Wait for 5 seconds
    And Show the title "Mange Approvals" on Manage Approvals Page
    Then Wait for 5 seconds
    And Verify the Approval Status as "Pending" on Manage Approvals Page
    Then Logout from the system

  #this scenario is not there discussed with BA
  @Regression @Buyer
  Scenario: As a Buyer I should be able to navigate to ManageApprovals page from Dashboard after clicking Cancelled Approval request
    Then Wait for 5 seconds
    Then Click on "Cancelled" Approval link on Dashboard page
    And Show the title "Mange Approvals" on Manage Approvals Page
    And Verify the Approval Status as "Cancelled" on Manage Approvals Page
    Then Logout from the system

  @Regression @MangeApprovals @Buyer
  Scenario: As a Buyer I should be able to navigate to ManageApprovals page from Dashboard after clicking Complete Approval request
    #Then Show the title "My Dashboard" on the Dashboard page
    Then Wait for 5 seconds
    Then Click on "Complete" Approval link on Dashboard page
    And Show the title "Mange Approvals" on Manage Approvals Page
    And Verify the Approval Status as "Complete" on Manage Approvals Page
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Supplier @Sanity
  Scenario: Verify Approval request display with expected columns
    Then Click "Manage Approvals" tab
    Then Wait for 3 seconds
    And Verify Approval Request header consists  as Supplier Name
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Approval Source
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Role Assigned
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Approval Status
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Last Updated
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Updated By
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Pending Since
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @MangeApprovals @Buyer
  Scenario: Verify under action centre tab Buyer should able to see a list view of all approval request for that supplier in full width
    #Then Click "Suppliers" tab
    Then Wait for 3 seconds
    #Then Click "Connected Suppliers" tab
    #Then Click on Status dropdown on My Suppliers page
    Then Click on "Ready For Review" Approval link on Dashboard page
    Then Wait for 3 seconds
    Then Click on the first record of the Search
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    # Then Select Pending Invites in Status dropdown "Ready For Review"
    #Then Click on Apply button in Status dropdown
    #Then Click "View Supplier" button
    Then Click on the Action Center
    Then Scroll the page
    And Verify Approval Request header consists as Approval Source
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Role Assigned
    Then Wait for 3 seconds
    And Verify Approval Request header consists as Approval Status
    Then Wait for 3 seconds
    When Click on Clear All link
    And Verify the approval list visible as "true"
    Then Logout from the system

  @Smoke @MangeApprovals @Buyer
  Scenario: Verify user should navigated to AR screen when click on particular AR
    # Then Click "Suppliers" tab
    Then Wait for 3 seconds
    Then Click "Connected Suppliers" tab
    #Then Click on Status dropdown on My Suppliers page
    #Then Select Pending Invites in Status dropdown "Ready For Review"
    Then Click on search box
    Then Enter the supplier name in search box
    And Wait for 3 seconds
    #Then Click on "LARSEN & TOUBRO LIMITED" of the Search
    Then Click on the first record of the Search
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Click on the Action Center
    #Then Click on "Action Center" Tab on panel
    #Then Click on the Search by supplier name and press Enter
    #Then Click on Apply button in Status dropdown
    #Then Click on first record of the Search
    #Then Click "View Supplier" button
    #Then Scroll the page
    #Then Wait for 3 seconds
    # Then Click on the Action Center
    #Then Click on "Action Center" Tab on panel
    Then Wait for 3 seconds
    When Click on Clear All link
    #Then Click on the All button
    Then Click on "Moody’s - ESG Risk Review" Approval Request
    And Verify the approval request is navigated to Approval details page
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify under action centre tab Buyer should able to see a list view of all approval request for invited supplier in full width
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "forautomation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Show "Password" field Tooltip description "Password to be used to log into Trust Your Supplier. This is a mandatory field."
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Show "Confirm Password" Tooltip description "Re-enter password to confirm. This is a mandatory field."
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    #Then Click on Do it later button
    Then Wait for 15 seconds
    Then Click on Questionnaires Nav link
    ##Verify visibility & Status of Assigned Questionnaires
    Then Verify visibility of Assigned Questionnaires title in questionnaire page
    Then Verify "Pending" tab visibility
    Then Verify "Pending" tab status
    Then Verify "Published" tab visibility
    Then Verify "Published" tab status
    ###Verify name visibility
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then Check "Save" button visibility in pending questionaire "false"
    Then Check "Close" button visibility in pending questionaire "true"
    Then Check "Save & Close" button visibility in pending questionaire "false"
    Then Check "Publish Questionnaire" button visibility in pending questionaire "false"
    Then click on "No" for question "Will your Company provide hardware materials, hardware parts, or hardware products?" in question "1"
    Then Click on the button "Publish Questionnaire"
    Then Click on button Publish for questionare
    #Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    #Then Click on the button "Publish Questionnaire"
    # Then Click on button Publish for questionare
    Then Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on the Search by supplier name and press Enter
    #Then Click on first record1 of the Search
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    #When Click on Go to details button on Supplier Synopsis view page
    #And Wait for 5 seconds
    # Then Scroll the page
    #Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on the "Conflict Minerals" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Wait for 5 seconds
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Supplier Name Filter option in connected supplier page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    #Then Enter Supplier Name as "LARSEN & TOUBRO LIMITED"
    Then Click on "Search" button in connected supplier filter by
    #Then Click on first record1 of the Search
    Then verify "LARSEN & TOUBRO LIMI..." label on "Supplier Name"
    #Then Verify search results filtered on column "Type a Supplier Name" with "LARSEN & TOUBRO LIMITED"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Saved Filters option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "LARSEN & TOUBRO LIMITED" value for "Type a Supplier Name" field on any screen
    Then Click on "Approval Status" filter
    Then Click on "Approval Status" dropdown
    Then Select "Pending" value from dropdown
    #Then Select Pending Invites in Status dropdown
    Then Click on "Approval Status" filter
    Then Click on "Country" filter
    Then Click on "Country" dropdown
    Then Click on "India" option in "Countries" dropdown
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

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Approval Source filter option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Moody’s - ESG Risk Review" value from dropdown
    Then Click on "Moody’s - ESG Risk Review" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    #Then verify "Moody’s - ESG Risk Review - Mo..." status label on "Approval Source"
    Then Verify "Approval Source" button in Filters is "true"
    #Then verify the filtered options as "Approval Source"
    Then Logout from the system

  @TYSFunctionality @MangeApprovals @Buyer 
  Scenario: Verify the Approval Source filter option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click "Filter by" button
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Verify "Anti-Bribery, Anti-Corruption" button in Filters is "true"
    Then Verify "Bank Update" button in Filters is "true"
    Then Verify "Buyer Internal assessment" button in Filters is "true"
    Then Verify "Canada Business and Tax Registration" button in Filters is "true"
    Then Verify "Company Operations" button in Filters is "true"
    Then Verify "Conflict Minerals" button in Filters is "true"
    Then Verify "Conflict Minerals - IBM" button in Filters is "true"
    Then Verify "D&B - Supplier Risk Assessment" button in Filters is "true"
    Then Verify "D&B Supplier Diversity Data" button in Filters is "true"
    Then Verify "Diversity" button in Filters is "true"
    Then Verify "DPL Search" button in Filters is "true"
    Then Verify "EcoVadis IQ" button in Filters is "true"
    Then Verify "Environment and Safety - IBM" button in Filters is "true"
    Then Verify "Ethics and Compliance" button in Filters is "true"
    Then Verify "Export/Import Compliance" button in Filters is "true"
    Then Verify "Government Relations" button in Filters is "true"
    Then Verify "Government Relations - IBM" button in Filters is "true"
    Then Verify "Human Rights and Ethical Sourcing" button in Filters is "true"
    Then Verify "Human Rights and Modern Slavery" button in Filters is "true"
    Then Verify "IBM Relations" button in Filters is "true"
    Then Verify "Import Export Compliance" button in Filters is "true"
    Then Verify "Import Export Compliance - Canada" button in Filters is "true"
    Then Verify "Import Export Compliance - IBM" button in Filters is "true"
    Then Verify "LexisNexis Bank Validation" button in Filters is "true"
    Then Verify "Manual" button in Filters is "true"
    Then Verify "Moody’s - ESG Risk Review" button in Filters is "true"
    Then Verify "Moody’s - Key Information" button in Filters is "true"
    Then Verify "Moody’s - Probability of Default" button in Filters is "true"
    Then Verify "Moody’s - Screening & Watchlist" button in Filters is "true"
    Then Verify "PIF Indicator" button in Filters is "true"
    Then Verify "PIF Integrity Training- IBM" button in Filters is "true"
    Then Verify "RBA/EICC Contract" button in Filters is "true"
    Then Verify "S&EMS Record created" button in Filters is "true"
    Then Verify "Social and Environmental Management - IBM" button in Filters is "true"
    Then Verify "Supplier Profile Republish" button in Filters is "true"
    Then Verify "Supplier Watchlist" button in Filters is "true"
    Then Verify "Trade Compliance" button in Filters is "true"
    Then Verify "USL Search" button in Filters is "true"
    Then Close Apply Filters
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Assigned To filter option with role in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Assigned To" filter
    #Then Click on "Assigned To" dropdown
    #Then Click on the "Role" role option
    Then Click on the Assigned To "role" button
    #Then Click on "Role" option in "Assigned To" dropdown
    Then Click on "Assigned To" dropdown
    Then Select "Internal Buyer" value from dropdown
    #Then select on "Internal Buyer" dropdown as "Role"
    Then Click on "Search" button in connected supplier filter by
    #Then verify "Moody’s - ESG Risk Review - Mo..." status label on "Assigned To"
    Then Verify "Assigned To" button in Filters is "true"
    #Then verify the filtered options as "Approval Source"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Assigned To filter option with self option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Assigned To" filter
    #Then Click on "Assigned To" dropdown
    Then Click on the Assigned To "self" button
    #Then Click on the "Self" role option
    #Then Click on "Self" option in "Assigned To" dropdown
    #Then select on "Administrator" dropdown as "Role"
    Then Click on "Search" button in connected supplier filter by
    Then Verify "Assigned To" button in Filters is "true"
    #Then verify the filtered options as "Assigned To"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Approval Status filter option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    #When Click on Clear All link
    Then Click on "Approval Status" dropdown
    Then verify the dropdown "Approved" value as "true"
    Then verify the dropdown "Cancelled" value as "true"
    Then verify the dropdown "Complete" value as "true"
    Then verify the dropdown "Pending" value as "true"
    Then verify the dropdown "Rejected" value as "true"
    Then verify the dropdown "Requested Info" value as "true"
    Then Close Apply Filters
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Approval Status filter option in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    Then Click on "Select All" link on filterBy
    Then Click on "Clear All" link on filterBy
    Then Click on "Approval Status" dropdown
    Then Select "Approved" value from dropdown
    #Then Click on "Approved" option in "Approval Status" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Approval Status"
    Then Logout from the system

  @Regression @MangeApprovals
  Scenario: Verify On-Hold filter Options in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "On-Hold" filter
    Then Select the On-Hold under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "On-Hold"
    #Then verify the status as "On-Hold"
    Then Logout from the system

  @Regression @MangeApprovals
  Scenario: Verify Block filter options in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Block" filter
    Then Select the Block under dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Block"
    #Then verify the status as "Blocked"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Tax Geography filter options in Manage Approvals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then select on "Tax Geography" dropdown as "APAC"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Tax Geography filter options in Manage Approvals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then select on "Tax Geography" dropdown as "NA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Tax Geography filter options in Manage Approvals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Tax Geography filter options in Manage Approvals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Reset Filters" button
    Then Click on "Tax Geography" filter
    Then Click on "Tax Geography" dropdown
    Then select on "Tax Geography" dropdown as "EMEA"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Country/Region Filter options in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "China" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer @Sanity
  Scenario: Verify Country/Region Filter options in MangeApprovals page
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Country/Region" filter
    Then Click on "Country" dropdown
    Then Click on "Poland" option in "Countries" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button visibility on MangeApprovals
    Then Click "Manage Approvals" tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button  and Prev arrow button functionality on MangeApprovals
    Then Click "Manage Approvals" tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button visibility on MangeApprovals if row per page is 100
    Then Click "Manage Approvals" tab
    Then Change row per page to "100"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on MangeApprovals if row per page is 80
    Then Click "Manage Approvals" tab
    Then Change row per page to "80"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button visibility and status on MangeApprovals if row per page is 60
    Then Click "Manage Approvals" tab
    Then Change row per page to "60"
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on MangeApprovals if row per page is 40
    Then Click "Manage Approvals" tab
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on MangeApprovals if row per page is 20
    Then Click "Manage Approvals" tab
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @MangeApprovals @ManageapprovalsPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on MangeApprovals if row per page is 10
    Then Click "Manage Approvals" tab
    Then Change row per page to "10"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Prev button visibility and status on MangeApprovals if row per page is 20
    Then Click "Manage Approvals" tab
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button visibility and status on MangeApprovals if row per page is 20
    Then Click "Manage Approvals" tab
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button and Prev button functionality on MangeApprovals if row per page is 20
    Then Click "Manage Approvals" tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Prev button visibility on MangeApprovals if row per page is 40
    Then Click "Manage Approvals" tab
    Then Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button visibility and status on MangeApprovals if row per page is 40
    Then Click "Manage Approvals" tab
    Then Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button and Prev button functionality on MangeApprovals if row per page is 40
    Then Click "Manage Approvals" tab
    Then Change row per page to forty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Prev button visibility on MangeApprovals if row per page is 60
    Then Click "Manage Approvals" tab
    Then Change row per page to sixty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button visibility and status on MangeApprovals if row per page is 60
    Then Click "Manage Approvals" tab
    Then Change row per page to sixty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button and Prev button functionality on MangeApprovals if row per page is 60
    Then Click "Manage Approvals" tab
    Then Change row per page to sixty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Prev button visibility on MangeApprovals if row per page is 80
    Then Click "Manage Approvals" tab
    Then Change row per page to eighty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button visibility and status on MangeApprovals if row per page is 80
    Then Click "Manage Approvals" tab
    Then Change row per page to eighty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button and Prev button functionality on MangeApprovals if row per page is 80
    Then Click "Manage Approvals" tab
    Then Change row per page to eighty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Prev button visibility on MangeApprovals if row per page is 100
    Then Click "Manage Approvals" tab
    Then Change row per page to hundred
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button visibility and status on MangeApprovals if row per page is 100
    Then Click "Manage Approvals" tab
    Then Change row per page to hundred
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @ManageapprovalsPagination @MangeApprovals
  Scenario: Verify Next button and Prev button functionality on MangeApprovals if row per page is 100
    Then Click "Manage Approvals" tab
    Then Change row per page to hundred
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @MangeApprovals @Buyer
  Scenario: Verify Sort icon is diplayed on both 'Approval Status', 'Last Updated', 'Updated By','Supplier Name' columns
    Then Click "Manage Approvals" tab
    Then Show Sort icon when hover on "Approval Status" column
    Then Show Sort icon when hover on "Supplier Name" column
    Then Show Sort icon when hover on "Last Updated" column
    Then Show Sort icon when hover on "Updated By" column
    Then Click on sort icon in "Supplier Name" column
    Then Wait for 10 seconds
    Then Logout from the system

  #Passed
  @Regression @MangeApprovals @Buyer
  Scenario: Verify Sort icon on 'Supplier Name' column is clickabled
    Then Click "Manage Approvals" tab
    #Then Verify "Approval Status" column is sorted in ascending order
    Then Click on sort icon in "Approval Status" column
    #Then Verify "Approval Status" column is sorted in descending order
    Then Logout from the system

  @Regression @MangeApprovals @Buyer
  Scenario: Verify Sort icon on 'Last Updated' column is clickabled
    Then Click "Manage Approvals" tab
    #Then Verify "Last Updated" column is sorted in ascending order
    Then Click on sort icon in "Last Updated" column
    #Then Verify "Last Updated" column is sorted in descending order
    Then Logout from the system

  @Regression @MangeApprovals @Buyer
  Scenario: Verify Sort icon on 'Updated By' column is clickabled Updated By
    Then Click "Manage Approvals" tab
    #Then Verify "Updated By" column is sorted in ascending order
    Then Click on sort icon in "Updated By" column
    #Then Verify "Updated By" column is sorted in descending order
    Then Logout from the system

  @ManageApprovals @Approvalsscreen
  Scenario: Verify Buyer is able to perform approve Approval Request from manage approvals screen
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    #Then Select "Moody’s - ESG Risk Review" value from dropdown
    Then Click on "Moody’s - ESG Risk Review" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on search result on manage approval screen
    #Then Click on the "USL Search" under Approval Source
    Then "Approve" the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Logout from the system

  @ManageApprovals @Approvalsscreen
  Scenario: Verify Buyer is able to perform Reject Approval Request from manage approvals screen
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    #Then Select "Moody’s - ESG Risk Review" value from dropdown
    Then Click on "Moody’s - ESG Risk Review" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on search result on manage approval screen
    #Then Click on the "USL Search" under Approval Source
    Then "Reject" the Approval
    Then Enter the Notes under the Notes Box
    Then Click on "Reject" button on actiondropdown
    Then Wait for 3 seconds
    Then Logout from the system

  @ManageApprovals @Approvalsscreen
  Scenario: Verify Buyer is able to perform add noteApproval Request from manage approvals screen
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Moody’s - Key Information" value from dropdown
    Then Click on "Moody’s - Key Information" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on search result on manage approval screen
    #Then Click on the "USL Search" under Approval Source
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Add Note" the Approval
    Then Enter the Notes under the Notes Box
    Then Click on "Save" button on actiondropdown
    Then Logout from the system

  @ManageApprovals @Approvalsscreen
  Scenario: Verify Buyer is able to Re assign Approval Request from manage approvals screen
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Moody’s - ESG Risk Review" value from dropdown
    Then Click on "Moody’s - ESG Risk Review" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on search result on manage approval screen
    #Then Click on the "USL Search" under Approval Source
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Re-assign" the Approval
    Then Enter the Notes under the Notes Box
    Then Seleusrdministrator" value from "role-list" label
    #Then Click on assign role
    Then Click on "Re-assign" button on actiondropdown
    Then Logout from the system

  @ManageApprovals @Approvalsscreen
  Scenario: Verify Buyer is able to Info request Approval Request from manage approvals screen
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Moody’s - Key Information" value from dropdown
    Then Click on "Moody’s - Key Information" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Click on search result on manage approval screen
    #Then Click on the "USL Search" under Approval Source
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Info Request" the Approval
    Then Enter the Notes under the Notes Box
    Then Select "Administrator" value from "role-list" label
    Then Click on "Request" button on actiondropdown
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation  @TYSFunctionality
  Scenario: Verify Buyer is able to Navigate from Approval Request from manage approvals screen to Supplier company profile screen
    Then Click "Manage Approvals" tab
        Then Refresh the page
        Then Wait for 5 seconds
        Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    #Then Select "USL Search" value from dropdown
    Then Click on "Company Operations" option in "Approval Source" dropdown
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Wait for 3 seconds
    Then Select "Profile Complete" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 10 seconds
    Then Click on search result on manage approval screen
    Then Click on "Company Profile Overview" link to view the supplier wide screen
    Then verify buyer is landing on profile page "Company Profile Overview" section
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation
  Scenario: Verify Buyer is able to Navigate from Approval Request from manage approvals screen to Supplier company profile screen for acepted supplier
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Select "Company Operations" value from dropdown
    Then Click on "Company Operations" option in "Approval Source" dropdown
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    Then Click on "Approval Status" dropdown
    Then Select "Pending" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on search result on manage approval screen
    Then Click on "Company Profile Overview" link to view the supplier wide screen
    Then verify buyer is landing on profile page "Company Profile Overview" section
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation @TYSFunctionality
  Scenario: Verify Buyer is able to navigate from Approval Request on manage approvals screen to Supplier questionnaire section screen
    Then Click "Manage Approvals" tab
    Then Refresh the page
        Then Wait for 5 seconds
        Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    #Then Select "USL Search" value from dropdown
    Then Click on "Conflict Minerals" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on search result on manage approval screen
    # Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on "approval_link" approval link to view the supplier wide screen
    Then Wait for 5 seconds
    Then verify buyer is landing on profile page "Questionnaires" section
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation @history @TYSFunctionality
  Scenario: Verify Buyer is able to view the Pending status, Approved, Rejected and info requested status on Approval details screen, and Approval history
    Then Click "Manage Approvals" tab
        Then Refresh the page
        Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    Then Click on "Approval Status" dropdown
    Then Select "Pending" value from dropdown
    Then Click on "Approval Source" filter
    Then Click on "Approval Source" dropdown
    Then Wait for 3 seconds
    #Then Select "Company Operations" value from dropdown
    Then Click on "Company Operations" option in "Approval Source" dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on search result on manage approval screen
    Then Wait for 3 seconds
    Then verify buyer is able to view the status as "Pending"
    Then verify buyer is able to view the status as "Pending" in Approval history
    Then "Approve" the Approval
    Then Wait for 3 seconds
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then verify buyer is able to view the status as "Approved"
    Then verify buyer is able to view the status as "Approved" in Approval history
    Then Wait for 3 seconds
    Then "Reject" the Approval
    Then Enter the Notes under the Notes Box
    Then Wait for 3 seconds
    Then Click on "Reject" button on actiondropdown
    Then Wait for 3 seconds
    Then verify buyer is able to view the status as "Rejected"
    Then verify buyer is able to view the status as "Rejected" in Approval history
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then Wait for 3 seconds
    Then "Info Request" the Approval
    Then Enter the Notes under the Notes Box
    Then Select "Administrator" value from "role-list" label
    Then Wait for 3 seconds
    Then Click on "Request" button on actiondropdown
    Then Wait for 3 seconds
    Then verify buyer is able to view the status as "Info Request"
    Then verify buyer is able to view the status as "Info Request" in Approval history
    Then Logout from the system

  @Regression @ManageApprovals
  Scenario: Verify clear all on manage Approvals page
    Then Click "Manage Approvals" tab
    Then Refresh the page
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Tax Geography" filter
    Then select on "Tax Geography" dropdown as "LATAM"
    Then Click on "Search" button in connected supplier filter by
    Then verify the filtered options as "Tax Geography"
    When Click on Clear All link
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation @TYSFunctionality
  Scenario: Verify Buyer is able to navigate to Aproval details screen upon clicking on AR notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party Approval Requests" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on category "Approval Requests" role AR
    Then Wait for 3 seconds
    Then Logout from the system

  #Third party Approval requests
  @ManageApprovals @Approvalsscreen @navigation @TYSFunctionality   
  Scenario: Verify Buyer is able to navigate to Third party Aproval details screen upon clicking on notifications
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party Approval Requests" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on category "Third Party Approval Requests" role AR
    Then Wait for 3 seconds
    Then Verify "Approval Details" name visibility
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation @TYSFunctionality
  Scenario: Verify Buyer is able to navigate to Aproval Source screen upon clicking on Approval Source link
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on "Country/Region" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Brazil" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on category "Third Party Approval Requests" role AR
    Then Wait for 3 seconds
    Then Click "Approval source" tab link for "Approval Details"
    Then Wait for 3 seconds
    Then Verify "Risk Insights" button is displayed under "Approval source"
    Then Logout from the system

  @ManageApprovals @Approvalsscreen @navigation @TYSFunctionality
  Scenario: Verify Buyer is able to navigate to Full supplier company profile screen upon clicking on Full supplier company profile link
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party Approval Requests" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then Click on category "Third Party Approval Requests" role AR
    Then Wait for 3 seconds
    Then Click "Full supplier company profile" tab link for "Full supplier company profile"
    Then Wait for 3 seconds
    Then Verify "Profile" button is displayed under "Approval source"
    Then Logout from the system

  ################Ready to onboard status filter##############
  @ManageApprovals @TYSFunctionality
  Scenario: Verify Buyer is able to view the "Ready To Onboard" supplier status in the filter on manage approvals
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Wait for 3 seconds
    Then verify the dropdown "Ready To Onboard" value as "option"
    Then Close Apply Filters
    Then Logout from the system

  @ManageApprovals @TYSFunctionality
  Scenario: Verify Buyer is able to select and search the "Ready To Onboard" supplier status in the filter on manage approvals
    Then Click "Manage Approvals" tab
    Then Click on "Filter by" button on "Manage Approvals"
    Then Click on "Approval Status" filter
    Then Click on "Clear All" link on filterBy
    Then Click on "Supplier Status" filter
    Then Click on "Supplier Status" dropdown
    Then Wait for 3 seconds
    Then Select "Ready To Onboard" value from dropdown
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Supplier Status"
    Then Logout from the system
