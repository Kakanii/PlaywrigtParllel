Feature: Dashboard page

  #Dashboard
  # @SupplierDashboard
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  #BUYER DASHBOARD
  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Notifications page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Go to my notifications on Dashboard page "true"
    Then Show title on Notifications page "Notifications"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Repots page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Reports on Dashboard page "true"
    Then Show title on Report page "Reports"
    And Logout from the system

  #@Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity
  Scenario: Verify title on Third Party Risk Info page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Third Party Risk Info on Dashboard page "true"
    Then Show title on ReportThird Party Risk Info page "Verisk Maplecroft"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Marketplace page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Marketplace on Dashboard page "true"
    Then Show title on Marketplace page "All Apps"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Suppliers label visibility on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    #Then Click on "Suppliers" Down arrow on Dashboard
    And Click on My Suppliers Tab
    Then Show Suppliers label on Dashboard page "true"
    Then Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Discoverable Supplier page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Discoverable Supplier on Dashboard page "true"
    Then Show title on Discoverable Supplier page "Discover Suppliers (Powered by Moody's)"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Invite Supplier page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Invite Supplier on Dashboard page "true"
    Then Show title on Invite Supplier page "Invite Supplier"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Manage Approvals page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Manage Approvals on Dashboard page "true"
    Then Show title on Manage Approvals page "Manage Approvals"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on My Supplier Extract page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on My Supplier Extract on Dashboard page "true"
    Then Show title on My Supplier Extract page "My Supplier Extract"
    And Logout from the system

  @Smoke @Dashboard @Buyer @BuyerDashboard @CDCI @Sanity @QuickSanity 
  Scenario: Verify title on Manage Contacts page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    And Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on Manage Contacts on Dashboard page "true"
    Then Show title on Manage Contacts page "Manage Contacts"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Profile tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Wait for 5 seconds
    And Enter data in Password field
    Then Click on Sign In button on Login
    And Wait for 25 seconds
    Then Click on "Suppliers" Down arrow on Dashboard page
    Then Click on "Company" Down arrow on Dashboard
    #Then Show Profile tab on Dashboard page "true"
    #Then Profile tab clickable on Dashboard page "true"
    Then Click on Profile tab on Dashboard page "true"
    Then Show title on Profile tab page "Basic Information"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Manage Questionnaire tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Questionnaire on Dashboard page "true"
    Then Show title on Manage Questionnaire page "Manage Questionnaire"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Configure Approvals tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Configure Approvals on Dashboard page "true"
    Then Show title on Configure Approvals page "Configure Workflows"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Manage Users tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Manage Users on Dashboard page "true"
    Then Show title on Manage Users page "Manage Users"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify SSO Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on SSO Configuration on Dashboard page "true"
    Then Show title on SSO Configuration page "SSO Configuration"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Revalidation Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Revalidation Configuration on Dashboard page "true"
    Then Show title on Revalidation Configuration page "Revalidation Configuration"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Password Configuration tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Password Configuration on Dashboard page "true"
    Then Show title on Password Configuration page "Password Configuration"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Bulk Upload tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Bulk Upload on Dashboard page "true"
    Then Show title on Bulk Upload page "Bulk Upload"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Supplier Watchlist tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Supplier Watchlist on Dashboard page "true"
    Then Show title on Supplier Watchlist page "Supplier Watchlist"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Notifications Preferences tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Notifications Preferences on Dashboard page "true"
    Then Show title on Notifications Preferences page "Notifications Preferences"
    And Logout from the system

  @Regression @Dashboard @Buyer @BuyerDashboard 
  Scenario: Verify Support tab visibility and status on Dashboard page for Buyer
    When Enter data in Email Address field
    #Then Click on Continue button on Login page
    And Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 25 seconds
    Then Click on "Admin Actions" Down arrow on Dashboard
    Then Click on Support on Dashboard page "true"
    Then Show title on Support page "Support"
    And Logout from the system

  @Regression @UKLocalisation @Localisation @Supplier 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and with questionnaire and Without VAT Registration
    #Open buyer page
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
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
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
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
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
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
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    Then Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Scroll the page
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
    Then Select "Bute" in "County" dropdown
    Then Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    Then Enter "74546443" in "PO Box" field after "Albania" supplier registration
    Then Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
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
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    Then Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    Then Show date calander in "Date Established" label
    #enter text
    Then Scroll the page
    Then Select "Sole Trader" value from Business type dropdown
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    Then Click "Save and Continue" button 3
    Then Show "Required" under "Date Established" at field
    #Then Show "Required" under "Are you VAT Registered?" in Tax details
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Certificate of Incorporation" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    Then Wait for 5 seconds
    Then Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    Then Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    Then Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter random company registration number in "Company Registration Number" field under "Tax Details"
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
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
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
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
    Then Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
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
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##DPL search
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #buyer internal
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    ##D&B-supplier diversity data
    #Then Click on "D&B Supplier Diversity Data - ..." in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    ##D&B-supplier diversity data
    #Then Click on "D&B Supplier Diversity Data - ..." in Approval Source "2"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    ##D&B - Supplier Risk Assessment - D&B
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #D&B - Supplier Risk Assessment - D&B
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "2"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    ##D&B - Supplier Risk Assessment - D&B
    ##Then Scroll the page
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "3"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

  @Regression @UKLocalisation @Localisation @Supplier 
  Scenario: Verify Bank Account page for UK supplier
    Then Enter UK supplier email in Email Address field
   # Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    #Then Click "Company Account" radio button
    Then Verify "United Kingdom" is listed in "Country/Region" dropdown
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "County" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "IBAN" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "County" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show text field "IBAN" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "County" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Bank Key" input text field enabled under "Bank Account Information"
    Then Verify "Account Number" input text field enabled under "Bank Account Information"
    Then Verify "SWIFT Code" input text field enabled under "Bank Account Information"
    Then Verify "IBAN" input text field enabled under "Bank Account Information"
    ###Currency in Bank account page
    #Then Verify "Pound Sterling (GBP)" is listed in Currency dropdown
    ###Flag
    Then Verify "United Kingdom" flag in "Bank Contact Number" field "uk"
    #Then Verify "United Kingdom" flag in "Accounts Receivable Contact Number" field "uk"
    ###Phone Number
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    #Then Scroll the page
    Then Enter "UK BOA" in "Bank Account Label" field
    Then Enter "UK CA" in "Account Holder Name" field
    Then Enter "Bank of UK" in "Bank Name" field
    Then Enter "Vienna" in "Bank Branch Name" field
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Vienna" in "City" field
    ###Then Select "Anglesey" in "County" dropdown
    ###Then Enter "P01 2AY" in "Postal Code" field
    Then Enter "Lekha" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Enter "GB29NWBK60161331926819" in "IBAN" field under "Bank Account Information" for Bank Details
    Then Enter "Testing" in Bank Desciption
    Then Select "Euro" in "Currency" css dropdown
    Then Wait for 5 seconds
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    #Then Upload "PDF" under "Upload Document" for Bank Account
    Then Click "Confirm" button
    Then Scroll the page
    Then Click "Save" button 4
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Wait for 5 seconds
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Scroll the page
    Then Click "Save" button 4
    Then Wait for 3 seconds
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    #And Click on the Preferred Bank check box
    #Then Wait 5 seconds
    #Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  @Smoke @USALocalisation @Localisation @Supplier 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is USA and with questionnaire
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
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
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
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
    Then Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
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
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##DPL search
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #buyer internal
    Then Click on the "Buyer Internal assessment" under Approval Source
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

  @Smoke @USALocalisation @Localisation @Supplier 
  Scenario: Verify add Bank Account page with valid data for "USA" supplier
    Then Enter USA supplier email in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    Then Select "United States of America" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of US"
    Then Select "US Dollar" in "Currency" css dropdown
    Then Enter value for Account Holder Name "America"
    Then Enter value for Bank Routing Number "23634795651"
    Then Enter value for Bank Account Number "123434334"
    # And Enter value for Bank Key "54543643"
    # And Enter value for Bank Swift Code "FDGFDHQKIR"
    # And Enter value for IBAN "FF46363537458658383737"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "America USA"
    Then Enter value for Address "1 COPLEY PKY"
    Then Enter value for City " MORRISVILLE"
    Then Select "Colorado" in "State" dropdown
    Then Enter value for Zip code "27560-3414"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    #And Click on the Preferred Bank check box
    #Then Wait 5 seconds
    #Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system
    
    
    
    
    @Smoke @RemainderSettings @QuickCheck 
  	Scenario: As a Buyer, Verify I should able to configure NAG reminders for "Pending invitation" category with remainder frequency "One time" with CC role
  
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Admin Actions" button from buyer side
    Then Wait for 3 seconds
    Then Click on "Reminder Settings" button under admin actions
    Then Wait for 3 seconds
    Then Click on "Create configuration" button
    Then Wait for 5 seconds
    Then Scroll to the element
    Then Wait for 3 seconds
    Then Click Edit button in "Reminder"
    Then Wait for 2 seconds
    Then Enter reminder name as "Pending Invite Auto-One Time with CC"
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
    
    
    
    
    
    @Smoke @manageusersregisteranewuser @Buyer 
  Scenario: Verify as a buyer I should able to Register a supplier with Administrator role using maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Admin First"
    When Enter Last Name on Invite a New User Modal "Admin Last"
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
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    And Verify status "Active" for invited user in manage users
    When Click on "Remove Access" button to "Remove Access"
    When Click on "Delete" button
    Then Verify toast message "User has been deleted successfully" successfully is shown
    Then Verify page header "Manage Users" under Manage Users
    Then Wait for 3 seconds
    Then Logout from the system
    
    
    
    
    @Regression @manageusersinviteanewuser @Buyer 
  Scenario: Verify as a buyer I should able to Invite a supplier with Administrator role and verify invite sent to maildrop

    When Click on Invite a New User button on Manage Users page
    When Enter First Name on Invite a New User Modal "Admin First"
    When Enter Last Name on Invite a New User Modal "Admin Last"
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
    Then Click on Continue button on Login page
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