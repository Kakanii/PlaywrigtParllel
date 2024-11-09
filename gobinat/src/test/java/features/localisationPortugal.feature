Feature: Portugal Localisation

  #PortugalLocalisation
  Background: Login as Portugal supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @PortugalLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify invite a Supplier whose tax country is Portugal with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    Then Wait for 5 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system

  @Smoke @PortugalLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify maildrop registration link and verify the supplier registration process from maildrop
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
    #select Netherlands from the dropdown
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Aveiro" in "District" dropdown
    Then Enter "1234567" in "Postal Code" field
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

  @Smoke @PortugalLocalisation @Localisation @Supplier
  Scenario: Add basic info labels and tooltips, error validation, documents upload
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    ###tax country visibility
    Then Verify Tax Country "Portugal" is Pre populated with country
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
    Then Show "Commercial Registration Number" label at "Tax Details"
    Then Show "Commercial Registration Certificate" label at "Tax Details"
    Then Show "Tax Identification Number" label at "Tax Details"
    Then Show "Tax Registration Document" label at "Tax Details"
    Then Show "EU VAT Registration Number" label at "Tax Details"
    Then Show "EU VAT Registration Document" label at "Tax Details"
    # Then Show "Company Registration Number" input text field under "Tax Details"
    #Then Show "Tax Identification Number" input text field under "Tax Details"
    #Then Show "Certificate of Incorporation" input text field under "Tax Details"
    #Then Show "Tax Registration Document" input text field under "Tax Details"
    #Then Show "EU VAT Registration Number" input text field under "Tax Details"
    # Then Show "EU VAT Registration Document" input text field under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ###Input fields visibility
    Then Show "Commercial Registration Number" input text field under "Tax Details"
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "EU VAT Registration Number" input text field under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    ###Input fields status
    Then Verify "Commercial Registration Number" input text field enabled under "Tax Details"
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "EU VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    ###Upload buttons visibility
    Then Show "Commercial Registration Certificate" button in basic information
    Then Show "Tax Registration Document" button in basic information
    Then Show "EU VAT Registration Document" button in basic information
    ###Upload buttons status
    Then Verify Upload "Commercial Registration Certificate" button clickable in basic information
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    Then Verify Upload "EU VAT Registration Document" button clickable in basic information
    ###Tooltips
    Then Show "Commercial Registration Number" tooltip "The Company Registration Number as issued by the Portugal Commercial Registry." under "Tax Details"
    Then Show "Tax Identification Number" tooltip "Legal NIF or NIPC 9-digit tax identification number." under "Tax Details"
    Then Show "EU VAT Registration Number" tooltip "European Union VAT Identification Number. ‘PT’+9 digits e.g. PT123456789" under "Tax Details"
    Then Show "Commercial Registration Certificate" tooltip "Attach your Certificate of Incorporation (Corporate Identification or Legal Entity Card) in the below mentioned formats." under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration in the below mentioned formats." under "Tax Details"
    Then Show "EU VAT Registration Document" tooltip "Attach your company's EU VAT Registration Document in the below mentioned formats." under "Tax Details"
    Then Show "Business Type" tooltip "The appropriate business type of your company." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    ####Business Types
    Then Verify "Co-operative" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Enterprise Group" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "General Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify count of options is 9 in "Business Type" dropdown under "Tax Details"
    ###Flag
    Then Verify "Portugal" flag in "Phone Number" field "pt"
    Then Verify "Portugal" flag in "Fax Number" field "pt"
    ###Phone Number
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+351 987 654 321"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+351 987 654 321"
    ### Required fields
    Then Click "Save and Continue" button 3
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Certificate" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show date calander in "Date Established" label
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
    ## Commercial Registration Number - Input range
    Then Enter "1A2B3C4D5E6F7G8" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "12345678" under "Tax Details"
    Then Show error message "Invalid Commercial Registration Number" under "Commercial Registration Number" field under "Tax Details"
    Then Enter "1234567890" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    ## Commercial Registration Number - Input type
    Then Enter "abcd" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Enter "@$%&" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Enter "      " in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    ## Tax Identification Number - Input range
    Then Enter "1A2B3C4D5E6F7G8" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "12345678" under "Tax Details"
    Then Show error message "Invalid Tax Identification Number" under "Tax Identification Number" field under "Tax Details"
    Then Enter "1234567890" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    ## Tax Identification Number - Input type
    Then Enter "abcd" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Enter "@$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    ## EU VAT Registration Number - Input range
    Then Enter "123456789" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "PT12345678" in "EU VAT Registration Number" field under "Tax Details"
    Then Show error message "Invalid EU VAT Registration Number" under "EU VAT Registration Number" field under "Tax Details"
    Then Enter "PT1234567890" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify data entered in "EU VAT Registration Number" field is "PT123456789" under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    ## EU VAT Registration Number - Input type
    Then Enter "abcd" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    ##D-U-N-S Number - Input range
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    ##D-U-N-S Number - Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ##Document uploads
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Commercial Registration Certificate" "samplePDF.pdf"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Commercial Registration Certificate" "samplePNG.png"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Commercial Registration Certificate" "sampleJPG.jpg"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Commercial Registration Certificate" "sampleJPEG.jpeg"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePNG.png"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "sampleJPG.jpg"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    Then Logout from the system

  @Regression @PortugalLocalisation @Localisation @Supplier
  Scenario: Verify Bank Account page for Portugal supplier
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    Then Wait 5 seconds
    When Click on "Add a Bank Account" button
    #Then Click "Company Account" radio button
    Then Verify "Portugal" is listed in "Country/Region" dropdown
    Then Select "Portugal" in "Country/Region" dropdown
    ###Lable
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Show label "Control Key" under "Bank Account Information"
    #Then Verify 4 fields are present under "Bank Account Information" in "Company Account"
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "District" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    ### Input field visibility
    Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Show text field "Control Key" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show "Currency" css dropdown
    #Then Show "Account Number" input text field under "Bank Account Information"
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "District" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    ####Input field status
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Bank Key" input text field enabled under "Bank Account Information"
    Then Verify "Account Number" input text field enabled under "Bank Account Information"
    Then Verify "SWIFT Code" input text field enabled under "Bank Account Information"
    Then Verify "Control Key" input text field enabled under "Bank Account Information"
    Then Verify "Currency" css dropdown enabled
    ###Tooltip
    And Verify "Bank Name" tooltip of "The name of the bank where your account is held." in add bank account page
    And Verify "Bank Key" tooltip of "8 digit identifier in the format (4 digit bank code + 4 digit branch code)" in add bank account page
    And Verify "Account Number" tooltip of "The account number of your account at the bank. It is usually a 11 digit number." in add bank account page
    And Verify "Control Key" tooltip of "The Bank Control Key is a 2 digit number that determines the bank account type. NIB check digits (last two digits of IBAN)." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "IBAN" tooltip of "International Bank Account Number associated with the bank which is usually 25 alphanumeric characters.Example:PT50000201231234567890154.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    And Verify "City" tooltip of "The name of the city at which it is located." in add bank account page
    And Verify "District" tooltip of "Select the appropriate district from the dropdown." in add bank account page
    And Verify "Postal Code" tooltip of "8 digits with hyphen, usually in the format as (XXXX-XXX).This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    And Verify "PO Box Postal Code" tooltip of "8 digits with hyphen, usually in the format as (XXXX-XXX). This is an optional field." in add bank account page
    Then Click "Save" button 6
    #Required Fields
    Then Click "Save" button 6
    Then Show error message "Required" under "Address Line 1" field under "Bank Address" section
    Then Show error message "Required" under "City" field under "Bank Address" section
    Then Show error message "Required" under "District" field under "Bank Address" section
    Then Show error message "Required" under "Bank Key" field "[1]"
    Then Show error message "Required" under "Account Number" field "[1]"
    Then Show error message "Required" under "Control Key" field "[2]"
    Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Show error message "Required" under "Bank Branch Name" field under "Bank Address" section
    # Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    Then Verify no error message is displayed under "Postal Code" field under "Bank Address" section
    #Then Verify no error message is displayed under "Province" field under "Bank Address" section
    Then Verify no error message is displayed under "Address Line 2" field under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    Then Verify no error message is displayed under "PO Box Postal Code" field under "Bank Address" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Account Label" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Intermediary Bank Account" field under "Bank Account Information" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    #Then Verify no error message is displayed under "IBAN" field under "Bank Account Information
    ####Error Validation
    Then Enter 101 digit alpha numeric data in "Address Line 1" field
    Then Enter 101 digit alpha numeric data in "Address Line 2" field
    Then Click "Save" button 6
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Enter 99 digit alpha numeric data in "Address Line 1" field
    Then Enter 99 digit alpha numeric data in "Address Line 2" field
    Then Click "Save" button 6
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Clear "Address Line 1" field
    Then Clear "Address Line 2" field
    Then Clear "City" field
    Then Clear "Postal Code" field
    Then Clear "PO Box" field
    Then Clear "PO Box Postal Code" field
    Then Logout from the system

  @Regression @PortugalLocalisation @Localisation @Supplier
  Scenario: Add "Company Account" with valid data for Country "Portugal"
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Portugal" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Portugal"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Portugalholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter input data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Portugal"
    Then Enter value for Address "Portugal efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352234234" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    #deleting incomplete data
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Smoke @PortugalLocalisation @Localisation @Supplier @CDCI
  Scenario: Add "Factoring Company Account" with valid data for Country "colombia"
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    And Wait for 2 seconds
    Then Select "Portugal" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Colombia"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Portugalholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter input data in "Control Key" field
    And Wait for 2 seconds
    #Then Enter "PT12345678901234567890123" in "IBAN" field under "Bank Account Information"
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Portugal"
    Then Enter value for Address "Portugal efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352334343" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    Then Select "Aveiro" in the "factoringCompanyState" dropdown
    Then Enter "TYS third party" in "Factoring Company Name" field
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Enter "lo098776533" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "Po87654332" in "PO Box" field under "Factoring Company Address" section
    Then Enter "U287654334334" in "PO Box Postal Code" field under "Factoring Company Address" section
    Then Enter "lukthi" in "Factoring Company Contact Name" field
    Then Enter "49765432103" in "Factoring Company Contact Number" contact field
    Then Enter "A1A88863S3" symbol in "factoringCompanyPostalCode" field
    Then Wait for 5 seconds
    Then Click "Save" button 6
    Then Wait 15 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    #deleting incomplete data
    Then Enter "portugal12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Smoke @PortugalLocalisation @Localisation @Publish @Supplier @CDCI
  Scenario: Verify publishing Portugal supplier
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
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
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
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
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
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @PortugalLocalisation @Localisation @Onboard @Supplier
  Scenario: Verify Onboard Portugal supplier without questionnaires with diversty, addl info
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
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 5 seconds
    #Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
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
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
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
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on the Search by supplier name and press Enter
    #Then Click on first record1 of the Search
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
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "D&B - Supplier Risk Assessment" under Approval Source
    #Then Wait for 5 seconds
    #Then Approve the Approval
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    # Then Wait for 10 seconds
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
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

  @Smoke @PortugalLocalisation @Localisation @Onboard @Supplier
  Scenario: Verify Onboard Portugal supplier with questionnaires with diversty, addl info
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
    Then Select "Portugal" in "Supplier Country of Registration" dropdown
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
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Portugal" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Portugal" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Portugal" supplier registration
    Then Enter "TestCity" in "City" field after "Portugal" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Portugal" supplier registration
    Then Select "Aveiro" in "District" dropdown
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
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 3 digit numeric datawith "." in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Enter company email "dsgse@test.com" in email field
    #Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
        Then Click on Not a suitable match
            Then Wait for 15 seconds
                Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
        Then Wait for 15 seconds
        Then Click on at "Next Step" button
    Then Wait for 10 seconds
    #add management
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
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 20 seconds
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
    Then Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on the Search by supplier name and press Enter
    #Then Click on first record1 of the Search
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
    Then Wait for 10 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for the First Question
    And Scroll Down until "400" dimension on the page
    Then Click "No" for the Second Question
    And Scroll Down until "800" dimension on the page
    Then Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 15 seconds
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
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "D&B - Supplier Risk Assessment" under Approval Source
    #Then Wait for 5 seconds
    #Then Approve the Approval
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    # Then Wait for 10 seconds
    Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
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
