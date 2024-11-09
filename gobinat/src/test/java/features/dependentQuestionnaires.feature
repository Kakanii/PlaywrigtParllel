Feature: Dependent Questionnaires

  #Dependent Questionnaires
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to see the Depandant questionnaire under Workflow dropdown.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    ###labels display
    Then Verify "All" label is displaying under "Depandant questionnaire"
    And Verify "Buyer Specific" label is displaying under "Depandant questionnaire"
    And Verify "Workflow" button is diplaying for "Anti-Bribery, Anti-Corruption (11)"
    ###label button enable
    Then Verify "All" label is enabled under "Depandant questionnaire"
    And Verify "Buyer Specific" label is enabled under "Depandant questionnaire"
    And Verify "Workflow" button is enabled for "Anti-Bribery, Anti-Corruption (11)"
    When Wait 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption (11)" in "Configure Workflow"
    When Wait 2 seconds
    ###labels display for Depandant questionnaire
    Then Verify "Approval Requests" button is displaying under "Workflow"
    And Verify "Dependent Questionnaire" button is displaying under "Workflow"
    ###lables enable
    Then Verify "Approval Requests" button is enable under for "Workflow"
    And Verify "Dependent Questionnaire" button is enable under for "Workflow"
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want all labels and buttons visible and enabled under Depandant questionnaire
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption (11)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    Then Scroll to page end
    ###Verify lable displyed
    Then Verify "Cancel" button is visible under "Depandant questionnaire"
    And Verify "Save" button is visible under "Depandant questionnaire"
    And Verify "Expand All" label is displaying under "Depandant questionnaire"
    And Verify "Collapse All" label is displaying under "Depandant questionnaire"
    And Verify "Create Rule" button is visible under "Depandant questionnaire"
    #Verify buttons enabled
    And Verify "Cancel" button is enabled under "Depandant questionnaire"
    And Verify "Save" button is enabled under "Depandant questionnaire"
    And Verify "Expand All" label is enabled under "Depandant questionnaire"
    And Verify "Collapse All" label is enabled under "Depandant questionnaire"
    And Verify "Create Rule" button is enabled under "Depandant questionnaire"
    Then Wait for 3 seconds
    Then Logout from the system

  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want all labels and buttons and dropdown values visible and enabled under Depandant questionnaire Create Rule
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Anti-Bribery, Anti-Corruption (11)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Does your company have an anti-bribery/anti-corruption policy and procedures?"
    Then Wait for 3 seconds
    ###label display
    Then Verify "When the answer is" label is displying under "Create Rule" for "Depandant questionnaire"
    And Verify "Assign Dependent Questionnaire Group" label is displying under "Create Rule" for "Depandant questionnaire"
    And Verify "Assign Dependent Questionnaire" label is displying under "Create Rule" for "Depandant questionnaire"
    ###input values display
    And Verify "When the answer is" dropdown input field is displying under "Create Rule" for "1"
    And Verify "Assign Dependent Questionnaire Group" dropdown input field is displying under "Create Rule" for "2"
    And Verify "Assign Dependent Questionnaire" dropdown input field is displying under "Create Rule" for "3"
    And Verify "Delete Configuration" label is displaying under for "Depandant questionnaire"
    Then Verify "Add More" button is visible under "Depandant questionnaire"
    ###input field enabled
    And Verify "When the answer is" dropdown input field is enabled under "Create Rule" for "1"
    And Verify "Assign Dependent Questionnaire Group" dropdown input field is enabled under "Create Rule" for "2"
    And Verify "Assign Dependent Questionnaire" dropdown input field is enabled under "Create Rule" for "3"
    And Verify "Delete Configuration" label is enabled under for "Depandant questionnaire"
    And Verify "Add More" button is enabled under "Depandant questionnaire"
    Then Wait for 3 seconds
    Then Logout from the system

  #no and assigned depandant questionnaire group
  @Regression @Buyer @DependentQuestionnaires @TYSFunctionality
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is NO and see the assigned depandant questionnaire group on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" for "Government Relations - IBM (3)" in "Configure Workflow"
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
    Then Navigate back to supplier
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When Click "Admin Actions" tab
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


  #YES and dependendent questionnaire group
  @Smoke @Buyer @DependentQuestionnaires @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and see the assigned depandant questionnaire group on supplier side.
    When Enter Redhat buyer in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Suppliers" tab
    Then Wait for 3 seconds
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Does a government entity own a controlling interest in your company or are any of your company"
    Then Wait for 3 seconds
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations (4)" for Configure Workflows
    Then Wait for 3 seconds
    #invite a supplier
    When Click "Suppliers" tab
    Then Wait for 3 seconds
    When Click on My Suppliers Tab
    Then Wait for 3 seconds
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When click on "Yes" for question "Does a government entity own a controlling interest in your company or are any of your company" in question "1"
    Then Enter "testUAT" for explain reason
    When click on "No" for question "Board Members or Senior Management Government officials or Government employees in the past three (3) years?" in question "2"
    When click on "No" for question "Board Members or Senior Management have indirect ties (e.g. through familial relationships) with any Government official or Government employee in a position to influence a purchasing decision on behalf of a Government?" in question "3"
    When click on "No" for question "Are any of the companies named under the Ownership section of your profile as Parent or Ultimate Parent owned or controlled by any Government" in question "4"
    #When Click "Assign a Contact" button
    #When Select value "First Name Last Name - Director" from assign contact dropdown
    Then Wait for 3 seconds
    #Then Scroll Down to the element "Save"
    Then Wait for 2 seconds
    #When Click on "Save" button for save contact
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
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    #When click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "6"
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    Then Wait for 5 seconds
    Then Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
    Then Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations (4)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    #Then Verify "2 Approval parameters configured " is displaying under "Government Relations (4)" for Configure Workflows
    Then Wait for 2 seconds
    Then Logout from the system

  #No and assigned depandant questionnaire
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is NO and see the assigned depandant questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "IBM Relations (3)" for Configure Workflows
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
    Then Wait 2 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 3 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "IBM Relations" in Dropdown
    Then Wait 2 seconds
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When click on "No" for question "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?" in question "1"
    When click on "No" for question "Were any of the persons listed under the Management section of your Profile or listed under the Ownership section of your Profile as person Individual Owners, or any Senior Management or Board Members of your company formerly employed by IBM or, to your knowledge, an IBM Business Partner in the past five (5) years?" in question "2"
    When click on "No" for question "Do you currently expect to use any subcontractors in providing services or deliverables to IBM?" in question "3"
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
    Then Scroll to page end
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
    Then Show the tooltip text "Assigned based on suppliers response to IBM Relations questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "3 Approval parameters configured " is displaying under "IBM Relations (3)" for Configure Workflows
    Then Wait for 2 seconds
    Then Logout from the system

  #yes and Assign Dependent Questionnaire
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and see the assigned Assign Dependent Questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?"
    Then Wait for 3 seconds
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "IBM Relations (3)" for Configure Workflows
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
    Then Wait 2 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 3 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "IBM Relations" in Dropdown
    Then Wait 5 seconds
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When click on "Yes" for question "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?" in question "1"
    Then Enter "test" for explain reason
    When click on "No" for question "Were any of the persons listed under the Management section of your Profile or listed under the Ownership section of your Profile as person Individual Owners, or any Senior Management or Board Members of your company formerly employed by IBM or, to your knowledge, an IBM Business Partner in the past five (5) years?" in question "2"
    When click on "No" for question "Do you currently expect to use any subcontractors in providing services or deliverables to IBM?" in question "3"
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
    Then Scroll to page end
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
    Then Show the tooltip text "Assigned based on suppliers response to IBM Relations questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "3 Approval parameters configured " is displaying under "IBM Relations (3)" for Configure Workflows
    Then Wait for 2 seconds
    Then Logout from the system

  #YES And NO Assign Dependent Questionnaire group
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and NO and see the assigned Assign Dependent Questionnaire group on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
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
    When Click on "Add More" button
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Aman" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    Then Scroll to page end
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
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations - IBM questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
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

  #yes and no and assigned Assign Dependent Questionnaire
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and NO and see the assigned Assign Dependent Questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Click on "Add More" button
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Company Operations" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "IBM Relations (3)" for Configure Workflows
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
    Then Wait 2 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 3 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "IBM Relations" in Dropdown
    Then Wait 5 seconds
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When click on "No" for question "Are any of the persons listed under the Management section of your Profile, person Individual Owners under the Ownership section of your Profile, or any Senior Management or Board Members of your company currently employed by IBM or, to your knowledge, an IBM Business Partner?" in question "1"
    When click on "No" for question "Were any of the persons listed under the Management section of your Profile or listed under the Ownership section of your Profile as person Individual Owners, or any Senior Management or Board Members of your company formerly employed by IBM or, to your knowledge, an IBM Business Partner in the past five (5) years?" in question "2"
    When click on "No" for question "Do you currently expect to use any subcontractors in providing services or deliverables to IBM?" in question "3"
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
    Then Show the tooltip text "Assigned based on suppliers response to IBM Relations questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "IBM Relations (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    When Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    Then Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "3 Approval parameters configured " is displaying under "IBM Relations (3)" for Configure Workflows
    Then Wait for 2 seconds
    Then Logout from the system

  #no and depandant questionnaire and assigned depandant questionnaire group
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is NO and see the assigned depandant questionnaire group and assigned depandant questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
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
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    Then Scroll to page end
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
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations - IBM questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
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

  #Yes and dependent questionnaire group and dependent questionnaire
  @Regression @Buyer @DependentQuestionnaires 
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and see the assigned depandant questionnaire group assigned depandant questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    When click on "Yes" for question "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?" in question "1"
    Then Enter "testUAT" for explain reason
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
    Then Scroll to page end
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
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations - IBM questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
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

  #yes and no dependent questionnaire group and dependent questionnaire
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to configure a depandant questionnaire when the answer is YES and NO and see the assigned Assign Dependent Questionnaire group and assigned depandant questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
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
    When Select "Anti-Bribery, Anti-Corruption" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
    When Click on "Add More" button
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Aman" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    When Select "Company Operations" option for "Assign Dependent Questionnaire" in Configure Dependent Questionnaire at "3"
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    Then Scroll to page end
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
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations - IBM questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
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

  #Edit configure Questionnare
  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to edit the depandant questionnaire and see the assigned depandant questionnaire on supplier side.
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Aman" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Government Relations - IBM (3)" for Configure Workflows
    Then Wait for 3 seconds
    #Edit workflow
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on edit button for question "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    When Click on close icon for create rule
    Then Wait for 3 seconds
    When Click on close icon for create rule
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
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
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
    Then Scroll to page end
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
    Then Scroll Down to element visible "Assigned based on suppliers response to Government Relations - IBM questionnaire"
    Then Wait for 3 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Government Relations - IBM questionnaire" for dependent questionnnaire
    Then Wait for 5 seconds
    #Delete the configure workflow
    When Click "Admin Actions" tab
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

  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to see Collapse button will close the Configure Workflow
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Government Relations - IBM (3)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 3 seconds
    When Select "Yes" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    When Select "Aman" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    ###Verifying Collapse all
    When Click on create rule "Collapse All" button
    Then Wait for 2 seconds
    Then Verify create rule edit button displayed for "Will your Company be responsible for providing services to IBM in connection with governmental actions, such as payment of taxes, fines or fees to governmental agencies, filing of applications or other documents or the securing of governmental approvals, clearances, permits, licenses or visas?"
    Then Wait for 2 seconds
    When Click on create rule "Expand All" button
    Then Verify "When the answer is" label is displying under "Create Rule" for "Depandant questionnaire"
    Then Wait for 2 seconds
    Then Logout from the system

  @Regression @Buyer @DependentQuestionnaires
  Scenario: Verify As a buyer I want to see Buyer specific questionnaire under Buyer Specific
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    Then Verify "IBM" Buyer specific questionnaire count is 7
    Then Wait for 2 seconds
    Then Logout from the system
