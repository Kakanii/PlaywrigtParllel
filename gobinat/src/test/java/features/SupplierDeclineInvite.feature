Feature: Supplier Decline Invite feature

  #Supplier Decline Invite feature
  Background: Sanity Scenarios
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    
    
  @Smoke @SupplierDeclineInvite @TYSFunctionality 
  Scenario: As a Supplier, I should be able to decline my Invitation.
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #Without questionnaire
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
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on "here" link Email from maildrop
    And Wait for 25 seconds
    Then Switch to the active window
    And Wait for 15 seconds
    Then Enter "Decline" as reason for decline in "declineSupplierDescription"
    And Wait for 5 seconds
    When Click "Submit" button
    #And Verify toast message "You have successfully submitted the reason for declining the invite from IBM" successfully is shown
    And Wait for 10 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Verify declined reason is showing from buyer side in "declineSupplierDescription"
     Then Wait for 10 seconds
    And Logout from the system
    


  @Smoke @SupplierDeclineInvite 
  Scenario: As a Buyer, I should be able to see the supplier declined status after supplier declined invite
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #Without questionnaire
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
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on "here" link Email from maildrop
    And Wait for 25 seconds
    Then Switch to the active window
    And Wait for 15 seconds
    Then Enter "Decline" as reason for decline in "declineSupplierDescription"
    When Click "Submit" button
    #And Verify toast message "You have successfully submitted the reason for declining the invite from IBM" successfully is shown
    And Wait for 10 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Declined Invite"
    Then Wait for 10 seconds
    And Logout from the system
    

  @Smoke @SupplierDeclineInvite @TYSFunctionality 
  Scenario: As a Buyer, I should be able to re-send  an invite after supplier declined Invitation
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #Without questionnaire
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
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on "here" link Email from maildrop
    And Wait for 25 seconds
    Then Switch to the active window
    And Wait for 15 seconds
    Then Enter "Decline" as reason for decline in "declineSupplierDescription"
    When Click "Submit" button
    #And Verify toast message "You have successfully submitted the reason for declining the invite from IBM" successfully is shown
    And Wait for 10 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Declined Invite"
    When Click on "Reinvite Supplier" button on panel
    Then Wait for 3 seconds
    Then Select the existing liaison option
    When Click "Next" button
    When Click "Send Invite" button
    And Verify toast message "Supplier has been reinvited successfully" successfully is shown
    And Wait for 10 seconds
    Then verify the status as "Pending Invites"
    And Logout from the system
    And Wait for 10 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Wait for 5 seconds
    

  @Smoke @SupplierDeclineInvite 
  Scenario: As a Buyer, I should be able to re-send  an invite after supplier declined Invitation with new Liaison
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #Without questionnaire
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
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on "here" link Email from maildrop
    And Wait for 25 seconds
    Then Switch to the active window
    And Wait for 15 seconds
    Then Enter "Decline" as reason for decline in "declineSupplierDescription"
    When Click "Submit" button
    #And Verify toast message "You have successfully submitted the reason for declining the invite from IBM" successfully is shown
    And Wait for 10 seconds
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Declined Invite"
    When Click on "Reinvite Supplier" button on panel
    Then Wait for 3 seconds
    Then Select the "Add a new Liaison" liaison option
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    And Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    And Enter First Name on Invite a New User Modal "first name"
    And Enter Last Name on Invite a New User Modal "Last name"
    When Click "Next" button
    When Click "Send Invite" button
    And Verify toast message "Supplier has been reinvited successfully" successfully is shown
    And Wait for 10 seconds
    Then verify the status as "Pending Invites"
    And Logout from the system
    And Wait for 10 seconds
    #Then Verify received an email in re-invited supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Wait for 5 seconds
    

  @Smoke @SupplierDeclineInvite
  Scenario: As a Supplier, I should be able to cancel the declined invitation
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #Without questionnaire
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
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on "here" link Email from maildrop
    And Wait for 25 seconds
    Then Switch to the active window
    And Wait for 15 seconds
    Then Enter "Decline" as reason for decline in "declineSupplierDescription"
    When Click "Cancel" button
    And Wait for 10 seconds
    #And Enter timestamp in "Legal Business Name" field "Legal Business"
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
    And Navigate back to supplier
    And Navigate back to supplier
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Navigate forward to supplier
    And Navigate forward to supplier
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    And Enter "20001111" in "Zip Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "234509446" in "PO Box Zip Code" field after "Albania" supplier registration
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
    Then Wait for 5 seconds
    And Logout from the system
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Accepted"
    Then Wait for 10 seconds
    And Logout from the system