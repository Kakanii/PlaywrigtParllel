Feature: buyer notifications

  #Buyer Notifications

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify whether the user in the primary watcher list receives both inapp and email notification when a user cancel revalidation for a supplier
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
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
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
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
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 10 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Wait for 15 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Wait for 10 seconds
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    And Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 5 seconds
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
    Then Switch to the parent window
    And Wait for 3 seconds
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
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    #Rule Without criteria
    And Refresh the current webpage
    Then Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Click "No" for the Third Question
    # When Click on the NO for First question
    #Then Wait for 5 seconds
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
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
    #And Switch to the parent window
    And Wait for 10 seconds
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
    Then Wait for 10 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
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
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Revalidation has been Cancelled by"




  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify whether the user who cancelled revalidation for a supplier doesnot receive the inapp and email notification
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
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
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
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
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 10 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Wait for 15 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Wait for 10 seconds
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    And Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 5 seconds
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
    Then Switch to the parent window
    And Wait for 3 seconds
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
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    #Rule Without criteria
    And Refresh the current webpage
    Then Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Click "No" for the Third Question
    # When Click on the NO for First question
    #Then Wait for 5 seconds
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
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
    #And Switch to the parent window
    And Wait for 10 seconds
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
    Then Wait for 10 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
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
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Revalidation has been Cancelled by"



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify whether the secondary notification recipient user honor teams
    Then Enter data in Email Address field
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
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
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    #When Click "Reject" button
    Then Click on "Decline" button on notification
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify assignment questionnaire
    Then verify the status as "Approved"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "An Assessment is assigned for"
    And Logout from the system
    Then Enter data in Email Address field
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification from buyer sent as "has not been accepted" by "notify ibmuser"
    And Logout from the system
    And Close browser

  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive a notification when the supplier publishes the profile
    Then Enter data in Email Address field
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
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
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    Then Click on "Accept" button on notification
    Then Wait for 5 seconds
    And Navigate back to supplier
    Then Wait for 5 seconds
    #Verify assignment questionnaire
    Then verify the status as "Approved"
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has published their profile"
    And Logout from the system
    And Close browser

 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify whether the secondary notification recipients are receiving the Inapp and email notification when a user cancel revalidation for a supplier
    Then Enter data in Email Address field
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Wait for 3 seconds
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    And Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
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
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Click on the radio button "YES" for "1" in Diversity
    And Select "Privately Owned" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification has been sent to recipient as "has not published their profile"



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive a notification to primary watcher when assign questionnaire are published
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Click "Manage / Assign Questionnaires" button
    Then Click on "Add" button at the "Conflict Minerals - IBM" Questionnaires
    Then Scroll the page
    Then Click on Update button to update the questionnaire
    Then Wait for 5 seconds
    And Logout from the system
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 5 seconds
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is received primary watcher for questionnaire as " assigned" by "auto mation" with " questionnaire(s) for "
    And Close browser

  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive a notification to primary watcher when assign muliple questionnaires are published
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 3 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on the Click here on Questionnaire page
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Company Operations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is received primary watcher for questionnaire as " assigned" by "auto mation" with " questionnaire(s) for "
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Click "Manage / Assign Questionnaires" button
    Then Click on "Add" button at the "Conflict Minerals - IBM" Questionnaires
    Then Scroll the page
    Then Click on Update button to update the questionnaire
    Then Wait for 5 seconds
    And Logout from the system
    Then Verify unwatch or unsubcribe option is present from primary recipient for questionnaire
    And Close browser



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should able to see supplier details unon clicking questionnaire notification after questionnaire published 
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Click "Manage / Assign Questionnaires" button
    Then Wait for 5 seconds
    Then Click on "Add" button at the "Conflict Minerals - IBM" Questionnaires
    Then Scroll the page
    Then Click on Update button to update the questionnaire
    Then Wait for 10 seconds
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Click on notification received for questionnaire as " assigned " by "auto mation" with " questionnaire(s) for "
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    And Logout from the system
    Then Verify unwatch or unsubcribe option is not present from secondary recipient for questionnaire
    Then Verify unwatch or unsubcribe option is present from primary recipient for questionnaire
    And Close browser


  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should able to see the notifications when the supplier status is Ready for review
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Wait for 3 seconds
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
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
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    And Click on "Return to Supplier" div button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    ###Undo Supplier Action Required
    And Wait for 3 seconds
    When Click on Undo Return to Supplier button
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Undo Return on the return to supplier modal
    When Click "Confirm Undo Return to Supplier" button
    And Wait for 5 seconds
    And Logout from the system
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click "Notifications" tab
    And Wait for 5 seconds
    And verify the status as "is now Ready for Review"
    And Logout from the system



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should not able to see the notifications when the supplier status is not Ready for review
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Wait for 3 seconds
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
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
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    And Click on "Return to Supplier" div button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    ###Undo Supplier Action Required
    And Wait for 3 seconds
    When Click on Undo Return to Supplier button
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Undo Return on the return to supplier modal
    When Click "Confirm Undo Return to Supplier" button
    And Wait for 5 seconds
    And Logout from the system
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click "Notifications" tab
    And Wait for 5 seconds
    And verify the status as "Ready for Review"
    And Logout from the system



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive a notification when the buyer user role is updated
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 3 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on the Click here on Questionnaire page
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Company Operations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then click on Trusted Domain Tab
    Then Check the Description of Tab "true"
    Then Click on Trusted Domains tab
    Then Logout from the system
    And Close browser



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive a wrong notification when individual roles are updated for teams
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 3 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on the Click here on Questionnaire page
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Company Operations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then click on Trusted Domain Tab
    Then Check the Description of Tab "true"
    Then Click on Trusted Domains tab
    Then Logout from the system
    And Close browser



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should receive the notifications when the team is updated
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 3 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on the Click here on Questionnaire page
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Company Operations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then click on Trusted Domain Tab
    Then Check the Description of Tab "true"
    Then Click on Trusted Domains tab
    Then Logout from the system
    And Close browser



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should not receive the notifications when the team is updated
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 3 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on the Click here on Questionnaire page
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Company Operations" in Dropdown
    And Wait 2 seconds
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Click "Notifications" tab
    Then Wait for 10 seconds
    Then Verify notification is not received who performs action for questionnaire as " assigned" by "auto mation" with "questionnaire(s) for "
    And Logout from the system
    Then Enter other user in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Notifications" tab
    Then Wait for 10 seconds
    And Logout from the system
    Then Enter data in buyer notify Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then click on Trusted Domain Tab
    Then Check the Description of Tab "true"
    Then Click on Trusted Domains tab
    Then Logout from the system
    And Close browser


 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should get the notifications when the supplier updates the bank account details
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "rama"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    #And Enter value for Bank Key "54543643"
    #And Enter value for Bank Swift Code "FDGFDHQKIR"
    #And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    #Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    #Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
   # And Click on the save in Address verification
    Then Click on Not now button
    Then Wait for 3 seconds
    #Then Click on buyer link
    Then Click on link this Account button
    #Then Select the Body the Bank Account
    #And Click on the Preferred Bank check box
    # Then Wait 5 seconds
    # Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Logout from the system
    #Then Enter data in Email Address field
    Then Enter nokia buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Connected Suppliers" tab
    Then Click on first record1 of the Search
    And Scroll Down the page record of the Search
    And Scroll Down the opened popup and close
    #And Verify the Account number enetered is same
    And Logout from the system
    #deleting incomplete data
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system



 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should get the notifications when the supplier updates the bank account with valid details
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    #Then Enter value for Bank Key "54543643"
    #Then Enter value for Bank Swift Code "FDGFDHQKIR"
    #Then Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    #Then Enter value for Zip code "27560"
    Then Enter "76735224234234" in "Zip Code" field after "Bank address" supplier registration
    Then Enter value for Bank Contact Name "ramaleela"
    Then Enter value for Bank Contact Number "9886543210"
    #Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Wait for 9 seconds
    Then Select state "Florida" in state dropdown in Factoring Company Account
    Then Enter "123456098" in "Zip Code" field under "Factoring Company Address" section
    Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 15 seconds
    And Click on the save in Address verification for Factoring Company Account
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait for 5 seconds
    Then Click on the Confirm in Preferred
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    And Logout from the system

 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should get the notifications when the supplier linked a new bank account 
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
    Then Click on link account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system
    #link notification
    Then Wait 5 seconds
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Brazil" Supplier "columbia12supplierautomation has linked their bank account" in document manager notifications
    And Logout from the system

 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should get the notifications when the supplier link and linked a new bank account  
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


 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should get the notifications when the supplier unlinked a new bank account 
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
    Then Click on unlink this Account button
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


 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should able to get the notification when the supplier is ready to onboard
    When Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    #Configure Approval
    Then Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption (7)" in "Configure Workflow"
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
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
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
    Then click on "No" for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" in question "1"
    Then click on "No" for question "Does your anti-bribery policy prohibit the giving and receiving of gifts and hospitality to influence conduct inappropriately?" in question "2"
    Then click on "No" for question "Does your company review your suppliers for bribery risks prior to selection?" in question "3"
    Then click on "Yes" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your business have a code, policy or compliance program which mandates full compliance with anti-corruption and other laws that are applicable to your business operations?" in question "5"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" in question "6"
    Then click on "No" for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" in question "7"
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
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
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
    ##USL Search
    Then Click on "USL Search" in Approval Source "1"
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
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
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
    #Anti-Bribery, Anti-Corruption
    Then Click on "Anti-Bribery, Anti-Corruption" in Approval Source "1"
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
    Then Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption (7)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Do you train your employees and your suppliers on your anti-bribery policy?"
    And Wait for 3 seconds
    When Click "Save" button
    And Wait for 5 seconds
    And Logout from the system



  @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should able to get the notification when performing revalidation started
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

 @Regression @SLYN-30132 @SupplierNotification
  Scenario: Verify as a buyer, I should able to get the notification when performing revalidation review
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


  
  @Regression @SLYN-30132 @suppliernotification
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Lifecycle Updates Review" supplier status
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
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
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
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
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 10 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
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
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 20 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
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
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
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
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###Export/Import Compliance
    #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Click "No" for the Third Question
    # When Click on the NO for First question
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
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
    #Rule Without criteria
    And Refresh the current webpage
    Then Click on "Rule without criteria" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click on the Approve button on approval
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    Then Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Logout from the system
    Then Wait for 5 seconds
    #login to supplier
    And Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    When click on the calandar icon
    #Then select date "4" from the date
    #Then Enter reason "UAT" under "Please provide reason why you do not have VAT?" text box for VAT
    And Select "Limited Liability Company" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    ###Lifecycle Updates Review
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    #And Click "Go to details" button
    Then verify the status as "Lifecycle Updates Review"
    And Wait for 3 seconds
    Then Logout from the system
