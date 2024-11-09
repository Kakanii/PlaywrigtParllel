Feature: OnHold functionality

  #OnHold functionality
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to see On-Hold labels and input values on supplier on connected suppliers page.

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    #Add on-hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    #Lables display
    Then Verify "Missing RBA contract" label is displaying under "Reason-On-Hold"
    And Verify "S&EMS incompliance" label is displaying under "Reason-On-Hold"
    And Verify "Pending Internal Approval" label is displaying under "Reason-On-Hold"
    And Verify "Contractual negotiation ongoing" label is displaying under "Reason-On-Hold"
    And Verify "Reputational investigation" label is displaying under "Reason-On-Hold"
    And Verify "Other" label is displaying under "Reason-On-Hold"
    #Button display
    Then Verify "Close" button is visible under "Reason-On-Hold"
    And Verify "Save" button is visible under "Reason-On-Hold"
    And Verify "Upload file" button is visible under "Reason-On-Hold"
    #Radio Button enable
    And Verify radio button "Missing RBA contract" is enabled for "Reason-On-Hold"
    And Verify radio button "S&EMS incompliance" is enabled for "Reason-On-Hold"
    And Verify radio button "Pending Internal Approval" is enabled for "Reason-On-Hold"
    And Verify radio button "Contractual negotiation ongoing" is enabled for "Reason-On-Hold"
    And Verify radio button "Reputational investigation" is enabled for "Reason-On-Hold"
    And Verify radio button "Other" is enabled for "Reason-On-Hold"
    #Button enable
    And Verify "Close" button is enabled under "Reason-On-Hold"
    And Verify "Save" button is enabled under "Reason-On-Hold"
    And Verify "Upload file" button is enabled under "Reason-On-Hold"
    #Tooltip
    And Show tooltip "Documents" for the label documents "You can attach one document to this request by clicking the button below and selecting a document."
    #Required error message
    When Click "Save" button
    Then Show "Comment" error message "Required" is diplaying
    When Click "Close" button
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Accepted Invite status
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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold @TYSFunctionality
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Accepted Invite status
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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove-On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Other on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Wait for 20 seconds
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Other on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #On-hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #On-hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Other on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
    #assign
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add-OnHold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #On-hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #On-hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as Other on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #On-Hold
    And Scroll horizontally
    And Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "On-Hold" for "Supplier"
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    And Verify the supplier is "On-Hold"
    When Click on the Search by supplier name and press Enter
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    When Click on My Suppliers Tab
    And Wait for 5 seconds
    And Scroll horizontally
    When Click on the same supplier name elipses button
    And Wait for 3 seconds
    When Click on button "Remove On-Hold" for "Supplier"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Scroll horizontally
    When Click on the same supplier name elipses button
    Then Verify button "On-Hold" is visible for "Supplier"
    And Scroll horizontally
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold @TYSFunctionality
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove-On-Hold on supplier on Action center and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier Action center and check the selected reason as Other on action center in notes section for the same supplier for Accepted Invite status

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
    #And Click on the Skip
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
    Then Wait for 5 seconds
    And Logout from the system
    #Login to buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier Action center and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Other on action center in notes section for the same supplier for Ready for Review status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on connected suppliers page by selection in elipses and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on Action center and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on Action center and check the selected reason as Other on action center in notes section for the same supplier for Return to Supplier status

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
    #And Click on the Skip
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    #Return to supplier
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Ready for Review"
    And Wait for 3 seconds
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
    And Navigate back to supplier
    And Wait for 5 seconds
    And Show status "Returned to Supplier" in Status "Returned To Supplier" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold @TYSFunctionality
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on Action center and check the selected reason as Missing RBA contract on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
    #assign
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
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    And Wait for 20 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    And Wait for 20 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    And Wait for 20 seconds
    When Click on at "Next Step" button
    And Wait for 20 seconds
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Go to details" button
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Missing RBA contract" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Missing RBA contract"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as S&EMS incompliance on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "S&EMS incompliance" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "S&EMS incompliance"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Pending Internal Approval on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Pending Internal Approval" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Pending Internal Approval"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold @TYSFunctionality
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier Action center and check the selected reason as Contractual negotiation ongoing on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Wait for 10 seconds
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Go to details" button
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Contractual negotiation ongoing" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Contractual negotiation ongoing"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Reputational investigation on action center in notes section for the same supplier for Profile Complete status

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
    #And Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Reputational investigation" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Reputational investigation"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system

  @Smoke @Supplier @SupplierOnHold @SanitySuiteCheck @SanityCheck
  Scenario: Verify, I Should be able to add On-Hold and Remove On-Hold on supplier on Action center and check the selected reason as Other on action center in notes section for the same supplier for Profile Complete status

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
    Then Wait for 3 seconds
    #with questionare
    And Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    And Select the "Automation" in Dropdown
    And Wait 10 seconds
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
    And Verify received an email in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
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
    Then select date "5" from the date
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
    Then Show attached document under "Certificate of Incorporation. This is a mandatory field." "samplePDF.pdf"
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
    #Then Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    #And Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    #And Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 35 seconds
    When Click on at "Next Step" button
    And Wait for 20 seconds
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
    Then Wait for 5 seconds
    #Login to buyer
    When Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Show status "Profile Complete" in Status "Profile Complete" dropdown from buyer side
    And Wait for 3 seconds
    #Add On-Hold
    When Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    When Click "Go to details" button
    And Wait for 3 seconds
    And Verify "On-Hold" button is visible under "Action Center"
    When Click "On-Hold" button
    And Click on radio button "Other" under for "Reason-On-Hold"
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been put on hold successfully" successfully is shown
    And Wait for 3 seconds
    Then Verify button "On-Hold" is visible for "Supplier"
    And Click on the Action Center
    Then Scroll the page
    And Verify the supplier On-Hold "Reason" selected is "Other"
    And Verify the supplier On-Hold "Comment" selected is "Accept"
    Then Wait for 3 seconds
    #Click on Remove On-Hold
    And Verify "Remove On-Hold" button is visible under "Action Center"
    When Click "Remove On-Hold" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click "Save" button
    And Verify toast message "Relationship has been removed from on hold successfully" successfully is shown
    And Verify "On-Hold" button is visible under "Action Center"
    And Logout from the system
