Feature: Supplier Status transition page

  #MySuppliers
  # @SupplierStatusNew MySuppliersearch
  Background: Login as a Buyer/Supplier
    Given Open the login page
    #When Wait 10 seconds
    Then Close the hotjar window

  ###Pending Invites
  @Regression @CDCI @SupplierStatusNew @QuickCheck
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Pending Invite Without Questionnaires
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Logout from the system

  ###Pending Invites
  @Regression @CDCI @SupplierStatusNew
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Pending Invite With Questionnaires
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
    Then Logout from the system

  ###Ready for review ### publish profile With Questionnaires
  @Regression @CDCI @SupplierStatusNew
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as RFR With Questionnaires and publish profile
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
    Then Wait for 15 seconds
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
    Then Wait for 5 seconds
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
     When Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    And verify the status as "Ready for Review"
    And Logout from the system

  ###Accepted Invite  ### Without Questionnaires Assign
  @Regression @CDCI @SupplierStatusNew
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Accepted Invite Without Questionnaires
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Wait 2 seconds
    When Click on the Skip
    When Wait 2 seconds
    When Click on the Skip
    When Wait 2 seconds
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
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
    Then Wait for 15 seconds
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 10 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    And Logout from the system

  ###Profile Complete
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Profile Complete
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    And verify the status as "Profile Complete"
    And Logout from the system

  ###Ready for Review
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready for Review
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Logout from the system
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Logout from the system

  ###Lifecycle Updates Review
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
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
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
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
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
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

  #Supplier Action Required
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, After Onboarded, As a Buyer, I should able to send an invite to the supplier and Verify the status as Supplier Action Required
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    When Click "Actions" button
    And Click on Return to Supplier button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    And Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    And Wait for 3 seconds
    And Logout from the system

  ###Ready for Review ##Returned to Supplier
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, After Onboarded, As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready for Review and Returned to Supplier
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
    And Enter Contact First Name on Invite Supplier window
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
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
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
    Then Enter phone number "9490491534" in "Phone Number" field
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Wait 5 seconds
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    And Click on Return to Supplier button with RFR status
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    And Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    And verify the status as "Supplier Action Required"
    #And Navigate back to supplier
    #And Wait for 5 seconds
    #And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    And Logout from the system

  ###Profile Complete  ## Return to Supplier status
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Profile Complete and Return to Supplier
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
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Logout from the system
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click "Go to details" button
    And verify the status as "Profile Complete"
    And Wait for 3 seconds
    Then Wait for 3 seconds
    And Click on Return to Supplier button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    Then verify the status as "Supplier Action Required"
    #And Navigate back to supplier
    #And Wait for 5 seconds
    #And Show status "Supplier Action Required" in Status "Supplier Action Required" dropdown from buyer side
    Then Wait for 3 seconds
    And Logout from the system

  #Onboarded after Supplier Action Required
  @Smoke @CDCI @SupplierStatusNew 
  Scenario: Scenario: As a Buyer, After Onboarded, As a Buyer, I should able to send an invite to the supplier and Verify the status as Onboarded after Supplier Action Required
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
    Then Wait for 5 seconds
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
    When Click "Actions" button
    Then Click on Return to Supplier button with RFR status
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    And Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    ###Supplier Action Required
    Then verify the status as "Supplier Action Required"
    And Wait for 3 seconds
    And Logout from the system
    #Enter same supplier login
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the action complete
    When Click on My Buyers Nav link
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "IBM" status is "Returned For Action"
    When Click on "IBM" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Action Complete" button
    Then Wait for 3 seconds
    And Enter the Notes under notes for buyer
    When Click "Confirm Action Complete" button
    #Then Show Confirmation toast message as " has successfully completed required actions."
    Then Wait for 5 seconds
    And Logout from the system
    And Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    Then Wait for 5 seconds
    And Show status "Ready For Review" in Status "Ready For Review" dropdown from buyer side
    When Click on the Search by supplier name and press Enter
    Then Wait for 5 seconds
    When Click "Go to details" button
    Then verify the status as "Ready for Review"
    #onboard process
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
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
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #Then Wait for 5 seconds
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    #And Wait for 3 seconds
    ###USL Search
    #Then Refresh the current webpage
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
    #Then add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #When Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    #And Wait for 3 seconds
    ###S&EMS Record created
    #And Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #And Refresh the current webpage
    #And Wait for 10 seconds
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    #And Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
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
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #Then Wait for 5 seconds
    #When Click on "pending" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    #And Wait for 10 seconds
    #custom fields before Onboard
    #Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
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
    Then Wait for 3 seconds
    And Refresh the current webpage
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    And Logout from the system

  ###Ready To Onboard

  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality @HotfixCheck @SanityCheck
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Ready To Onboard" supplier status
    When Enter data in Email Address field
      #Then Enter data in Email Address field
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Wait 10 seconds
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    When Wait 10 seconds
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
    Then Wait for 10 seconds
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 13 seconds
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Onboard process
    When Wait 5 seconds
    When Enter data in Email Address field
    #Then Enter data in Email Address field
    #When Click on Continue button on Login page
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
    ##When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    ##And Click on the NO for First question
    ##When Click "Attach Document" button
    ##Then Upload "PDF" under "Upload Document"
    ##And Enter "01/02/2021" in Expiry Date field
    ##And add label as "VATDOCUMENT"
    ##When Click on the Confirm button.
    ##And Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##Then Switch to the active window
    ##And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
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
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    Then Wait for 3 seconds
    Then Scroll Down the page
    Then Wait for 3 seconds
    When Click on the Submit button in SEMS Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
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
    ##When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    ##And Click on the YES for First question
    ##Then Enter the "Sample" for Second question in RBA/EICC Contract
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##And Switch to the active window
    ##And Switch to the parent window
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
    #Then Wait for 10 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    #When Click on the "USL Search" under Approval Source
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Buyer Internal assessment
    #When Click on "Buyer Internal assessment" in Approval Source "1"
    #When Click on the Approve button
    #Then Enter the Notes
    #And Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    ##DPL Search
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "EcoVadis IQ - Ecovadis" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Rule Without criteria
    And Refresh the current webpage
    Then Wait for 10 seconds
    Then Click on "Revalidation Review - USA and SPP" in Approval Source "1"
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
    And Wait for 5 seconds
    When Click on the Action Center
    And Wait for 10 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    Then Logout from the system

  ###Onboarded without questionnaire
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality @SanityCheck
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Onboarded" supplier status without questionnaire
    When Enter data in Email Address field
      #Then Enter data in Email Address field
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Wait 2 seconds
    When Click on the Skip
    When Wait 2 seconds
    When Click on the Skip
    When Wait 2 seconds
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
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
    Then Wait for 15 seconds
    When Click "Skip" button
    And Switch to the active window
    Then Wait for 10 seconds
    #When Click on Do it later button
    When Click "Basic Information" tab
    Then Wait for 5 seconds
    And click on the calandar icon
    Then Wait for 10 seconds
    Then select date "3" from the date
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
    Then Wait for 50 seconds
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
    When Enter data in Email Address field
    #Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    ##When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    ##And Click on the NO for First question
    ##When Click "Attach Document" button
    ##Then Upload "PDF" under "Upload Document"
    ##And Enter "01/02/2021" in Expiry Date field
    ##And add label as "VATDOCUMENT"
    ##When Click on the Confirm button.
    ##And Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##Then Switch to the active window
    ##And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
     And Refresh the current webpage
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
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
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    Then Wait for 3 seconds
    Then Scroll Down the page
    Then Wait for 3 seconds
    When Click on the Submit button in SEMS Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
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
    ##When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    ##And Click on the YES for First question
    ##Then Enter the "Sample" for Second question in RBA/EICC Contract
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##And Switch to the active window
    ##And Switch to the parent window
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
    #Then Wait for 10 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    #When Click on the "USL Search" under Approval Source
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Buyer Internal assessment
    #When Click on "Buyer Internal assessment" in Approval Source "1"
    #When Click on the Approve button
    #Then Enter the Notes
    #And Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    ##DPL Search
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "EcoVadis IQ - Ecovadis" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Rule Without criteria
    And Refresh the current webpage
    Then Wait for 10 seconds
    Then Click on "Revalidation Review - USA and SPP" in Approval Source "1"
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
    When Click on the Action Center
    And Wait for 10 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Onboarded"
    And Wait for 3 seconds
    And Logout from the system

  ###onboarded ### With Questionnaires
  @Regression @CDCI @SupplierStatusNew 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Onboard With Questionnaires
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
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
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
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
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
    Then Wait for 5 seconds
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Logout from the system

  ###Profile Complete  ## Ready To Onboard
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after Profile Complete
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
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    And verify the status as "Profile Complete"
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
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
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
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
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
    #Then Wait for 5 seconds
    #Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on the Action Center
    When Click on table view button
    Then verify the table view updated with status "Ready To Onboard"
    Then Logout from the system

  ###Return to supplier ##Ready to Onboard
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after Click on Return to Supplier after onboard
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
    #When Click on Do it later button
    Then Wait for 5 seconds
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
    And click on the calandar icon
    Then Wait for 10 seconds
    Then select date "3" from the date
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
    And Wait for 5 seconds
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
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
    #custom fields before Onboard
    #And Wait for 3 seconds
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
    #Return to supplier
    And Click on Return to Supplier button
    And Switch to the active window
    And Wait for 2 seconds
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    And Click on Confirm Return to Supplier button
    And Wait for 3 seconds
    #Undo Return to supplier
    When Click on Undo Return to Supplier button
    And Enter notes on the return to supplier modal
    #Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Undo Return on the return to supplier modal
    When Click "Confirm Undo Return to Supplier" button
    And Wait for 5 seconds
    #Verify the status
    Then verify the status as "Ready To Onboard"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    Then Logout from the system

  ###Revalidation Review ##Ready to Onboard
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after Revalidation Review completed
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
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
    #Complete actions
    When Click on "IBM" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Action Complete" button
    Then Enter the Notes under notes for buyer Notes Box
    When Click "Confirm Action Complete" button
    Then Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Replace this Document?" button
    Then Upload "PDF" under "Replace Document"
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
    #When Click "Replace this Document?" button
    #Then Upload "PDF" under "Replace Document"
    #And Enter "01/03/2022" in Expiry Date field
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
    #When Click "Replace this Document?" button
    #Then Upload "PDF" under "Replace Document"
    #And Enter "01/03/2022" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample123" for Second question in RBA/EICC Contract
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
    And Refresh the current webpage
    And Wait for 10 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #Verify status from Action center
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    Then Logout from the system

  ###On-Hold ##Ready to Onboard
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after removing On-Hold from Ready for review
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
    Then Wait for 5 seconds
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
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
    Then Click "Actions" button
    And Click on "On-Hold" div button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
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
    #And Wait for 10 seconds
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
    Then verify the status as "Ready for Review"
    Then Wait for 3 seconds
    #Remove On-Hold
    Then Click "Actions" button
    And Click on "Remove On-Hold" div button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    Then Wait for 5 seconds
    And Refresh the current webpage
    Then Wait for 5 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #Verify status from Action center table
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    Then Logout from the system

  ## Ready To Onboard ##Re-assign questionnaire after publish
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard when Re-assign questionnaire after publish
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
    Then Wait for 5 seconds
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
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And verify the status as "Profile Complete"
    And Scroll the page
    And Wait for 5 seconds
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
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
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
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
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
    And Switch to the active window
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
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #Verify status on Action center
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    #re-assign questionnare
    When Click "Profile" button
    And Wait for 3 seconds
    When Click "Manage / Assign Questionnaires" button
    And Wait for 3 seconds
    When Click on "Add" button "Import Export Compliance - IBM"
    And Wait for 3 seconds
    When Click "Update" button
    And Verify toast message "Questionnaires have been successfully updated" successfully is shown
    Then Navigate back to supplier
    And Wait for 5 seconds
    Then verify the status as "Profile Complete"
    #Verify status on Action center
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Profile Complete"
    And Wait for 3 seconds
    Then Logout from the system
    #Login to same supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "Yes" for question "IBM requires its suppliers to comply with all legal and regulatory requirements, and certain IBM operational requirements, when shipping goods to IBM globally, and when IBM is Importer of Record for the goods. " in question "1"
    Then Wait for 5 seconds
    Then Click "Publish Questionnaire" button 2
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    And Wait for 10 seconds
    Then Logout from the system
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 5 seconds
    And Click "Go to details" button
    And verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #Verify status on Action center
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Ready To Onboard"
    And Wait for 3 seconds
    Then Logout from the system

  ###On-Hold ##Ready to Onboard #Onboard Supplier disabled
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after removing On-Hold Onboard supplier disabled
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
    ##USL Search
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
    ##S&EMS Record created
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
    ##Buyer Internal assessment
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
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
    #And Wait for 3 seconds
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Wait for 3 seconds
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
    And Refresh the current webpage
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
    Then Wait for 3 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #OnHold
    Then Click "Actions" button
    And Click on "On-Hold" div button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Scroll the page
    And Wait for 5 seconds
    And Refresh the current webpage
    And Wait for 5 seconds
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    And Verify "Onboard Supplier" button is disabled
    And Verify "On-Hold tag should be removed to onboard a supplier" is displaying under "Onboard Supplier"
    #Remove On-Hold
    Then Click "Actions" button
    And Click on "Remove On-Hold" div button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    Then Wait for 5 seconds
    And Refresh the current webpage
    And Wait for 5 seconds
    Then verify the status as "Ready To Onboard"
    And Verify "Onboard Supplier" button is enabled
    Then Logout from the system


  ###Onboard supplier disabled ##Ready to Onboard ##Add block
  @Smoke @CDCI @SupplierStatusNew @TYSFunctionality 
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Ready To Onboard after Add block and Onboard supplier disabled
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
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
    And Refresh the current webpage
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
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
    #Complete actions
    When Click on "IBM" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Action Complete" button
    Then Enter the Notes under notes for buyer Notes Box
    When Click "Confirm Action Complete" button
    Then Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Replace this Document?" button
    Then Upload "PDF" under "Replace Document"
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
    #When Click "Replace this Document?" button
    #Then Upload "PDF" under "Replace Document"
    #And Enter "01/03/2022" in Expiry Date field
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
    #When Click "Replace this Document?" button
    #Then Upload "PDF" under "Replace Document"
    #And Enter "01/03/2022" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample123" for Second question in RBA/EICC Contract
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    #Rule Without criteria
    #And Refresh the current webpage
    #Then Click on "Rule without criteria" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click on the Approve button on approval
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
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
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    #Add Block
    Then Click "Actions" button
    And Click on "Add Block" div button
    And Wait for 3 seconds
    And Click on "Reputational risk" tab for "Add Block"
    Then Enter the Notes under the accepth buyer Notes Box
    And Wait for 3 seconds
    When Click "Save" button
    And Verify toast message "Relationship has been blocked successfully" successfully is shown
    And Wait for 3 seconds
    And Verify button "Blocked" is visible for "Supplier"
    #Verify status
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    And Verify "Onboard Supplier" button is disabled
    And Verify "Blocked flag should be removed to onboard the supplier." is displaying under "Onboard Supplier"
    #Click on Remove On-Hold
    Then Click "Actions" button
    When Click on "Unblock" div button
    And Wait for 3 seconds
    And Click on "Reputational risk" tab for "Un Block"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been unblocked successfully" successfully is shown
    And Wait for 5 seconds
    Then verify the status as "Ready To Onboard"
    And Verify "Onboard Supplier" button is enabled
    Then Logout from the system

  ###Pending Invites in Action center
  @Regression @CDCI @SupplierStatusNew @QuickCheck @TYSFunctionality @SanityCheck
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Pending invite" supplier status
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "First Invitation Sent"
    And Wait for 3 seconds
    And Logout from the system

  ###Accepted Invite in Action center
  @Regression @CDCI @SupplierStatusNew @TYSFunctionality @SanityCheck
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Accepted" supplier status
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #Without questionnaire
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 10 seconds
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
    And Wait for 3 seconds
    And Logout from the system
    And Wait for 5 seconds
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    When Click on the same supplier name and press Enter
    Then Wait for 3 seconds
    And verify the status as "Accepted"
    When Click on the Action Center
    And Wait for 5 seconds
    When Click on table view button
    And Wait for 3 seconds
    Then verify the table view updated with status "Invitation Accepted"
    And Wait for 3 seconds
    And Logout from the system
