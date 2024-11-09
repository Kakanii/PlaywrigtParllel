Feature: Zambia Localisation

  #ZambiaLocalisation
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @ZambiaLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify invite a Supplier whose tax country is Zambia with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    #select Zambia from the dropdown
    Then Select "Zambia" in "Supplier Country of Registration" dropdown
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

  @Smoke @ZambiaLocalisation @Localisation @QuickSanity 
  Scenario: Verify maildrop registration link and verify the supplier registration process from maildrop
    #Open buyer page
    Then Enter data in Email Address field
   # When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select Zambia from the dropdown
    Then Select "Zambia" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
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
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    When Wait 5 seconds
    And Logout from the system
    When Wait 5 seconds
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "IBM B2B Commerce for Procurement"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #And Verify an email received in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    #When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
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
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Zambia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Zambia" supplier registration
    Then Enter "TestCity" in "City/Town" field after "Zambia" supplier registration
    #Then Enter "32432" in "Postal Code" field after "Zambia" supplier registration
    Then Select "Copperbelt Province" in "Province" dropdown
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
    Then Logout from the system

  @Smoke @ZambiaLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Zambia and without questionnaire
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select Zambia from the dropdown
    Then Select "Zambia" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
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
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
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
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Zambia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Zambia" supplier registration
    Then Enter "TestCity" in "City/Town" field after "Zambia" supplier registration
    #Then Enter "32432" in "Postal Code" field after "Zambia" supplier registration
    Then Select "Copperbelt Province" in "Province" dropdown
    Then Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Zambia" is Pre populated with country
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
    Then Show "Company Registration Document" label under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    #Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    #Then Show "D-U-N-S Number" input text field under "Tax Details"
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
    #Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "Taxpayer Identification Number (TIN)" input text field enabled under "Tax Details"
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
    Then Show "Company Registration Document" button in basic information
    Then Show "Tax Registration Document" button in basic information
    ##Save Draft and Save and continue button visibility
    #Then Show "Save Draft" button at top "right side" in basic information page
    #Then Show "Save and Continue" button at top "right side" in basic information page
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Wait for 3 seconds
    Then Verify Upload "Company Registration Document" button clickable in basic information
    Then Wait for 3 seconds
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    ###tooltips
    Then Show "Company Registration Number" tooltip "This number uniquely identifies each registered company and is issued by the Patents and Companies Registration Agency (PACRA), which is the regulatory body responsible for business registration in Zambia. E.g. C123456789, SR1234567" under "Tax Details"
    #Then Show "Company Registration Document" tooltip "The company registration document commonly known as the "Certificate of Incorporation" or "Certificate of Registration." This document is issued by the Patents and Companies Registration Agency (PACRA) upon the successful registration of a company." under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" tooltip "The TIN serves as a unique identifier for tax purposes and is issued by the Zambia Revenue Authority (ZRA). E.g. 123456789A" under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration issued by the  Zambia Revenue Authority (ZRA) . This is a mandatory attachment." under "Tax Details"
    Then Show "Business Type" tooltip "Select the appropriate Business Type of your company. This is a mandatory field." under "Tax Details"
    #Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    #Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    And Scroll Up until dimension on the page
    Then Show "Date Established" tooltip "The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in DD/MM/YYYY format and mandatory." in "Basic Information"
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
    Then Enter number "1234567890" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Company (Ltd)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Company (Plc)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Branch Office" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Governmental Organization (NGO)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Cooperative" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Partnership (LLP)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Microfinance Institution" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Branch Office" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "Zambia" flag Phone Number
    And Verify "Zambia" flag Fax Number
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "1234567890" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+260 (123) 456-7890"
    Then Enter phone number "1234567890" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+260 (123) 456-7890"
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "3" from the date
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
    #Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    #Then Wait for 3 seconds
    #Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    #Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    #Then Enter "453454543" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####VAT Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input range
    Then Wait for 3 seconds
    Then Enter data Company Registration Number under "Tax Details" field for Zambia country
    Then Wait for 3 seconds
    Then Enter data Taxpayer Identification Number under "Tax Details" field for Zambia country
    #Then Enter "33526920089" in "Tax Identification Number" under "Tax Details"
    #Then Enter data in "GST/Tax Identification Number" field under Tax Details
    #Then Enter "AKL99999999L" in "VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "VAT Registration Number" field is "AKL99999999L" under "Tax Details"
    ###Document uploads
    Then Scroll to view "Tax Registration Document" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePNG.png"
    Then Click "Upload Tax Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "sampleJPG.jpg"
    Then Click "Upload Tax Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload Tax Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    #Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    Then Scroll to view "Company Registration Document" field
    Then Click "Upload Company Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    #Then Enter data Tax Identification Number under "Tax Details" field
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    #Then Wait for 15 seconds
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    #Then Wait for 15 seconds
    #Then Select "111 - Crop Production" from the "NAICS" dropdown
    Then Wait for 1 seconds
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
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
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #buyer internal
    #Then Click on "Buyer Internal assessment" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    And Logout from the system

  @Smoke @ZambiaLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Zambia and with questionnaire
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select Zambia from the dropdown
    Then Select "Zambia" in "Supplier Country of Registration" dropdown
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
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
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
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Zambia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Zambia" supplier registration
    Then Enter "TestCity" in "City/Town" field after "Zambia" supplier registration
    #Then Enter "32432" in "Postal Code" field after "Zambia" supplier registration
    Then Select "Copperbelt Province" in "Province" dropdown
    Then Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 2 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    Then Wait for 3 seconds
    Then Enter data Company Registration Number under "Tax Details" field Zambia country
    Then Wait for 3 seconds
    Then Enter data Taxpayer Identification Number under "Tax Details" field Zambia country
    And Scroll to view "Legal Business Name" field
    Then Scroll to view "Tax Registration Document" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Scroll to view "Company Registration Document" field
    Then Click "Upload Company Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    And Select "Branch Office" value from Business type dropdown
    And Enter number "1234567890" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1234567890" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 3 seconds
    Then Click on Questionnaires Nav link
    When Click on button "Begin Questionnaire" for the questionare "1"
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    #Then Enter the Notes for buyer Notes Box at "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    #Then Enter the Notes for buyer Notes Box at "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    #Then Enter the Notes for buyer Notes Box at "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes for buyer Notes Box at "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    #Then Enter the Notes for buyer Notes Box at "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    #When click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud" in question "8"
    #Then Enter the Notes for buyer Notes Box at "6"
    When Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    Then Wait for 15 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    #Then Wait for 3 seconds
    #Onboard process
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
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
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #buyer internal
    #Then Click on "Buyer Internal assessment" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    And Logout from the system

  @Smoke @ZambiaLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Zambia and without questionnaire with Additional information
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select Zambia from the dropdown
    Then Select "Zambia" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    When Click on the Skip
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
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
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    And Switch to "new TYS" tab
    When Wait 10 seconds
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
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Zambia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Zambia" supplier registration
    Then Enter "TestCity" in "City/Town" field after "Zambia" supplier registration
    #Then Enter "32432" in "Postal Code" field after "Zambia" supplier registration
    Then Select "Copperbelt Province" in "Province" dropdown
    Then Click "Next" button
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "admin" in "Last Name" field
    And Enter Email on Invite a user registration modal "admin"
    And Enter Confirmation Email on Invite a user registration modal "admin"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    When Click accept IBM registration checkbox
    And Click "Finish" button
    When Click "Skip" button
    And Switch to the active window
    #When Click on Do it later button
    #Basic info page
    Then Wait for 3 seconds
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Zambia" is Pre populated with country
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
    Then Show "Company Registration Document" label under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    #Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    #Then Show "D-U-N-S Number" input text field under "Tax Details"
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
    #Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "Taxpayer Identification Number (TIN)" input text field enabled under "Tax Details"
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
    Then Show "Company Registration Document" button in basic information
    Then Show "Tax Registration Document" button in basic information
    ##Save Draft and Save and continue button visibility
    #Then Show "Save Draft" button at top "right side" in basic information page
    #Then Show "Save and Continue" button at top "right side" in basic information page
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Wait for 3 seconds
    Then Verify Upload "Company Registration Document" button clickable in basic information
    Then Wait for 3 seconds
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    ###tooltips
    Then Show "Company Registration Number" tooltip "This number uniquely identifies each registered company and is issued by the Patents and Companies Registration Agency (PACRA), which is the regulatory body responsible for business registration in Zambia. E.g. C123456789, SR1234567" under "Tax Details"
    #Then Show "Company Registration Document" tooltip "The company registration document commonly known as the "Certificate of Incorporation" or "Certificate of Registration." This document is issued by the Patents and Companies Registration Agency (PACRA) upon the successful registration of a company." under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" tooltip "The TIN serves as a unique identifier for tax purposes and is issued by the Zambia Revenue Authority (ZRA). E.g. 123456789A" under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration issued by the  Zambia Revenue Authority (ZRA) . This is a mandatory attachment." under "Tax Details"
    Then Show "Business Type" tooltip "Select the appropriate Business Type of your company. This is a mandatory field." under "Tax Details"
    #Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    #Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    And Scroll Up until dimension on the page
    Then Show "Date Established" tooltip "The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in DD/MM/YYYY format and mandatory." in "Basic Information"
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
    Then Enter number "1234567890" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Company (Ltd)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Company (Plc)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Branch Office" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Governmental Organization (NGO)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Cooperative" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Partnership (LLP)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Microfinance Institution" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Branch Office" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "Zambia" flag Phone Number
    And Verify "Zambia" flag Fax Number
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "1234567890" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+260 (123) 456-7890"
    Then Enter phone number "1234567890" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+260 (123) 456-7890"
    #click on the calandar icon
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "3" from the date
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
    #Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    #Then Wait for 3 seconds
    #Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    #Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    #Then Enter "453454543" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####VAT Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input range
    Then Wait for 3 seconds
    Then Enter data Company Registration Number under "Tax Details" field for Zambia country
    Then Wait for 3 seconds
    Then Enter data Taxpayer Identification Number under "Tax Details" field for Zambia country
    #Then Enter "33526920089" in "Tax Identification Number" under "Tax Details"
    #Then Enter data in "GST/Tax Identification Number" field under Tax Details
    #Then Enter "AKL99999999L" in "VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "VAT Registration Number" field is "AKL99999999L" under "Tax Details"
    ###Document uploads
    Then Scroll to view "Tax Registration Document" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePNG.png"
    Then Click "Upload Tax Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "sampleJPG.jpg"
    Then Click "Upload Tax Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload Tax Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    #Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    Then Scroll to view "Company Registration Document" field
    Then Click "Upload Company Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    #Then Enter data Tax Identification Number under "Tax Details" field
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    #Then Wait for 15 seconds
    #Additional Information
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
    Then Wait for 5 seconds
    When Enter Stock Exchange Symbol "GOOGL"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    #Then Wait for 15 seconds
    #Then Select "111 - Crop Production" from the "NAICS" dropdown
    Then Wait for 1 seconds
    When Click "Save and Continue" button 3
    #Then Select "Corporation" value from Business type dropdown
    #When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    And Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 1 seconds
    When Click on Not a suitable match
    Then Wait for 15 seconds
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Wait 5 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    

  @Smoke @ZambiaLocalisation @Supplier @BankAccount @QuickSanity 
  Scenario: Add Company Account with valid data for Country Zambia for existing supplier
    When Enter Zambia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Click on "Add Accounts Receivable Contact" button on leftmenu
    And Wait for 5 seconds
    And select first contact from dropdown
    #And Select Accounts Receivable Contact from dropdown
    Then Click "Save" button 5
    Then Select "Zambia" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Zambia"
    Then Select "Zambian Kwacha (ZK)" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Zambia"
    #Then Enter value for Bank Routing Number "23634795651"
    And Wait for 2 seconds
    #Then Enter value for Bank Account Number "3253534534"
    Then Enter input data in "Account Number" field
    And Wait for 2 seconds
    #And Enter value for Bank Key "3643453536"
    #And Enter value for Control Key "366"
    #Then Enter "Testing" in Bank Desciption
    #When Enter the IBAN evidence for Albania
    #And Enter value for Bank Swift Code "CKBCMEPGXXX"
    #And Enter value for IBAN "ME25505000012345678951"
    #And Enter value for Bank Swift Code "CKBCMEPGXXX"
    #And Enter value for IBAN "ME25505000012345678951"
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Zambia"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Select "Central Province" in "Province" dropdown
    Then Enter value for City " Tirana"
    #Then Select "Finiq" in "Municipality" dropdown
    #Then Enter value for Postal Code "43664"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    And Wait for 5 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
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

  @Smoke @ZambiaLocalisation @Supplier @BankAccount @QuickSanity 
  Scenario: Add Factoring Company Account with valid data for Country Zambia for existing supplier
    When Enter Zambia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Click on the "Factoring Company Account" radio button
    And Wait for 3 seconds
    Then Click on "Add Accounts Receivable Contact" button on leftmenu
    And Wait for 5 seconds
    And select first contact from dropdown
    #And Select Accounts Receivable Contact from dropdown
    Then Click "Save" button 5
    And Wait for 5 seconds
    Then Select "Zambia" in "Country/Region" dropdown
    Then Select "Zambia" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Zambia"
    Then Select "Zambian Kwacha (ZK)" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Zambia"
    #Then Enter value for Bank Routing Number "23634795651"
    And Wait for 2 seconds
    #Then Enter value for Bank Account Number "3253534534"
    Then Enter input data in "Account Number" field
    And Wait for 2 seconds
    #And Enter value for Bank Key "3643453536"
    #And Enter value for Control Key "366"
    #Then Enter "Testing" in Bank Desciption
    #When Enter the IBAN evidence for Albania
    #And Enter value for Bank Swift Code "CKBCMEPGXXX"
    #And Enter value for IBAN "ME25505000012345678951"
    #And Enter value for Bank Swift Code "CKBCMEPGXXX"
    #And Enter value for IBAN "ME25505000012345678951"
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Zambia"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Select "Central Province" in "Province" dropdown
    Then Enter value for City " Tirana"
    #Then Select "Finiq" in "Municipality" dropdown
    #Then Enter value for Postal Code "43664"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Select "Zambia" in "Country/Region" dropdown under Factoring Company Address
    Then Wait for 3 seconds
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Tirana" in "City/Town" field under "Factoring Company Address" section
    #Then Enter "43534" in "Postal Code" field under "Factoring Company Address" section
    Then Select "Central Province" in "Province" dropdown on Factoring Company Address
    Then Click "Save" button 6
    #And Click on the save in Address verification
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
