Feature: Save Draft

  Background: Login as supplier
     Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @Supplier @SaveDraft @CDCI @QuickSanity
  Scenario: Verify Save Draft button is clickable and show toast message when clicked on basic information page
    Then Enter data in Email Address field "savedraftautomation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information on Dashboard page "true"
    Then "Save Draft" button 3 clickable "true"
    Then Click "Save Draft" button 3
    #Then Click "Save Draft" button 3
    #Then Show Toast message "Basic Information has been saved successfully"
    Then Logout from the system

  @Smoke @Supplier @saveDraft @CDCI @QuickSanity
  Scenario: Verify Basic information Page Click on Save Draft button initially and it should not show any validation and error messages in the feilds
    Then Enter data in Email Address field "savedraftautomation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information on Dashboard page "true"
    Then "Save Draft" button 3 clickable "true"
    Then Click "Save Draft" button 3
    #Then Click "Save Draft" button 3
    #Then Show Toast message "Basic Information has been saved successfully"
    Then Verify no error message is displayed under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Certificate of Incorporation" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Logout from the system

  @Smoke @Supplier @saveDraft @CDCI @QuickSanity @SanitySuiteCheck @SanityCheck
  Scenario: Verify Basic information Page Save Draft by entering values in the fields
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
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
    Then Wait for 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Switch to "new TYS" tab
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #Verify Company page on registration
    #Enter data
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
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
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "United States of America" is Pre populated with country
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    Then Enter the Description on the Basic information page
    Then "Save Draft" button 3 clickable "true"
    Then Click "Save Draft" button 3
    #Then Click "Save Draft" button 3
    #Then Show Toast message "Basic Information has been saved successfully"
    Then Logout from the system

  @Smoke @Supplier @saveDraft @CDCI @QuickSanity
  Scenario: Verify Basic information Page Save Draft by updating the exisitng fields
    Then Enter data in Email Address field "savedraftautomation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information on Dashboard page "true"
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Click "Save Draft" button 3
    #Then Show Toast message "Basic Information has been saved successfully"
    Then Logout from the system

  @Smoke @saveDraft @Supplier @CDCI @QuickSanity
  Scenario: Verify Basic information Page Once all mandatory fields are filled and user click on Save and Continue, each section in Profile should be highlighted with green tick mark.
    Then Enter data in Email Address field "savedraftautomation@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Basic Information on Dashboard page "true"
    Then Enter the Description on the Basic information page
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page       
    Then Click "Save and Continue" button
    Then Logout from the system

