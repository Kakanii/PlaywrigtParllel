Feature: UK Localisation

  #UKLocalisation
  Background: Login as UK supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @UKLocalisation @Localisation @Supplier
  Scenario: Verify invite a Supplier whose tax country is UK with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
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
    
    @Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify maildrop registration link and verify the supplier registration process for UK from maildrop
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
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
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
    Then Wait for 10 seconds
    #Tooltips
    Then Show "Country/Region of Registration" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in "Supplier Regitration"
    Then Show "Address Line 1" field Tooltip description "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in "Supplier Regitration"
    Then Show "Address Line 2" field Tooltip description "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in "Supplier Regitration"
    Then Show "City" field Tooltip description "The name of the city at which it is located." in "Supplier Regitration"
    Then Show "County" field Tooltip description "Select the appropriate county from the dropdown." in "Supplier Regitration"
    Then Show "Postal Code" field Tooltip description "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD. Either provide your postal code or leave it empty if postal code is not available." in "Supplier Regitration"
    Then Show "PO Box" field Tooltip description "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in "Supplier Regitration"
    Then Show "PO Box Postal Code" field Tooltip description "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD" in "Supplier Regitration"
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
    Then Click on Do it later button
    Then Logout from the system
    
    @Regression @UKLocalisation @Localisation @Supplier @TYSFunctionality 
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
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #with questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Select the "Automation" in Dropdown
    #assign
    When Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "IBM B2B Commerce for Procurement"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    #When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 5 seconds
    #When Open the registration URL
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
    Then Wait for 3 seconds
    When Click on refresh button
    #Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    #When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "United Kingdom" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "United Kingdom" supplier registration
    Then Enter "TestCity" in "City" field after "United Kingdom" supplier registration
    Then Select "Bute" in "County" dropdown
    Then Enter "SW1A 1AA" in "Postal Code" field after "United Kingdom" supplier registration
    Then Enter "74546443" in "PO Box" field after "United Kingdom" supplier registration
    Then Enter "FK20 8SB" in "PO Box Postal Code" field after "United Kingdom" supplier registration
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
  
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Wait for 15 seconds
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
    Then Wait for 5 seconds
    Then Click on button Publish for questionare
    Then Wait for 20 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 5 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 30 seconds
    Then Logout from the system
    
    
    #Onboard process
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
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
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    ###Export/Import Compliance
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    And Switch to the active window
    And Switch to the parent window
    #custom fields before Onboard
    And Scroll the page
    And Wait for 5 seconds
    
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
    #Then Click on the "USL Search" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    ##DPL search
    #Then Click on the "DPL Search" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #buyer internal
    #Then Click on the "Buyer Internal assessment" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
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
    Then Scroll the page
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "3"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    Then Refresh the current webpage
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

		@Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and with out questionnaire and Without VAT Registration
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
		#Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    #Verify Company page on registration
    #Vrify lables are displayed as expected
    #Then Verify Company tab is displyed on registration page
    #Then Verify User Account tab is displyed on registration page
    #Then Verify Verification tab is displyed on registration page
    #verify compnay tab lables are displayed
    #Then Verify country region lable is displyed on registration page
    #Then Verify Business name lable is displyed on registration page
    #Then Verify Legal business name lable is displyed on registration page
    #Then Verify Website lable is displyed on registration page
    #Verify Tooltips
  	#Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    #Then Wait for 3 seconds
    #Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    #Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    #Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
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
    Then Click on Do it later button

    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    Then Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Number of Full-Time Employees" input text field in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" input text field in "Additional Information"
    
    #Radio button status
    Then Verify "YES" radio button "1" is not selected by default under "Are you VAT Registered?"
    Then Verify "YES" radio button "2" is not selected by default under "Are you VAT Registered?"
    Then Verify "YES" radio button "3" is not selected by default under "Diversity"
    Then Verify "NO" radio button "4" is selected by default under "Diversity"
    Then Verify "YES" radio button "5" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "NO" radio button "6" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "YES" radio button "7" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "NO" radio button "8" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "YES" radio button "9" is not selected by default under "Additional Information"
    Then Verify "NO" radio button "10" is not selected by default under "Additional Information"
    
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    #Date calandar
    Then Show date calander in "Date Established" label
    #Label
    #Then Show "Please provide reason why you do not have VAT?" label under "Are you VAT Registered?" field
    #enter text
    Then Scroll the page
    Then Select "Sole Trader" value from Business type dropdown
    
    #Then Show "VAT Group" label under "Tax Details"
    Then Show "Are you VAT Registered?" label under "Tax Details"
    Then Show "Company Registration Number" label under "Tax Details"
    Then Show "EU VAT Registration Number" label under "Tax Details"
    Then Show "Certificate of Incorporation. This is an optional field." label under "Tax Details"
    Then Show "EU VAT Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    #Then Verify 9 fields are present under "Tax Details" in "Basic Information"
    ##Basic Information input fields visiblity
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "EU VAT Registration Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    ##Basic Information input fields status
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "EU VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    ##Basic Information upload buttons visibility
    Then Show "Upload Certification of Incorporation" button in basic information
    Then Show "Upload EU VAT Tax Registration Document" button in basic information
    ##Basic Information upload buttons status
    Then Verify Upload "Upload Certification of Incorporation" button clickable in basic information
    Then Verify Upload "Upload EU VAT Tax Registration Document" button clickable in basic information
    ##Basic Information tooltips
    Then Show "Company Registration Number" tooltip "Company Registration Number as issued by the Companies House of UK which is 7 or 8 alphanumeric characters. This field is Optional." under "Tax Details"
    Then Show "EU VAT Registration Number" tooltip "EU VAT Number issued by HMRC in the format GB123456789" under "Tax Details"
    Then Show "Certificate of Incorporation. This is an optional field." tooltip "Attach your company's Certificate of Incorporation issued by the Companies House of UK in the below mentioned formats." under "Tax Details"
    Then Show "EU VAT Registration Document" tooltip "Attach your company's Certificate of EU VAT Registration issued by the HMRC in the below mentioned formats" under "Tax Details"
    Then Show "Business Type" tooltip "The appropriate Business Type of your company" under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    ###Basic Information  - Business types visibility
    Then Verify "Charitable Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Community Interest Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Company Limited by Guarantee" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Cooperative Business" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Industrial and Provident Society" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Royal Charter" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Social Enterprise" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Trader" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Traditional Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Unlimited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Voluntary & Community Org" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Mutual Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    ###Flag
    Then Verify "UK1" flag in "Phone Number" field "uk"
    Then Verify "UK1" flag in "Fax Number" field "uk"
    ###Phone Number
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    
    ### Required field
    Then Wait for 5 seconds
    Then click on the radio button "No" in additional information
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    #Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Show "Required" under "Date Established" at field
    #Then Show "Required" under "Are you VAT Registered?" in Tax details
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    #Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
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
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    
    
    ###Error Validations
    ###Company Registration Number -- Input range issue
    Then Enter "1A2B3C" in "Company Registration Number" field under "Tax Details"
    Then Verify data entered in "Company Registration Number" field is "1A2B3C" under "Tax Details"
    Then Show error message "Invalid Company Registration Number" under "Company Registration Number" field under "Tax Details"
    Then Enter "123456789" in "Company Registration Number" field under "Tax Details"
    Then Verify data entered in "Company Registration Number" field is "12345678" under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    Then Enter "1234567" in "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    ##Company Registration Number -- Input type
    Then Enter "abcd" in "Company Registration Number" field under "Tax Details"
    #Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    #Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
   #Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    ### EU VAT Registration Number - Input range
    Then Enter "ATU123456789" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "GB1A2B3C45678" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify data entered in "EU VAT Registration Number" field is "GB12345678" under "Tax Details"
    Then Show error message "Invalid EU VAT Registration Number" under "EU VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "EU VAT Registration Number" field is "GB123456789" under "Tax Details"
    #Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    ###EU VAT Registration Number -- Input type
    Then Enter "abcd" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    
    ### D-U-N-S Number -- Input range
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ### D-U-N-S Number -- Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
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
    Then Click "Upload Certification of Incorporation" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePNG.png"
    Then Click "Upload Certification of Incorporation" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "sampleJPG.jpg"
    Then Click "Upload Certification of Incorporation" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "sampleJPEG.jpeg"
    Then Click "Upload Certification of Incorporation" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Certification of Incorporation" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
   	Then Click on the Confirm button.
    Then Click "Upload Certification of Incorporation" button
   	Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    Then Close toast message
    Then Click on the Confirm button.
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePNG.png"
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "sampleJPG.jpg"
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload EU VAT Tax Registration Document" button
   	Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "sampleJPG.jpg"
    #Then Close toast message
    #Then Click on the Confirm button.
    
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter random company registration number in "Company Registration Number" field under "Tax Details"
    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
   
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then Wait for 15 seconds
    
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Wait for 5 seconds
   	Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
   	Then Wait for 5 seconds
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "United Kingdom" is listed in "Country/Region" dropdown
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "County" Label
    Then Show "County" Dropdown
    Then Show "Postal Code" Label
    Then Show "Postal Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Show "Year of Birth" tooltip "The year this person was born, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip "The official email address of this person. This is a required field."
    Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add contact modal
    #Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add contact modal
    #Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add contact modal
    #Then Show "City" tooltip "The name of the city at which it is located." in add contact modal
    #Then Show "County" tooltip "Select the appropriate county from the dropdown." in add contact modal
    #Then Show "Postal Code" tooltip "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD. Either provide your postal code or leave it empty if postal code is not available." in add contact modal
    #Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add contact modal
    #Then Show "PO Box Postal Code" tooltip "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD" in add contact modal
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "County" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    ###Flag
    Then Verify "United Kingdom" flag in "Primary Phone" field "uk"
    Then Verify "United Kingdom" flag in "Secondary Phone" field "uk"
    ###Phone Nuum ber format
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Enter "QA" in "Job Title" field
    Then Click "Year of Birth" checkbox
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+44 - 9876 543210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+44 - 1234 567890"
    ###Error message
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    #Then Show error message "Maximum length exceeded" under "Address Line 1" field
    #Then Show error message "Maximum length exceeded" under "Address Line 2" field
    #Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    #Then Show error message "Must be a valid PO BOX" under "PO Box" field
    #Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "P01 2AY" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "P01 2AY"
    Then Enter "P01 2AY" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "P01 2AY"
    #Then Verify no error message is displayed under "Address Line 1" field
    #Then Verify no error message is displayed under "Address Line 2" field
    #Then Verify no error message is displayed under "Postal Code" field
    #Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    #Then Verify no error message is displayed under "PO Box" field
    ###Input type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    #Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Enter "abcd" in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    #Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    #Then Verify no data is entered in "PO Box Postal Code" field
    #Then Verify no error message is displayed under "PO Box Postal Code" field
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
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
    #Then Click on the "DPL Search" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #D&B-supplier diversity data
    #Then Click on "D&B Supplier Diversity Data - ..." in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
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
    ##D&B - Supplier Risk Assessment - D&B
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
    ##Then Enter the Notes
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
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and with out questionnaire and With VAT Registration
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
		#Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
		Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
		
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Switch to the active window
    #Verify Company page on registration
    #Vrify lables are displayed as expected
    #Then Verify Company tab is displyed on registration page
    #Then Verify User Account tab is displyed on registration page
    #Then Verify Verification tab is displyed on registration page
    #verify compnay tab lables are displayed
    #Then Verify country region lable is displyed on registration page
    #Then Verify Business name lable is displyed on registration page
    #Then Verify Legal business name lable is displyed on registration page
    #Then Verify Website lable is displyed on registration page
    #Verify Tooltips
  	#Then Show "Country region" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in country region
    #Then Wait for 3 seconds
    #Then Show "Business name" field Tooltip description "Name under which the Supplier company carries on it’s business. Also known as DBA, Doing Business As. This is a mandatory field." in business name
    Then Wait for 3 seconds
    #Then Show "Legal business name" field Tooltip description "Legal Name must be the full Legal Name of Supplier company. Max Length: 100 characters. This is a mandatory field." in legal business
    #Then Wait for 3 seconds
    #Then Show "Website" field Tooltip description "Please enter the URL of Supplier company’s website." in website
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
    Then Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    Then Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    Then Show date calander in "Date Established" label
    #Label
    Then Show "VAT Registration Number" label under "Are you VAT Registered?" field
    Then Show "VAT Registration Document" label under "Are you VAT Registered?" field
    #enter text
    Then Scroll the page
    Then Select "Sole Trader" value from Business type dropdown
    ###Phone Number
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
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds  
    ### D-U-N-S Number
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    Then Wait for 5 seconds
    Then Wait for 5 seconds
    Then Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    Then Click on the radio button "NO" for "2" in VAT registration
     #With VAT Registration details
    Then Wait for 5 seconds
    Then Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    Then Enter random EU VAT number "GB" in "VAT Registration Number" field under "Tax Details"
    Then Click "Upload VAT Registration Document" button
    
    
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePDF.pdf"
    Then Click on the radio button "NO" for "4" in VAT registration
    
    Then Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    
   
    Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter random company registration number in "Company Registration Number" field under "Tax Details"
    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then Wait for 5 seconds
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Wait for 5 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Click on Not a suitable match
    Then Wait for 3 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
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
    #Then Click on the "DPL Search" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
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
    ##D&B - Supplier Risk Assessment - D&B
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "2"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    ##D&B - Supplier Risk Assessment - D&B
    ##Then Scroll the page
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "3"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
		

		@Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and without questionnaire and Without VAT Registration and with Diversity
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
    
    #Diversity field
    Then Click on the radio button "YES" for "3" in Diversity
    Then Show "YES" radio button "5" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "6" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "5" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    #Diversity sub cat
    Then Wait for 5 seconds
    #Then Show input field "Diversity Sub-Category" dropdown under "Diversity"
   	#Then Show tooltip "Indicate the Minority sub category you belong to. For more information on the categories," in "Diversity Sub-Category" in basic information
    #Then select "Javits-Wagner-O-Day" under "diversitySubCategories" for Diversity Category
    Then Wait for 5 seconds
    #select certifiers
    Then Verify "Diversity Category" button is displyed under Diversity Category
    Then Verify "Certifiers" button is displyed under Diversity Category
    Then Verify "Expiry Date" button is displyed under Diversity Category
    Then Verify "Upload Document" button is displyed under Diversity Category
    Then Verify Select Certifiers dropdown is displyed under Diversity Category
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    #Then Verify Diversity Date calandar is displyed under Diversity Category
    #Then Select "24" date drom the Diversity calandar
    #Then Verify "Upload file" button is displyed under Diversity Category
    #Then Upload "PDF" file "Upload file" for Diversity category
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 5 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Wait for 5 seconds
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
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
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    ##DPL search
    #Then Click on the "DPL Search" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
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
    ##D&B - Supplier Risk Assessment - D&B
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "2"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    ##Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #D&B - Supplier Risk Assessment - D&B
    #Then Scroll the page
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "3"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    ##Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    
    
    
    Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

		@Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and without questionnaire and Without VAT Registration and with Small Business and Disadvantaged Zone Business(Optional)
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
		#Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    
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
    Then Scroll the page
    Then Wait for 10 seconds
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
    
    #Small Business and Disadvantaged Zone Business(Optional)
    Then Click on the radio button "YES" for "5" in Diversity
    
    #Is your company designated as a Small Business as defined by the country of your registration?
    Then Show input field "Category" dropdown under "Is your company designated as a Small Business as defined by the country of your registration?"
    
    Then select "Small Business" under "smallBusinessCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Category" in basic information
    Then Wait for 5 seconds
    #Sub-Category
    #Then Wait for 5 seconds
    #Then Show input field "Sub-Category" dropdown under "Is your company designated as a Small Business as defined by the country of your registration?"
   	#Then Show tooltip "Indicate the Minority sub category you belong to. For more information on the categories," in "Sub-Category" in basic information
    #Then select "Joint Venture" under "smallBusinessSubCategories" for Diversity Category
    #Then Wait for 5 seconds
    Then Upload "PDF" file "Upload file" for Diversity category
    
    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 5 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
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
    Then Click on the "USL Search" under Approval Source
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
    
    @Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and without questionnaire and Without VAT Registration and with Is your company designated as part of a Disadvantaged or Underutilized Zone as defined by the country of your registration?
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
    
    #Is your company designated as part of a Disadvantaged or Underutilized Zone as defined by the country of your registration?
    Then Click on the radio button "YES" for "7" in Diversity
    
    #Is your company designated as a Small Business as defined by the country of your registration?
    Then Show input field "Category" dropdown under "Is your company designated as part of a Disadvantaged or Underutilized Zone as defined by the country of your registration?"
    
    Then select "Cornwall" under "disadvantagedZoneCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Category" in basic information
    Then Wait for 5 seconds
    #Then Upload "PDF" file "Upload file" for Diversity category
    
    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Wait for 5 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
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
    Then Click on the "USL Search" under Approval Source
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
	
		@Regression @UKLocalisation @Localisation @Supplier
    Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is UK and without questionnaire and Without VAT Registration and with Additional Information
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
		
		#Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
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
    #Additional Information
    Then Wait for 5 seconds
    Then Click on the radio button "YES" for "9" in Diversity
    Then Click "Save and Continue" button 3
    Then Show "Required" under "Date Established" at field
    #Then Show "Required" under "Are you VAT Registered?" in Tax details
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    #Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
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
    
    #Additional Information tooltip
    Then Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
	  Then Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
		Then Wait for 5 seconds
		#select dropdown
		Then Scroll the page
		Then Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    Then Wait for 5 seconds
    #Symbol
    Then Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    
    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 3 seconds
    Then Click on Not a suitable match
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
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
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
    Then Click on the "USL Search" under Approval Source
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
	
	
  @Regression @UKLocalisation @Localisation @Supplier @TYSFunctionality 
  Scenario: Verify Bank Account page for UK supplier
    Then Enter "UK1" supplier email in Email Address field
    Then Click on Continue button on Login page
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
    #Then Scroll the page
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown." in add Bank Account
    #Then Show "Bank Account Label" tooltip "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add Bank Account
    #Then Show "Intermediary Bank Account" tooltip "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add Bank Account
    #Then Show "Bank Name" tooltip "The name of the bank where your account is held." in add Bank Account
    #Then Show "Currency" tooltip "The currency type used in this bank account." in add Bank Account
    #Then Show "Account Holder Name" tooltip "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add Bank Account
    #Then Show "Bank Key" tooltip "Bank Account Code (Sort Code) associated with your bank which is usually 6 digits" in add Bank Account
    #Then Show "Account Number" tooltip "Account number of your Bank account which is usually 7 or 8 digits" in add Bank Account
    #Then Show "SWIFT Code" tooltip "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided." in add Bank Account
   	#Then Show "IBAN" tooltip "International Bank Account Number associated with the bank which is usually 22 alphanumeric characters.Example:GB29NWBK60161331926819.It is preferred that both IBAN and SWIFT Code are provided." in add Bank Account
    #Then Show "Account Evidence" tooltip "Please select a type of evidence you wish to attach" in add Bank Account
    #Then Show "Bank Branch Name" tooltip "The branch name, or location, of this bank." in add Bank Account
    #Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add Bank Account
    #Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add Bank Account
    #Then Show "City" tooltip "The name of the city at which it is located." in add Bank Account
    #Then Show "County" tooltip "Select the appropriate county from the dropdown." in add Bank Account
    #Then Show "Postal Code" tooltip "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD. Either provide your postal code or leave it empty if postal code is not available." in add Bank Account
    #Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add Bank Account
    #Then Show "PO Box Postal Code" tooltip "6 to 8 alphanumeric characters including the space between the parts. Eg: B1 2JJ; PO1 2AY; YO12 7HD" in add Bank Account
    #Then Show "Bank Contact Name" tooltip "The full name of the contact at the bank in which this account is held." in add Bank Account
    #Then Show "Bank Contact Number" tooltip "The phone number of the contact from the bank in which this account is held." in add Bank Account
    #Then Show "Bank Contact Email Address" tooltip "The email address of the contact from the bank in which this account is held." in add Bank Account
    #Then Show "Payment Terms" tooltip "Ex: Net 10, Net 30, PIA, EOM, etc..." in add Bank Account
    #Then Show "Purchase Order Email Address" tooltip "The email address of an employee to whom the POs need to be sent." in add Bank Account
    
    ###Currency in Bank account page
    #Then Verify "Pound Sterling (GBP)" is listed in Currency dropdown
    ###Flag
    Then Verify "United Kingdom" flag in "Bank Contact Number" field "uk"
    #Then Verify "United Kingdom" flag in "Accounts Receivable Contact Number" field "uk"
    ###Phone Number
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    #Then Verify phone number "Bank Contact Number" is entered in accepted format "+44 - 9876 543210"
    ##Then Enter phone number "9876543210" in "Accounts Receivable Contact Number" field
    #Then Verify phone number "Accounts Receivable Contact Number" is entered in accepted format "+44 - 9876 543210"
    ###Required fields
    #Then Scroll the page
    #Then Click "Save" button 4
    #Then Show error message "Required" under "Bank Name" at bank account details
    #Then Show error message "Required" under "Account Holder Name" at bank account details
    
    #Then Show error message "Required" under "Account Evidence" at bank account details
    #Then Show error message "Required" under "Bank Branch Name" at bank account details
    
    #Then Show error message "Required" under "Address Line 1" at bank account details
    #Then Show error message "Required" under "City" at bank account details
    #Then Show error message "Required" under "Bank Contact Name" at bank account details
  
  
    ###Error Validations
    #Then Enter 79 digit alpha numeric data in "Address Line 1" field
    #Then Verify no error message is displayed under "Address Line 1" field
    #Then Enter 81 digit alpha numeric data in "Address Line 1" field
    #Then Show error message "Maximum length exceeded" under "Address Line 1" field
    #Then Enter 15 digit alpha numeric data in "Address Line 1" field
    #Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #Then Verify no error message is displayed under "Address Line 2" field
    #Then Enter 81 digit alpha numeric data in "Address Line 2" field
    #Then Show error message "Maximum length exceeded" under "Address Line 2" field
    #Then Enter 15 digit alpha numeric data in "Address Line 2" field
    #Then Enter "1234" in "Postal Code" field
    #Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    #Then Enter "12" in "Postal Code" field
    #Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    #Then Enter "abcd" in "Postal Code" field
    #Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    #Then Enter "@@@@" in "Postal Code" field
    #Then Verify no data is entered in "Postal Code" field
    #Then Enter "    " in "Postal Code" field
    #Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    #Then Enter "46453464" in "Postal Code" field
    #Then Enter "1234567890123" in "PO Box" field
    #Then Show error message "Must be a valid PO BOX" under "PO Box" field
    #Then Enter "1234" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    #Then Enter "12" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    #Then Enter "abcd" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    #Then Enter "@@@@" in "PO Box Postal Code" field
    #Then Verify no data is entered in "PO Box Postal Code" field
    #Then Enter "46453464" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    ###Bank Key -- Input range https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "1A2B3C4D5" in "Bank Key" field under "Bank Account Information"
    #Then Verify data entered in "Bank Key" field is "12345" under "Bank Account Information"
    #Then Show error message "Invalid Bank Key" under "Bank Key" field under "Bank Account Information"
    #Then Enter "1234567" in "Bank Key" field under "Bank Account Information"
    #Then Verify data entered in "Bank Key" field is "123456" under "Bank Account Information"
    #Then Verify no error message is displayed under "Bank Key" field under "Bank Account Information"
    ###Bank Key -- Input type https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "abcd" in "Bank Key" field under "Bank Account Information"
    #Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    #Then Enter "    " in "Bank Key" field under "Bank Account Information"
    #Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    #Then Enter "@#$%" in "Bank Key" field under "Bank Account Information"
    #Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    #Then Enter "1234567" in "Bank Key" field under "Bank Account Information"
    ###Account Number - Input range https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "1A2B3C4D5E6" in "Account Number" field under "Bank Account Information"
    #Then Verify data entered in "Account Number" field is "123456" under "Bank Account Information"
    #Then Show error message "Invalid Account Number" under "Account Number" field under "Bank Account Information"
    #Then Enter "123456789" in "Account Number" field under "Bank Account Information"
    #Then Verify data entered in "Account Number" field is "12345678" under "Bank Account Information"
    #Then Verify no error message is displayed under "Account Number" field under "Bank Account Information"
    ###Account Number - Input type https://itpeople.atlassian.net/browse/SLYN-9286
   # Then Enter "abcd" in "Account Number" field under "Bank Account Information"
    #Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    #Then Enter "    " in "Account Number" field under "Bank Account Information"
    #Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    #Then Enter "@#$%" in "Account Number" field under "Bank Account Information"
    #Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    #Then Enter "1A2B3C4D5E6" in "Account Number" field under "Bank Account Information"
    ####SWIFT Code -- Input range https://itpeople.atlassian.net/browse/SLYN-9286
   # Then Enter "1A2B3C4" in "SWIFT Code" field under "Bank Account Information"
    #Then Verify data entered in "SWIFT Code" field is "1A2B3C4" under "Bank Account Information"
    #Then Show error message "Invalid SWIFT Code" under "SWIFT Code" field under "Bank Account Information"
    #Then Enter "12345678" in "SWIFT Code" field under "Bank Account Information"
    #Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    #Then Enter "123456789" in "SWIFT Code" field under "Bank Account Information"
    #Then Show error message "Invalid SWIFT Code" under "SWIFT Code" field under "Bank Account Information"
    #Then Enter "123456789012" in "SWIFT Code" field under "Bank Account Information"
    #Then Verify data entered in "SWIFT Code" field is "12345678901" under "Bank Account Information"
    #Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    ####SWIFT Code -- Input type https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "abcd" in "SWIFT Code" field under "Bank Account Information"
    #Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    #Then Enter "    " in "SWIFT Code" field under "Bank Account Information"
    #Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    #Then Enter "@#$%" in "SWIFT Code" field under "Bank Account Information"
    #Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    #Then Enter "1A2B3C4" in "SWIFT Code" field under "Bank Account Information"
    ###IBAN - Input range  https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "UT123" in "IBAN" field under "Bank Account Information"
    #Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    #Then Enter "GB12AAAA1111118888888" in "IBAN" field under "Bank Account Information"
    #Then Show error message "Invalid IBAN" under "IBAN" field under "Bank Account Information"
    #Then Enter "GB12AAAA11111188888888A" in "IBAN" field under "Bank Account Information"
    #Then Verify data entered in "IBAN" field is "GB12AAAA11111188888888" under "Bank Account Information"
    #Then Verify no error message is displayed under "IBAN" field under "Bank Account Information"
    ####IBAN -- Input type https://itpeople.atlassian.net/browse/SLYN-9286
    #Then Enter "    " in "IBAN" field under "Bank Account Information"
    #Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    #Then Enter "@#$%" in "IBAN" field under "Bank Account Information"
    #Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    #Then Enter "GB12AAAA11111188888888A" in "IBAN" field under "Bank Account Information"
    #Then Clear "Address Line 1" field
    #Then Clear "Address Line 2" field
    #Then Clear "City" field
    #Then Clear "Postal Code" field
    #Then Clear "PO Box" field
    #Then Clear "PO Box Postal Code" field
    #Then Clear "Bank Key" field under "Bank Account Information"
   # Then Clear "Account Number" field under "Bank Account Information"
    #Then Clear "SWIFT Code" field under "Bank Account Information"
    #Then Clear "IBAN" field under "Bank Account Information"
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
    #Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    #Then Enter "12345678901" in "SWIFT Code" field under "Bank Account Information" for Bank Details
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
    Then Click on Not now button
    Then Wait for 10 seconds
    #Then Switch to the active window
    #Then Click ok button on Successfully Germany bank account Modal
    #Then Switch to the parent window
    Then Show Company Account card with "UK CA"
    #Then Click On Edit Option
    #Then Click on ellipsis for "UK CA"
    Then Click "Delete Bank Account" button for "UK CA" add bank card
    ####Then Click "Delete" button if found 4
    Then Click "Delete" button 1
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @UKLocalisation @Localisation @Supplier @CDCI @UKBank
  Scenario: Add "Factoring Company Account" with valid data for Country "UK"
  	Then Enter "UK1" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
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
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    #Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    #Then Enter "12345678901" in "SWIFT Code" field under "Bank Account Information" for Bank Details
    Then Enter "GB29NWBK60161331926819" in "IBAN" field under "Bank Account Information" for Bank Details
    Then Enter "Testing" in Bank Desciption
    Then Select "Euro" in "Currency" css dropdown
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    #Then Upload "PDF" under "Upload Document" for Bank Account
    Then Click "Confirm" button
    #Factoring details
    Then Scroll the page
    Then Enter "TYS third party" in "Factoring Company Name" field
    #Then Select "United Kingdom" in "Country/Region" under "Factoring Company Address" section
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Scroll the page
    Then Click "Save" button 4
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Wait for 5 seconds
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Scroll the page
    Then Click "Save" button 4
    Then Click on Not now button
    Then Wait for 5 seconds
    #Then Switch to the active window
    #Then Click ok button on Successfully Germany bank account Modal
    #Then Switch to the parent window
    Then Show Company Account card with "UK CA"
    #Then Click On Edit Option
    #Then Click on ellipsis for "UK CA"
    Then Click "Delete Bank Account" button for "UK CA" add bank card
    ####Then Click "Delete" button if found 4
    Then Click "Delete" button 1
    Then Switch to the parent window
    Then Logout from the system

  