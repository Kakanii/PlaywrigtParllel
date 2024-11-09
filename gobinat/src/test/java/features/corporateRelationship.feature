Feature: Corporate Relationships page

  #CR
  Background: Login as a supplier
    Given Open the login page
    Then Close the hotjar window

  @Regression @CR @Supplier
  Scenario: Verify if the user is able to see the Title change as Corporate Relationships
    Then Enter "testsupplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Relationships on Profile page
    Then Show as title "Corporate Relationships"
    And Logout from the system

  @profilrpublish @CR @Supplier
  Scenario: Verify Corporate Relations basic functionality for existing supplier
    Then Enter "testsupplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio status under "Is your organization part of a corporate group?"
    And Verify "No" radio status under "Is your organization part of a corporate group?"
    When Click "No" radio under "Is your organization part of a corporate group?"
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Verify Add Corporate Relationship modal visibility
    Then Verify question on CR screen "How many companies do you want to add/invite?" "true"
    And Verify "Add One" radio visibiity under "How many companies do you want to add/invite?" is "true"
    And Verify "Add Multiple" radio visibiity under "How many companies do you want to add/invite?" is "true"
    And Verify "Add One" radio status under "How many companies do you want to add/invite?" is "true"
    And Verify "Add Multiple" radio status under "How many companies do you want to add/invite?" is "true"
    And Show "Supplier Company Name" Label
    And Show "Supplier Company Name" input text field
    And Verify "Supplier Company Name" input text field enabled
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    And Show "Supplier Country of Registration" Label
    And Show Supplier Country of Registration dropdown
    And Verify Supplier Country of Registration dropdown enabled
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    And Show "Cancel" button
    And Verify "Cancel" button clickable
    Then Click "Proceed" button
    And Verify "firstName" field visibility
    And Verify "firstName" field status
    Then Enter "firstName" as "John" on management window
    And Verify "lastName" field visibility
    And Verify "lastName" field status
    Then Enter "lastName" as "Wick" on management window
    And Verify "email" field visibility
    And Verify "email" field status
    Then Enter Email address in Contact Email Address field in Add CR modal
    And Verify "confirmEmail" field visibility
    And Verify "confirmEmail" field status
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    And Verify "Preferred Language" dropdown visibillity
    And Verify "Preferred Language" dropdown status
    And Verify "do it later" button visibility
    And Verify the "do it later" button clickable on add cr
    Then Click "Proceed" button
    And Verify Company Name in preview section
    And Verify Supplier Country of Registration in preview section "Estonia"
    And Verify Contact First Name in preview section "John"
    And Verify Contact Last Name in preview section "Wick"
    And Verify Contact Email Address in preview section
    And Verify Contact Preferred Language in preview section "English"
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    Then Verify question on CR screen "Is your organization part of a corporate group?" "false"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "false"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "false"
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    #Then Verify received an email in supplier maildrop Inbox with subject "join Trust Your Supplier and establish a corporate group"
    Then Wait for 5 seconds
    #maildrop
    Then Click on "joinandconnect" checkbox
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    #When Click on Sign In button
    Then Enter "testsupplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Relationships on Profile page
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "true"
    Then Logout from the system

  @CR @Supplier @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify Corporate Relations basic functionality for new supplier
    When Enter Redhat buyer in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select Estonia from the dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 10 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
    Then Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Wait for 3 seconds
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    ########################################
    #	When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    ##########################################
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio status under "Is your organization part of a corporate group?"
    And Verify "No" radio status under "Is your organization part of a corporate group?"
    When Click "No" radio under "Is your organization part of a corporate group?"
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Verify Add Corporate Relationship modal visibility
    Then Verify question on CR screen "How many companies do you want to add/invite?" "true"
    And Verify "Add One" radio visibiity under "How many companies do you want to add/invite?" is "true"
    And Verify "Add Multiple" radio visibiity under "How many companies do you want to add/invite?" is "true"
    And Verify "Add One" radio status under "How many companies do you want to add/invite?" is "true"
    And Verify "Add Multiple" radio status under "How many companies do you want to add/invite?" is "true"
    And Show "Supplier Company Name" Label
    And Show "Supplier Company Name" input text field
    And Verify "Supplier Company Name" input text field enabled
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    And Show "Supplier Country of Registration" Label
    And Show Supplier Country of Registration dropdown
    And Verify Supplier Country of Registration dropdown enabled
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    And Show "Cancel" button
    And Verify "Cancel" button clickable
    Then Click "Proceed" button
    And Verify "firstName" field visibility
    And Verify "firstName" field status
    Then Enter "firstName" as "John" on management window
    And Verify "lastName" field visibility
    And Verify "lastName" field status
    Then Enter "lastName" as "Wick" on management window
    And Verify "email" field visibility
    And Verify "email" field status
    Then Enter Email address in Contact Email Address field in Add CR modal
    And Verify "confirmEmail" field visibility
    And Verify "confirmEmail" field status
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    And Verify "Preferred Language" dropdown visibillity
    And Verify "Preferred Language" dropdown status
    And Verify "do it later" button visibility
    And Verify the "do it later" button clickable on add cr
    Then Click "Proceed" button
    And Verify Company Name in preview section
    And Verify Supplier Country of Registration in preview section "Estonia"
    And Verify Contact First Name in preview section "John"
    And Verify Contact Last Name in preview section "Wick"
    And Verify Contact Email Address in preview section
    And Verify Contact Preferred Language in preview section "English"
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    Then Verify question on CR screen "Is your organization part of a corporate group?" "false"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "false"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "false"
    Then Wait for 5 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    #Then Verify received an email in supplier maildrop Inbox with subject "join Trust Your Supplier and establish a corporate group"
    Then Wait for 10 seconds
    #maildrop
    Then Click on "joinandconnect" checkbox
    Then Wait for 10 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    #Then Click on Do it later button
    Then Wait for 5 seconds
    #Then Click accept IBM registration checkbox
    #Then Click "Finish" button
    Then Wait for 10 seconds
    #Then Wait for 5 seconds
    #Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on Corporate Relationships on Profile page
    And Click "Corporate Relationships" tab
    Then Wait for 15 seconds
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "true"
    Then Logout from the system

  #Then Enter "John" in "Contact's First Name" field
  # And Verify "Contact's Last Name" Label visibility
  # Then Enter "Wick" in "Contact's Last Name" field
  #And Verify "Contact's Email Address" Label visibility
  #Then Enter "email" as "vodafonehealthmanager@maildrop.cc" on management window
  #And Verify "Confirm Contact's Email Address" Label visibility
  #Then Enter "confirmEmail" as "vodafonehealthmanager@maildrop.cc" on management window
  # And Verify "Contact's Preferred Language" Label visibility
  #precondition should be supplier has no exisiting CR invites
  @Regression @CR @Supplier
  Scenario: Verify Selection of radio "Yes" while adding CH is saved even if Supplier Invitation to join CH is not sent
    Then Enter "testsupplier1" supplier in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Wait for 10 seconds
    And Click on "Cancel" button
    # Then Logout from the system
    #Then Wait for 5 seconds
    #When Enter supplier email in Email Address field "dey3zqvoopvtltd@maildrop.cc"
    #And Click on Continue button on Login page
    #And Enter data in Password field
    #And Click on Sign In button on Login
    #And Click "Corporate Relationships" tab
    #And Wait for 5 seconds
    Then Verify "Yes" radio is selected under "Is your organization part of a corporate group?"
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify Confirmation dialog when user declines to join C-Bubble
    Then Enter "testsupplier1" supplier in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    #And Verify CR invitation email with subject line "join Trust Your Supplier and establish a corporate group"
    #Then Click on the email with subject "join Trust Your Supplier and establish a corporate group"
    #Then Click on Join Now Link in the CR invitation Email
    Then Switch to the active window
    Then Click on Declined
    Then Wait for 10 seconds
    Then Switch to the new opened tab
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Wait for 5 seconds
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "testsupplier1" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Declined"
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify if suplier moves out of existing C-bubble when supplier joins a new C-bubble
    Then Enter "cr1supplier" supplier in Email Address field
    #When Enter supplier email in Email Address field "souxy2mgepvtltd@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    Then Click on "joinandconnect" checkbox
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr1supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    ##And Verify Supplier status under Status column "Invite Sent"
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr2supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Wait for 5 seconds
    Then Enter same CR Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 5 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    Then Select "Estonia" in Supplier Country of Registration dropdown
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "VIKRAMA" on management window
    Then Enter "lastName" as "Wick" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter new CR Email in Email field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify "Invite Accepted" Status under "Linked Companies" tab
    Then Click "Invitation Received" tab in Customer Relations page
    And Verify "Pending" Status under "Invitation Received" tab
    And Verify Accept button in Invitation received tab in CR page
    And Verify Decline button in Invitation received tab in CR page
    Then Click Accept button in Invitation received tab in CR page
    Then Click "Accept Invite" button
    And Show Confirmation dialog box "Are you sure you want to leave an existing group and join a new group?"
    Then Click "Yes" button
    Then Wait for 10 seconds
    Then Logout from the system
    ## Jira: SLYN-21105
    #Given Start the application
    #When Click on Sign In button
    #When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    # And Click "Corporate Relationships" tab
    #Then Wait for 10 seconds
    #Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    #Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr1supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify Supplier status under Status column "Left"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr2supplier" supplier in Email Address field
    # When Enter supplier email in Email Address field "leqerfo2upvtltd@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify Supplier status under Status column "Invite Accepted"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @Supplier @TYSFunctionality
  Scenario: Verify the Cr Invited status as Profile publish
    Then Enter "testsupplier1" supplier in Email Address field
    #When Enter supplier email in Email Address field "souxy2mgepvtltd@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 10 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 10 seconds
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    Then Click on "joinandconnect" checkbox
    Then Wait for 10 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
   # Then Click accept IBM registration checkbox
    #Then Click "Finish" button
    #Then Wait for 10 seconds
    #Then Click "Skip" button
    #Then Wait for 10 seconds
  # Then Click on Do it later button
   # Then Wait for 5 seconds
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter "EE" followed by 9 numbers in "EU VAT Registration Number" field under "Tax Details"
    #Then Enter 11 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "The Private Limited Company (OÜ)" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 5 seconds
    When Enter Stock Exchange Symbol "Moodys supplier"
    Then Wait for 5 seconds
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
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on Find ID button
    Then Wait for 13 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "vikraaam Pragyaan - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "vikraaam Pragyaan - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "vikraaam Pragyaan - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "vikraaam Pragyaan - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify "Invite Accepted" Status under "Linked Companies" tab
    Then Wait for 5 seconds
    Then Click on the Save and Continue button
    Then Wait for 5 seconds
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button on the Review screen
    #supplier should publish the questionnaire
    Then Wait for 15 seconds
    #supplier should publish the questionnaire
    And Logout from the system
    Then Enter "testsupplier1" supplier in Email Address field
    #When Enter supplier email in Email Address field "souxy2mgepvtltd@maildrop.cc"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 5 seconds
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Profile Published"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify List of suppliers in the Corporate Relations in Supplier and Buyer views
    Then Enter "cr3supplier" supplier in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    Then Click on "joinandconnect" checkbox
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr3supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    ##And Verify Supplier status under Status column "Invite Sent"
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr2supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Wait for 5 seconds
    Then Enter same CR Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 5 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    Then Select "Estonia" in Supplier Country of Registration dropdown
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "First Name" on management window
    Then Enter "lastName" as "Last Name" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter new CR Email in Email field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify "Invite Accepted" Status under "Linked Companies" tab
    Then Click "Invitation Received" tab in Customer Relations page
    And Verify "Pending" Status under "Invitation Received" tab
    And Verify Accept button in Invitation received tab in CR page
    And Verify Decline button in Invitation received tab in CR page
    Then Click Accept button in Invitation received tab in CR page
    Then Click "Accept Invite" button
    And Show Confirmation dialog box "Are you sure you want to leave an existing group and join a new group?"
    Then Click "Yes" button
    Then Wait for 10 seconds
    Then Logout from the system
    ## Jira: SLYN-21105
    #Given Start the application
    #When Click on Sign In button
    #When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    # And Click "Corporate Relationships" tab
    #Then Wait for 10 seconds
    #Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    #Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr3supplier" supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify Supplier status under Status column "Left"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter "cr2supplier" supplier in Email Address field
    # When Enter supplier email in Email Address field "leqerfo2upvtltd@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    And Verify Supplier status under Status column "Invite Accepted"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @RsdssD
  Scenario: Test
    Then Show "Automationtest-InviteSent" supplier with "Invite Sent" status "true"
    Then Show "Automationtest-Accepted" supplier with "Invite Accepted" status "true"
    Then Show "Automationtest-Profile Complet..." supplier with "Profile Published" status "true"
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "autocr3@mailinator.com" in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Show "Automationtest-InviteSent" supplier with "Invite Sent" status "false"
    Then Show "Automationtest-Accepted" supplier with "Invite Accepted" status "true"
    Then Show "Automationtest-Profile Complet..." supplier with "Profile Published" status "true"
    Then Click "Automationtest-Accepted" supplier with "Invite Accepted" status
    Then Wait for 10 seconds
    And Verify Supplier Profile page is openend "Automationtest-Accepted"
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify the visibility of toast message stating the presence of an invitee organization who is already added to the CR
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    Then Click "Add Corporate Relationship" button
    Then Enter same CR Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Show Toast message "The Entity you are trying to add is already a member of your corporate group."
    Then Close toast message
    Then Click "Cancel" button
    #Then Close Add Corporate Relationship modal
    Then Wait for 5 seconds
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @CR @Supplier @#issue
  Scenario: As a Supplier, I should able to edit my incomplete corporate relationship invite and be able to modify the invitation details
    Then Enter supplier email in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Click "Corporate Relationships" tab
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Click "do it later" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And Verify Supplier status under Status column "Contact Needed"
    #  Then Logout from the system
    #Then Enter supplier email in Email Address field
    #  And Click on Continue button on Login page
    #And Enter data in Password field
    # And Click on Sign In button on Login
    #And Click "Corporate Relationships" tab
    Then Click on Add & Invite contact icon
    # Then Click "Add Corporate Relationship" button
    #added company and country to avoid the bug#28874
    Then Enter same CR Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    And verify Supplier added under Supplier Name column
    And Veify supplier country under Tax Country column "Estonia"
    And Verify Supplier status under Status column "Invite Sent"
    Then Wait for 10 seconds
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify if the supplier is able view list of companies in corporate relationship
    Then Enter supplier email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "vikraaam" on management window
    Then Enter "lastName" as "Pragyaan" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    #Then Click on Corporate Relationships on Profile page
    #Then Show Corporate Relationship page "true"
    Then Show as title "Corporate Relationships"
    Then View Linked companies title "true"
    Then Supplier should be able to view list of companies "true"
    Then Wait for 5 seconds
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify if the supplier status is Invite Sent if the supplier is invited and not yet joined
    Then Enter data in Email Address field
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
    #select Estonia from the dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
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
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    ########################################
    #	When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    ##########################################
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "John" on management window
    Then Enter "lastName" as "Wick" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    And Verify the "do it later" button clickable on add cr
    Then Click "Proceed" button
    And Verify Company Name in preview section
    Then Click "Proceed" button
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    Then Wait for 5 seconds
    And Verify Supplier status under Status column "Invite Sent"
    #Then Verify "Invite Sent" in status Corporate Relationships page
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite

  @Regression @CR @Supplier
  Scenario: Verify if supplier status is Invite Accepted, if supplier has joined but not published profile
    Then Enter data in Email Address field
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
    #select Estonia from the dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
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
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    ########################################
    #	When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    ##########################################
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Enter "firstName" as "John" on management window
    Then Enter "lastName" as "Wick" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    And Verify the "do it later" button clickable on add cr
    Then Click "Proceed" button
    And Verify Company Name in preview section
    Then Click "Proceed" button
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    #Then Verify received an email in supplier maildrop Inbox with subject "join Trust Your Supplier and establish a corporate group"
    Then Wait for 5 seconds
    #maildrop
    Then Click on "joinandconnect" checkbox
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on Corporate Relationships on Profile page
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    Then Logout from the system

  @Regression @CR @Supplier
  Scenario: Verify if Supplier is able to invite corporate company without adding contact details
    Then Enter data in Email Address field
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
    #select Estonia from the dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
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
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    ########################################
    #	When Enter supplier email in Email Address field "autocr@mailinator.com"
    ##Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    ##########################################
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    Then Click "Proceed" button
    Then Click on Do it later button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    #Then Click on do it later button in corporate relations
    # And Click "Save" button
    Then Verify "Contact Needed" in status Corporate Relationships page
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds

  @suppliernotification
  Scenario: Verify the CR joined notification on supplier
    Then Enter data in Email Address field
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
    #select Italy from teh dropdown
    Then Select "Estonia" in "Supplier Country of Registration" dropdown
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
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Click on Password tooltip icon
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Notifications tab clickable on supplier Dashboard page "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "Welcome to Trust Your Supplier" in notifications
    Then Click "Corporate Relationships" tab
    Then Wait for 10 seconds
    Then Switch to the active window
    When Click "No" radio under "Is your organization part of a corporate group?"
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    When Click "Yes" radio under "Is your organization part of a corporate group?"
    Then Verify Add Corporate Relationship modal visibility
    Then Enter Company Name in "Supplier Company Name" field "Supplier"
    Then Wait for 15 seconds
    Then Click on "ignoreandproceed" chkbox
    Then Click "Proceed" button
    #Then Click on search box
    Then Wait for 5 seconds
    And Show "Supplier Country of Registration" Label
    And Show Supplier Country of Registration dropdown
    And Verify Supplier Country of Registration dropdown enabled
    Then Select "Estonia" in Supplier Country of Registration dropdown
    Then Wait for 5 seconds
    And Show "Cancel" button
    And Verify "Cancel" button clickable
    Then Click "Proceed" button
    Then Enter "firstName" as "John" on management window
    Then Enter "lastName" as "Wick" on management window
    Then Enter Email address in Contact Email Address field in Add CR modal
    Then Enter same Email address in Confirm Contact Email Address field in Add CR modal
    Then Click "Proceed" button
    Then Click "Proceed" button
    Then Wait for 10 seconds
    Then Wait for 10 seconds
    #Then Verify green tick icon on "Corporate Relationships" tab "true"
    Then Logout from the system
    Then Verify received an email in maildrop Inbox with subject "to join Trust Yo" for CR invite
    #Then Verify received an email in supplier maildrop Inbox with subject "join Trust Your Supplier and establish a corporate group"
    Then Wait for 5 seconds
    #maildrop
    Then Click on "joinandconnect" checkbox
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter value for City " Tirana"
    Then Enter "Saree" in "District" field
    Then Select "Tartu" in "Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 15 seconds
    Then Click on Corporate Relationships on Profile page
    And Click "Corporate Relationships" tab
    And Verify Supplier status under Status column "Invite Accepted"
    Then Click "Exit Group" button
    Then Enter reason in Exit Group text area
    Then Click on "Submit" button
    Then Wait for 10 seconds
    Then Verify question on CR screen "Is your organization part of a corporate group?" "true"
    And Verify "Yes" radio visibiity under "Is your organization part of a corporate group?" "true"
    And Verify "No" radio visibiity under "Is your organization part of a corporate group?" "true"
    Then Click on Notifications on Supplier Dashboard page "true"
    #verifying tabs
    Then Click on "All Notifications" tab on supplier notification
    Then Show "has joined your Corporate Group." in notifications
    #Then Show "has left your Corporate Group." in notifications
    Then Logout from the system
