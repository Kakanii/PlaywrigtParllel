Feature: IDD roles Configure & functionality

  #Configure Workflows
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  #SLYN-27707
  @Regression @Buyer @IDDroles
  Scenario: Verify As a Buyer, I should be able to see all the lables in Configure Workflows
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    ###labels display
    Then Verify "Configure Workflows" label is displaying under "Configure Workflows"
    And Verify "The Configure Workflow screen allows you to create rules to generate approvals and notifications or assign questionnaires based on questionnaire responses or Supplier Profile changes. Select from the tabs below to view configuration options." label is displying under "Configure Workflows" for "Configure Workflows"
    And Verify label name "Supplier Questionnaires" is displying under "Configure Workflows"
    And Verify label name "Internal Assessments" is displying under "Configure Workflows"
    And Verify label name "Supplier Profile" is displying under "Configure Workflows"
    And Verify label text "Questionnaire Type" is displying under "Configure Workflows"
    Then Verify "All" label is displaying under "Depandant questionnaire"
    And Verify "Buyer Specific" label is displaying under "Depandant questionnaire"
    When Click on "All" for "Depandant questionnaire"
    #Checklist questionnaire
    Then Verify label name "Internal Assessments" is displying under "Configure Workflows"
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Verify "Workflow" is displying under "Internal Assessments"
    Then Click on "Workflow" under for "PIF Indicator (3)"
    Then Verify "Approval Requests" button is displaying under "Workflow"
    And Wait for 3 seconds
    And Logout from the system

  @Regression @Buyer @IDDroles
  Scenario: Verify As a Buyer, I should be able to see all the lables in Internal Assessments
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Verify label "Questionnaire Name" is displying under "Configure Workflows"
    Then Verify the "Type" on the screen
    Then Verify the "Configured Parameters" on the screen
    Then Verify the "Assign Role" on the screen
    Then Refresh the page
    Then Wait for 15 seconds
    #IBM
    #    Then Verify "Checklist" is visible as a type under for "Buyer Internal assessment (2)" questionnaire
    # Then Verify "Checklist" is visible as a type under for "Export/Import Compliance (9)" questionnaire
    # Then Verify "Checklist" is visible as a type under for "PIF Indicator (3)" questionnaire
    # Then Verify "Pre-Invite" is visible as a type under for "Pre Invite Assessment (9)" questionnaire
    # Then Verify "Checklist" is visible as a type under for "RBA/EICC Contract (3)" questionnaire
    # Then Verify "Checklist" is visible as a type under for "S&EMS Record created (3)" questionnaire
    # Then Verify "Checklist" is visible as a type under for "USL Search (1)" questionnaire
    #RH
    Then Verify "Checklist" is visible as a type under for "DPL Search (1)" questionnaire
    Then Verify "Checklist" is visible as a type under for "Financial Assessment (3)" questionnaire
    Then Verify "Checklist" is visible as a type under for "PIF Assessment (9)" questionnaire
    Then Verify "Checklist" is visible as a type under for "Supplier Management (5)" questionnaire
    Then Verify "Checklist" is visible as a type under for "USL Search (1)" questionnaire
    #bt
    # Then Verify "Checklist" is visible as a type under for "IDD - BT (8)" questionnaire
    Then Verify "Select the role that should be able to action the relevant questionnaire. No role assignment allows all the user roles, with update permission to checklist, to be able to action the relevant questionnaire." tooltip on "Assign role"
    Then Wait for 5 seconds
    #Then Select "ramausertest" in "select" under "USL Search (1)" select role
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Logout from the system

  #only for ibm
  @smoke @IBMBuyer @IDDroles
  Scenario: Verify As a Buyer, I should be able to view hover over message on Preinvite Assessment questionnaire
    Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then Verify "Role assignment is unavailable for Pre-Invite Assessment Questionnaires." is visible upon hover on "Pre Invite Assessment (9)" questionnaire
    And Logout from the system

   @Buyer @IDDroles @TYSFunctionality @SanitySuiteCheck @SanityCheck
  Scenario: Verify As a Buyer, I should be able to Configure Approval Requests for Checklist questionnaires
     When Enter Redhat buyer in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
     Then Select page records
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Click on "Workflow" under for "PIF Indicator (3)"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "Yes" radio button for question "Is this a PIF Supplier?"
    And Wait for 2 seconds
    And Click on "Equal To" radio button for answer question "Is this a PIF Supplier?"
    And Wait for 3 seconds
    And Click on "Yes" radio button for approval question "Is this a PIF Supplier?"
    Then Enter "test" as description for approval question "Is this a PIF Supplier?"
    When Click on "Assign role" dropdown button for approval requests role "Is this a PIF Supplier?"
    Then Select "Administrator" as assiging approval requests role for "Is this a PIF Supplier?"
    When Click "Save" button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 3 seconds
    #Then Verify "1 Approval" is displaying under "PIF Indicator (3)" on Internal Assessments
    Then Click on "Workflow" under for "PIF Indicator (3)"
    And Click "Approval Requests" button under for "Workflow"
    And Wait for 3 seconds
    And Click on "No" radio button for question "Is this a PIF Supplier?"
    And Wait for 3 seconds
    And Scroll Down to element "Save" is visible
    When Click on save button
    Then Verify toast message "Questionnaire Response Template Saved successfully. These Approval changes will be applied on new records and not for the existing approval requests." successfully is shown
    And Wait for 3 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    And Logout from the system

  #for Redhat Buyer
  @smoke @Buyer @IDDroles
  Scenario: verify assigned role is visible on the configured IDD
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Wait for 3 seconds
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    #Then Click on the Skip
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
    # Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "RedHat is inviting you to join Trust Your Supplier" for redhat buyer
    Then Wait for 5 seconds
    #Then Click on the email with subject "Trust Your Supplier" from maildrop
    # Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Click on Join Now Link supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
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
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
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
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    Then Logout from the system
    #Onboard process
    Then Enter "buyermailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Verify "Assign to" label on IDD questionnaires
    Then Verify "This is the role assigned by your admin on this questionnaire. Only the users with this role can perform action on this questionnaire" label tooltip on IDD questionnaires for "Assign to"
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Logout from the system

  #for Redhat only
  @smoke @Buyer @IDDroles
  Scenario: Verify buyer is able to answer checklist questionnaire if no role are not configured on IDD
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then verify "Select Role" in "select" under "DPL Search (1)"
    Then verify "Select Role" in "select" under "Financial Assessment (3)"
    Then verify "Select Role" in "select" under "PIF Assessment (9)"
    Then verify "Select Role" in "select" under "Supplier Assessment (5)"
    Then verify "Select Role" in "select" under "Supplier Management (5)"
    Then verify "Select Role" in "select" under "USL Search (1)"
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    #Then Click on the Skip
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
    # Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "RedHat is inviting you to join Trust Your Supplier" for redhat buyer
    Then Wait for 5 seconds
    #Then Click on the email with subject "Trust Your Supplier" from maildrop
    # Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Click on Join Now Link supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
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
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
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
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    Then Logout from the system
    #Onboard process
    Then Enter "buyermailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
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
    And Logout from the system

  #for Redhat only
    @Buyer @Iddroles @TYSFunctionality
  Scenario: verify assigned role buyer is able to answer checklist questionnaire
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then Click on Next button on Discover Suppliers page
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Wait for 3 seconds
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    # Then Click on the Skip
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
    # Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "RedHat is inviting you to join Trust Your Supplier" for redhat buyer
    Then Wait for 5 seconds
    #Then Click on the email with subject "Trust Your Supplier" from maildrop
    # Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Click on Join Now Link supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
    Then Verify country region lable is displyed on registration page
    Then Verify Business name lable is displyed on registration page
    Then Verify Legal business name lable is displyed on registration page
    Then Verify Website lable is displyed on registration page
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
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
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
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 8 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 5 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 5 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 8 seconds
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    #Onboard process
    Then Enter "redhationboardedmailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
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
    And Logout from the system
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Logout from the system
    
    
  #for Redhat only
  #username Visibilty scenario is having blocker
  @Smoke @Buyer @IDDroles
  Scenario: verify assigned role which is tagged as SRC contact for a supplier is able to answer checklist questionnaire
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Supplier Relationship Manager" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Wait for 3 seconds
    And Logout from the system

  #for Redhat only #27710
  @Smoke @Buyer @IDDroles
  Scenario: verify buyer is able to view disabled button on IDD as it is assigned to different role
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    #Then Click on the Skip
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
    # Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "RedHat is inviting you to join Trust Your Supplier" for redhat buyer
    Then Wait for 5 seconds
    #Then Click on the email with subject "Trust Your Supplier" from maildrop
    # Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Click on Join Now Link supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
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
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
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
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 30 seconds
    Then Logout from the system
    #Onboard process
    Then Enter "buyermailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Verify "Savebutton" Label disabled on IDD
    Then Verify "Save&closebutton" Label disabled on IDD
    Then Verify "Submitutton" Label disabled on IDD
    Then Verify "Closebutton" Label disabled on IDD
    Then Verify "This questionnaire can only be completed by the users/roles its assigned to. Please contact your administrator for more information." text message is displying under "USL Search"
    Then Wait for 5 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Logout from the system

  #SLYN-28145
            @Buyer @IDDroles @TYSFunctionality @RDR
  Scenario: verify buyer is able to perform Checklist Questionnaire Assignment Update Basis of Permission Update
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 2 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Click on "Edit Permissions" tab on supplier notification
    Then Click on "onboardereditbutton" chkbox
    Then Click on "Checklistupdate" chkbox
    When Click on Save Contact button on Supplier Contacts page
    Then Wait for 5 seconds
    And Click "Configure Workflows" tab
    Then verify "Select Role" in "select" under "USL Search (1)"
    Then Click "Manage Users" tab
    Then Click on "Edit Permissions" tab on supplier notification
    Then Click on "onboardereditbutton" chkbox
    Then Click on "Checklistupdate" chkbox
    When Click on Save Contact button on Supplier Contacts page
    And Logout from the system

  #Pre-condition configure first only for existing supplier #Userlist
  @sanity @Buyer @IDDroles
  Scenario: verify buyer is able to view the tagged users
    Then Enter "redhationboardedmailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click "Filter by" button
    Then Wait for 3 seconds
    Then Click on "Status" filter
    Then Click on "Status" dropdown
    Then Select Pending Invites in Status dropdown "Ready For Review"
    #Then Click on the Status button
    #Then Select the Ready For Review Status under dropdown
    Then Wait for 3 seconds
    Then Click "Search" button
    Then Wait for 10 seconds
    Then verify the status as "Ready For Review"
    Then Click on the Search by supplier for "Ready For Review"
    # Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Verify "(ramatestrole auto)" user is listed beside the role in Parenthesis
    Then Verify user mailid "ramatestroleauto@maildrop.cc" upon hover over on user
    #Then Verify user mailid  "ramatestroleauto@maildrop.cc" upon hover over on user mailid
    And Logout from the system

       @Buyer @IDDroles @TYSFunctionality
  Scenario: verify buyer is able to view the tagged users for new suppliers
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 15 seconds
    Then Click on Next button on Discover Suppliers page
    #Then Verify "1 Approval parameters configured " is displaying under "PIF Indicator (3)" for Configure Workflows
    Then Select "Onboarder" in "select" under "USL Search (1)" select role
    Then Wait for 5 seconds
    Then Click on save button in my account page
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    #Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Click on Next button on Invite Supplier window
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Wait for 3 seconds
    #relationship screen
    Then Click on Update contacts of "Onboarder" role in Relationship contacts screen
    Then select "ramatestrole auto" mail Id in Relationship contacts screen
    #Then Click on Update contacts icon on "Onboarder" role
    #Then Update contacts of "rama dfg" role
    Then Click on "Save" button on "Update Contacts"
    Then Wait for 5 seconds
    #Then Click on checkbox on "Onboarder" role
    Then Click on Next button
    Then Wait for 3 seconds
    # Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    # Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "RedHat is inviting you to join Trust Your Supplier" for redhat buyer
    Then Wait for 5 seconds
    #Then Click on the email with subject "Trust Your Supplier" from maildrop
    # Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Click on Join Now Link supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    #Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Enter random company registration number in "Tax Identification Number" field under "Tax Details"
    #Then Enter "12564DG#45454567890" in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Wait for 5 seconds
    #Then Show attached document under "Registration / Incorporation Document" "samplePDF.pdf"
    #Then Wait for 5 seconds
    #Then Enter random company registration number in "Registration / Incorporation Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    #Then Select "Category" on Diversity Category field
    #Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
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
    Then Wait for 8 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    Then Click on Assign "1" button
    Then Select the option "rama canada - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on Ownership nav link
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 5 seconds
    Then Select the option "rama canada - Director , 2002" for Ownership on the Add a new Individual modal
    #Then Select the option "rama canada - Director " for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Wait for 5 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    Then Wait for 15 seconds
    Then Logout from the system
    #Onboard process
    Then Enter "redhationboardedmailid" supplier in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Verify "(ramatestrole auto)" user is listed beside the role in Parenthesis
    Then Verify user mailid "ramatestroleauto@maildrop.cc" upon hover over on user
    #Then Verify user mailid  "ramatestroleauto@maildrop.cc" upon hover over on user mailid
    And Logout from the system
    Then Enter "buyermailid" supplier in Email Address field
    #Then Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    And Click "Admin Actions" tab
    And Click "Configure Workflows" tab
    And Click on label button "Internal Assessments" under for "Configure Workflows"
    Then Refresh the page
    Then Wait for 8 seconds
    Then Click on Next button on Discover Suppliers page
    Then Click on "canceliddicon" chkbox
    #Then Click on "canceliddicon" under for "Internal Assessments"
    Then Verify toast message "Checklist role assignment updated successfully" successfully is shown
    And Logout from the system