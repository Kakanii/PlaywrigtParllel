Feature: Notifications

  Background: Login as Belgium supplier
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  @Smoke @Notifications @Buyer
  Scenario: Verify if Buyer is able to view Notifications table with all headers
    Then Wait for 3 seconds
    Then Click "Notifications" tab
    Then Verify the "Notifications" on the screen
    #Then Verify "Notifications" header contains label as "Company Name"
    And Verify "Notifications" header contains label as "Supplier Name"
    Then Wait for 3 seconds
    And Verify "Notifications" header contains label as "Category"
    Then Wait for 3 seconds
    And Verify "Notifications" header contains label as "Date"
    Then Logout from the system

  @Notifications @Buyer @TYSFunctionality
  Scenario: Verify the Functionality of all the filters on Notifications tab
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Verify "suppliernamelabel" button in Filters tab in "true"
    Then Verify "Saved Filters" button in Filters tab in "true" in notification
    Then Verify "Date" button in Filters tab in "true" in notification
    #Then Verify "date_filter" button in Filters tab in "true"
    Then Verify "Category" button in Filters tab in "true" in notification
    #Then Verify "Date" tab on the filterby "true"
    Then Verify "Status" tab on the filterby "true"
    #Then Verify "Status" button in Filters tab is "true"
    Then Verify "Tax Geography" tab on the filterby "true"
    Then Verify "Country/Region" tab on the filterby "true"
    #Then Verify "Tax Geography" button in Filters tab is "true"
    #Then Verify "Country/Region" button in Filters tab is "true"
    Then Close Apply Filters
    Then Logout from the system

  @Smoke @NotificationsFilter @Buyer
  Scenario: Verify the Supplier Name in the filters in Notifications tab
    Then Click "Notifications" tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on the "Type a Supplier Name" field
    Then Enter "SAMBA" value for "Type a Supplier Name" field on any screen
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @NotificationsFilter @Buyer
  Scenario: Verify the status functionality in the filters in Notifications tab
    Then Click "Notifications" tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    #chking role in the status
    #And Verify "Notifications" header contains label as "Status"
    #Then Verify "Status" header contains label as "Status"
    Then Click on "Status" on Buyer screen
    Then Verify "Read" in status Corporate Relationships page
    Then Verify "Unread" in status Corporate Relationships page
    Then Click on the filtered options "Read"
    Then Click "Search" button
    Then verify the status as "Status"
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" on Buyer screen
    Then Click on the filtered options "Unread"
    Then Close Apply Filters
    Then Logout from the system

  @Smoke @NotificationsFilter @Buyer
  Scenario: Verify the status in the filters in Notifications tab
    Then Click "Notifications" tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    #chking role in the status
    Then Click on "Status" on Buyer screen
    Then Verify "Read" in status Corporate Relationships page
    Then Verify "Unread" in status Corporate Relationships page
    Then Close Apply Filters
    Then Logout from the system

  @Smoke @NotificationsFilter @Buyer
  Scenario: Verify the Date filter in the filters in Notifications tab
    Then Click "Notifications" tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    #chking role in the status
    Then Click on the "Date" button in Filters tab in notification
    Then Click on the "datepickernotification" check box
    Then select date "1" from the date
    Then select date "8" from the date
    Then Click "Search" button
    Then verify the status as "Date"
    Then Logout from the system

  @Smoke @NotificationsFilter @Buyer
  Scenario: Verify Sort icon is diplayed on both 'Supplier Name', 'Category','Date', columns
    Then Click "Notifications" tab
    #Then Show Sort icon when hover on "Approval Status" column
    Then Show Sort icon when hover on "Supplier Name" column
    Then Show Sort icon when hover on "Category" column
    Then Show Sort icon when hover on "Date" column
    Then Click on sort icon in "Supplier Name" column
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @Notifications @Buyer
  Scenario: Verify the Buyer is able to reset filters in the filters Notifications tab
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    Then Click on the "Invite Process" role option
    Then Wait for 3 seconds
    Then Click on "Reset Filters" button
    Then Wait for 3 seconds
    Then Close Apply Filters
    Then Logout from the system

  @Smoke @Notifications @Buyer
  Scenario: Verify Saved Filters option in Notifications page
    Then Click "Notifications" tab
    Then Click "Filter by" button
    Then Click on the "Type a Supplier Name" field
    Then Enter "Novartis AG" value for "Type a Supplier Name" field on any screen
    Then Click on "Category" filter
    Then Click on the "Invite Process" role option
    Then Click on "Country/Region" filter
    Then Wait for 3 seconds
    Then Click on the "Switzerland" role option
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

  @Smoke @notifcations
  Scenario: Verify search box on notification screen
    Then Click "Notifications" tab
    Then Click on search box
    #enter name of the supplier
    Then Enter UNSPSC number in UNSPSC filter "Dell"
    Then verify the filtered options as "Supplier Name"
    Then Logout from the system

  @Smoke @notifcations
  Scenario: Verify clear all search box on notification screen
    Then Click "Notifications" tab
    Then Click on search box
    #enter name of the supplier
    Then Enter UNSPSC number in UNSPSC filter "Dell"
    Then verify the filtered options as "Supplier Name"
    When Click on Clear All link
    Then Logout from the system

  @Smoke @notifcations
  Scenario: Verify setting button on notification screen
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Click on Notifications in Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    Then Verify the visibility of "Settings" button
    #Then Settings tab clickable in Notifications page "true"
    #Then Click on Settings in Notifications page "true"
    Then Click on "Settings" button on notification
    Then Logout from the system

  @Smoke @notifcations
  Scenario: Verify functionality of Mark as read and Mark as unread
    Then Click "Notifications" tab
    Then Wait for 3 seconds
    Then Click on the "checkboxclick" check box
    Then Click on the "markasreadbutton" check box
    Then Wait for 3 seconds
    Then Click on the "checkboxclick" check box
    Then Click on the "markasunreadbutton" check box
    Then Logout from the system

  @notifications @Notificationfilteby
  Scenario: Verify Buyer is able to Select all and clear all on Categroy section on Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Tax Geography" filter
    Then Click on "Select All" link on filterBy
    Then Click on "Clear All" link on filterBy
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Close Apply Filters
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view filter Invite Process Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Invite Process" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Invite Process"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Questionnaires and Profile Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Questionnaires and Profile" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Questionnaires and Profile"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Approval Requests Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Approval Requests" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Approval Requests"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  User Management Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "User Management" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "User Management"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Document Manager Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Document Manager" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Document Manager"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Third Party App Monitoring Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party App Monitoring" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Third Party App Monitoring"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view Third Party App Management Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Third Party App Management" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Third Party App Management"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Third party Aproval Request Notification
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
    Then verify the filtered options as "Category"
    Then verify category as "Third Party Approval Requests"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Banking Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Banking" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Banking"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view Supplier Lifecycle Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "Supplier Lifecycle" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Category"
    Then verify category as "Supplier Lifecycle"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Tax Geography Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Tax Geography" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "APAC" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Tax Geography"
    Then Logout from the system

  @notifications @notificationsfilters
  Scenario: Verify Buyer is able to view  Tax Geography Notification
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Country/Region" filter
    #Then Click on "Clear All" link on filterBy
    #Then Click on "Category" dropdown
    #Then Click on the "Approval Requests" role option
    Then Wait for 3 seconds
    Then Click on the "United States of America" role option
    Then Click on "Search" button in connected supplier filter by
    Then Wait for 3 seconds
    Then verify the filtered options as "Country/Region"
    Then Logout from the system

  @notifications @notificationsfilters @TYSFunctionality 
  Scenario: verify Banking link and unlink notification on notification screen
    Then Wait for 3 seconds
    Then Logout from the system
    Then Enter "columbia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Colombia" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Italy"
    Then Select "Colombian Peso" in "Currency" css dropdown
    #Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Colombianholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter input data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Colombia"
    Then Enter value for Address "Paris efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352" in "Postal Code" field after "Colombia" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Columbia" Supplier "columbia12supplierautomation has linked their bank account" in document manager notifications
    And Logout from the system
    #deleting incomplete data
    Then Enter "columbia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system
    #unlink notification
    Then Wait 5 seconds
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Brazil" Supplier "columbia12supplierautomation has unlinked their bank account" in document manager notifications
    And Logout from the system

  #Blocker open issue SLYN-24761,SLYN-28385,which need to be checked again SLYN-28198
  @notifications @notificationsfilters @TYSFunctionality 
  Scenario: Verify Supplierlifecycle notification on notification screen upon publish after onboard
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
    When Click on the email with subject "Trust Your Supplier" from maildrop
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
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###Export/Import Compliance
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
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
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    When Click on the "USL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    #initiate Revalidation
    Then Click "Actions" button
    And Click on "Initiate Revalidation" div button
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 5 seconds
    And Click on My Suppliers Tab
    And Show status "Revalidation Started" in Status "Revalidation Started" dropdown from buyer side
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Revalidation Started"
    Then Wait for 3 seconds
    Then Click "Notifications" tab
    Then Show the "UK" Supplier " has " in notifications
    Then verify category as "Supplier Lifecycle"
    Then Logout from the system

  @Smoke @InappNotifications @BuyerApprovalRequests
  Scenario: Verify Approval Requests Inapp Notification in Buyer persona
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Colombia from the dropdown
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Wait for 30 seconds
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Brazil" Supplier "A new Approval Request has been created for " in document manager notifications
    Then Logout from the system

  @InappNotifications @acceptlinkrequestnotification
  Scenario: Verify Acceptlinkrequest Email Notification in Buyer Invite Process Category
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Show "Nokia has sent you a link request" in notifications
    Then Logout from the system

  @notifications @revalidationnotification @onbuyerend
  Scenario: Verify Supplier lifecycle notification after performing revalidation
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 20 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
    #Then Click on the Action Center
    #And Wait for 5 seconds
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    #And Verify periodic revalidation date
    #initiate Revalidation
    Then Click "Actions" button
    And Click on "Initiate Revalidation" div button
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    #And Click on My Suppliers Tab
    #And Show status "Revalidation Started" in Status "Revalidation Started" dropdown from buyer side
    #When Click on the Search by supplier name and press Enter
    #Then Wait for 3 seconds
    #And Verify "Defer Revalidation" button is displayed under "Buyer side"
    And verify the status as "Revalidation Started"
    Then Wait for 3 seconds
    Then Click "Notifications" tab
    Then Verify "Revalidation has been started by " tab on the filterby "True"
    #Then Show the "UK" Supplier "Revalidation has been started by " in document manager notifications
    #Then Show the "UK" Supplier "Revalidation has been deferred by " in document manager notifications
    #Then Show the "UK" Supplier "Revalidation has been started by " in notifications
    #Then Show the "UK" Supplier "Revalidation has been deferred by " in notifications
    Then Logout from the system

  @notifications @revalidationnotification @onbuyerend
  Scenario: Verify Supplier lifecycle notification after performing revalidation
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 20 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
    #Then Click on the Action Center
    #And Wait for 5 seconds
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    #initiate Revalidation
    Then Click "Actions" button
    And Click on "Initiate Revalidation" div button
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    Then click on the "Cancel Revalidation" tab
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    Then Wait for 3 seconds
    Then Click "Notifications" tab
    Then Verify "Revalidation has been started by " tab on the filterby "True"
    Then Verify "Revalidation has been cancelled by " tab on the filterby "True"
    Then Logout from the system

  #Block notification on buyer end
  @Regression @supplieraddblock @Buyer
  Scenario: Verify the block notification received in the notification screen
    #UK onboard
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 13 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    #Add Block
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Add Block" for "Supplier"
    And Click on "Invoicing block" tab for "Add Block"
    Then Enter the Notes under the accepth buyer Notes Box
    And Wait for 3 seconds
    When Click "Save" button
    And Verify toast message "Relationship has been blocked successfully" successfully is shown
    And Wait for 3 seconds
    And Scroll horizontally
    And Verify the supplier is "Blocked"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Invoicing block"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Unblock" for "Supplier"
    And Wait for 3 seconds
    And Click on "Invoicing block" tab for "Un Block"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been unblocked successfully" successfully is shown
    Then Wait for 3 seconds
    Then Click "Notifications" tab
    Then Show the "UK" Supplier "Block flag was added on the " in document manager notifications
    #Then Verify "Block flag on a JIPqennH5 pvt ltd was removed by ramaleelaibmsta@mailinator.com. " tab on the filterby "True"
    And Logout from the system

  #third party AR
  @notifications @buyer
  Scenario: Verify third party app notification
    Then Logout from the system
    When Enter EmailAdress in Email Address field "pol0ezjuspvtltd@maildrop.cc"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 15 seconds
    When Click "Basic Information" tab
    #enter text
    Then click on the calandar icon
    Then select date "17" from the date
    And Scroll the page
    #Free Zone Company
    #Sole Proprietorship
    Then Select "External Company" value from Business type dropdown
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 20 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Click "Notifications" tab
    # Then Show the "UK" Supplier "An approval request is generated by Moody’s - Probability of Default - Moodys An..." in document manager notifications
    Then Show the "UK" Supplier "Third Party Approval Requests" in document manager notifications
    #Then Show the "UK" Supplier "An approval request is generated by Moody’s - Probability of Default - Moodys An..." in notifications
    # Then Show the "UK" Supplier "An approval request is generated by Moody’s - ESG Risk Review - Moodys Analytics..." in notifications
    Then Logout from the system

  #Third party app management
  @notifications
  Scenario: Verify third party notification on notification screen
    And Wait for 15 seconds
    And Click on Marketplace tab
    And Wait for 5 seconds
    Then Shows Marketplace title
    #When Enter App name in search field
    When Enter App name as "Moody’s - Key Information" in search field
    And Select App from search results
    And Click on the App on Marketplace page
    And Wait for 3 seconds
    Then Shows App details page
    And Wait for 3 seconds
    When Click on Access tab on App details page
    And Wait for 3 seconds
    #App should be installed
    Then Click on the "uninstallbutton" check box
    Then Click on the "yesbutton" check box
    Then Wait for 30 seconds
    Then Click "Notifications" tab
    Then Show the "UK" Supplier "Moody’s - Key Information has been uninstalled" in document manager notifications
    # Then Show the "UK" Supplier "Moody’s - Key Information has been uninstalled" in notifications
    Then Logout from the system

  @Smoke @notifcations
  Scenario: Verify manage users notification on notification screen
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    #Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    #Then Select "Administrator" in Role dropdown
    Then Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    Then Select a Role from the dropdown on Invite a New User Modal "Approver"
    Then Select a Language from the dropdown on Invite a New User Modal "English"
    Then Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation toast message on Manage Users page "Invite sent to "
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    Then Click on the edit icon on manage users
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Click on "Update" button
    Then Wait 15 seconds
    Then Click "Notifications" tab
    #Then Show the "UK" Supplier " role has been updated from Approver to Administrator" in notifications
    Then Show the "UK" Supplier "role has been updated from Approver to Administrator" in document manager notifications
    #Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system

  @Smoke @notifcations @publishedsupplier
  Scenario: Verify notifications for published supplier
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    #Then Wait for 15 seconds
    #Then Click "Skip" button
    Then Wait for 10 seconds
    Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications in supplier Dashboard page "true"
    Then Settings tab clickable in Notifications page "true"
    Then Click on Settings in Notifications page "true"
    #Then Show questionnaires and profile option visibility in settings "true"
    #Then Click on questionnaires and profile option in settings "true"
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Government Entity" in "Business Type" dropdown under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 20 seconds
    Then Click on button Publish for questionare
    Then Wait for 40 seconds
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Notifications on Dashboard page "true"
    Then Show the "Brazil" Supplier " have published their profile." in notifications
    Then Logout from the system

  @Smoke @notifcations @Localisation @Publish @Supplier
  Scenario: Verify notifications for Accepted supplier
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
    #Then Verify IBM status is "Accepted Invite"
    Then Click on "Pending Invite" on Buyer screen
    #Then Click on the "Nokia Corporation" status is "Pending Invite"
    #Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Click on Actionsoption
    Then Select AcceptInvitation option from Actions dropdown
    Then Select the consent checkbox
    Then Click on "Next" button on notification
    Then Enter the Notes under the decline buyer Notes Box
    # Then Enter the text area "Accepted"
    #decline bttn in rightdrawer
    Then Click on "Accept" button on notification
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Notifications on Dashboard page "true"
    Then Show the "Brazil" Supplier " has accepted your invite request" in notifications
    Then Logout from the system

  @Regression @notifications @DeclineInvitation
  Scenario: Verify DeclineInvitation Email Notification in Buyer Invite Process Category
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Click on Declined
    #Then Switch to the new opened tab
    #Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    #Then Close TYS tab
    #Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has declined your invitation"
    #Then Click on the email with subject "has declined your invitation" from maildrop
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Notifications on Dashboard page "true"
    Then Show the "Brazil" Supplier " has declined your invitation." in notifications
    Then Logout from the system

  #openissue for onboard notifiocation
  @Smoke @notifications @Localisation @Supplier
  Scenario: Verify notifications for supplier onboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait 5 seconds
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    Then Click on Notifications in supplier Dashboard page "true"
    Then Click on Settings in Notifications page "true"
    #Then Click on "Settings" button on notification
    Then Click on "inviteProcess" option in settings "Notiffication"
    Then Click on "questionnaireAndProfile" option in settings "Notiffication"
    Then Click on "followUpEvents" option in settings "Notiffication"
    Then Click on "onBoarding" option in settings "Notiffication"
    Then Click on "userManagement" option in settings "Notiffication"
    Then Click on "documentManagement" option in settings "Notiffication"
    Then Click on "supplierLifecycle" option in settings "Notiffication"
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Government Entity" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 20 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 20 seconds
    Then Click on button Publish for questionare
    Then Wait for 40 seconds
    And Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on first record1 of the Search
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the "DPL Search" under Approval Source
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Click on Notifications on Dashboard page "true"
    Then Show the "Brazil" Supplier " has accepted your invite request" in notifications
    Then Show the "Brazil" Supplier " have published their profile." in notifications
    Then Show the "Auto" Supplier " has published Anti-Bribery, Anti-Corruption questionnaire" in notifications
    #Then Show the "USA" Supplier " has Onboarded." in notifications
    Then Logout from the system

  @Regression @Questionnaires @PublishQuestionnaire
  Scenario: Verify notifications for questionnaire publish
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
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
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
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
    #Then Wait for 15 seconds
    #Then Click "Skip" button
    Then Wait for 10 seconds
    Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications in supplier Dashboard page "true"
    Then Settings tab clickable in Notifications page "true"
    Then Click on Settings in Notifications page "true"
    #Then Show questionnaires and profile option visibility in settings "true"
    #Then Click on questionnaires and profile option in settings "true"
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 20 seconds
    Then Click on button Publish for questionare
    Then Wait for 40 seconds
    And Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Notifications on Dashboard page "true"
    Then Show the "Auto" Supplier " has published Anti-Bribery, Anti-Corruption questionnaire" in notifications
    Then Logout from the system

  @Regression @Supplier
  Scenario: Verify if Buyer is able to view Document manager notifications after performing contacts export
    Then Wait 20 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Click on contactall check box
    Then Click on "Export Selected" button on actiondropdown
    # Then Verify manage contact column "exportall"
    #Then click on manage contact column "exportall"
    # Then verify the toast message on exporting contacts "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes."
    Then Click on Notifications on Dashboard page "true"
    Then Wait for 20 seconds
    Then Show the "Auto" Supplier "My Supplier Extract for Suppliers Contacts is now available to download" in document manager notifications
    Then Logout from the system

  @Regression @Supplier
  Scenario: Verify if Buyer is able to view Document manager notifications after performing connected suppliers export
    Then Wait 20 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Click on the "connectedsupplierexport" check box
    Then Click on "Export Selected" button on actiondropdown
    # Then Verify manage contact column "exportall"
    #Then click on manage contact column "exportall"
    #Then verify the toast message on exporting contacts "The Export Process is now running. Please monitor Notifications to know when your export file will be ready for download. Please be patient as this may take a few minutes."
    Then Click on Notifications on Dashboard page "true"
    Then Wait for 20 seconds
    Then Show the "Auto" Supplier "My Supplier Extract for Connected Suppliers is now available to download" in document manager notifications
    Then Logout from the system

  @Regression @BuyerPagination @NotificationPagination
  Scenario: Verify Next arrow button visibility on Notifictaions page
    Then Click "Notifications" tab
    Then Show Next arrow button on My Suppliers page "true"
    Then Next arrow button enabled on My Suppliers page "true"
    Then Logout from the system

  @Smoke @BuyerPagination @NotificationPagination
  Scenario: Verify Next arrow button  and Prev arrow button functionality on Notifictaions page
    Then Click "Notifications" tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @NotificationPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on Notifictaions page if row per page is 40
    Then Click "Notifications" tab
    Then Change row per page to "40"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @BuyerPagination @NotificationPagination
  Scenario: Verify Next arrow button and Prev arrow button functionality on Notifictaions page if row per page is 20
    Then Click "Notifications" tab
    Then Change row per page to "20"
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Regression @NotificationPagination
  Scenario: Verify Prev button visibility and status on Notifictaions page if row per page is 20
    Then Click "Notifications" tab
    Then Change row per page to twenty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "true"
    Then Logout from the system

  @Regression @NotificationPagination
  Scenario: Verify Next button visibility and status on Notifictaions page if row per page is 20
    Then Click "Notifications" tab
    Then Change row per page to twenty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @NotificationPagination
  Scenario: Verify Next button and Prev button functionality on Notifictaions page if row per page is 20
    Then Click "Notifications" tab
    Then Change row per page to twenty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @NotificationPagination
  Scenario: Verify Prev button visibility on Notifictaions page if row per page is 40
    Then Click "Notifications" tab
    Then Change row per page to forty
    Then Show Prev button on Discover Suppliers page "true"
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  @Regression @NotificationPagination
  Scenario: Verify Next button visibility and status on Notifictaions page if row per page is 40
    Then Click "Notifications" tab
    Then Change row per page to forty
    Then Show Next button on Discover Suppliers page "true"
    Then Next button enabled on Discover Suppliers page "true"
    Then Logout from the system

  @Smoke @NotificationPagination
  Scenario: Verify Next button and Prev button functionality on Notifictaions page if row per page is 40
    Then Click "Notifications" tab
    Then Change row per page to forty
    Then Click on Next button on Discover Suppliers page
    Then Prev button enabled on Discover Suppliers page "true"
    Then Click on Prev button on Discover Suppliers page
    Then Prev button disabled on Discover Suppliers page "false"
    Then Logout from the system

  #SUPPLIER END NOTIFICTAION
  @suppliernotification
  Scenario: Verify the Notification screen on supplier
    Then Logout from the system
    When Enter Nokia Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Verify "All Notifications" tab visibility
    Then Verify "All Notifications" tab visibility
    Then Verify "Unread Notifications" tab visibility
    Then Verify "Read Notifications" tab visibility
    Then Verify "Settings" tab visibility
    Then Logout from the system

  @suppliernotification
  Scenario: Verify the Accepted notification as "Welcome Text" notification on supplier end
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Logout from the system

  @suppliernotification
  Scenario: Verify the questionnaire notification on supplier
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "CPQGroup" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Click "Connected Suppliers" tab
    Then Click on the Search by supplier name and press Enter
    Then verify the visibility of the Supplier Questionnaire Group on reading panel "true"
    #Then Click on close icon for create rule
    #Then Click on "downshift-0-toggle-button" button on AR details screen
    Then Click on Questionnaire Group on profile screen
    Then Select "Automation" value from dropdown
    Then Click on Save changes button under the Questionnaire group from the drop down in reading panel
    Then Switch to the active window
    Then click on Yes button on the Update Questionnaire Assignment
    Then Switch to the parent window
    Then verify the filtered options as "Automation"
    #Then Verify "Anti-Bribery, Anti-Corruption" questionnaire label visible under "Questionnaire"
    Then Logout from the system
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    Then Show "Anti-Bribery, Anti-Corruption questionnaire has been assigned to you by Auto User" in notifications
    Then Logout from the system

  @suppliernotification
  Scenario: Verify the onboard notification on supplier
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 20 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #dropdowns
    And Select value "Global Logistics (GLP)" from "supplierCategory"
    And Wait for 5 seconds
    And Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    And Wait for 3 seconds
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Wait for 3 seconds
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    And Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Wait for 3 seconds
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Wait for 10 seconds
    #approvals
    #Then Click on the Action Center
    #And Wait for 5 seconds
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    # Then Show "Anti-Bribery, Anti-Corruption questionnaire has been assigned to you by Auto User" in notifications
    Then Show "Auto User has on-boarded you" in notifications
    And Logout from the system

  @Smoke @CDCI @SupplierStatusnotifications
  Scenario: After Onboarded, As a Supplier, I should be able to receive notification of Intiating Revalidation
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
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
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Wait for 3 seconds
    And Scroll the page
    And Wait for 5 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    #And Verify periodic revalidation date
    #initiate Revalidation
    Then Click "Actions" button
    And Click on "Initiate Revalidation" div button
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    And Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    # Then Show "Anti-Bribery, Anti-Corruption questionnaire has been assigned to you by Auto User" in notifications
    Then Show "Auto User has on-boarded you" in notifications
    Then Show "Auto User has initiated revalidation. Please review the details and perform necessary actions." in notifications
    And Logout from the system

  @Smoke @CDCI @SupplierStatusnotifications
  Scenario: After Onboarded, As a Supplier, I should be able to receive notification of Cancel Revalidation
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 15 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
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
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    ###Export/Import Compliance
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    #And Verify periodic revalidation date
    #initiate Revalidation
    Then Click "Actions" button
    And Click on "Initiate Revalidation" div button
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    Then click on the "Cancel Revalidation" tab
    And Enter the Notes under Initiate Revalidation note box
    And Click "Submit" button
    Then Wait for 10 seconds
    And Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    # Then Show "Anti-Bribery, Anti-Corruption questionnaire has been assigned to you by Auto User" in notifications
    Then Show "Auto User has on-boarded you" in notifications
    #Then Show "Auto User has initiated revalidation. Please review the details and perform necessary actions." in notifications    Then Show "Auto User has on-boarded you" in notifications
    Then Show "Auto User has initiated revalidation. Please review the details and perform necessary actions." in notifications
    Then Show "Auto User has cancelled the current revalidation on your profile" in notifications
    And Logout from the system

  ##Returned to Supplier
  @suppliernotification @supplierendnotification
  Scenario: Verify the Return to supplier notification on supplier
    And Wait 3 seconds
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Login to buyer
    #Buyer end
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    Then Click "Actions" button
    And Click on "Return to Supplier" div button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    And Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    #  And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    And Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Show "Your profile has been returned by Auto User." in notifications
    #Then Show "Auto User has undone returning your profile. Your profile is now back to Ready For Review status." in notifications
    And Logout from the system

  @suppliernotification @undoreturntosupplier
  Scenario: Verify the Undo Return to supplier notification on supplier
    And Wait 3 seconds
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
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
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    And Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Buyer end
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    Then Click "Actions" button
    And Click on "Return to Supplier" div button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    And Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    #  And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    Then Click on the Undo Return to Supplier
    Then Enter the Notes under the accepth buyer Notes Box
    Then Enter the Notes under the reasonForUndoReturn buyer Notes Box
    Then click on the "Confirm Undo Return to Supplier" tab
    And Wait for 3 seconds
    And Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Show "Your profile has been returned by Auto User." in notifications
    Then Show "Auto User has undone returning your profile. Your profile is now back to Ready For Review status." in notifications
    And Logout from the system
    
    
    ##///////******Approval request********//////
    
    @Smoke @BuyerApprovalRequests
  Scenario: Verify Approval Requests generated on Buyer persona for supplier with Profile completed status
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
    And Select the "DQGroup" in Dropdown
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
    When Click on the email with subject "Trust Your Supplier" from maildrop
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
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Wait for 5 seconds
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "Yes" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center  
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
	Then verify the visibility of the "Diversity" Approval Source "1" on Action center
    And Logout from the system

