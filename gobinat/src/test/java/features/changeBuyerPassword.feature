Feature: ChangeBuyerPassword

  #ChangeBuyerPassword
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab

  @Regression @Buyer @ChangeBuyerPassword
  Scenario: As a Buyer, I should be able to see all the labels and input values for Change Password from my account
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 2 seconds
    Then Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    Then Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click TYS Terms & Conditions checkbox
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
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Buyer Profile button
    Then Click Change Password Button
    Then Switch to the active window
    #label display
    Then Verify page header "Change Password" for "Change Password"
    Then Verify "Old password" input label is displayed under "Change Password"
    Then Verify "New password" input label is displayed under "Change Password"
    Then Verify "Confirm Password" input label is displayed under "Change Password"
    ##button display
    Then Verify "Confirm Password" button is visible under "Change Password"
    Then Verify "Close" button is visible under "Change Password"
    ##input field enable
    And Verify "oldPassword" input field is enabled under for "Old Password"
    And Verify "password" input field is enabled under for "Password"
    And Verify "confirmPassword" input field is enabled under for "Confirm Password"
    ##button enable
    And Verify "Confirm Password" button is enabled under "Change Password"
    And Verify "Close" button is enabled under "Change Password"
    ##tooltip
    Then Show "Old password" tooltip "Your current password" in "Change Password"
    Then Show "New password" tooltip "Password to be used to log into Trust Your Supplier. This is a mandatory field." in "Change Password"
    Then Show "Confirm Password" tooltip "Re-enter password to confirm. This is a mandatory field." in "Change Password"
    #Verify error messages
    When Click on "Confirm Password" button
    Then Verify password warning information "Password must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." under at "Old Password"
    Then Verify password warning information "Required" under at "Confirm Password"
    When Click on "Close" button
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @ChangeBuyerPassword
  Scenario: As a Buyer, I should be able to error message for mismatch of new change Password from my account.
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 2 seconds
    Then Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    Then Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click TYS Terms & Conditions checkbox
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
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Buyer Profile button
    Then Click Change Password Button
    Then Switch to the active window
    Then Enter Old Password in Change Password Modal
    Then Verify password warning information "Password must be between 8 and 15 characters, and must include at least one upper case letter, one lower case letter, and one numeric digit." under at "New Password"
    Then Enter New Password in Change Password Modal
    Then Enter "newSupllierp1" Invalid Confirm Password in Change Password Modal
    Then Click Confirm Password Button in Change Password Modal
    Then Verify error message "Password does not match" for invalid password
    When Click on "Close" button
    Then Wait for 2 seconds
    Then Logout from the system

  @Smoke @Buyer @ChangeBuyerPassword @TYSFunctionality @SanityCheck
  Scenario: As a Buyer, I should be able to change my Password from my account.
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 2 seconds
    Then Logout from the system
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
    Then Wait for 10 seconds
    Then Click "Submit" button
    Then Wait for 35 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Buyer Profile button
    Then Click Change Password Button
    Then Switch to the active window
    Then Enter Old Password in Change Password Modal
    Then Enter New Password in Change Password Modal
    Then Enter Confirm Password in Change Password Modal
    Then Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    Then Wait for 2 seconds
