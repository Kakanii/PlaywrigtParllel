Feature: Norway Localisation

  #NorwayLocalisation
  Background: Login as Norway supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @NorwayLocalisation @Localisation @Supplier
  Scenario: Verify tax fields in Basic information page for "Norway" supplier
    Then Enter "Norway" supplier email in Email Address field
    #Then Enter "finland" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Click "Save Draft" button 3
    Then Wait for 10 seconds
    ###Tax details Lables visibility
    Then Show "Tax Identification Number" label under "Tax Details"
    Then Show "Commercial Registration Number" label under "Tax Details"
    Then Show "EU VAT Identification Number" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "Commercial Registration Certificate" label under "Tax Details"
    Then Show "EU VAT Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ####Tax details Input fields visibility
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "Commercial Registration Number" input text field under "Tax Details"
    Then Show "EU VAT Identification Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    ####Tax details input fields status
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "Commercial Registration Number" input text field enabled under "Tax Details"
    Then Verify "EU VAT Identification Number" input text field enabled under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    ###Tax Documents upload buttons visibility
    Then Show "Tax Registration Document" button in basic information
    Then Show "Commercial Registration Certificate" button in basic information
    Then Show "EU VAT Registration Document" button in basic information
    ###Tax Documents upload buttons status
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    Then Verify Upload "Commercial Registration Certificate" button clickable in basic information
    Then Verify Upload "EU VAT Registration Document" button clickable in basic information
    ###Tooltips
    Then Show "Business Type" tooltip "The appropriate business type of your company." under "Tax Details"
    Then Show "Tax Identification Number" tooltip "Please enter Tax identification number (TIN) or VATIN as issued by the Norwegian Tax Authority in the format '999999999’ or ‘999999999XXX’." under "Tax Details"
    Then Show "Commercial Registration Number" tooltip "Provide your Norwegian Organization Number as per the Central Coordinating Register for Legal Entities (Enhetsregisteret) and/or Register of Business Enterprises (Foretaksregisteret) e.g. 951894052." under "Tax Details"
    Then Show "EU VAT Identification Number" tooltip "It is a 9 digit number in the format ‘999999999’." under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration in the below mentioned formats." under "Tax Details"
    Then Show "Commercial Registration Certificate" tooltip "Attach your company's Certificate of Incorporation in the below mentioned formats." under "Tax Details"
    Then Show "EU VAT Registration Document" tooltip "Attach your company's EU VAT Registration Document in the below mentioned formats." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    ####Business types
    Then Verify "General Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Norwegian Registered Foreign Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify count of options is 8 in "Business Type" dropdown under "Tax Details"
    ### Flag
    Then Verify "Norway" flag in "Phone Number" field "no"
    Then Verify "Norway" flag in "Fax Number" field "no"
    ### Phone Number
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+47 9876 543210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+47 9876 543210"
    ### Required fields validation
    Then Click "Save and Continue" button 3
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Certificate" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Identification Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ##Error validation
    ## Company Registration Number - Input range
    Then Enter "1a2b3" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "123" under "Tax Details"
    Then Show error message "Invalid Commercial Registration Number" under "Commercial Registration Number" field under "Tax Details"
    Then Enter "1234567890" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    ## Company Registration Number - Input type
    Then Enter "abcd" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Enter "      " in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    ## Tax Identification Number - Input range
    Then Enter "1a2b3c4d5" in "Tax Identification Number" field under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    Then Enter "1a2b3" in "Tax Identification Number" field under "Tax Details"
    Then Show error message "Invalid Tax Identification Number" under "Tax Identification Number" field under "Tax Details"
    Then Enter "1a2b3c4d5e6f7" in "Tax Identification Number" field under "Tax Details"
    #Then Verify data entered in "Tax Identification Number" field is "1a2b3c4d5e6f7" under "Tax Details"
    Then Wait 2 seconds
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    ## Tax Identification Number - Input type
    Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    ## EU VAT Registration Number - Input range
    Then Enter "12345678" in "EU VAT Identification Number" field under "Tax Details"
    Then Show error message "Invalid EU VAT Identification Number" under "EU VAT Identification Number" field under "Tax Details"
    Then Enter "FI1234567890" in "EU VAT Identification Number" field under "Tax Details"
    #Then Verify data entered in "EU VAT Identification Number" field is "FI1234567890" under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Identification Number" field under "Tax Details"
    ## EU VAT Registration Number - Input type
    Then Enter "abcd" in "EU VAT Identification Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Identification Number" field under "Tax Details"
    Then Enter "@#$%&" in "EU VAT Identification Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Identification Number" field under "Tax Details"
    Then Enter "      " in "EU VAT Identification Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Identification Number" field under "Tax Details"
    ## D-U-N-S Number - Input range
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    ## D-U-N-S Number - Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    ##Document uploads
    Then Scroll to view "Legal Business Name" field
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
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Tax Registration Document" button
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
    Then Logout from the system

  @Regression @NorwayLocalisation @Localisation @Supplier
  Scenario: Verify Bank Account page for "Norway" supplier
    Then Enter "Norway" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Verify "Norway" is listed in "Country/Region" dropdown
    Then Select "Norway" in "Country/Region" dropdown
    ###Label visibility
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "Region" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Show label "IBAN" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    ####Input fields visibility
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "Region" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show text field "IBAN" under "Bank Account Information"
    Then Show "Currency" css dropdown
    ####Input fields status
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Region" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Bank Key" input text field enabled under "Bank Account Information"
    Then Verify "Account Number" input text field enabled under "Bank Account Information"
    Then Verify "SWIFT Code" input text field enabled under "Bank Account Information"
    Then Verify "Currency" css dropdown enabled
    ####toooltips
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Bank Key" tooltip of "The first 4 digits of the bank account." in add bank account page
    And Verify "Account Number" tooltip of "The Account number of your Bank account which is usually 11 digits." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "IBAN" tooltip of "International Bank Account Number associated with the bank which is usually 15 alphanumeric characters.Example:NO1234567890123.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    # Then Show "Currency" tooltip "The currency type used in this bank account."
    Then Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House or Block number if longer than 100 characters." in add bank account page
    Then Verify "City" tooltip of "The name of the city at which it is located." in add bank account page
    And Verify "Region" tooltip of "Select the appropriate region from the dropdown." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code is usually 4 digits and in the format - 1234. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The Post Office Box Postal Code which is usually 4 digits." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    ##### Flag
    Then Verify "Norway" flag in "Bank Contact Number" field "no"
    ###Phone number
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Verify phone number "Bank Contact Number" is entered in accepted format "+47 9876 543210"
    ##Required Fields
    Then Click "Save" button 6
    Then Show error message "Required" for "Bank Name" field
    Then Show error message "Required" for "Currency" field
    Then Show error message "Required" for "Account Holder Name" field
    Then Show error msg "Required" under "Bank Key" field under BankAccountInformation
    Then Show error msg "Required" under "Account Number" field under BankAccountInformation
    Then Show error message "Required" for "Address Line 1" field
    #Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Postal Code" field
    Then Show error message "Required" for "Bank Branch Name" field
    Then Show error message "Required" for "Bank Contact Name" field
    ###Error Validation
    Then Enter 99 digit alpha numeric data in "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Enter 101 digit alpha numeric data in "Address Line 1" field
    Then Click "Save" button 6
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Enter 99 digit alpha numeric data in "Address Line 2" field
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Enter 101 digit alpha numeric data in "Address Line 2" field
    Then Click "Save" button 6
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Verify no error message is displayed under "Postal Code" field Value
    Then Enter "123" in "Postal Code" field
    Then Click "Save" button 6
    Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Verify no error message is displayed under "PO Box Postal Code" field Value
    Then Enter "123" in "PO Box Postal Code" field
    Then Clear "Address Line 1" field
    Then Clear "Address Line 2" field
    Then Clear "City" field
    Then Clear "Postal Code" field
    Then Clear "PO Box" field
    Then Clear "PO Box Postal Code" field
    Then Logout from the system

  @Regression @NorwayLocalisation @Localisation @Supplier
  Scenario: Verify supplier registration for Norway supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Norway" in "Supplier Country of Registration" dropdown
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
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Switch to "new TYS" tab
    Then Verify Company tab is displyed on registration page
    Then Verify User Account tab is displyed on registration page
    Then Verify Verification tab is displyed on registration page
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
    #labels
    Then Show "Country/Region of Registration" Label
    Then Show "Business Name" Label
    Then Show "Legal Business Name" Label
    Then Show "Website" Label
    ##### Field visbility
    # Then Show "Country/Region of Registration" Dropdown
    Then Show "Business Name" input text field
    Then Show "Legal Business Name" input text field
    Then Show "Website" input text field
    Then Show " Trust Your Supplier Terms & Conditions" link
    #####Field status
    #Then Verify "Country/Region of Registration" dropdown enabled
    Then Verify "Business Name" input text field enabled
    Then Verify "Legal Business Name" input text field enabled
    Then Verify "Website" input text field enabled
    Then Show " Trust Your Supplier Terms & Conditions" link enabled
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Wait for 5 seconds
    ####Phone Number
    Then Enter Job title on User Account page
    Then Verify Phone number field enabled "Phone Number"
    Then Verify "Norway" flag in "Phone Number" field "no"
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+47 9490 491531"
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
    ####Label
    Then Show "Address Line 1" Label after "Finland" supplier registration
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "Region" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    ####Field Visibility
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "Region" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    ####Field Status
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Region" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    ####Tooltips
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House or Block number if longer than 100 characters." in add bank account page
    Then Verify "City" tooltip of "The name of the city at which it is located." in add bank account page
    And Verify "Region" tooltip of "Select the appropriate region from the dropdown." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code is usually 4 digits and in the format - 1234. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The Post Office Box Postal Code which is usually 4 digits." in add bank account page
    ####Required fields
    Then Click "Next" button
    Then Show error message "Required" under "Address Line 1" field Value
    Then Show error message "Required" under "City" field Value
    Then Show error message "Required" under "Postal Code" field
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Region" field Value
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Input Type Validationaa
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Address Line 1" field Value
    Then Show error message "Required" under "City" field Value
    Then Show error message "Required" under "Postal Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ### Error Validation
    Then Enter 101 digit alpha numeric data in "Address Line 1" field
    Then Enter 101 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter 99 digit alpha numeric data in "Address Line 1" field
    Then Enter 99 digit alpha numeric data in "Address Line 2" field
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "1234"
    Then Enter "123456789012" in "PO Box" field
    Then Verify data entered in "PO Box" field is "123456789012"
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "1234"
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "Belsh" in "City" field
    Then Click "Next" button
    Then Show "Add UNSPSC Codes" label
    Then Logout from the system

  @Smoke @NorwayLocalisation @Localisation @Publish @Supplier @CDCI
  Scenario: Verify publishing Norway supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Norway" in "Supplier Country of Registration" dropdown
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
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 5 seconds
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767333" in "Postal Code" field after "Albania" supplier registration
    Then Select "Oslo" in "Region" dropdown
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
    Then Wait for 10 seconds
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    Then Enter "NO" followed by "" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Wait for 2 seconds
    Then Click "Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Wait for 5 seconds
    Then Select "General Partnership" value from Business type dropdown
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 5 seconds
    When Enter Stock Exchange Symbol "Stock supplier"
    Then Wait for 5 seconds
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
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
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
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @NorwayLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Norway supplier Without Questionnaire, With Diversity, With Addlt info
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Norway" in "Supplier Country of Registration" dropdown
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
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767333" in "Postal Code" field after "Albania" supplier registration
    Then Select "Oslo" in "Region" dropdown
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
    Then Wait for 10 seconds
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    Then Enter "NO" followed by "" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Wait for 2 seconds
    Then Click "Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Wait for 5 seconds
    Then Select "General Partnership" value from Business type dropdown
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 5 seconds
    When Enter Stock Exchange Symbol "Stock supplier"
    Then Wait for 5 seconds
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
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
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

  @Smoke @NorwayLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Norway supplier With Questionnaire, With Diversity, With Addlt info
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "Norway" in "Supplier Country of Registration" dropdown
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
    Then Wait for 5 seconds
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Wait for 5 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 5 seconds
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767333" in "Postal Code" field after "Albania" supplier registration
    Then Select "Oslo" in "Region" dropdown
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
    Then Wait for 10 seconds
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    Then Enter "NO" followed by "" and 8 numbers in "Tax Identification Number" field under "Tax Details"
    Then Wait for 2 seconds
    Then Click "Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Wait for 5 seconds
    Then Select "General Partnership" value from Business type dropdown
    Then Click on Yes for Diversity section
    Then Click on the radio button "YES" for "3" in Diversity
    Then Show input field "Diversity Category" dropdown under "Diversity"
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    Then Show tooltip "Indicate the diversity category you belong to. For more information on the categories," in "Diversity Category" in basic information
    Then Wait for 5 seconds
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Click "Yes" radio under "Are you publicly traded on a stock exchange?"
    Then Verify stock exchanges displayes when "NEW YORK" is typed in Stock Exchange dropdown
    Then Wait for 5 seconds
    When Enter Stock Exchange Symbol "Stock supplier"
    Then Wait for 5 seconds
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
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on Find ID button
    Then Wait for 13 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
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
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Click on Review and publish profile button in the review and Publish tab
    Then Wait for 10 seconds
    Then Click on the publish button
    #supplier should publish the questionnaire
    Then Wait for 10 seconds
    #supplier should publish the questionnaire
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

  @Smoke @NorwayLocalisation @Localisation @Supplier @CDCI
  Scenario: Add "Company Account" with valid data for Country "Norway"
    #   Then Enter "norway1" email in Email Address field for Italy
    Then Enter "norway01" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    #Then Select "Finland" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Finland"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Norwayholder"
    And Wait for 2 seconds
    #Then Enter "12345678" in "SWIFT Code" field under "Bank Account Information"
    #Then Enter "FI1234567890123456" in "IBAN" field under "Bank Account Information"
    Then Enter input data in "Account Number" field
    #Then Enter value for Bank Account Number "1234567891234567"
    And Wait for 2 seconds
    Then Enter input data in "Bank Key" field
    #Then Enter "1w2232322323232323" data in "Bank Key" field
    And Wait for 1 seconds
    #Then Enter "12345678" data in "SWIFT Code" field
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter "FI1234567890123456" data in "IBAN" field
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Norway"
    Then Enter value for Address "Estonia efiltower"
    Then Enter value for City "Helsinki"
    Then Select "Oslo" in "Region" dropdown
    Then Enter "767352" in "Postal Code" field after "Norway" supplier registration
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
    Then Enter "norway01" email in Email Address field for Italy
    #   Then Enter "norway1" email in Email Address field for Italy
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

  @Smoke @NorwayLocalisation @Localisation @Supplier @CDCI
  Scenario: Add "Factoring Company Account" with valid data for Country "Norway"
    Then Enter "Norway1" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    Then Select "Norway" in "Country/Region" dropdown
    Then Enter "Finland BOA" in "Bank Account Label" field
    Then Enter "Finland CA" in "Account Holder Name" field
    Then Enter "Bank of Norway" in "Bank Name" field
    Then Enter "Lisbon" in "Bank Branch Name" field
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter value for City " Tirana"
    Then Select "Oslo" in "Region" dropdown
    Then Enter "12345" in "Postal Code" field
    Then Enter "vyshu" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter value for Bank Account Number "1234567891234567"
    And Wait for 2 seconds
    Then Enter input data in "Bank Key" field
    #Then Enter "1w2232322323232323" data in "Bank Key" field
    And Wait for 1 seconds
    #Then Enter "12345678" data in "SWIFT Code" field
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter "FI1234567890123456" data in "IBAN" field
    Then Select "Euro (EUR)" in "Currency" css dropdown
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter "Testing" in Bank Desciption
    Then Select "Oslo" in the "factoringCompanyState" dropdown
    Then Enter "TYS third party" in "Factoring Company Name" field
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Enter "lo0987765" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "Po87654332" in "PO Box" field under "Factoring Company Address" section
    Then Enter "U28765433" in "PO Box Postal Code" field under "Factoring Company Address" section
    Then Enter "lukthi" in "Factoring Company Contact Name" field
    Then Enter "49765432103" in "Factoring Company Contact Number" contact field
    Then Enter "A1A88863S3" symbol in "factoringCompanyPostalCode" field
    Then Wait for 5 seconds
    Then Click "Save" button 6
    Then Wait 15 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    And Click "Connected Suppliers" tab
    Then Click on the Search by supplier name and press Enter
    And Scroll Down the page record of the Search
    And Scroll Down the opened popup and close
    And Logout from the system
    #deleting incomplete data
    Then Enter "norway1" email in Email Address field for Italy
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