@Smoke @BuyerApprovalRequests
  Scenario: Verify Approval Requests generated on Buyer persona for supplier with Ready for Review status
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
    And Select the "DiversityAutomation" in Dropdown
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
    When Click on the email with subject "Trust Your Supplier" from maildrop
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
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Wait for 5 seconds
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "Yes" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center  
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
	Then verify the visibility of the "Diversity" Approval Source "1" on Action center
    And Logout from the system



@Smoke @BuyerApprovalRequests
  Scenario: Verify Approval Requests generated on Buyer persona for supplier with Ready to Onboard status
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
    And Select the "DiversityAutomation" in Dropdown
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
    When Click on the email with subject "Trust Your Supplier" from maildrop
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
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Wait for 5 seconds
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "Yes" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center  
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
   	# And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###Export/Import Compliance
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
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
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    When Click on the "USL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    #Buyer Internal assessment
    Then Click on the "Buyer Internal assessment" under Approval Source
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    ##DPL Search
    Then Click on the "DPL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
     When Click on the "Diversity" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
	Then verify the visibility of the "Diversity" Approval Source "1" on Action center
    And Logout from the system

  @Smoke @BuyerApprovalRequests @HotfixCheck
  Scenario: Verify Approval Requests generated on Buyer persona for supplier with Onboarded status
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
    And Select the "DiversityAutomation" in Dropdown
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
    When Click on the email with subject "Trust Your Supplier" from maildrop
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
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Wait for 5 seconds
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "Yes" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
   	# And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###S&EMS Record created
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###Export/Import Compliance
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
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
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    When Click on the "USL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    #Buyer Internal assessment
    Then Click on the "Buyer Internal assessment" under Approval Source
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    ##DPL Search
    Then Click on the "DPL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
     When Click on the "Diversity" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    Then Wait for 3 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
  	Then verify the visibility of the "Diversity" Approval Source "1" on Action center
    And Logout from the system








