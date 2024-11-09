Feature: Dependent Questionnaires Assignment

  #Dependent Questionnaires Assignment
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window


	#NO and assigned depandant questionnaire group Assignment
  @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for 2nd buyer different questionnaire    
    Then Enter data in Email Address field
    ##When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #Select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Maildrop
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    And Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
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
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Does a government entity own a controlling interest in your company or are any of your company's owners, Board Members or Senior Management currently Government officials or Government employees?" in question "1"
    And click on "No" for question "Were any of your company’s owners, Board Members or Senior Management Government officials or Government employees in the past three (3) years?" in question "2"
    And click on "No" for question "Do any of your company’s owners, Board Members or Senior Management have indirect ties (e.g. through familial relationships) with any Government official or Government employee in a position to influence a purchasing decision on behalf of a Government?" in question "3"
    And click on "No" for question "Are any of the companies named under the Ownership section of your profile as Parent or Ultimate Parent owned or controlled by any Government, Government official or Government employee?" in question "4"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "DependantAssignment" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    Then Navigate back to supplier
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    Then Wait 2 seconds
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
    #second buyer registration
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    #Answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    And Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    And Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    And click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    And click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    And click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    And click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    And click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    And click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    #Check dependant questionnaire from first buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Government Relations (4)"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire is not displayed
    And Wait for 3 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    #Delete the configure workflow
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
    @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for 1st buyer different questionnaireWhen Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
      When Enter Redhat buyer in Email Address field
        ##When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Suppliers" tab
      Then Wait for 3 seconds
      When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on the "Workflow" button for "Ethics and Compliance" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    And Navigate back to supplier
    Then Wait for 3 seconds
    #When Click on "All" for "Depandant questionnaire"
    #Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
      When Click "Suppliers" tab
      And Wait for 3 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #Select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Maildrop
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    And Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
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
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
      Then Refresh the page
      And Wait for 15 seconds
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
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
      When Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
      Then Wait for 15 seconds
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 15 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    Then Wait for 15 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Government Relations" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #second buyer registration
    Then Verify received an email in supplier maildrop Inbox with Nokia subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    #Answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 15 seconds
    When Click on button "Begin Questionnaire" for questionare "Government Relations"
    Then Wait for 5 seconds
    When click on "No" for question "Does a government entity own a controlling interest in your company or are any of your company's owners, Board Members or Senior Management currently Government officials or Government employees?" in question "1"
    And click on "No" for question "Were any of your company’s owners, Board Members or Senior Management Government officials or Government employees in the past three (3) years?" in question "2"
    And click on "No" for question "Do any of your company’s owners, Board Members or Senior Management have indirect ties (e.g. through familial relationships) with any Government official or Government employee in a position to influence a purchasing decision on behalf of a Government?" in question "3"
    And click on "No" for question "Are any of the companies named under the Ownership section of your profile as Parent or Ultimate Parent owned or controlled by any Government, Government official or Government employee?" in question "4"
      And Wait for 5 seconds
      And Click button "Publish Questionnaire" for questionare
    And Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Government Relations (4)"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire is not displayed
    And Logout from the system
    #Login to IBM buyer
      When Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Delete the configure workflow
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
      When Click on the "Workflow" button for "Ethics and Compliance" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    #Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
    
    @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for both buyers
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 3 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #Select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Maildrop
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    And Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
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
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    And click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    And click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    And click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    And click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    And click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    And click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 3 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    Then Wait 2 seconds
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
    #second buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Nokia Corporation" buyer button
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    #Delete the configure workflow
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    ##Delete the configuration from first buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
    
    @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for configure with 2 buyers but third guy do not configure anything
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #Select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Maildrop
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    And Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
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
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    And click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    And click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    And click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    And click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    And click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    And click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 3 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    Then Wait 2 seconds
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
    #second buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Nokia Corporation" buyer button
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #Invite supplier from 3rd buyer
    Then Enter data in Email Address field for vodafone buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click "Next" button
    When Click "Send Invite" button
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Third buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Vodafone Group Plc wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Vodafone Group Plc wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "CONNECT NOW" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Vodafone Group Plc" buyer button
    When Click on "Vodafone Group Plc" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Vodafone Group Plc. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    And Wait for 5 seconds
    And Logout from the system
    Then Enter data in Email Address field for vodafone buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Verify questionnaire message "You have not assigned any questionnaires. Click the assign questionnaires button to assign some." is displyed
    And Logout from the system
    #Delete the configure workflow from Nokia
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    ##Delete the configuration from IBM buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
    
    #Need to run once the Questionnaire issue resolved
    @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality
  	Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for third buyer but first 2 buyers do not configure questionnaire
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
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
    Then Wait for 1 seconds
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
    Then Logout from the system
    #Second Buyer
    Then Enter data in Email Address field for vodafone buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click "Next" button
    When Click "Send Invite" button
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    #Third buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Vodafone Group Plc wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Vodafone Group Plc wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "CONNECT NOW" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Vodafone Group Plc" buyer button
    When Click on "Vodafone Group Plc" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Vodafone Group Plc. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    And Wait for 5 seconds
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 3 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    Then Wait 2 seconds
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
    #second buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Nokia Corporation" buyer button
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #When Click on My Buyers Nav link
    And Wait for 5 seconds
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    And click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    And click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    And click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    And click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    And click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    And click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #Check dependent questionnaire for 1st buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Verify questionnaire message "You have not assigned any questionnaires. Click the assign questionnaires button to assign some." is displyed
    And Logout from the system
    #Check dependent questionnaire for 2nd buyer
    Then Enter data in Email Address field for vodafone buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Verify questionnaire message "You have not assigned any questionnaires. Click the assign questionnaires button to assign some." is displyed
    And Logout from the system
    #Delete Configure workflow
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    
    
    @Smoke @Buyer @DependentQuestionnairesAssignment @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to see Dependent Questionnaire assignment for configuration is different with two buyers for the same questionaire 
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Within the past five (5) years:  Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation."
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "Depandant" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #Invite a supplier
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #Select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Maildrop
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    And Wait 2 seconds
    #Assign
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    And Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "user" in "Last Name" field
    And Enter Email on Invite a user registration modal "user"
    And Enter Confirmation Email on Invite a user registration modal "user"
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
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Within the past five (5) years: Has your company or any related entity (e.g., Ultimate Parent, parent, subsidiary or affiliate) or any of its or their owners, Board Members, Senior Management or any other employees been investigated, charged or convicted in any jurisdiction for engaging in any illegal activity related to unethical conduct, such as bribery or corruption? Please include any plea or deferred prosecution agreement settling any criminal charges or investigation." in question "1"
    And click on "No" for question "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?" in question "2"
    And click on "Yes" for question "Does your company have a written code of conduct applicable to all employees and representatives of your company that meets or exceeds all of the following criteria:" in question "3"
    Then Enter the Notes under the questionnaire
    When click on "Yes" for question "Does your company conduct ethics training of employees and representatives of your company that meets or exceeds the following criteria:" in question "5"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    ###dependent Questionnaire
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    And click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    And click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    And click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    And click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    And click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    And click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    And Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Show Toast message "Questionnaire Published"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from buyer side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    Then Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    Then Wait for 5 seconds
    Then Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    And Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #Configure Dependant Questionnaire
    When Click "Admin Actions" tab
    When Click "Configure Workflows" tab
    When Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    #Ethics and Compliance
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 5 seconds
    When Click on "Create Rule" button for dependent questionnaire "Have your company or any employee of your company, any related entities (Parent company, Ultimate Parent company, etc.) of your company or its employees have ever been prohibited from participating in any business activities or other matters which are subject to the jurisdiction of US laws and regulations?"
    Then Wait for 3 seconds
    When Select "No" option for "When the answer is" in Configure Dependent Questionnaire at "1"
    And Select "sameQuestionnaire" option for "Assign Dependent Questionnaire Group" in Configure Dependent Questionnaire at "2"
    And Scroll up the page
    Then Wait for 3 seconds
    When Click on "Save" button for create rule
    Then Wait for 3 seconds
    And Navigate page back
    Then Wait for 3 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Dependent Questionnaire parameters configured" is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 3 seconds
    #invite a supplier from nokia buyer
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
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
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    When Click on "Questionnaire Name" for "Questionnaire Name"
    Then Select the "Ethics and Compliance" in Dropdown
    Then Wait 2 seconds
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
    #second buyer registration
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    And Wait for 5 seconds
    #Maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    And Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #Accept the invitation
    #When Click on "Nokia Corporation" buyer button
    When Click on "Nokia" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    And Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    #Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Verify toast message "You are now connected with Nokia. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    #Answer the Questionnaire
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    And Refresh the page
    And Wait for 5 seconds
    #Answer the dependent questionnaire
    When Click on button "Begin Questionnaire" for questionare "Government Relations"
    And Wait for 5 seconds
    When click on "No" for question "Does a government entity own a controlling interest in your company or are any of your company's owners, Board Members or Senior Management currently Government officials or Government employees?" in question "1"
    When click on "No" for question "Were any of your company’s owners, Board Members or Senior Management Government officials or Government employees in the past three (3) years?" in question "2"
    When click on "No" for question "Do any of your company’s owners, Board Members or Senior Management have indirect ties (e.g. through familial relationships) with any Government official or Government employee in a position to influence a purchasing decision on behalf of a Government?" in question "3"
    When click on "No" for question "Are any of the companies named under the Ownership section of your profile as Parent or Ultimate Parent owned or controlled by any Government, Government official or Government employee?" in question "4"
    And Wait for 5 seconds
    And Logout from the system
    ##check the dependent questionnaire added to supplier from nokia buyer side
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the same supplier name and press Enter
    Then Wait for 5 seconds
    And Scroll Down to element visible "Assigned based on suppliers response to Ethics and Compliance questionnaire"
    And Wait for 5 seconds
    And Show the tooltip text "Assigned based on suppliers response to Ethics and Compliance questionnaire" for dependent questionnnaire
    #Delete the configure workflow
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
    ##Delete the configuration from first buyer
    Then Enter data in Email Address field
    ##When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on "All" for "Depandant questionnaire"
    Then Wait for 3 seconds
    When Click on "Workflow" button for "Ethics and Compliance (7)" in "Configure Workflow"
    Then Wait for 3 seconds
    When Click "Dependent Questionnaire" button under for "Workflow"
    Then Wait for 2 seconds
    When Click on "Delete All Configurations" button for create rule
    And Click on "Confirm" button
    Then Verify toast message "All the configurations deleted successfully" successfully is shown
    And Navigate page back
    Then Wait for 4 seconds
    When Click on "All" for "Depandant questionnaire"
    Then Verify "1 Approval parameters configured " is displaying under "Ethics and Compliance (7)" for Configure Workflows
    And Wait for 2 seconds
    And Logout from the system
