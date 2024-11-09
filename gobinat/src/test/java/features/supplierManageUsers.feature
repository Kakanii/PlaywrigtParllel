Feature: Supplier Manage Users and Search

  #manageusers
  #@manageusersearch
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab

  #Filter By
  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify Filter By Labels and Input field values
    #Filter By visible
    Then Verify "Filter by" button is visible under "Manage Users"
    #Filter By enable
    And Verify "Filter by" button is enabled under "Manage Users"
    When Click on "Filter by" button
    Then Wait for 3 seconds
    #Apply filter lables
    Then Show "Apply Filters" label at "Filter By"
    And Verify input text field is visible for "searchUserName"
    And Verify "Role" field label visible under "Filter By"
    And Verify "Status" field label visible under "Filter By"
    And Verify "Invited Date" field label visible under "Filter By"
    And Verify "Last Logged In" field label visible under "Filter By"
    #button Visible
    And Verify "Search" button is visible under "Filter By"
    And Verify "Reset Filters" button is visible under "Filter By"
    #Buttons enable
    And Verify "Search" button is enabled under "Filter By"
    And Verify "Reset Filters" button is enabled under "Filter By"
    And Show Close Icon on Invite a New User Modal "true"
    And Close Icon clickable on Invite a New User Modal "true"
    When Click Close icon on Invite a New User Modal
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify labels and input values on role filter
    When Click on "Filter by" button
    And Click on button "Role" under "Filter By"
    Then Show button label "Select All" is visible at "Role"
    And Show button label "Clear All" is visible at "Role"
    And Verify input text field is visible for "searchUserName"
    When Click Close icon on Invite a New User Modal
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify search filter by using Role "Administrator"
    When Click on "Filter by" button
    And Click on button "Role" under "Filter By"
    Then Select "Administrator" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    And Show filtered role is "Administrator"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify search filter by using Role "DigitalKeyAdmin"
    When Click on "Filter by" button
    And Click on button "Role" under "Filter By"
    Then Select "DigitalKeyAdmin" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    And Show filtered role is "DigitalKeyAdmin"
    When Click "Clear All" label button
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify search filter by using Role "Editor"
    When Click on "Filter by" button
    And Click on button "Role" under "Filter By"
    Then Select "Editor" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    And Show filtered role is "Editor"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify search filter by using Role "Publisher"
    When Click on "Filter by" button
    And Click on button "Role" under "Filter By"
    Then Select "Publisher" as "Role" from input dropdown
    When Click on "Search" button
    Then Wait for 5 seconds
    And Show filtered role is "Publisher"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify labels and buttons for filter by "Status"
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Show button "Select All" label is visible at "Status"
    And Show button "Clear All" label is visible at "Status"
    And Show "Active" button label visible under "Status"
    And Show "Pending" button label visible under "Status"
    And Show "Access Removed" button label visible under "Status"
    When Click on close icon on filter by
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by with status "Active"
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Active" button label under "Status"
    And Click on "Search" button
    And Wait for 3 seconds
    Then Verify status "Active" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by with status "Pending"
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Pending" button label under "Status"
    And Click on "Search" button
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by with status "Access Removed"
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Access Removed" button label under "Status"
    And Click on "Search" button
    And Wait for 3 seconds
    Then Verify status "Access Removed" for invited user in manage users
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by selecting all status
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    Then Click button label "Select All" for "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    And Show filtered role is
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by Clearing all status
    When Click on "Filter by" button
    And Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click button label "Select All" for "Status"
    Then Wait for 3 seconds
    And Click button label "Clear All" for "Status"
    When Click on "Search" button
    Then Wait for 3 seconds
    And Show filtered role is
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by with Invited date
    When Click on "Filter by" button
    And Click on button "Invited Date" under "Filter By"
    Then Wait for 3 seconds
    When Select from date as "April" month "13" date "2023" year
    Then Wait for 3 seconds
    And Select to date as "April" month "28" date "2023" year
    Then Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    And Wait for 3 seconds
    #Then Show button label "Created Date:" is visible at "Manage users"
    Then Show No User message "You have no users matching this status"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify filter by with Last logged in date
    When Click on "Filter by" button
    And Click on button "Last Logged In" under "Filter By"
    Then Wait for 3 seconds
    And Select from date as "April" month "13" date "2023" year for last logged in
    And Wait for 3 seconds
    And Select to date as "May" month "28" date "2023" year for last logged in
    And Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    And Wait for 3 seconds
    #Then Show button label "First Invitation Sent:" is visible at "Manage users"
    And Show No User message "You have no users matching this status"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @suppliermanageuserfilterby
  Scenario: Verify message using filter by firstname and invalid data combinations search
    When Click on "Filter by" button
    When Enter input data "EDI first8757675657765656" under "searchUserName"
    When Click on button "Role" under "Filter By"
    Then Wait for 2 seconds
    When Select "Administrator" as "Role" from input dropdown
    Then Wait for 2 seconds
    When Click on button "Status" under "Filter By"
    Then Wait for 3 seconds
    When Click "Pending" button label under "Status"
    Then Wait for 2 seconds
    When Click on button "Invited Date" under "Filter By"
    Then Wait for 3 seconds
    And Select from date as "April" month "13" date "2023" year
    And Wait for 3 seconds
    And Select to date as "April" month "28" date "2023" year
    And Wait for 2 seconds
    When Click on button "Last Logged In" under "Filter By"
    Then Wait for 3 seconds
    And Select from date as "April" month "7" date "2023" year for last logged in
    And Wait for 3 seconds
    And Select to date as "April" month "7" date "2023" year for last logged in
    And Wait for 2 seconds
    When Click on "Search" button
    Then Wait for 3 seconds
    And Show message "You have no users matching this status"
    Then Wait for 3 seconds
    #Then Show button label "First Invitation Sent:" is visible at "Manage users"
    When Click "Clear All" label button
    Then Wait for 3 seconds
    And Logout from the system

  #Invite a new user from supplier
  @Regression @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify Title and Invite a new user button visibility and status on Invite a New User Modal
    #Label visibility
    Then Verify page header "Manage Users" under Manage Users
    And Verify the page title description "The Manage Users screen allows the Supplier Admin to manage all his or her users. The Supplier Admin has the capability to Invite a New user from his organization and assign them to a Role. The roles can be named/defined for each company, but some examples include – Admin, Publisher and Editor" under Manage Users
    And Verify "Invite a New User" button is visible under "Manage Users"
    And Verify "Invite a New User" button is enabled under "Manage Users"
    Then Logout from the system

  @Regression @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify Invite user with all the labels,input values,tooltips,Input validations,Required error messages
    When Click on Invite a New User button on Manage Users page
    Then Show Invite a New User title on modal "Invite a New User"
    And Show Close button on Invite a New User Modal "true"
    And Close button clickable on Invite a New User Modal "true"
    And Show "First Name" label in "Invite a New User"
    And Show "Last Name" label in "Invite a New User"
    And Show "Email ID" label in "Invite a New User"
    And Show "Confirm Email ID" label in "Invite a New User"
    And Show "Role" label in "Invite a New User"
    And Show "Contact's Preferred Language" label for "Invite a New User"
    #Button visible
    And Verify "Send Invite" button is visible under "Manage Users"
    And Verify "Send Invite" button is enabled under "Manage Users"
    And Verify "Close" button is visible under "Manage Users"
    And Verify "Close" button is enabled under "Manage Users"
    And Show Close Icon on Invite a New User Modal "true"
    And Close Icon clickable on Invite a New User Modal "true"
    #Inpt field displayed
    And Verify input text field is visible under "firstName"
    And Verify input text field is visible under "lastName"
    And Verify input text field is visible under "email"
    And Verify input text field is visible under "confirmEmail"
    And Verify "Administrator" dropdown value is visible under "Role" input for "userRole"
    And Verify "DigitalKeyAdmin" dropdown value is visible under "Role" input for "userRole"
    And Verify "Editor" dropdown value is visible under "Role" input for "userRole"
    And Verify "Publisher" dropdown value is visible under "Role" input for "userRole"
    #Required Error messages
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Show error message "Required" under "First Name" input field
    And Show error message "Required" under "Last Name" input field
    And Show error message "Required" under "Email ID" input field
    And Show error message "Required" under "Confirm Email ID" input field
    And Show error message "Required" under "Role" input field
    #input field validations
    #First name
    When Enter First Name on Invite a New User Modal "%$%$%^%^%^%^%"
    Then Show error message "Only alphabets should be allowed" under "First Name" field
    When Enter First Name on Invite a New User Modal "       "
    Then Show error message "Required" under "First Name" input field
    When Enter First Name on Invite a New User Modal "986545"
    Then Show error message "Only alphabets should be allowed" under "First Name" field
    When Enter First Name on Invite a New User Modal "dfds34343"
    Then Show error message "Only alphabets should be allowed" under "First Name" field
    #last name
    When Enter Last Name on Invite a New User Modal "%$%$%^%^%^%^%"
    Then Show error message "Only alphabets should be allowed" under "Last Name" field
    When Enter Last Name on Invite a New User Modal "          "
    Then Show error message "Required" under "Last Name" input field
    When Enter Last Name on Invite a New User Modal "986545"
    Then Show error message "Only alphabets should be allowed" under "Last Name" field
    When Enter Last Name on Invite a New User Modal "dfds34343"
    Then Show error message "Only alphabets should be allowed" under "Last Name" field
    #Email Adrress
    When Enter Email on Invite a New User Modal "456783"
    Then Show an error message at Email field withspecialcharacters "Invalid email address"
    When Enter Email on Invite a New User Modal "opnjsd@gma"
    Then Show an error message at Email field withspecialcharacters "Invalid email address"
    When Enter Email on Invite a New User Modal "&^*&()%^%^%"
    Then Show an error message at Email field withspecialcharacters "Invalid email address"
    When Enter Email on Invite a New User Modal "dgdfg@maildrop.cc"
    #Confirmation Email
    When Enter Confirmation Email on Invite a New User Modal "$#$%$%$%$"
    Then Show an error message at Confirmation Email field withmismatchdata "Email addresses do not match."
    When Enter Confirmation Email on Invite a New User Modal "54546433"
    Then Show an error message at Confirmation Email field withmismatchdata "Email addresses do not match."
    When Enter Confirmation Email on Invite a New User Modal "dgdfg@maildr"
    Then Show an error message at Confirmation Email field withmismatchdata "Email addresses do not match."
    When Click on Close button on Invite a New User Modal
    Then Show Invite a New User button on Manage Users page "true"
    And Logout from the system

  @Smoke @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify as a buyer I should able to Invite a supplier user with Administrator role and verify invite sent to maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    And Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Open the login page
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    And Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify as a buyer I should able to Invite a supplier user with DigitalKeyAdmin role and verify invite sent to maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "DigitalKeyAdmin"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    And Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Open the login page
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    And Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify as a buyer I should able to Invite a supplier user with Editor role and verify invite sent to maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "Editor"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 3 seconds
    And Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Open the login page
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    And Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersinviteanewuser @Buyer
  Scenario: Verify as a buyer I should able to Invite a supplier user with Publisher role and verify invite sent to maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "Publisher"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 3 seconds
    And Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    And Open the login page
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    And Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersregisternewuser @Buyer @TYSFunctionality
  Scenario: Verify as a buyer I should able to Register a supplier user with Administrator role using maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    And Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 12 seconds
    And Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    When Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    When Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    And Enter password in Password field
    And Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    And Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
    And Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Enter same buyer email in Email Address field after registration
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on Buyer Profile button
    And Click Change Password Button
    Then Switch to the active window
    And Enter Old Password in Change Password Modal
    And Enter New Password in Change Password Modal
    And Enter Confirm Password in Change Password Modal
    When Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersregisternewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier user with DigitalKeyAdmin role using maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "DigitalKeyAdmin"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 2 seconds
    And Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    When Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    When Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    And Enter password in Password field
    And Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    And Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
    And Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Enter same buyer email in Email Address field after registration
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on Buyer Profile button
    And Click Change Password Button
    Then Switch to the active window
    And Enter Old Password in Change Password Modal
    And Enter New Password in Change Password Modal
    And Enter Confirm Password in Change Password Modal
    When Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    When Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersregisternewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier user with Editor role using maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "Editor"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    And Click on Send Invite button on Invite a New User Modal
    And Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 2 seconds
    And Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    When Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    When Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    And Enter password in Password field
    And Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    And Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
    And Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Enter same buyer email in Email Address field after registration
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on Buyer Profile button
    And Click Change Password Button
    Then Switch to the active window
    And Enter Old Password in Change Password Modal
    And Enter New Password in Change Password Modal
    And Enter Confirm Password in Change Password Modal
    When Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    And Enter data in Email Address field
    When Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Manage Users" tab
    Then Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system

  @Smoke @suppliermanageusersregisternewuser @Buyer
  Scenario: Verify as a buyer I should able to Register a supplier user with Publisher role using maildrop
    When Click on Invite a New User button on Manage Users page
    Then Enter First Name on Invite a New User Modal "First"
    And Enter Last Name on Invite a New User Modal "Last"
    And Enter Random Email on Invite a New User Modal
    And Enter Confirmation Email as same on Invite a New User Modal
    And Select a Role from the dropdown on Invite a New User Modal "Publisher"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    And Wait for 2 seconds
    And Verify status "Pending" for invited user in manage users
    And Wait for 2 seconds
    And Logout from the system
    #maildrop registration
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    When Click on the email with subject "Invitation from Trust Your Supplier" from maildrop
    Then Wait for 5 seconds
    When Click on "REGISTER NOW" link from maildrop
    Then Switch to "new TYS" tab
    And Enter password in Password field
    And Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    And Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
    And Logout from the system
    Given Open the login page
    When Wait 10 seconds
    Then Enter same buyer email in Email Address field after registration
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on Buyer Profile button
    And Click Change Password Button
    Then Switch to the active window
    And Enter Old Password in Change Password Modal
    And Enter New Password in Change Password Modal
    And Enter Confirm Password in Change Password Modal
    When Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    And Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    When Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    And Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    And Verify page header "Manage Users" under Manage Users
    And Wait for 3 seconds
    And Logout from the system
