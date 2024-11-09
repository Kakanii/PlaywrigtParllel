Feature: Saudi Arabia Localisation

  #SaudiArabiaLocalisation
  Background: Login as Saudi Arabia supplier
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify Tax Country in Basic information page is Pre-populated
    Then Enter "SaudiArabia" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Verify Tax Country "Saudi Arabia" is Pre populated with country
    Then Verify 8 fields are present under "Tax Details" in "Basic Information"
    Then Show "Business Type" label under "Tax Details"
    Then Show "Commercial Registration Number" label under "Tax Details"
    Then Show "Tax Identification Number" label under "Tax Details"
    Then Show "Commercial Registration Certificate" label under "Tax Details"
    Then Show "Tax Registration Certificate" label under "Tax Details"
    Then Show "Value Added Tax Identification Number" label under "Tax Details"
    Then Show "VAT Registration Certificate" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "Commercial Registration Number" input text field under "Tax Details"
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "Value Added Tax Identification Number" input text field under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "Commercial Registration Number" input text field enabled under "Tax Details"
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "Value Added Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Show "Commercial Registration Certificate" button in basic information
    Then Show "Tax Registration Certificate" button in basic information
    Then Show "VAT Registration Certificate" button in basic information
    Then Verify Upload "Commercial Registration Certificate" button clickable in basic information
    Then Verify Upload "Tax Registration Certificate" button clickable in basic information
    Then Verify Upload "VAT Registration Certificate" button clickable in basic information
    Then Show "Business Type" tooltip "Select the appropriate Business Type of your company. This is mandatory." under "Tax Details"
    Then Show "Commercial Registration Number" tooltip "Commercial Registration Number as issued by the Ministry of Commerce and Industry (MOCI). It is a 10-digit number in the format 1234567899. This field is mandatory and unique." under "Tax Details"
    Then Show "Value Added Tax Identification Number" tooltip "Value Added Tax Number (VAT) issued by the General Authority for Zakat and Tax (GAZT) and is usually 15-digits in the format 123456789012345. This is an optional field." under "Tax Details"
    Then Show "Commercial Registration Certificate" tooltip "Attach your company's Certificate of Incorporation issued by the Ministry of Commerce in the below mentioned formats. This field is mandatory." under "Tax Details"
    Then Show "Tax Registration Certificate" tooltip " Attach your company's Tax and Zakat clearance certificate (TZCC) in the below mentioned formats. This is a mandatory field. " under "Tax Details"
    Then Show "VAT Registration Certificate" tooltip "Attach your company's VAT registration certificate in the below mentioned formats. This is an optional field." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip " The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank. " under "Tax Details"
    Then Verify "General Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company(LLC)" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "SoleProprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify count of options is 9 in "Business Type" dropdown under "Tax Details"
    ###Flag
    Then Verify "Saudi Arabia" flag in "Phone Number" field "sa"
    Then Verify "Saudi Arabia" flag in "Fax Number" field "sa"
    ###Phone Number format
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+966 987 654 3210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+966 987 654 3210"
    ###Required fields
    Then Click "Save and Continue" button 3
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Commercial Registration Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Certificate" field under "Tax Details"
    Then Show error message "Required" under "Commercial Registration Certificate" field under "Tax Details"
    Then Verify no error message is displayed under "Value Added Tax Identification Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Certificate" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Error validation
    ###Tax Identification Number - Input range
    Then Enter "2345678345" in "Tax Identification Number" field under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    Then Enter "1a2b3" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "123" under "Tax Details"
    Then Enter "SE 2345678345 01" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "2345678345" under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    ###Tax Identification Number -- input type
    Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    ###Commercial Registration Number -- Input range
    Then Enter "2345678345" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    Then Enter "1a2b3" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "123" under "Tax Details"
    Then Show error message "Invalid Commercial Registration Number" under "Commercial Registration Number" field under "Tax Details"
    Then Enter "9876543219876543" in "Commercial Registration Number" field under "Tax Details"
    Then Verify data entered in "Commercial Registration Number" field is "9876543219" under "Tax Details"
    Then Verify no error message is displayed under "Commercial Registration Number" field under "Tax Details"
    ###Commercial Registration Number -- Input type
    Then Enter "@#$%&" in "Commercial Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Commercial Registration Number" field under "Tax Details"
    Then Show error message "Required" under "Commercial Registration Number" field under "Tax Details"
    Then Enter "      " in "Commercial Registration Number" field under "Tax Details"
    Then Show error message "Required" under "Commercial Registration Number" field under "Tax Details"
    #### D-U-N-S Number - Input range
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    #### D-U-N-S Number - Input type
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
    Then Click "Confirm" button
    Then Show attached document under "Commercial Registration Certificate" "samplePDF.pdf"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Commercial Registration Certificate" "samplePNG.png"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Commercial Registration Certificate" "sampleJPG.jpg"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Commercial Registration Certificate" "sampleJPEG.jpeg"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    ###Then Show Toast message "File exceeds maximum size of 5MB"
    Then Close toast message
    Then Click on "Cancel" button
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Show attached document under "Tax Registration Certificate" "samplePDF.pdf"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Tax Registration Certificate" "samplePNG.png"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Tax Registration Certificate" "sampleJPG.jpg"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "Tax Registration Certificate" "sampleJPEG.jpeg"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    ###Then Show Toast message "File exceeds maximum size of 5MB"
    Then Close toast message
    Then Click on "Cancel" button
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Show attached document under "VAT Registration Certificate" "samplePDF.pdf"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "VAT Registration Certificate" "samplePNG.png"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "VAT Registration Certificate" "sampleJPG.jpg"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click "Confirm" button
    Then Show attached document under "VAT Registration Certificate" "sampleJPEG.jpeg"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Click "Confirm" button
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload VAT Registration Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    ###Then Show Toast message "File exceeds maximum size of 5MB"
    Then Close toast message
    Then Click on "Cancel" button
    ###Currency in Financial page
    Then Click "Financial" tab
    Then Verify "Saudi Arabian Riyal (SAR)" is listed in "Select your Currency" dropdown
    Then Click "Your Profile" tab
    Then Logout from the system

  @Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify Bank Account page for Saudi Arabia supplier
    Then Enter "SaudiArabia" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank account" button
    Then Click "Company Account" radio button
    Then Verify "Saudi Arabia" is listed in "Country/Region" dropdown
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "Additional Number" Label
    Then Show "City" Label
    Then Show "District" Label
    Then Show "Postal Code/ZIP Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show "Currency" label under "Bank Account Information"
    Then Verify 4 fields are present under "Bank Account Information" in "Company Account"
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "Additional Number" input text field
    Then Show "City" input text field
    Then Show "District" Dropdown
    Then Show "Postal Code/ZIP Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show "Currency" css dropdown
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Show "Additional Number" input text field
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code/ZIP Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Currency" css dropdown enabled
    Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown."
    Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field."
    Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field. "
    Then Show "City" tooltip "Name of the City at which it is located. This is a mandatory field."
    Then Show "District" tooltip " Select the appropriate district from the dropdown. This is a mandatory field. "
    Then Show "Postal Code/ZIP Code" tooltip "The Postal Code of your company which is usually 5 digits. Example: 12643. This field is mandatory."
    Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 digits. This field is optional. "
    Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually 5 digits. Example: 12643. This field is optional."
    Then Show "Currency" tooltip " The currency type used in this bank account."
    ###Flag
    Then Verify "Saudi Arabia" flag in "Bank Contact Number" field "sa"
    Then Verify "Saudi Arabia" flag in "Accounts Receivable Contact Number" field "sa"
    ###Currency in ank account page
    Then Verify "Saudi Arabian Riyal (SAR)" is listed in Currency dropdown
    ###Phone number
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Verify phone number "Bank Contact Number" is entered in accepted format "+966 987 654 3210"
    Then Enter phone number "9876543210" in "Accounts Receivable Contact Number" field
    Then Verify phone number "Accounts Receivable Contact Number" is entered in accepted format "+966 987 654 3210"
    ##Required Fields
    Then Click "Save" button 3
    Then Show error message "Required" under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "District" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Show error message "Required" under Currency field under "Bank Account Information"
    ###Error Validation
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Show error message "Maximum length exceeded" under "Address Line 2" field
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is "12345"
    Then Verify no error message is displayed under "Postal Code/ZIP Code" field
    Then Enter "123" in "Postal Code/ZIP Code" field
    Then Show error message "Must be a valid Postal Code" under "Postal Code/ZIP Code" field
    Then Enter "@@@@" in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Enter "    " in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Bank Key- Input range
    Then Enter "1A" in "Bank Key" field under "Bank Account Information"
    Then Verify data entered in "Bank Key" field is "1" under "Bank Account Information"
    Then Show error message "Invalid Bank Key" under "Bank Key" field under "Bank Account Information"
    Then Enter "123" in "Bank Key" field under "Bank Account Information"
    Then Verify no error message is displayed under "Bank Key" field under "Bank Account Information"
    Then Verify data entered in "Bank Key" field is "12" under "Bank Account Information"
    ###Bank Key- Input type
    Then Enter "    " in "Bank Key" field under "Bank Account Information"
    Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    Then Enter "@#$%" in "Bank Key" field under "Bank Account Information"
    Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    ### Account Number - Input range
    Then Enter "1a2b3c" in "Account Number" field under "Bank Account Information"
    Then Verify data entered in "Account Number" field is "123" under "Bank Account Information"
    Then Show error message "Invalid Account Number" under "Account Number" field under "Bank Account Information"
    Then Enter "1234567890123456789" in "Account Number" field under "Bank Account Information"
    Then Verify data entered in "Account Number" field is "123456789012345678" under "Bank Account Information"
    Then Verify no error message is displayed under "Account Number" field under "Bank Account Information"
    ### Account Number - Input type
    Then Enter "    " in "Account Number" field under "Bank Account Information"
    Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    Then Enter "@#$%" in "Account Number" field under "Bank Account Information"
    Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    ###SWIFT Code - Input range
    Then Enter "1A2B3C4" in "SWIFT Code" field under "Bank Account Information"
    Then Show error message "Invalid SWIFT Code" under "SWIFT Code" field under "Bank Account Information"
    Then Enter "1A2B3C4D5E6F" in "SWIFT Code" field under "Bank Account Information"
    Then Verify data entered in "SWIFT Code" field is "1A2B3C4D5E6" under "Bank Account Information"
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    ###SWIFT Code - Input type
    Then Enter "    " in "SWIFT Code" field under "Bank Account Information"
    Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    Then Enter "@#$%" in "SWIFT Code" field under "Bank Account Information"
    Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    ###IBAN - Input range
    Then Enter "12345678901234567890123" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "SA123456789012345678901" in "IBAN" field under "Bank Account Information"
    Then Show error message "Invalid IBAN" under "IBAN" field under "Bank Account Information"
    Then Enter "SA12345678901234567890123" in "IBAN" field under "Bank Account Information"
    Then Verify no error message is displayed under "IBAN" field under "Bank Account Information"
    Then Verify data entered in "IBAN" field is "SA1234567890123456789012" under "Bank Account Information"
    ###IBAN - Input type
    Then Enter "abcd" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "    " in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "%@#%" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Clear "Address Line 1" field
    Then Clear "Address Line 2" field
    Then Clear "City" field
    Then Clear "Postal Code/ZIP Code" field
    Then Clear "PO Box" field
    Then Clear "PO Box Postal Code" field
    Then Clear "Bank Key" field under "Bank Account Information"
    Then Clear "Account Number" field under "Bank Account Information"
    Then Clear "SWIFT Code" field under "Bank Account Information"
    Then Clear "IBAN" field under "Bank Account Information"
    Then Scroll the page
    Then Click "Factoring Company Account" radio button
    Then Verify "Saudi Arabia" is listed in "Country/Region" dropdown
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "Additional Number" Label
    Then Show "City" Label
    Then Show "District" Label
    Then Show "Postal Code/ZIP Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show "Currency" label under "Bank Account Information"
    Then Verify 4 fields are present under "Bank Account Information" in "Company Account"
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "Additional Number" input text field
    Then Show "City" input text field
    Then Show "District" Dropdown
    Then Show "Postal Code/ZIP Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show "Currency" css dropdown
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Show "Additional Number" input text field
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code/ZIP Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Currency" css dropdown enabled
    Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field."
    Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field. "
    Then Show "City" tooltip "Name of the City at which it is located. This is a mandatory field."
    Then Show "District" tooltip " Select the appropriate district from the dropdown. This is a mandatory field. "
    Then Show "Postal Code/ZIP Code" tooltip "The Postal Code of your company which is usually 5 digits. Example: 12643. This field is mandatory."
    Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 digits. This field is optional. "
    Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually 5 digits. Example: 12643. This field is optional."
    Then Show "Currency" tooltip " The currency type used in this bank account."
    ###Flag
    Then Verify "Saudi Arabia" flag in "Bank Contact Number" field "sa"
    Then Verify "Saudi Arabia" flag in "Accounts Receivable Contact Number" field "sa"
    ###Currency in ank account page
    Then Verify "Saudi Arabian Riyal (SAR)" is listed in Currency dropdown
    ###Phone number
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Verify phone number "Bank Contact Number" is entered in accepted format "+966 987 654 3210"
    Then Enter phone number "9876543210" in "Accounts Receivable Contact Number" field
    Then Verify phone number "Accounts Receivable Contact Number" is entered in accepted format "+966 987 654 3210"
    ##Required Fields
    Then Click "Save" button 3
    Then Show error message "Required" under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "District" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Show error message "Required" under Currency field under "Bank Account Information"
    ###Error Validation
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Show error message "Maximum length exceeded" under "Address Line 2" field
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is "12345"
    Then Verify no error message is displayed under "Postal Code/ZIP Code" field
    Then Enter "123" in "Postal Code/ZIP Code" field
    Then Show error message "Must be a valid Postal Code" under "Postal Code/ZIP Code" field
    Then Enter "@@@@" in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Enter "    " in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Bank Key- Input range
    Then Enter "1A" in "Bank Key" field under "Bank Account Information"
    Then Verify data entered in "Bank Key" field is "1" under "Bank Account Information"
    Then Show error message "Invalid Bank Key" under "Bank Key" field under "Bank Account Information"
    Then Enter "123" in "Bank Key" field under "Bank Account Information"
    Then Verify no error message is displayed under "Bank Key" field under "Bank Account Information"
    Then Verify data entered in "Bank Key" field is "12" under "Bank Account Information"
    ###Bank Key- Input type
    Then Enter "    " in "Bank Key" field under "Bank Account Information"
    Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    Then Enter "@#$%" in "Bank Key" field under "Bank Account Information"
    Then Verify no data is entered in "Bank Key" field under "Bank Account Information"
    ### Account Number - Input range
    Then Enter "1a2b3c" in "Account Number" field under "Bank Account Information"
    Then Verify data entered in "Account Number" field is "123" under "Bank Account Information"
    Then Show error message "Invalid Account Number" under "Account Number" field under "Bank Account Information"
    Then Enter "1234567890123456789" in "Account Number" field under "Bank Account Information"
    Then Verify data entered in "Account Number" field is "123456789012345678" under "Bank Account Information"
    Then Verify no error message is displayed under "Account Number" field under "Bank Account Information"
    ### Account Number - Input type
    Then Enter "    " in "Account Number" field under "Bank Account Information"
    Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    Then Enter "@#$%" in "Account Number" field under "Bank Account Information"
    Then Verify no data is entered in "Account Number" field under "Bank Account Information"
    ###SWIFT Code - Input range
    Then Enter "1A2B3C4" in "SWIFT Code" field under "Bank Account Information"
    Then Show error message "Invalid SWIFT Code" under "SWIFT Code" field under "Bank Account Information"
    Then Enter "1A2B3C4D5E6F" in "SWIFT Code" field under "Bank Account Information"
    Then Verify data entered in "SWIFT Code" field is "1A2B3C4D5E6" under "Bank Account Information"
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    ###SWIFT Code - Input type
    Then Enter "    " in "SWIFT Code" field under "Bank Account Information"
    Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    Then Enter "@#$%" in "SWIFT Code" field under "Bank Account Information"
    Then Verify no data is entered in "SWIFT Code" field under "Bank Account Information"
    ###IBAN - Input range
    Then Enter "12345678901234567890123" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "SA123456789012345678901" in "IBAN" field under "Bank Account Information"
    Then Show error message "Invalid IBAN" under "IBAN" field under "Bank Account Information"
    Then Enter "SA12345678901234567890123" in "IBAN" field under "Bank Account Information"
    Then Verify no error message is displayed under "IBAN" field under "Bank Account Information"
    Then Verify data entered in "IBAN" field is "SA1234567890123456789012" under "Bank Account Information"
    ###IBAN - Input type
    Then Enter "abcd" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "    " in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Enter "%@#%" in "IBAN" field under "Bank Account Information"
    Then Verify no data is entered in "IBAN" field under "Bank Account Information"
    Then Logout from the system

  @Smoke @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Add "Company Account" & "Factoring Company Account" with valid data for Country "Saudi Arabia"
    Then Enter "SaudiArabia" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank account" button
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Saudi Arabia BON" in "Bank Account Label" field
    Then Enter "Saudi Arabia CA" in "Account Holder Name" field
    Then Enter "Bank of Saudi Arabia" in "Bank Name" field
    Then Enter "Basel" in "Bank Branch Name" field
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Basel" in "City" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Enter "Lekha" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter "98-765-4321" in "Account Number" field under "Bank Account Information"
    Then Enter "34" in "Bank Key" field under "Bank Account Information"
    Then Enter "12345678" in "SWIFT Code" field under "Bank Account Information"
    Then Enter "SA3546575634534646754765" in "IBAN" field under "Bank Account Information"
    Then Select "Saudi Arabian Riyal (SAR)" in "Currency" css dropdown
    Then Select "Bank statement" in "Evidence Type" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Save" button 3
    Then Click on "Ok" button
    Then Show Company Account card with "Saudi Arabia CA"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Click "Delete" button if found 4
    ###Then Click "Delete" button 4
    Then Switch to the parent window
    Then Click on "Add a Bank account" button
    Then Click "Factoring Company Account" radio button
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Saudi Arabia BON" in "Bank Account Label" field
    Then Enter "Saudi Arabia FCA" in "Account Holder Name" field
    Then Enter "Bank of Saudi Arabia" in "Bank Name" field
    Then Enter "Basel" in "Bank Branch Name" field
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Basel" in "City" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Enter "Lekha" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter "98-765-4321" in "Account Number" field under "Bank Account Information"
    Then Enter "34" in "Bank Key" field under "Bank Account Information"
    Then Enter "12345678" in "SWIFT Code" field under "Bank Account Information"
    Then Enter "SA3546575634534646754765" in "IBAN" field under "Bank Account Information"
    Then Select "Saudi Arabian Riyal (SAR)" in "Currency" css dropdown
    Then Select "Bank statement" in "Evidence Type" dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "TYS third party" in "Factoring Company Name" field
    Then Select "Saudi Arabia" in "Country/Region" under "Factoring Company Address" section
    Then Click "Save" button 3
    Then Click on "Ok" button
    Then Show Factoring Company Account card with "Saudi Arabia FCA"
    Then Click On Edit Option
    Then Click on Delete button on Update Bank Account Modal
    Then Click "Delete" button if found 4
    ###Then Click "Delete" button 4
    Then Switch to the parent window
    Then Logout from the system

  @Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify Add a new Contact modal
    Then Enter "SaudiArabia" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Contacts" tab
    Then Click on "Add a New Contact" button
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Verify "Saudi Arabia" is listed in "Country/Region" dropdown
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "Additional Number" Label
    Then Show "Additional Number" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "District" Label
    Then Show "District" Dropdown
    Then Show "Postal Code/ZIP Code" Label
    Then Show "Postal Code/ZIP Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown."
    Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field. "
    Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field."
    Then Show "City" tooltip "Name of the City at which it is located. This is a mandatory field."
    Then Show "District" tooltip "Select the appropriate district from the dropdown. This is a mandatory field. "
    Then Show "Postal Code/ZIP Code" tooltip "The Postal Code of your company which is usually 5 digits. Example: 12643. This field is mandatory."
    Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 digits. This field is optional."
    Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually 5 digits. Example: 12643. This field is optional."
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "Additional Number" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code/ZIP Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    ###Flag
    Then Verify "Saudi Arabia" flag in "Primary Phone" field "sa"
    Then Verify "Saudi Arabia" flag in "Secondary Phone" field "sa"
    ### Phone Number format
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+966 987 654 3210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+966 123 456 7890"
    ####Required Fields
    Then Click on "Save Contact" button
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "District" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "PO Box" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Error validations
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code/ZIP Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field
    Then Show error message "Maximum length exceeded" under "Address Line 2" field
    Then Show error message "Must be a valid Postal Code/ZIP Code." under "Postal Code/ZIP Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "123456" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is "12345"
    Then Enter "123456" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Verify no error message is displayed under "PO Box" field
    ###input type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is ""
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Close the modal
    Then Logout from the system

  @Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify Add a Contact to Management Team
    Then Enter "SaudiArabia" supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click "Management" tab
    Then Click on "Add Other" button
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "Saudi Arabia" is listed in "Country/Region" dropdown
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "Additional Number" Label
    Then Show "Additional Number" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "District" Label
    Then Show "District" Dropdown
    Then Show "Postal Code/ZIP Code" Label
    Then Show "Postal Code/ZIP Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "Country/Region" tooltip " Select the appropriate country from the dropdown."
    Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field."
    Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field."
    Then Show "City" tooltip "Name of the City at which it is located. This is a mandatory field."
    Then Show "District" tooltip " Select the appropriate district from the dropdown. This is a mandatory field."
    Then Show "Postal Code/ZIP Code" tooltip "The Postal Code of your company which is usually 5 digits. Example: 12643. This field is mandatory. "
    Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 0 to 12 digits. This field is optional."
    Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually 5 digits. Example: 12643. This field is optional."
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "Additional Number" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code/ZIP Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    ###Flag
    Then Verify "Saudi Arabia" flag in "Primary Phone" field "sa"
    Then Verify "Saudi Arabia" flag in "Secondary Phone" field "sa"
    ### Phone Number format
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+966 987 654 3210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+966 123 456 7890"
    ####Required Fields
    Then Click on "Save Contact" button
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "District" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "PO Box" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Error validations
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code/ZIP Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field
    Then Show error message "Maximum length exceeded" under "Address Line 2" field
    Then Show error message "Must be a valid Postal Code/ZIP Code." under "Postal Code/ZIP Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "123456" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is "12345"
    Then Enter "123456" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Verify no error message is displayed under "PO Box" field
    ###input type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code/ZIP Code" field
    Then Verify no data is entered in "Postal Code/ZIP Code" field
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is ""
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Close the modal
    Then Click "Your Profile" tab
    Then Logout from the system

  @Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify supplier registration for Saudi Arabia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "SauArab" Supplier Company name on Invite Supplier window
    Then Enter "SauArab" Supplier Contact email address on Invite Supplier modal
    Then Enter "SauArab" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "SauArab" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "SauArab" supplier Email
    Then Switch to "new TYS" tab
    Then Verify "Saudi Arabia" is listed in "Country/Region" dropdown
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Show "Business Name" Label
    Then Show "Business Name" input text field
    Then Show "Legal Business Name" Label
    Then Show "Legal Business Name" input text field
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "Additional Number" Label
    Then Show "Additional Number" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "District" Label
    Then Show "District" Dropdown
    Then Show "Postal Code/ZIP Code" Label
    Then Show "Postal Code/ZIP Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "Corporate Phone Number" Label
    Then Show TYS Terms & Conditions link text
    Then Show TYS Terms & Conditions checkbox
    Then Show Buyer Terms & Conditions link text
    Then Show Buyer Terms & Conditions checkbox
    Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown."
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As."
    Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents."
    Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 80 characters. This is a mandatory field."
    Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 80 characters. This is an optional field."
    Then Show "City" tooltip "Name of the City at which it is located. This is a mandatory field."
    Then Show "District" tooltip "Select the appropriate district from the dropdown. This is a mandatory field."
    Then Show "Postal Code/ZIP Code" tooltip "The Postal Code of your company which is usually 5 digits. Example: 12643. This field is mandatory."
    Then Show "PO Box" tooltip " The Post Office Box of your company which is usually 0 to 12 digits. This field is optional."
    Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually 5 digits. Example: 12643. This field is optional."
    Then Show "Corporate Phone Number" tooltip "The official corporate level contact number or a toll-free general information number of your company."
    Then Verify "Business Name" input text field enabled
    Then Verify "Legal Business Name" input text field enabled
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "Additional Number" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "District" dropdown enabled
    Then Verify "Postal Code/ZIP Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify Phone number flag dropdown enabled
    Then Verify Phone number field enabled "Corporate Phone Number"
    ### Flag
    Then Verify "Saudi Arabia" flag in "Corporate Phone Number" field "sa"
    ###Phone Number format
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Verify phone number "Corporate Phone Number" is entered in accepted format "+966 987 654 3210"
    ###Required fields
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Show error message "Required" under "Legal Business Name" field
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "District" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "PO Box" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###input type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is ""
    Then Show error message "Required" under "Address Line 1" field
    Then Show error message "Required" under "City" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is ""
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "     " in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is ""
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Show error message "Required" under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Error validations
    Then Enter 81 digit alpha numeric data in "Address Line 1" field
    Then Enter 81 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code/ZIP Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field
    Then Show error message "Maximum length exceeded" under "Address Line 2" field
    Then Show error message "Must be a valid Postal Code/ZIP Code." under "Postal Code/ZIP Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field
    Then Show error message "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "123456" in "Postal Code/ZIP Code" field
    Then Verify data entered in "Postal Code/ZIP Code" field is "12345"
    Then Enter "123456" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "Address Line 1" field
    Then Verify no error message is displayed under "Address Line 2" field
    Then Verify no error message is displayed under "Postal Code/ZIP Code" field
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Enter "Legal business" in "Legal Business Name" field
    Then Enter "Basel" in "City" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Click Continue button in supplier registration page
    Then Verify set password page in supplier registration
    Then Close TYS registration tab

  #@Smoke @SaudiArabiaLocalisation @Localisation @Publish @Supplier
  Scenario: Verify publishing Saudi Arabia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "SauArab" Supplier Company name on Invite Supplier window
    Then Enter "SauArab" Supplier Contact email address on Invite Supplier modal
    Then Enter "SauArab" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "SauArab" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "SauArab" supplier Email
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Basel" in "City" field
    Then Enter "Swiss Mansion" in "Address Line 1" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
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
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "General Partnership Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 10 digit numeric data in "Commercial Registration Number" field under "Tax Details"
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Basel" in "City" field
    Then Enter "Swiss info tech" in "Address Line 1" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Click on "Save Contact" button
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Saudi Arabian Riyal (SAR)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 2
    Then Click on "Review and Publish Profile" button
    Then Click on the publish button
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "SauArab" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "SauArab" supplier status "Ready For Review"
    Then Logout from the system
    Then Enter "SaudiArabia" supplier email in Email Address field "publishedsupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Select "Limited Liability Company(LLC)" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "General Partnership Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Government Entity" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Limited Partnership Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Non-Profit Organization" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Other" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Private Limited Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "Public Limited Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Select "SoleProprietorship" in "Business Type" dropdown under "Tax Details"
    Then Click "Save Draft" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Click "Your Profile" tab
    Then Logout from the system

  #@Smoke @SaudiArabiaLocalisation @Localisation @Onboard @Supplier
  Scenario: Verify Onboard Saudi Arabia supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "SauArab" Supplier Company name on Invite Supplier window
    Then Enter "SauArab" Supplier Contact email address on Invite Supplier modal
    Then Enter "SauArab" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Deselect the "High Risk" from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "SauArab" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "SauArab" supplier Email
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Basel" in "City" field
    Then Enter "Swiss Mansion" in "Address Line 1" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "General Partnership Company" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter 10 digit numeric data in "Commercial Registration Number" field under "Tax Details"
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Basel" in "City" field
    Then Enter "Swiss info tech" in "Address Line 1" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Click on "Save Contact" button
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Saudi Arabian Riyal (SAR)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 2
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    #supplier should publish the questionnaire
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click "Questionnaires" tab
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Switch to the parent window
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    Then Close toast message
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
    Then Close toast message
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "SauArab" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Click on the Supplier record in the supplier page
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Wait for 3 seconds
    Then Show Toast message "Cannot onboard Supplier as all IDD not yet answered."
    ## IDD
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    #Then Upload the file for Attach a file
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    #Then Click on Submit button on my supplier
    Then Click on Submit button on my supplier Questionnairs
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    # Notification Error message when tried to onboard before IDD
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    #Approve request
    Then Wait for 3 seconds
    Then Click on ALL tab under the Approval Requests
    Then Approve all the Request under the Approval Requests section
    Then Click on Actions button on reading panel
    Then Select "Onboard Supplier" from Actions options
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click on Onboard button on onboarding supplier
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system

  #@Regression @SaudiArabiaLocalisation @Localisation @Supplier
  Scenario: Verify Unique fields in basic information page
    Then Enter "SaudiArabia" supplier email in Email Address field "publishedsupplier@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "Saudi Arabia Legal published supplier" in "Legal Business Name" field
    Then Enter "9876541243" in "Commercial Registration Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Wait for 3 seconds
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "My Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "SauArab" Supplier Company name on Invite Supplier window
    Then Enter "SauArab" Supplier Contact email address on Invite Supplier modal
    Then Enter "SauArab" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "SauArab" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM"
    Then Click on Join Now Link in the "SauArab" supplier Email
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Saudi Arabia" in "Country/Region" dropdown
    Then Enter "Basel" in "City" field
    Then Enter "Swiss Mansion" in "Address Line 1" field
    Then Select "Al Faisaliyah, Al Qurayyat" in "District" dropdown
    Then Enter "12345" in "Postal Code/ZIP Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "General Partnership Company" in "Business Type" dropdown under "Tax Details"
    Then Enter "Saudi Arabia Legal published supplier" in "Legal Business Name" field
    Then Click "Upload Commercial Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Upload Tax Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter "9876541243" in "Commercial Registration Number" field under "Tax Details"
    Then Enter "4325432534" in "Tax Identification Number" field under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,Commercial Registration Number,Tax Identification Number,Value Added Tax Identification Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter 10 digit numeric data in "Commercial Registration Number" field under "Tax Details"
    Then Enter 10 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Save and Continue" button 3
    Then Show Toast message "The Legal Business Name,Value Added Tax Identification Number already exists. Please enter a valid one"
    Then Wait for 2 seconds
    Then Close toast message
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click "Save and Continue" button 3
    ### Then Show Toast message "Basic Information has been saved successfully"
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
