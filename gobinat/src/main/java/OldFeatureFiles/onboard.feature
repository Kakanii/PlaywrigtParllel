    # International Business Machines Corporation

    # Nokia

    # Lenovo

    # Vodafone Group Plc

    # Flex Ltd

    # Pearson

Feature: All Buyers with there supplier onboard life cycle in the System

  Background: Login as Buyer
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for International Business Machines Corporation
    When Enter data in Email Address field
    Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Director" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Director sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire   (handling later)
    Then Click "Questionnaires" tab      
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Switch to the active window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for Question "1"
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    Then Scroll the page
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Nokia
    # 1. Invite a User by Nokia Buyer
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Nokia Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MB" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "MB" Supplier Contact email address on Invite Supplier modal
    Then Enter "MB" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on Nokia Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MB" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MB" supplier status "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MB" supplier Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "MB" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
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
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter value "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Director" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Select Add a New Location from the dropdown " Domestic Headquarters - Ausi Mansion"
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
     #Then Click on Do it later button
    Then Switch to the parent window
    # 5. Profile complete
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on "Confirm" primary button on the modal
    Then Enter "12" followed by "-" and 7 numbers in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter timestamp in "Company Email" Email field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Refresh the page
    Then Click on "Next Step" button
    Then Wait for 5 seconds
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
     Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    #Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    #Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "myautonokiabuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Nokia Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MB" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Wait for 3 seconds
    #Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## 7. IDD
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Click on "Begin" button at the "Supplier Risk review" Internal Due Diligence Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Wait for 3 seconds
    #Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    # 8. Approve request
    Then Wait for 3 seconds
    Then Refresh the page
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Lenovo
    Then Enter data in Email Address field "myautolenovobuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Nokia Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "MB" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "MB" Supplier Contact email address on Invite Supplier modal
    Then Enter "MB" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Switch to the parent window
    # 2. Verify the supplier user in pending status for the Nokia buyer
    Then Click on Nokia Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MB" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "MB" supplier status "Pending Invites"
    Then Switch to the parent window
    Then Logout from the system
    # 3. Verify the email sent
    Then Verify Email received in "MB" supplier Inbox with subject "Lenovo is inviting you to join Trust Your Supplier"
    # 4. Access the email and register
    Then Click on the email with subject "Lenovo is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "MB" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
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
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter value "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Director" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Select Add a New Location from the dropdown " Domestic Headquarters - Ausi Mansion"
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
     #Then Click on Do it later button
    Then Switch to the parent window
    # 5. Profile complete
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on "Confirm" primary button on the modal
    Then Enter "12" followed by "-" and 7 numbers in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter timestamp in "Company Email" Email field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Refresh the page
    Then Click on "Next Step" button
    Then Wait for 5 seconds
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    # 6. supplier should publish the questionnaire
    Then Click on Questionnaires Nav link
     Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    #Then Close toast message
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    #Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field "myautolenovobuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on Nokia Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "MB" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Wait for 3 seconds
    #Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## 7. IDD
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Click on "Begin" button at the "Supplier Risk review" Internal Due Diligence Questionnaires
    # Then Click on Yes for trade Compliance First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click on "Onboard" primary button on the modal
    # Then Wait for 3 seconds
    #Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    # 8. Approve request
    Then Wait for 3 seconds
    Then Refresh the page
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Vodafone Group Plc
    Then Enter data in Email Address field "myautovodafonebuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "Vodafone is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Vodafone is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Director" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "98765432" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Director sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautovodafonebuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    # #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    # #Approve request
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Flex Ltd
    Then Enter data in Email Address field "myautoflexbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "Flex is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Flex is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Director" in "First Name" field
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
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Director sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoflexbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    # #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Pearson
    Then Enter data in Email Address field "myautopearsonbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "Pearson is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Pearson is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    # Then Enter "Director" in "First Name" field
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
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Director sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Director sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautopearsonbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    # #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  #  ADP
  @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for ADP
    Then Enter data in Email Address field "myautoadpbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "ADP is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "ADP is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoadpbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Legal and Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on No for trade Compliance Second question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
 
 #Aramco Americas 
 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Aramco Americas 
    Then Enter data in Email Address field "myautoaramcoamericasbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "Saudi Aramco is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Saudi Aramco is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoaramcoamericasbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Legal and Compliance" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click on No for trade Compliance Second question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Click on ALL tab under the Approval Requests
    # Then Approve all the Request under the Approval Requests section
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

   # AB InBev myautoabinbevbuyer@mailinator.com
 @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for AB InBev
    Then Enter data in Email Address field "myautoabinbevbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from ABInBev"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from ABInBev"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoabinbevbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Legal and Compliance" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click on No for trade Compliance Second question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Click on ALL tab under the Approval Requests
    # Then Approve all the Request under the Approval Requests section
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  # red hat myautoredhatbuyer@mailinator.com
  @Smoke @Buyer @Onboard @exisitingbuyer1
   Scenario: Verify Supplier Onboard for Red Hat
    Then Enter data in Email Address field "myautoredhatbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "RedHat is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "RedHat is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    #Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoredhatbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Supplier Assessment" Internal Due Diligence Questionnaires
    Then Click "Yes" for Question "1"
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Switch to the active window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Yes" for Question "2"
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Financial Assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Supplier Management" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Yes" for Question "2"
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 # Deutsche Telekom myautodtbuyer@mailinator.com
  @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for Deutsche Telekom
    Then Enter data in Email Address field "myautodtbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    ###Then Verify Email received in "USA" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    ###Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Verify Email received in "USA" supplier Inbox with subject "Deutsche Telekom is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Deutsche Telekom is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    # Then Wait for 5 seconds
    # Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    # Then Select the Yes answer Radio button at Import Export Compliance Question
    # Then Click on Publish Questionnaire button on questionaire acceptance page
    # Then Switch to the active window
    # Then Click on the publish button for publishing
    # Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautodtbuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    # Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    #IDD
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Legal and Compliance" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click on No for trade Compliance Second question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Switch to the active window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Attach Document" button
    # Then Upload "PDF" under "Upload Document"
    # Then Click "Confirm" button
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    # Then Click on No for First question
    # Then Enter value at text area for Question
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Action Center" Tab on panel
    # Then Scroll the page
    # Then Wait for 5 seconds
    # Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    # Then Click "No" for Question "1"
    # Then Click "No" for Question "2"
    # Then Click "No" for Question "3"
    # Then Scroll the page
    # Then Click "Submit" button 2
    # ###Then Click on Submit button on my supplier
    # Then Switch to the active window
    # Then Click on the Submit button for submitting questionaire
    # Then Switch to the parent window
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    # Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    # Then Wait for 5 seconds
    # Then Click on "Action Center" Tab on panel
    # Then Click on ALL tab under the Approval Requests
    # Then Approve all the Request under the Approval Requests section
    # Then Click on "Onboard Supplier" button on panel
    # Then Switch to the active window
    # Then Enter notes in the onboard supplier modal
    # Then Upload the file for Attach a file on onboarding supplier
    # Then Click "Onboard" button
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

 # IT People Corporation
  @Smoke @Buyer @Onboard @exisitingbuyer
   Scenario: Verify Supplier Onboard for  IT People Corporation
    Then Enter data in Email Address field "myautoitpeoplebuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "USA" Supplier Company name on Invite Supplier window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "USA" Supplier Contact email address on Invite Supplier modal
    Then Enter "USA" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify Email received in "USA" supplier Inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link in the "USA" supplier Email
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
    Then Enter "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 5 seconds
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    # Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 9 digit numeric data in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "VATDOCUMENT"
    Then Click "Confirm" button 1
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button   
    Then Wait for 3 seconds 
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS , 1992" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    #supplier should publish the questionnaire
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"	
    Then Select "United States of America" checkbox for question 7	
    Then Switch to the active window	
    Then Click "Publish Questionnaire" button 1
    Then Click on the publish button for publishing
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field "myautoitpeoplebuyer@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "USA" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on "Onboard" primary button on the modal
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
