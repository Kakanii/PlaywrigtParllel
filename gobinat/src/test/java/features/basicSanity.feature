Feature: Basic Sanity for TYS Application

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @addnewcontact @BasicSanity
  Scenario: Verify address fields in Add a Contact to Management Team
    Then Enter data in Supplier Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 7 seconds
    Then Click "Management" tab
    Then Wait for 5 seconds
    When Click on Add Other button on Management page
    Then Wait for 3 seconds
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "United States of America" is listed in "Country/Region" dropdown
    Then Select "United States of America" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "State" Label
    Then Show "State" Dropdown
    Then Show "Zip Code" Label
    Then Show "Zip Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Zip Code" Label
    Then Show "PO Box Zip Code" input text field
    #Tooltip
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    #Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field. Max length: 35 characters."
    #Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    Then Show "Year of Birth" tooltip "The year this person was born, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip "The official email address of this person. This is a required field."
    #Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add contact modal
    #Input Field
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "State" dropdown enabled
    Then Verify "Zip Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Zip Code" input text field enabled
    # Flag
    Then Verify "USA" flag in "Primary Phone" field "us"
    Then Verify "USA" flag in "Secondary Phone" field "us"
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+1 (987) 654-3210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+1 (123) 456-7890"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "State" field
    Then Show error message "Required" for "Zip Code" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "1234567890" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6789"
    Then Enter "1234" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "12345678" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "@@@@" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "    " in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6"
    ###PO Box
    Then Enter "1234567890123" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1234567890" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6789"
    Then Enter "1234" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "12345678" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@@@@" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "    " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6"
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Zip Code" field
    Then Show error message "Required" for "State" field
    Then Enter "123456787" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@#$%" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "@#$%" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
    Then Close the modal
    Then Logout from the system

  @AddUNSPSCCode @BasicSanity
  Scenario: Verify Add UNSPSC Code tooltips
    Then Enter data in Supplier Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click "Basic Information" tab
    And Scroll Down the page
    Then Click on Add UNSPSC Code button
    Then Show "Search by Code or Keywords (Class or Commodity)" tooltip "Search by Code or Keywords and click on enter to view the search results" in Assign a Contact modal
    And Logout from the system

  @ChangeBuyerPassword @BasicSanity
  Scenario: As a Buyer, I should be able to change my Password from my account.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "usr Actions" tab
    Then Click "Manage Users" tab
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "usristrator"
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
    Then Click on Continue button on Login page
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
    And Verify "Your password was changed successfully. Please login with your new credentials." label is displaying under "Password Changed Screen"

  @ChangeSupplierPassword @BasicSanity
  Scenario: As a Supplier, I should be able to change my Password from my account.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #invite a supplier
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "govtest" in Dropdown
    Then Wait 10 seconds
    #assign
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    #Change password with valid data
    Then Click on Buyer Profile button
    Then Click Change Password Button
    Then Switch to the active window
    Then Enter Old Password in Change Password Modal
    Then Enter New Password in Change Password Modal
    Then Enter Confirm Password in Change Password Modal
    Then Click Confirm Password Button in Change Password Modal
    Then Show Toast Message as "Your Password has been changed successfully"
    Then Wait for 2 seconds
    And Verify "Your password was changed successfully. Please login with your new credentials." label is displaying under "Password Changed Screen"

  @ConfigureWorkflows @BasicSanity
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Supplier questionnaires
    Then Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "usr Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    Then Verify "2 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Enter "test" as description for approval question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    When Click on "Assign role" dropdown button for approval requests role "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Select "Internal Buyer" as assiging approval requests role for "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    When Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    Then Verify "3 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    And Wait for 3 seconds
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    And Click on "All" for "Depandant questionnaire"
    And Wait for 3 seconds
    Then Verify "2 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    And Logout from the system

  @ConfigureWorkflows @BasicSanity
  Scenario: Verify As a Buyer, I should be able to Configure Dependent questionnaires for Supplier questionnaires
    Then Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "usr Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    And Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    And Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations - IBM (3)" for Configure Workflows
    And Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    And Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    And Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "2 Approval parameters configured " is displaying under "Government Relations - IBM (3)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system

  @ConfigureWorkflows @BasicSanity 
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Checklist questionnaires
    Then Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "usr Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Checklist Questionnaires" under for "Configure Workflows"
    And Wait for 2 seconds
    Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Click on "Workflow" button for "PIF Indicator (3)" in "Checklist Questionnaires"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Is this a PIF Supplier?"
    And Wait for 3 seconds
    And Click on "Equal To" radio button for answer question "Is this a PIF Supplier?"
    And Wait for 5 seconds
    And Click on "Yes" radio button for approval question "Is this a PIF Supplier?"
    Then Enter "test" as description for approval question "Is this a PIF Supplier?"
    When Click on "Assign role" dropdown button for approval requests role "Is this a PIF Supplier?"
    Then Select "Internal Buyer" as assiging approval requests role for "Is this a PIF Supplier?"
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    Then Verify "2 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    When Click on "Workflow" button for "PIF Indicator (3)" in "Configure Workflow"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Is this a PIF Supplier?"
    And Wait for 3 seconds
    And Scroll Down to element "Save" is visible
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 5 seconds
    Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Wait for 3 seconds
    And Logout from the system

  @ConnectedSuppliersOptions @BasicSanity
  Scenario: Verify Next arrow button  and Prev arrow button functionality on My Supplier page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Next arrow button on My Suppliers page
    Then Prev arrow button enabled on My Suppliers page "true"
    Then Click on Prev arrow button on My Suppliers page
    Then Logout from the system

  @Dashboard @BasicSanity
  Scenario: Verify title on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Show the title on Dashboard page
    Then Logout from the system

  @DependentQuestionnaires @BasicSanity
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is NO and see the assigned depandant questionnaire group on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "usr Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations - IBM (3)" for Configure Workflows
    Then Wait for 3 seconds
    #invite a supplier
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "govtest" in Dropdown
    Then Wait 10 seconds
    #assign
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the same supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    #Answer Questionnaire
    #answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Refresh the page
    Then Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?" in question "1"
    When click on "No" for question "Will your company be responsible representing IBM or IBM interests before government bodies or agencies to influence law or policy decisions (e.g. lobbyist, consultants, etc.)?" in question "2"
    When Click "Assign a Contact" button
    When Select value "First Name Last Name - Director" from assign contact dropdown
    Then Wait for 3 seconds
    #Then Scroll Down to the element "Save"
    Then Wait for 2 seconds
    When Click on "Save" button for save contact
    Then Wait for 3 seconds
    Then Scroll to page end
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    Then Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    Then Wait for 5 seconds
    Then Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to IBM Relations questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    #Delete the configure workflow
    When Click "usr Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "2 Approval parameters configured " is displaying under "Government Relations - IBM (3)" for Configure Workflows
    Then Wait for 2 seconds
    Then Logout from the system

  @DownloadQuesionnairs @BasicSanity
  Scenario: Verify Download All button funclitionality in Buyer account
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    #Then Show "Diversity" questionnaire in supplier profile
    Then Show "Automation" QG in supplier profile
    Then Wait for 3 seconds
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
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
    Then Enter "user" in "Last Name" field
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
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "United States of America" is Pre populated with country
    Then Select "Privately Owned" value from Business type dropdown
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Enter phone number "14353466456210" in "Phone Number" field
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    Given Open the login page
    When Wait 10 seconds
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on the first supplier on Connected Supplier
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1980" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    When Download AntiBribery and AntiCorruption Questionnaire on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Download Questionnaires on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @DownloadQuesionnairs @BasicSanity
  Scenario: Verify Download All button funclitionality in Supplier account
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    #Then Show "Diversity" questionnaire in supplier profile
    Then Show "Automation" QG in supplier profile
    Then Wait for 3 seconds
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
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
    Then Enter "user" in "Last Name" field
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
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "United States of America" is Pre populated with country
    Then Select "Privately Owned" value from Business type dropdown
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Enter phone number "14353466456210" in "Phone Number" field
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Refresh the page
    Then Wait for 10 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click "Your Profile" tab
    And Wait for 5 seconds
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    When Click on Published tab
    When Download AntiBribery and AntiCorruption Questionnaire on Supplier profile
    And Wait for 10 seconds
    And Switch to the active window
    And Click "Download All" button
    And Download Questionnaires on Supplier Wider screen
    And Click Back button
    And Wait for 10 seconds
    And Switch to the active window
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Click Back button
    And Click "Download All" button
    And Wait for 2 seconds
    Then Logout from the system

  @AlbaniaLocalisation @BasicSanity
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Albania and with out questionnaire
    #Open buyer page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    Then Select "Albania" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Verify Company page on registration
    #Vrify lables are displayed as expected
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    #verify compnay tab lables are displayed
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 2 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    Then Wait for 3 seconds
    #Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
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
    Then Enter "7673" in "Postal Code" field after "Albania" supplier registration
    Then Select "Finiq" in "Municipality" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
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
    Then Switch to the active window
    Then Click on Do it later button
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Albania" is Pre populated with country
    ###Labels
    Then Show "Business Name" label in "Basic information page"
    Then Show "Legal Business Name" label in at "Basic information page"
    Then Show "Date Established" label in "Basic information page"
    Then Show "Tax Country/Region" label in "Basic information page"
    Then Show "Starting month of the fiscal year" label in "Basic information page"
    Then Show "Description" label in "Basic information page"
    Then Show "Phone Number" label in "Corporate Contact Details"
    Then Show "Fax Number" label in "Corporate Contact Details"
    Then Show "Company Email" label in "Corporate Contact Details"
    #Then Show "Website" label in at "Corporate Contact Details"
    Then Show "Number of Temporary and Contracted Employees" label in "Additional information"
    Then Show "Number of Full-Time Employees" label in "Additional information"
    Then Show "UNSPSC" label in "Basic information page"
    Then Show "NAICS" label in "Basic information page"
    Then Show "Company Registration Number" label under "Tax Details"
    Then Show "Certificate of Incorporation" label under "Tax Details"
    Then Show "VAT Registration Number" label under "Tax Details"
    Then Show "VAT Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "VAT Registration Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    Then Show "Phone Number" input text field in Corporate Contact Details section
    Then Show "Starting month of the fiscal year" input text field in Corporate Contact Details section
    #Then Show "Fax Number" input text field in "Corporate Contact Details"
    Then Show "Fax Number" input text field in Corporate Contact Details
    Then Show "Company Email" input text field in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" input text field in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" input text field in "Additional Information"
    #Radio buttons visibility
    Then Show "YES" radio button "1" is displyed under "Diversity"
    Then Show "NO" radio button "2" is displyed under "Diversity"
    Then Show "YES" radio button "3" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Show "NO" radio button "4" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "YES" radio button "5" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "NO" radio button "6" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "YES" radio button "7" is displyed under "Additional Information"
    #Then Show "NO" radio button "8" is displyed under "Additional Information"
    ###input field status
    Then Verify "Business Name" input text field is enabled in "Basic Information"
    Then Verify "Legal Business Name" input text field is enabled in "Basic Information"
    Then Verify "Tax Country/Region" input text field is enabled in "Basic Information"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "VAT Registration Number" input text field enabled under "Tax Details"
    #Then Verify "Phone Number" input text field is enabled in "Corporate Contact Details"
    #Then Verify "Fax Number" input text field is enabled in "Corporate Contact Details"
    Then Verify "Phone Number" input text field is enabled in Corporate Contact Details
    Then Verify "Fax Number" input text field is enabled in Corporate Contact Details
    #Then Show "Phone Number" input text field in Corporate Contact Details section
    #Then Show "Fax Number" input text field in "Corporate Contact Details"
    #Then Show "Fax Number" input text field in Corporate Contact Details
    Then Verify "Company Email" input text field is enabled in "Corporate Contact Details"
    Then Verify "Number of Full-Time Employees" input text field is enabled in "Additional Information"
    Then Verify "Number of Temporary and Contracted Employees" input text field is enabled in "Additional Information"
    #Radio button status
    Then Verify "YES" radio button "1" is not selected by default under "Diversity"
    Then Verify "NO" radio button "2" is selected by default under "Diversity"
    Then Verify "YES" radio button "3" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "NO" radio button "4" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "YES" radio button "5" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "NO" radio button "6" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "YES" radio button "7" is not selected by default under "Additional Information"
    #Then Verify "NO" radio button "8" is not selected by default under "Additional Information"
    ### Upload button visibility
    Then Show "Certificate of Incorporation" button in basic information
    Then Show "VAT Registration Number" button in basic information
    ##Save Draft and Save and continue button visibility
    #Then Show "Save Draft" button at top "right side" in basic information page
    #Then Show "Save and Continue" button at top "right side" in basic information page
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Verify Upload "VAT Registration Document" button clickable in basic information
    Then Verify Upload "Certificate of Incorporation" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    ###tooltips
    Then Show "Company Registration Number" tooltip " The Company Registration Number is usually in the range of  3 to 20 alphanumeric characters. This is an optional field. " under "Tax Details"
    Then Show "Certificate of Incorporation" tooltip " Attach your Certificate of Incorporation in the below mentioned formats. This is an optional attachment. " under "Tax Details"
    #Then Show "VAT Registration Number" tooltip " VAT Registration Number, also know as  Numri i Identifikimit per Personin e Tatueshem number as issued by Albanian Tax Office and is usually 10 or 12 alphanumeric characters in the below mentioned formats 1) K99999999L, ALK99999999L. This field is mandatory. " under "Tax Details"
    Then Show "VAT Registration Document" tooltip " Attach your VAT Registration Document as issued by Albanian Tax Office in the below mentioned formats. This is a mandatory attachment. " under "Tax Details"
    Then Show "Business Type" tooltip "Select the appropriate Business Type of your company. This is mandatory." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    #Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    And Scroll Up until dimension on the page
    Then Show "Date Established" tooltip " The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in DD/MM/YYYY format and mandatory. " in "Basic Information"
    Then Show "Tax Country/Region" tooltip " The country/region your company pays tax to. This was set during registration. " in "Basic Information"
    Then Show "Description" tooltip " A brief description of your Company. " in "Basic Information"
    Then Show "Phone Number" tooltip " The official corporate level contact number or a toll-free general information number of your company. " in "Corporate Contact Details"
    Then Show "Fax Number" tooltip " The official corporate level fax number of your company. " in "Corporate Contact Details"
    Then Show "Company Email" tooltip " The official email address of the point of contact from your Company. " in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" tooltip " The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company. " in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" tooltip " Number of part time or contracted employees of your company. " in "Additional Information"
    Then Show "UNSPSC" tooltip " The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code) " in "Basic Information"
    Then Show "NAICS" tooltip " The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes. " in "Basic Information"
    ###Required Fields
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "VAT Registration Number" field under "Tax Details"
    Then Show error message "Required" under "VAT Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "General partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint stock company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited liability company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited liability partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "General partnership" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "Albania" flag in Phone Number field
    And Verify "Albania" flag in Fax Number field
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+355 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+355 3232131235"
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    Then Verify "January" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "February" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "March" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "April" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "July" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "September" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "October" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "November" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "December" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    ###Error validation
    ###D-U-N-S Number Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    Then Wait for 3 seconds
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####VAT Registration Number - Input type
    Then Enter "@#$%&" in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input range
    Then Wait for 3 seconds
    When Enter VAT Registration Number for Albania under Tax Details
    #Then Enter "AKL99999999L" in "VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "VAT Registration Number" field is "AKL99999999L" under "Tax Details"
    ###Document uploads
    Then Scroll to view "Certificate of Incorporation" field
    Then Click "Upload VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePDF.pdf"
    Then Click "Upload VAT Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePNG.png"
    Then Click "Upload VAT Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "sampleJPG.jpg"
    Then Click "Upload VAT Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload VAT Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload VAT Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload VAT Registration Document" button
    Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "Albania" is listed in "Country/Region" dropdown
    Then Select "Albania" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "Municipality" Label
    Then Show "Municipality" Dropdown
    Then Show "Postal Code" Label
    Then Show "Postal Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    #Tooltip
    Then Show "First Name" tooltip " The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters. "
    Then Wait for 2 seconds
    #Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field. Max length: 35 characters."
    #Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    Then Show "Year of Birth" tooltip " The year this person was born, as it appears on official government documents, such as a passport. This is a required field. "
    Then Show "Job Title" tooltip " The job title of this person. This is a required field. "
    Then Show "Primary Phone" tooltip " The primary phone number of this contact. This is a required field. "
    Then Show "Secondary Phone" tooltip " The secondary phone number of this contact. This is optional. "
    Then Show "Email ID" tooltip " The official email address of this person. This is a required field. "
    #Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip " The location at which this person works officially. This is an optional field. "
    Then Show "Address Type" tooltip " Address Type is the category of address. This is a required field. "
    Then Show "D-U-N-S Number" tooltip " DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank. "
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add contact modal
    #Input Field
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Municipality" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    # Flag
    Then Verify "Albania" flag in Primary Phone field
    And Verify "Albania" flag in Secondary Phone field
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "4234242423423" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+355 4234242423423"
    Then Enter phone number "4234242423423" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+355 4234242423423"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "Municipality" field
    #Then Show error message "Required" for "Zip Code" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "1234" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Enter "1" in "Postal Code" field
    Then Show error message like "Must be a valid Postal Code." under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1234" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Enter "1" in "PO Box Postal Code" field
    Then Show error message like "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    #Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "Postal Code" field
    #Then Show error message "Required" for "Municipality" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234" in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "1234" in "PO Box Postal Code" field
    Then Close the modal
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    Then Click "No" for the Second Question
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Wait for 3 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the Buyer Internal assessment under Approval Source page
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

  @AlbaniaLocalisation @BasicSanity
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Albania and with questionnaire
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    Then Select "Albania" in "Supplier Country of Registration" dropdown
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
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Automation" in Dropdown
    #Then Click "Questionnaire Name" tab on modal
    #Then Select the "Diversity" in Dropdown
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Enter "7673" in "Postal Code" field after "Albania" supplier registration
    Then Select "Finiq" in "Municipality" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
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
    Then Switch to the active window
    Then Click on Do it later button
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Albania" is Pre populated with country
    ###Required Fields
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "VAT Registration Number" field under "Tax Details"
    Then Show error message "Required" under "VAT Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "General partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint stock company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited liability company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited liability partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "General partnership" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "Albania" flag in Phone Number field
    And Verify "Albania" flag in Fax Number field
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+355 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+355 3232131235"
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    Then Verify "January" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "February" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "March" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "April" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "July" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "September" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "October" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "November" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Verify "December" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    ###Error validation
    ###D-U-N-S Number Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    Then Wait for 3 seconds
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####VAT Registration Number - Input type
    Then Enter "@#$%&" in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input range
    Then Wait for 3 seconds
    When Enter VAT Registration Number for Albania under Tax Details
    #Then Enter "AKL99999999L" in "VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "VAT Registration Number" field is "AKL99999999L" under "Tax Details"
    ###Document uploads
    Then Scroll to view "Certificate of Incorporation" field
    Then Click "Upload VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePDF.pdf"
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "Albania" is listed in "Country/Region" dropdown
    Then Select "Albania" in "Country/Region" dropdown
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "4234242423423" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+355 4234242423423"
    Then Enter phone number "4234242423423" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+355 4234242423423"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "Municipality" field
    #Then Show error message "Required" for "Zip Code" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "1234" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Enter "1" in "Postal Code" field
    Then Show error message like "Must be a valid Postal Code." under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1234" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Enter "1" in "PO Box Postal Code" field
    Then Show error message like "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    #Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "Postal Code" field
    #Then Show error message "Required" for "Municipality" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234" in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "1234" in "PO Box Postal Code" field
    Then Close the modal
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Wait for 3 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 5 seconds
    #Then Click on button "Publish" for questionare
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    #Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    Then Click "No" for the Second Question
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Wait for 3 seconds
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    Then Click on the Confirm button.
    Then Wait for 3 seconds
    Then Click on the Submit
    Then Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    #field visibility
    Then Show "Supplier Category" label in "Custom Fields"
    Then Show "Supplier Category (Commodity Family)" label in "Custom Fields"
    Then Show "IBM Region" label in "Custom Fields"
    Then Show "IBM Market" label in "Custom Fields"
    Then Show "IBM Country & ISO Code" label in "Custom Fields"
    Then Show "Is this a PIF Supplier?" label in "Custom Fields"
    Then Show "Additional Supplier Label" label in "Supplier Information"
    #Then Show "Onboarding Status" label in "Supplier Information"
    Then Show "Spend Threshold" label in "Supplier Information"
    Then Show "Is supplier located in a focus country (excluding Italy and Greece)?" label in "Supplier Information"
    #buttons
    Then Show "Save Changes" button is displayed for "Custom Fields" tab
    Then Show "Cancel" button is displayed for "Custom Fields" tab
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    Then Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the Buyer Internal assessment under Approval Source page
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

  @Banking @AlbaniaLocalisation @BasicSanity
  Scenario: Add Company Account with valid data for Country Albania for existing supplier
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Albania" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Albania"
    Then Select "Albanian Lek" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Albanian"
    #Then Enter value for Bank Routing Number "23634795651"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567"
    And Wait for 2 seconds
    And Enter value for Bank Key "12456789"
    When Enter the IBAN evidence for Albania
    # And Enter value for Bank Swift Code "FDGFDHQKIR"
    # And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Albania"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City " Tirana"
    Then Select "Finiq" in "Municipality" dropdown
    Then Enter value for Postal Code "27560"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
    Then Wait for 3 seconds
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait 5 seconds
    Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  @Banking @AlbaniaLocalisation @BasicSanity
  Scenario: Add Factory Company Account with valid data for Country Albania for existing supplier
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    Then Click on the "Factoring Company Account" radio button
    Then Select "Albania" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Albania"
    Then Select "Albanian Lek" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Albanian"
    #Then Enter value for Bank Routing Number "23634795651"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567"
    And Wait for 2 seconds
    And Enter value for Bank Key "12456789"
    When Enter the IBAN evidence for Albania
    # And Enter value for Bank Swift Code "FDGFDHQKIR"
    # And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Albania"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City " Tirana"
    Then Select "Finiq" in "Municipality" dropdown
    Then Enter value for Postal Code "27560"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Select "Albania" in "Country/Region" dropdown under Factoring Company Address
    Then Wait for 3 seconds
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Tirana" in "City" field under "Factoring Company Address" section
    Then Wait for 9 seconds
    Then Select "Finiq" in "Municipality" dropdown
    Then Wait for 3 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
    Then Wait for 3 seconds
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait 5 seconds
    Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  @Login @BasicSanity
  Scenario: Verify buyer login functionality with valid credentials
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Show the title on Dashboard page
    And Logout from the system

  @BasicSanity
  Scenario: Verify if Buyer is able to view Customer relationship contact contact type
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 9 seconds
    Then Show Manage Contact tab on Dashboard page "true"
    Then Verify new contact in mangement contact "sri"
    Then Wait for 5 seconds
    Then Verify Greentickmark after contact type
    Then Click on contact type segment
    Then Verify "Customer Relationship Contact" contact type
    Then Click on Close icon on modal
    And Logout from the system

  @manageusersregisteranewuser @BasicSanity
  Scenario: Verify as a buyer I should able to Register a supplier with usristrator role using maildrop
    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "First"
    When Enter Last Name on Invite a New User Modal "Last"
    When Enter Random Email on Invite a New User Modal
    When Enter Confirmation Email as same on Invite a New User Modal
    When Select a Role from the dropdown on Invite a New User Modal "usristrator"
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
    Given Start the application
    When Click on Sign In button
    Then Enter same buyer email in Email Address field after registration
    Then Click on Continue button on Login page
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
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "usr Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system

  @MultiBuyer @BasicSanity
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system

  @MyBuyers @BasicSanity
  Scenario: Verify My Buyers Company Details on My Buyers Page
    Then My Buyers Tab Clickable On Dashboard page
    Then Show Buyer Company Name on My Buyers page "International Business Machines Corporation-IBM"
    Then Show Buyer Company Status on My Buyers page "Accepted"
    Then Logout from the system

  @ProfileOwnership @BasicSanity
  Scenario: Verify Adding new "Individual" ownership functionality by adding new contact from Add ownership modal
    Then Click on Ownership nav link
    Then Click on Add ownership button
    Then Click on "Individual" ownership type
    Then Switch to the active window
    Then Select "Add a new Ownership" from the ownership dropdown
    Then Enter data in Fist Name field
    Then Enter data in Last Name field
    Then Select Year of birth
    Then Enter "5" in Ownership Percentage
    Then Click on "Save" button
    Then Switch to the parent window
    Then Verify Individual ownership added
    Then Click on the Individual ownership card
    Then Click on "Delete" button
    Then Click on "Confirm" primary button on the modal
    Then Logout from the system

   @BasicSanity
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "One time" with CC role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "usr Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under usr actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "One time" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    #Then Enter input value "6" in "reminderCount" field
    Then Select "Pending Invite" value from "template" label
    Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

   @BasicSanity
  Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "Every day" without  CC role
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "usr Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under usr actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter random reminder name
    Then Select "Pending Invitation - Supplier has a Pending Invite/Registration" value from "category" label
    Then Select "Every day" value from "frequency" label
    Then Enter input value "14" in "startDay" field
    Then Wait for 3 seconds
    Then Enter input value "1" in "reminderCount" field
    Then Select "Pending Invite" value from "template" label
    #Then Select "0huLUInternalBuyerAutomation" value from CC role
    Then Click on "Save" button for "Reminder"
    Then Verify toast message "Configuration saved successfully" successfully is shown
    Then Wait for 10 seconds
    Then Click reminder arrow before "Delete" button for the remainder
    Then Wait for 3 seconds
    Then Click on "Reminder Preview" button for "Reminder"
    Then Wait for 3 seconds
    Then Verify page header "Reminder Preview" for reminder
    Then Verify reminder preview category is "Pending Invitation - Supplier has a Pending Invite/Registration"
    Then Click close "Reminder Preview" for reminder
    Then Click reminder up arrow
    Then Wait for 5 seconds
    Then Click "Delete" button for the remainder
    Then Verify toast message "Configuration deleted successfully" successfully is shown
    Then Wait for 10 seconds
    Then Logout from the system

  @SSOConfiguration @BasicSanity
  Scenario: Verify if the Title and Is SSO Enabled check Box available on SSO page
    Then SSO Configuration Title text Visibility "SSO Configuration"
    Then Single Sign On Checkbox Title Visibility "Is Single Sign On Enabled"
    Then Is Single Sign On Enabled Checkbox Available
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Logout from the system

  @SSOConfiguration @BasicSanity
  Scenario: Verify Open ID Connect Strategy Available in Strategy Dropdown on SSO Configuration page
    Then Is Single Sign On Enabled Checkbox Clickable
    Then Show "Is Single Sign On Enabled" tooltip "Boolean indicator of whether the sso is enabled"
    Then Show "Strategy" tooltip "Open web standards like OpenIDConnect and SAML"
    Then Strategy dropdown should be clickable "true"
    Then Choose "OpenIDConnect" From the Strategy Dropdown
    Then Logout from the system

  @StockTicker @BasicSanity
  Scenario: Verify Stock Ticker in Basic Information for existing supplier in Profile Complete status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    And Enter Supplier email address in Search field and Enter
    Then verify the status as "Profile Complete"
    Then Logout from the system
    Then Wait for 5 seconds
    Then Enter data in Email Address field "myqasupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 30 seconds
    Then Click on Your Profile tab
    Then Click on Your Profile tab
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then Show "Are you publicly traded on a stock exchange?" label under "Additional Information"
    Then Verify visibility of "Yes" radio buttor for "Are you publicly traded on a stock exchange?"
    Then Verify visibility of "No" radio buttor for "Are you publicly traded on a stock exchange?"
    Then Verify "Yes" radio under "Are you publicly traded on a stock exchange?" is unselected by default
    Then Verify "No" radio under "Are you publicly traded on a stock exchange?" is unselected by default
    Then Verify "Yes" radio under "Are you publicly traded on a stock exchange?" is enabled
    Then Verify "No" radio under "Are you publicly traded on a stock exchange?" is enabled
    Then Click on Save and Continue button on Basic Information page
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify visibility of Stock Exchange label
    Then Verify visibility of Stock Exchange Symbol
    Then Verify visibility of "Stock Exchange" dropdown "true"
    Then Verify visibility of "Stock Exchange Symbol" input field
    Then Verify "Stock Exchange" css dropdown enabled
    Then Verify "Stock Exchange Symbol" input text field is enabled
    #Then Verify relevent stock exchanges displayed when "NEW YORK" is typed in Stock Exchange dropdown
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 10 seconds
    Then Click on Your Profile tab
    Then Logout from the system

  @BasicSanity
  Scenario: Verify Stock Ticker in Basic Information for new supplier
    #Open buyer page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    #Verify Company page on registration
    #Vrify lables are displayed as expected
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    #verify compnay tab lables are displayed
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
    #Verify Tooltips
    Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    Then Wait for 3 seconds
    Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Wait for 5 seconds
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
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
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
    Then Enter "user" in "Last Name" field
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
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the active window
    Then Click on Your Profile tab
    Then Click on Your Profile tab
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then Show "Are you publicly traded on a stock exchange?" label under "Additional Information"
    Then Verify visibility of "Yes" radio buttor for "Are you publicly traded on a stock exchange?"
    Then Verify visibility of "No" radio buttor for "Are you publicly traded on a stock exchange?"
    Then Verify "Yes" radio under "Are you publicly traded on a stock exchange?" is unselected by default
    Then Verify "No" radio under "Are you publicly traded on a stock exchange?" is unselected by default
    Then Verify "Yes" radio under "Are you publicly traded on a stock exchange?" is enabled
    Then Verify "No" radio under "Are you publicly traded on a stock exchange?" is enabled
    #Then Click on Save and Continue button on Basic Information page
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify visibility of Stock Exchange label
    Then Verify visibility of Stock Exchange Symbol
    Then Verify visibility of "Stock Exchange" dropdown "true"
    Then Verify visibility of "Stock Exchange Symbol" input field
    Then Verify "Stock Exchange" css dropdown enabled
    Then Verify "Stock Exchange Symbol" input text field is enabled
    #Then Verify relevent stock exchanges displayed when "NEW YORK" is typed in Stock Exchange dropdown
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 10 seconds
    Then Click on Your Profile tab
    Then Logout from the system

  @SupplierStatusNe @BasicSanity
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Lifecycle Updates Review" supplier status
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
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
    When Click on Next button on Assign Questionnaires window
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
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
    Then Wait for 5 seconds
    #Basic info page
    When Click "Basic Information" tab
    When click on the calandar icon
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    And Select "Privately Owned" value from Business type dropdown
    And Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 10 seconds
    #When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
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
    And Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
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
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
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
    And Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
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
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Pre Invite Assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
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
    #approvals
    #When Click on the USL Search under Approval Source
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #When Click on the "Buyer Internal assessment" under Approval Source
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    And Wait for 5 seconds
    And Logout from the system
    Then Wait for 5 seconds
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    Then select date "1" from the date
    And Select "Privately Owned" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    ###Lifecycle Updates Review
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then verify the status as "Lifecycle Updates Review"
    And Wait for 3 seconds
    #Then Click on "Onboard Supplier" button on panel
    #Then Switch to the active window
    #Then Enter notes in the onboard supplier modal
    #Then Click "Onboard" button
    #Then Wait for 5 seconds
    #Then Verify the Status as Onboarded
    #Then Wait for 2 seconds
    Then Logout from the system

  @SupplierSynopsis @BasicSanity
  Scenario: I am able to see Supplier details page by clicking on Go to details button on Supplier Synopsis page
    When Enter EmailAdress in Email Address field "myautonokiabuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "TITAN COMPANY LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see View Synopsis link on Supplier details page
    And Logout from the system

  @SupplierSynopsis @BasicSanity
  Scenario: I am able to see Supplier Synopsis View by clicking on View Synopsis link on Supplier details page
    When Enter EmailAdress in Email Address field "myautonokiabuyer@mailinator.com"
    And Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    And Wait for 15 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Show title on My Suppliers page "Connected Suppliers"
    When Enter "TITAN COMPANY LIMITED" Supplier in Search field
    And Wait for 15 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page
    And User can see Go to details button on Supplier Synopsis view page
    When Click on Go to details button on Supplier Synopsis view page
    Then User can see View Synopsis link on Supplier details page
    When Click on View Synopsis link on Supplier details page
    Then User can see the title "Supplier Synopsis" on Supplier Synopsis View page

  @tysId @BasicSanity
  Scenario: Verify TYS Id on Supplier wider screen after invite a Supplier
    #Open buyer page
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
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
    And Shows TYS Id on Supplier Wider Screen
    Then Logout from the system

  @tysId @BasicSanity
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    And Shows TYS Id on Supplier Wider Screen
    And Wait for 3 seconds
    Then Logout from the system

  @tysId @BasicSanity
  Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer from Discovarable Supplier
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
    When Click on Discover tab
    And Click on TYS Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    And Wait for 3 seconds
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    And Shows TYS Id on Supplier Wider Screen
    And Wait for 3 seconds
    Then Logout from the system
    And Logout from the system
