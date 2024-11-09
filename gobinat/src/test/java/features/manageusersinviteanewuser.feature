Feature: Invite a New User on Manage Users
  #manageusersinviteanewuser

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
    
  @Regression @manageusersinviteanewuser @Buyer
  Scenario: Verify Title and Invite a new user button visibility and status on Invite a New User Modal
    #Label visibility
    Then Verify page header "Manage Users" under Manage Users
    And Verify the page title description "The Manage Users screen allows the Administrator to manage all their users. The Admin has the capability to Invite a new user from their organization and assign them to a role. The Admin also controls which email domains can be invited for their company." under Manage Users
		And Verify "Invite a New User" button is visible under "Manage Users"
		And Verify "Invite a New User" button is enabled under "Manage Users"
		Then Logout from the system
		
		
  @Regression @manageusersinviteanewuser @Buyer 
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
    And Show "Manage Teams" label in "Invite a New User"
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
    And Verify Manage teams input filed is visible
    And Verify "Administrator" dropdown value is visible under "Role" input for "userRole"
    And Verify "Approval Coordinator" dropdown value is visible under "Role" input for "userRole"
    And Verify "EDI Manager" dropdown value is visible under "Role" input for "userRole"
    And Verify "Export Regulations" dropdown value is visible under "Role" input for "userRole"
    And Verify "Internal Buyer" dropdown value is visible under "Role" input for "userRole"
    And Verify "Ombudsman" dropdown value is visible under "Role" input for "userRole"
    And Verify "Procurement Manager" dropdown value is visible under "Role" input for "userRole"
    And Verify "Sourcing Buyer" dropdown value is visible under "Role" input for "userRole"
    And Verify "Sourcing Manager" dropdown value is visible under "Role" input for "userRole"
    And Verify "Trust & Compliance" dropdown value is visible under "Role" input for "userRole"
    And Verify "Viewer" dropdown value is visible under "Role" input for "userRole"
    #Tooltips
    And Show tooltip "Select the Team(s) to which this user should be assigned." for the label "Manage Teams" 
    #Required Error messages
   	When Click on Send Invite button on Invite a New User Modal
   	Then Wait for 3 seconds
    Then Show error message "Required" under "First Name" input field
    And Show error message "Required" under "Last Name" input field
    And Show error message "Required" under "Email ID" input field
    And Show error message "Required" under "Confirm Email ID" input field
    And Show error message "Required" under "Role" input field
    And Show error message "Required" under "Manage Teams" input field
    #input field validations
    #First name
    When Enter First Name on Invite a New User Modal "%$%$%^%^%^%^%"
    Then Show error message "Only alphabetical characters allowed" under "First Name" field
    When Enter First Name on Invite a New User Modal "       "
    Then Show error message "Required" under "First Name" input field
    When Enter First Name on Invite a New User Modal "986545"
    Then Show error message "Only alphabetical characters allowed" under "First Name" field
    When Enter First Name on Invite a New User Modal "dfds34343"
    Then Show error message "Only alphabetical characters allowed" under "First Name" field
    #last name
 	  When Enter Last Name on Invite a New User Modal "%$%$%^%^%^%^%"
    Then Show error message "Only alphabetical characters allowed" under "Last Name" field
    When Enter Last Name on Invite a New User Modal "          "
    Then Show error message "Required" under "Last Name" input field
    When Enter Last Name on Invite a New User Modal "986545"
    Then Show error message "Only alphabetical characters allowed" under "Last Name" field
    When Enter Last Name on Invite a New User Modal "dfds34343"
    Then Show error message "Only alphabetical characters allowed" under "Last Name" field
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
    Then Click on Close button on Invite a New User Modal
    Then Show Invite a New User button on Manage Users page "true"
    Then Logout from the system

	@Regression @manageusersinviteanewuser @Buyer @TYSFunctionality 
  Scenario: Verify as a buyer I should able to Invite a supplier with Administrator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    #Then click on "Invitation from Trust Your Supplier" on maildrop
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    
    
  @Regression @manageusersinviteanewuser @Buyer 
  Scenario: Verify as a buyer I should able to Invite a supplier with Approval Coordinator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Coordinator First"
    When Enter Last Name on Invite a New User Modal "Coordinator Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Approval Coordinator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  Scenario: Verify as a buyer I should able to Invite a supplier with EDI Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "EDI First"
    When Enter Last Name on Invite a New User Modal "EDI Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to Invite a supplier with Export Regulations role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Export First"
    When Enter Last Name on Invite a New User Modal "Export Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
	@Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to Invite a supplier with Internal Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Internal First"
    When Enter Last Name on Invite a New User Modal "Internal Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to Invite a supplier with Ombudsman role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Ombudsman First"
    When Enter Last Name on Invite a New User Modal "Ombudsman Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Procurement Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Procurement First"
    When Enter Last Name on Invite a New User Modal "Procurement Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Sourcing Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Sourcing First"
    When Enter Last Name on Invite a New User Modal "Sourcing Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Buyer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Show title on Manage Users page "Manage Users"
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Sourcing Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Manager First"
    When Enter Last Name on Invite a New User Modal "Manager Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system 
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Show title on Manage Users page "Manage Users"
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Trust & Compliance role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Trust First"
    When Enter Last Name on Invite a New User Modal "Trust Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Read Only Admin role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to Invite a supplier with Viewer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Viewer First"
    When Enter Last Name on Invite a New User Modal "Viewer Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
	
	@Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Administrator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Internal Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Read Only Administrator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Supplier Relationship Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Supplier Relationship Manager"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Sourcing Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Buyer"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
     @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Procurement Manager and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Ombudsman and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Show title on Manage Users page "Manage Users"
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Export Regulations and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with EDI Manager and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Show title on Manage Users page "Manage Users"
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Sourcing Manager and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Manager"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Trust & Complains and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to edit a supplier with Viewer and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    #Update user
    When Click on "Update User" button to "Update User"
    Then Wait for 3 seconds
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Click on "Update" button
    Then Show Update message on "Manage Users" Page " updated successfully"
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    @Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Administrator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Administrator"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Internal Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Read Only Admin role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

		 @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Internal Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Internal Buyer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system


		 @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Read Only Admin role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Read Only Admin"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Supplier Relationship Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Supplier Relationship Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Sourcing Buyer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Buyer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
     @Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Procurement Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Procurement Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Ombudsman role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Ombudsman"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Export Regulations role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Export Regulations"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with EDI Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "EDI Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Sourcing Manager role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Sourcing Manager"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    #Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Trust & Compliance role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Trust & Compliance"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
     @Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify as a buyer I should able to resend an Invite a supplier with Viewer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Read First"
    When Enter Last Name on Invite a New User Modal "Read Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
     #Resend user
    When Click on "Resend Email Invite" button to "Resend Email Invite"
    Then Wait for 5 seconds
    When Click on "Resend" button
    Then Verify toast message "User has been successfully reinvited" successfully is shown
    Then Wait for 3 seconds
    Then Logout from the system
    #Verify invite
    Then Wait for 3 seconds
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    #Remove user
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    
@Regression @manageusersinviteanewuser @Buyer 
  	Scenario: Verify Confirmation message while Invite an existing User with Viewer role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Viewer First"
    When Enter Last Name on Invite a New User Modal "Viewer Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message on "Manage Users" Page "Invite sent to "
    #send same email invite
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Viewer First"
    When Enter Last Name on Invite a New User Modal "Viewer Last"
    When Enter same Email as same on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "Viewer"
    When Select a Team from the dropdown on Invite a New User Modal "All Suppliers"
    When Click on Send Invite button on Invite a New User Modal
    Then Show Confirmation message "A pending invite already exists for this email"
    Then Wait for 3 seconds
    And Verify status "Pending" for invited user in manage users
    Then Wait for 3 seconds
    Then Logout from the system
    And Verify an email received in supplier maildrop Inbox with subject "Invitation from Trust Your Supplier"
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
