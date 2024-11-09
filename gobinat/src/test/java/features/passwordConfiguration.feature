Feature: Password Configuration Supplier and Buyer

  # Created issue for Internal server error on QA at verification code https://itpeople.atlassian.net/browse/SLYN-13355
  # Password
  #PasswordConfig  PasswordChange
Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @Password @PasswordConfig @Buyer @QuickSanity @QuickCheck
  Scenario: Verify title in the Password Configuration of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Show the page title "Password Configuration"
    Then Logout from the system

  @Regression @Password @PasswordConfig @Buyer
  Scenario: Verify Labels and tooltip in the Password Configuration of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Show "Reset Password (days)" Label
    Then Show "Notify user before (days)" Label
    Then Show "Reset Password (days)" tooltip "Enter the number of days to force a password reset."
    Then Show "Notify user before (days)" tooltip "Enter the number of remaining days to notify the user that their password needs to be reset."
    Then Logout from the system

  @Smoke @Password @PasswordConfig @Buyer @QuickSanity
  Scenario: Verify Default values in the Password Configuration of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
     # It should be 90
    Then Wait for 5 seconds
    Then Verify the value "100000000000000000" at "passwordResetDays" input field
    Then Verify the value "8" at "passwordResetNotificationDays" input field
    Then Logout from the system    

  @Regression @Password @PasswordConfig @Buyer
  Scenario: Verify Required fields in the Password Configuration fields of Buyer
    When Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    #Then Select domain from the dropdown on Invite a New User Modal "@maildrop.cc"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 10 seconds
    #Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Wait for 5 seconds
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    Then Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    #Then Click TYS Terms & Conditions checkbox
    Then Click "Continue" button
    Then Switch to "Maildrop" tab
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 5 seconds
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same Buyer Email registered
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "0" in "Reset Password (days)" field
    Then Enter "0" in "Notify user before (days)" field
    Then Show error message "Required" under "Reset Password (days)" field
    Then Logout from the system

  # email notification not trigered
  #@Smoke @Password @PasswordConfig @Buyer
  Scenario: Verify if email notification is generated when Password Configuration changes are made on Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    #Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "8" in "Reset Password (days)" field
    Then Enter "8" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Then Verify Email received with subject "Trust Your Supplier : Password expiry notification"
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "365" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "Trust Your Supplier : Password expiry notification"

  @Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify notification when Reset password less than the Notify user before days in the Password Configuration of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    #Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter password in "Password" field
    Then Enter password in "Confirm Password" field
    Then Click TYS Buyer admin Terms & Conditions checkbox
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same Buyer Email registered
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link
    Then Enter "4" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    # This element might be inside iframe from different src. Currently ChroPath doesn't support for them.
    #Then Show Toast message "Reset password days should be greater then notify user before days"
    Then Logout from the system
    

  @Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify title in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on Collapse Icon for Suppliers
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show the page title "Password Configuration"
    Then Logout from the system

  @Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify Labels and tooltip in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on Collapse Icon for Suppliers
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Show "Reset Password (days)" Label
    Then Show "Notify user before (days)" Label
    Then Show "Reset Password (days)" tooltip "Enter the number of days to force a password reset."
    Then Show "Notify user before (days)" tooltip "Enter the number of remaining days to notify the user that their password needs to be reset."
    Then Logout from the system

  @Regression @Password @PasswordConfig @Supplier
  Scenario: Verify Default values in the Password Configuration of Supplier
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on Collapse Icon for Suppliers
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Wait for 5 seconds
    Then Verify the value "1000000000000000" at "passwordResetDays" input field
    Then Verify the value "7" at "passwordResetNotificationDays" input field
    Then Logout from the system

  #@Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify same values in the Password Configuration fields of Supplier
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    ###Then Click "Continue" button
    Then Wait for 15 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "12345-6789" in "Zip Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "27" in "Reset Password (days)" field
    Then Enter "27" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "365" in "Reset Password (days)" field
    Then Enter "7" in "Notify user before (days)" field
    Then Logout from the system

  #@Regression @Password @PasswordConfig @Supplier
  Scenario: Verify Required fields in the Password Configuration fields of Supplier
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    ###Then Click "Continue" button
    Then Wait for 15 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "123456789" in "Zip Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter value "0" in "Reset Password (days)" password field
    Then Click on Password Configuration nav link on supplier
    Then Show error message "Required" under "Reset Password (days)" field
    Then Enter value "0" in "Notify user before (days)" password field
    Then Click on Password Configuration nav link on supplier
    Then Show error message "Required" under "Notify user before (days)" field
    Then Logout from the system
    

  # email notification not trigered Trust Your Supplier : Password expiry notification
 # @Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify if email notification is generated when Password Configuration changes are made on Supplier
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "123456789" in "Zip Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Wait for 10 seconds
    Then Click on Do it later button
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "8" in "Reset Password (days)" field
    Then Enter "8" in "Notify user before (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Password Configuration updated successfully"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "Trust Your Supplier : Password expiry notification"

  #@Smoke @Password @PasswordConfig @Supplier
  Scenario: Verify notification when Reset password less than the Notify user before days in the Password Configuration of Supplier
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    ###Then Click "Continue" button
    Then Wait for 15 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "123456789" in "Zip Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Enter "7" in "Notify user before (days)" field
    Then Wait for 3 seconds
    Then Enter "4" in "Reset Password (days)" field
    Then Click on the save changes button on password configuration page
    Then Show Toast message "Reset password days should be greater then notify user before days"
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration nav link on supplier
    Then Wait for 5 seconds
    Then Verify the value "365" at "passwordResetDays" input field
    Then Logout from the system

  @Regression @Password @PasswordChange @Buyer
  Scenario: Verify if Labels and Text fields on the Change password of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Show "Change Password" title
    Then Show "Old password" Label
    Then Show "New password" Label
    Then Show "Confirm password" Label
    Then Show "Old password" input text field
    Then Show "New password" input text field
    Then Shows the Confirm Password input text field
    Then Click on Close button on password change
    Then Logout from the system
    

  @Regression @Password @PasswordChange @Buyer
  Scenario: Verify if Tooltip and visibility of the buttons on the Change password of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Show "Old password" tooltip "Your current password"
    Then Show "New password" tooltip "Your new password, must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit."
    Then Show "Confirm password" tooltip "Your new password, must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit."
    Then Close button visibility on Change password "true"
    Then Confirm password button visibility on Change password "true"
    Then Click on Close button on password change
    Then Logout from the system

  @Regression @Password @PasswordChange @Buyer
  Scenario: Verify if Required fields on the Change password of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Click on Confirm password button
    Then Show error message "Required" under "Old password" field
    Then Show error message "Required" under "New password" field
    Then Show error message "Required" under "Confirm password" field
    Then Click on Close button on password change
    Then Logout from the system

  @Smoke @Password @PasswordChange @Buyer @CDCI
  Scenario: Verify if we are able to Change password of Buyer
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users Tab
    Then Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User modal
    Then Enter Last Name on Invite a New User modal
    Then Enter Email on Invite a New User modal
    Then Select domain from the dropdown on Invite a New User Modal "@mailinator.com"
    Then Enter Confirmation Email on Invite a New User modal
    Then Select a Role from the dropdown on Invite a New User Modal "Administrator"
    Then Click on Send Invite button on Invite a New User Modal
    #Then Show Confirmation toast message on Manage Users page "Invite sent to "
    Then Logout from the system
    Then Verify Email received with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Register Now Link in the "US" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Click TYS Buyer admin Terms & Conditions checkbox
    #Then Click "I Accept Trust Your Supplier" button
    Then Enter password in "Password" field
    Then Enter password in "Confirm Password" field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same Buyer Email registered
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Enter password in "Old password" field
    Then Enter New password in "New password" field
    Then Enter Confirm password in "Confirm Password" field
    Then Click on Confirm password button



  @Regression @Password @PasswordChange @Supplier
  Scenario: Verify if Labels and Text fields on the Change password
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Show "Change Password" title
    Then Show "Old password" Label
    Then Show "New password" Label
    Then Show "Confirm password" Label
    Then Show "Old password" input text field
    Then Show "New password" input text field
    Then Show "Confirm password" input text field
    Then Click on Close button on password change
    Then Logout from the system

  @Regression @Password @PasswordChange @Supplier
  Scenario: Verify if Tooltip and visibility of the buttons on the Change password
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Show "Old password" tooltip "Your current password"
    Then Show "New password" tooltip "Your new password, must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit."
    Then Show "Confirm password" tooltip "Your new password, must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit."
    Then Close button visibility on Change password "true"
    Then Confirm password button visibility on Change password "true"
    Then Click on Close button on password change
    Then Logout from the system

  @Regression @Password @PasswordChange @Supplier
  Scenario: Verify if Required fields on the Change password
    Then Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Click on Confirm password button
    Then Show error message "Required" under "Old password" field
    Then Show error message "Required" under "New password" field
    Then Show error message "Required" under "Confirm password" field
    Then Click on Close button on password change
    Then Logout from the system
    
#capitalized P in Confirm Password. 
  #@Smoke @Password @PasswordChange @Supplier
  Scenario: Verify if we are able to Change password
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    ###Then Click "Continue" button
    Then Wait for 15 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter "123456789" in "Zip Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Login with same "US" Supplier in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Profile button
    Then Click on Change password option
    Then Enter password in "Old password" field
    Then Enter New password in "New password" field
    #capitalized P in Confirm Password.
    Then Enter Confirm password in "Confirm Password" field
    Then Click on Confirm password button
    Then Logout from the system
   
