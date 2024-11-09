Feature: Manage User Accept Invitation

  #manageuseracceptinvitation
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    When Wait 3 seconds
    Then Click "Admin Actions" tab
    When Wait 3 seconds
    Then Click "Manage Users" tab

  @Smoke @manageusersregisteranewuser @Buyer @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify as a buyer I should able to Register a Buyer with Administrator role using maildrop
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
    Then Wait for 10 seconds
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
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
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
    #Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    When Enter Redhat buyer in Email Address field
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Wait for 3 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Internal Buyer role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Internal First"
    When Enter Last Name on Invite a New User Modal "Internal Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Read Only Admin role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Internal First"
    When Enter Last Name on Invite a New User Modal "Internal Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Supplier Relationship Manager role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Supplier First"
    When Enter Last Name on Invite a New User Modal "Supplier Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Supplier Relationship Manager"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Sourcing Buyer role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Sourcing First"
    When Enter Last Name on Invite a New User Modal "Sourcing Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Buyer"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Procurement Manager role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Procurment First"
    When Enter Last Name on Invite a New User Modal "Procurment Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Ombudsman role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Ombudsman First"
    When Enter Last Name on Invite a New User Modal "Ombudsman Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Export Regulations role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Export First"
    When Enter Last Name on Invite a New User Modal "Export Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with EDI Manager role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "EDI First"
    When Enter Last Name on Invite a New User Modal "EDI Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Sourcing Manager role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Sourcing First"
    When Enter Last Name on Invite a New User Modal "Sourcing Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Manager"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Trust & Compliance  role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Trust First"
    When Enter Last Name on Invite a New User Modal "Trust Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Logout from the system
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @manageusersregisteranewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier with Viewer  role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Trust First"
    When Enter Last Name on Invite a New User Modal "Trust Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
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
    Then Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    #page description
    #Then Verify the page title description "A verification code has been sent to your email to ensure that you are in control of the same email address you are registered with. Please copy and paste the verification code from your email below." under registration
    #labels visible
    Then Show "First Name" label in at "Supplier registration"
    Then Show "Last Name" label in at "Supplier registration"
    Then Show "Email Address" label in at "Supplier registration"
    Then Show "Password" label in at "Supplier registration"
    Then Show "Confirm Password" label in at "Supplier registration"
    Then Show "I acknowledge that I have read, and do hereby accept the " label in at "Supplier registration"
    #input field enable
    Then Verify "First Name" input field enabled for at "Supplier registration"
    Then Verify "Last Name" input field enabled for at "Supplier registration"
    Then Verify "Email Address" input field enabled at for "Supplier registration"
    Then Verify "Password" input field enabled for at "Supplier registration"
    Then Verify "Confirm Password" input field enabled for at "Supplier registration"
    #button visibility
    Then Verify "Continue" button is displayed under "Supplier registration"
    Then Verify "Continue" button is enable under "Supplier registration"
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    Then Click TYS Terms & Conditions checkbox
    Then Click "Continue" button
    #button visiblility
    Then Verify "Back" button is displayed under "Supplier registration"
    Then Verify "Back" button is enable under "Supplier registration"
    Then Verify "Submit" button is displayed under "Supplier registration"
    Then Verify "Submit" button is enable under "Supplier registration"
    Then Verify verification code is enable
    #tool tip
    Then Show "Verification code" field Tooltip as "Please enter the 6-digit verification code sent to your email address. This is a mandatory field."
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
    Given Start the application
    When Click on Sign In button
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
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
