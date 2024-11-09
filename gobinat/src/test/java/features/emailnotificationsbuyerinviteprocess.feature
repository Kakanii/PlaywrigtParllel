Feature: Email Notifications At Category Level

  #@EmailOptinOptout
  #EmailNotifications
  #@BuyerInviteProcess  @AcceptInvitation @DeclineInvitation @AcceptLinkrequest @DeclineLinkrequest @SupplierInviteProcess
  #@BuyerQuestionnaireAndProfile @SupplierQuestionnaireAndProfile @BuyerApprovalRequests @SupplierApprovalRequests
  Background: Login as Buyer
    Given Open the login page
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Show Notifications tab on Dashboard page "true"
    Then Notifications tab clickable on Dashboard page "true"
    Then Click on Notifications in Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    Then Verify the visibility of "Settings" button
    #Then Settings tab clickable in Notifications page "true"
    #Then Click on Settings in Notifications page "true"
    Then Click on "Settings" button on notification

   @EmailNotifications @BuyerInviteProcess @SupplierInviteProcess @AcceptInvitation @TYSFunctionality
  Scenario: Verify AcceptInvitation Email Notification in Buyer and Supplier Invite Process Category
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Brazil" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 1 seconds
    Then Click on the Skip
    Then Wait for 1 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait for 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 2 seconds
    #verify inviter supplier with status
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 10 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 5 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
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
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Brazil" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Brazil" supplier registration
    Then Enter "TestAddress3" in "Address Line 3" field after "Brazil" supplier registration
    Then Enter "TestCity" in "City" field after "Brazil" supplier registration
    Then Enter "23232-321" in "Postal Code" field after "Brazil" supplier registration
    Then Select "Acre" in "State" dropdown
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
    Then Wait for 5 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Logout from the system
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Verify received an email in supplier maildrop Inbox with subject "Welcome to Trust Your Supplier"
    #Then Verify Email received in "Uk" supplier Inbox with subject "Welcome to Trust Your Supplier"
    Then Click on the email with subject "Welcome to Trust Your Supplier" from maildrop
    #Then Click on the email with subject "Welcome to Trust Your Supplier"
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has accepted your invite request"
    #Then Click on the email with subject "has accepted your invite request"
    Then Click on the email with subject "has accepted your invite request" from maildrop

  @Smoke @EmailNotifications @BuyerInviteProcess @SupplierInviteProcess @AcceptInvitation
  Scenario: Verify DeclineInvitation Email Notification in Buyer through link request
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
    Then Wait for 10 seconds
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
    Then Click on "Pending Invite" on Buyer screen
    #Then Verify IBM status is "Accepted Invite"
    #Then Click on the "Nokia Corporation" status is "Pending Invite"
    #Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Click on Actionsoption
    Then Select DeclineInvitation option from Actions dropdown
    Then Enter the Notes under the decline buyer Notes Box
    #Then Enter the text area "testdata"
    Then Enter notes in the Decline text area
    #decline bttn in rightdrawer
    Then Click on "Decline" button on notification
    Then Logout from the system
    Then Verify Email received in "ramanokiaautobuyer@maildrop.cc" maildrop Buyer Inbox with subject "has declined your invitation"
    Then Click on the email with subject "has declined your invitation" from maildrop

  @Smoke @EmailNotifications @BuyerInviteProcess @AcceptLinkrequest
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
    Then Wait for 10 seconds
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
    Then Verify Email received in "ramanokiaautobuyer@maildrop.cc" maildrop Buyer Inbox with subject "has accepted your link request"
    Then Click on the email with subject "has accepted your link request" from maildrop

  @Smoke @EmailNotifications @BuyerInviteProcess @DeclineLinkrequest
  Scenario: Verify Decline request Email Notification in Buyer Invite Process Category
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
    Then Wait for 10 seconds
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
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has declined your invitation"
    Then Click on the email with subject "has declined your invitation" from maildrop

  @EmailNotifications @BuyerQuestionnaireAndProfile @SupplierQuestionnaireAndProfile @TYSFunctionality
    Scenario: Verify Questionnaire and Profile Email Notification in Buyer and Supplier persona
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
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
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
    Then Wait for 10 seconds
    Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications in supplier Dashboard page "true"
    Then Settings tab clickable in Notifications page "true"
    Then Click on Settings in Notifications page "true"
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
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Verify received an email in supplier maildrop Inbox with subject "Welcome to Trust Your Supplier"
    #Then Verify Email received in "Uk" supplier Inbox with subject "Welcome to Trust Your Supplier"
    Then Click on the email with subject "Welcome to Trust Your Supplier" from maildrop
    #Then Click on the email with subject "Welcome to Trust Your Supplier"
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has accepted your invite request"
    #Then Click on the email with subject "has accepted your invite request"
    Then Click on the email with subject "has accepted your invite request" from maildrop
    Then Click on refresh button
    Then Verify Email received in the "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has published Anti-Bribery, Anti" 1
    # Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has published Anti-Bribery, Anti"
    # //div[contains(text(),'has published Anti-Bribery, Anti')][1]
    Then Click on the email with subject "has published Anti-Bribery, Anti" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "have published their profile."
    Then Click on the email with subject "have published their profile." from maildrop


  @Smoke @EmailNotifications @BuyerApprovalRequests
  Scenario: Verify Approval Requests Email Notification in Buyer persona
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from the dropdown
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
    Then Wait for 10 seconds
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
    Then Click on Notifications in Dashboard page "true"
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
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Find ID button
    #Then Wait for 13 seconds
    #Then Click on Not a suitable match
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
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
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
    #Approve request
    Then Click on NewApprovalRequest Option
    Then Switch to the active window
    #Ar notes
    Then Enter the Notes under the decline buyer Notes Box
    #Then Enter ApprovalRequest description in text area "testdata"
    #Then Select "Administrator" in "Assigned Role" css dropdown
    Then Click on role "Administrator" on Approvalrequest
    Then Click on "Create" button on notification
    #Then Click on Create button
    #Then Click on the "Manual" under Approval Source
    Then Click "Manual" on the Approval request on Action center
    Then Wait for 5 seconds
    Then "Reject" the Approval
    Then Enter the Notes under the Notes Box
    Then Click on "Reject" button on actiondropdown
    Then Wait for 3 seconds
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Add Note" the Approval
    Then Enter the Notes under the Notes Box
    Then Click on "Save" button on actiondropdown
    Then Wait for 3 seconds
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Re-assign" the Approval
    Then Enter the Notes under the Notes Box
    Then Select "Administrator" value from "role-list" label
    #Then Click on assign role
    Then Click on "Re-assign" button on actiondropdown
    Then Wait for 3 seconds
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then "Info Request" the Approval
    Then Enter the Notes under the Notes Box
    Then Select "Administrator" value from "role-list" label
    Then Click on "Request" button on actiondropdown
    Then Wait for 3 seconds
    Then Click on "approvalActionsDropdown" button on AR details screen
    Then Click on "Resolve" on Buyer screen
    Then Enter the Notes under the Notes Box
    Then Select "Administrator" value from "role-list" label
    Then Click on "Resolve" button on actiondropdown
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "A new Approval Request has been created"
    Then Click on the email with subject "A new Approval Request has been created" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has been rejected by"
    Then Click on the email with subject "has been rejected by" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has been reassigned to"
    Then Click on the email with subject "has been reassigned to" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "requests further information for this Approval Request for"
    Then Click on the email with subject "requests further information for this Approval Request for" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject " has resolved the request for further inform"
    #Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has resolved the request for further information for this Approval Request for"
    Then Click on the email with subject " has resolved the request for further inform" from maildrop
    Then Click on refresh button
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "has been approved by"
    Then Click on the email with subject "has been approved by" from maildrop

  @Smoke @EmailNotifications @SupplierOnnboarding @TYSFunctionality
   Scenario: Verify Onboarding Email Notification in Supplier persona
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
    Then Wait for 10 seconds
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
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds       
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
    When Wait 10 seconds
        Then Click on Dashboard page
        Then Show Notifications tab on supplier Dashboard page "true"
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications in supplier Dashboard page "true"
    Then Settings tab clickable in Notifications page "true"
    Then Click on Settings in Notifications page "true"
    And Logout from the system         
    #onboard
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
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Logout from the system  
    Then Switch to "Mailinator" tab
    Then Click on refresh button
    Then Verify received an email in supplier maildrop Inbox with subject "has on-boarded you"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "has on-boarded you" from maildrop

  @Smoke @EmailNotifications @BuyerUserManagement @SupplierUserManagement
  Scenario: Verify UserManagement Email Notification in Buyer and Supplier persona
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Verify Email received in "ramaibmuat@maildrop.cc" maildrop Buyer Inbox with subject "role has been updated from Viewer to"
    #Then Verify Email received in "ramaautobuyer@maildrop.cc" Buyer Inbox with subject "role has been updated from Internal Buyer to"
    Then Click on the email with subject "role has been updated from Viewer to" from maildrop
    #supplier persona
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    ##Then Start the application
    #Then Click on Sign In button
    #Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
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
    Then Wait for 10 seconds
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
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Submenu
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Publisher"
    #When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    #When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    #Then Enter Email on Invite a New User modal "NewPublisher"
    #Then Enter Confirmation Email on Invite a New User modal "NewPublisher"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Editor"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    Then Show Email with subject "role has been updated from Publisher to" from maildrop
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Supplier @resndinvite
  Scenario: Buyer is able to view resend notifications in the mail
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value in Contact Number field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Click on the Search by supplier name and press Enter
    Then Click on Resend button on leftmenu
    Then Click on button "Resend Invite" for questionare
    #Then Show Toast message "A reminder email and notification has been sent to mailkywayplaneti@maildrop.cc"
    Then Logout from the system
    Then Wait for 10 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on refresh button
    Then Verify received an email in supplier maildrop Inbox with subject "Reminder from Trust Your Supplier"
    Then Close the tab
