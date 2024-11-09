Feature: Russia Localisation

  #RussiaLocalisation
  Background: Login as Russia supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @RussiaLocalisation @Localisation @Supplier
  Scenario: Verify Basic information page for Russia supplier
    Then Enter "Russia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 10 seconds
    Then Click "Basic Information" tab
    ####tax country visibility
    Then Wait for 5 seconds
    Then Verify Tax Country "Russia" is Pre populated with country
    ####Labels visibility
    Then Show "Major State Registration Number(OGRN)" label under "Tax Details"
    Then Show "OGRN Certificate" label under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" label under "Tax Details"
    Then Show "Tax Document" label under "Tax Details"
    Then Show "OKPO" label under "Tax Details"
    Then Show "OKPO Certificate" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ####Input fields visibility
    Then Show "Major State Registration Number(OGRN)" input text field under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" input text field under "Tax Details"
    Then Show "OKPO" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    ####Input fields status
    Then Verify "Major State Registration Number(OGRN)" input text field enabled under "Tax Details"
    Then Verify "Taxpayer Identification Number (TIN)" input text field enabled under "Tax Details"
    Then Verify "OKPO" input text field enabled under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    ###Upload buttons visibility
    Then Show "OGRN Certificate" button in basic information
    Then Show "Tax Document" button in basic information
    Then Show "OKPO Certificate" button in basic information
    ###Upload buttons status
    Then Verify Upload "OGRN Certificate" button clickable in basic information
    Then Verify Upload "Tax Document" button clickable in basic information
    Then Verify Upload "OKPO Certificate" button clickable in basic information
    ###Tooltips
    Then Show "Major State Registration Number(OGRN)" tooltip "Company Registration Number usually called as OGRN code issued by registry of companies which is usually of minimum 9 digits and maximum 13 digits. This is a mandatory field." under "Tax Details"
    Then Show "OGRN Certificate" tooltip "Attach your OGRN Certificate issued by register of companies in the below mentioned formats. This is a mandatory attachment." under "Tax Details"
    Then Show "Taxpayer Identification Number (TIN)" tooltip "Taxpayer Identification Number (TIN) as issued by the Russian Federation Tax and is usually in the range of 10 to 12 digits. This is a mandatory field." under "Tax Details"
    Then Show "Tax Document" tooltip "Attach your Tax Document issued by Russian Federation Tax in the below mentioned formats. This is a mandatory attachment." under "Tax Details"
    Then Show "OKPO" tooltip "OKPO code issued by statistics body which is usually of minimum 8 digits and maximum of 10 digits. This is an optional field." under "Tax Details"
    Then Show "OKPO Certificate" tooltip "Attach your OKPO registration document issued by statistics body in the below mentioned formats. This is an optional attachment." under "Tax Details"
    Then Show "Business Type" tooltip "Select the appropriate Business Type of your company. This is mandatory." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    ###Business types
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Joint-Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Joint-Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
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
    ###Flag
    Then Verify "Russia" flag in "Phone Number" field "ru"
    Then Verify "Russia" flag in "Fax Number" field "ru"
    #### Phone number
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+7 9876543210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+7 9876543210"
    ### Required fields validation
    Then Click "Save and Continue" button 3
    Then Show error message "Required" under "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Show error message "Required" under "OGRN Certificate" field under "Tax Details"
    Then Show error message "Required" under "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Show error message "Required" under "Tax Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "OKPO" field under "Tax Details"
    Then Verify no error message is displayed under "OKPO Certificate" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Error validation
    ####Major State Registration Number(OGRN) Input Range 9 to 13 digits numeric
    Then Enter "1A2B3C4a5b6c7d8" in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify data entered in "Major State Registration Number(OGRN)" field is "12345678" under "Tax Details"
    Then Show error message "Invalid Major State Registration Number(OGRN)" under "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter "123456789" in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify no error message is displayed under "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter "1234567890" in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify no error message is displayed under "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter "12345678901234" in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify data entered in "Major State Registration Number(OGRN)" field is "1234567890123" under "Tax Details"
    Then Verify no error message is displayed under "Major State Registration Number(OGRN)" field under "Tax Details"
    ####Major State Registration Number(OGRN) Input type
    Then Enter "@#$%&" in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify no data is entered in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter "      " in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Verify no data is entered in "Major State Registration Number(OGRN)" field under "Tax Details"
    ####Taxpayer Identification Number (TIN) - Input Range 10 to 12 digits numeric
    Then Enter "1A2B3C4a5b6c7d89" in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify data entered in "Taxpayer Identification Number (TIN)" field is "123456789" under "Tax Details"
    Then Show error message "Invalid Taxpayer Identification Number (TIN)" under "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Enter "1234567890" in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify no error message is displayed under "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Enter "12345678901" in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify no error message is displayed under "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Enter "1234567890123" in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify data entered in "Taxpayer Identification Number (TIN)" field is "123456789012" under "Tax Details"
    Then Verify no error message is displayed under "Taxpayer Identification Number (TIN)" field under "Tax Details"
    ####Taxpayer Identification Number (TIN) - Input type
    Then Enter "@#$%&" in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify no data is entered in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Enter "      " in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Verify no data is entered in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    ## OKPO - Input range [3 to 20 alphanumeric characters]
    Then Enter "1Aa" in "OKPO" field under "Tax Details"
    Then Click "Save" button 6
    Then Show error message "Invalid OKPO" under "OKPO" field under "Tax Details"
    #Then Show error message "Invalid OKPO" under "OKPO" field under "Tax Details"
    Then Enter "123456789012345678901" in "OKPO" field under "Tax Details"
    Then Verify data entered in "OKPO" field is "1234567890" under "Tax Details"
    Then Verify no error message is displayed under "OKPO" field under "Tax Details"
    ## OKPO - Input type
    Then Enter "@#$%&" in "OKPO" field under "Tax Details"
    Then Verify no data is entered in "OKPO" field under "Tax Details"
    Then Enter "      " in "OKPO" field under "Tax Details"
    Then Verify no data is entered in "OKPO" field under "Tax Details"
    ##D-U-N-S Number - Input range
    Then Enter "12345678" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
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
    ### Document uploads
    ####OGRN Certificate
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload OGRN Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "OGRN Certificate" "samplePDF.pdf"
    Then Click "Upload OGRN Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OGRN Certificate" "samplePNG.png"
    Then Click "Upload OGRN Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OGRN Certificate" "sampleJPG.jpg"
    Then Click "Upload OGRN Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OGRN Certificate" "sampleJPEG.jpeg"
    Then Click "Upload OGRN Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload OGRN Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload OGRN Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    ####Tax Document
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Document" "samplePDF.pdf"
    Then Click "Upload Tax Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Document" "samplePNG.png"
    Then Click "Upload Tax Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Document" "sampleJPG.jpg"
    Then Click "Upload Tax Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Document" "sampleJPEG.jpeg"
    Then Click "Upload Tax Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    ###OKPO Certificate
    Then Click "Upload OKPO Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "OKPO Certificate" "samplePDF.pdf"
    Then Click "Upload OKPO Certificate" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OKPO Certificate" "samplePNG.png"
    Then Click "Upload OKPO Certificate" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OKPO Certificate" "sampleJPG.jpg"
    Then Click "Upload OKPO Certificate" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "OKPO Certificate" "sampleJPEG.jpeg"
    Then Click "Upload OKPO Certificate" button
    Then Upload "XLSX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload OKPO Certificate" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload OKPO Certificate" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    Then Logout from the system

  @Regression @RussiaLocalisation @Localisation @Supplier
  Scenario: Verify Bank Account page for Russia supplier
    Then Enter "Russia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Verify "Russia" is listed in "Country/Region" dropdown
    Then Select "Russia" in "Country/Region" dropdown
    ####Labels vilibility
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
    Then Show label "Correspondent Bank Account" under "Bank Account Information"
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
    Then Show text field "Correspondent Bank Account" under "Bank Account Information"
    Then Show "Currency" css dropdown
    ####Input field status
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
    Then Verify "Correspondent Bank Account" input text field enabled under "Bank Account Information"
    Then Verify "Currency" css dropdown enabled
    ###Tooltips
    And Verify "Bank Key" tooltip of "Bank Key associated with the bank and is usually 9 digits.This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account Number of the Bank account which is usually 20 Digits. This field is mandatory." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters. This is an optional field." in add bank account page
    And Verify "Correspondent Bank Account" tooltip of "Please provide the correspondent bank account in this field if it is applicable. This is usually 20 digits and it is an optional field." in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/ Building or block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "District" tooltip of "Name of the District at which it is located. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "Region" tooltip of "Select the appropriate region from the dropdown. This is an optional field." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your company which is usually 6 digits. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box Postal Code of your company which is usually 6 digits. This field is optional. " in add bank account page
    ###########################
    #Then Click "Save" button 6
    ##Currency in bank account page
    #Then Verify "Russian Rouble (RUB)" is listed in Currency dropdown
    ##Phone number format
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Verify phone number "Bank Contact Number" is entered in accepted format "+7 9876543210"
    Then Verify "Russia" flag in "Bank Contact Number" field "ru"
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
    Then Enter "1234567" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "123456"
    Then Click "Save" button 6
    Then Verify no error message is displayed under "Postal Code" field Value
    Then Enter "12345" in "Postal Code" field
    Then Show error message "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "123456"
    Then Verify no error message is displayed under "PO Box Postal Code" field Value
    Then Enter "12345" in "PO Box Postal Code" field
    #Then Show error message "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field Value
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Clear "Address Line 1" field
    Then Clear "Address Line 2" field
    Then Clear "City" field
    Then Clear "Postal Code" field
    Then Clear "PO Box" field
    Then Clear "PO Box Postal Code" field
    Then Logout from the system

  @Smoke @RussiaLocalisation @Localisation @Supplier @CDCI 
  Scenario: Add "Company Account" with valid data for Country "Russia"
    Then Enter "Russia01" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Russia" in "Country/Region" dropdown
    Then Enter "Russia BOA" in "Bank Account Label" field
    Then Enter value for Bank Name "Bank of Russia"
    Then Select "Euro" in "Currency" css dropdown
    # Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Russiaholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    And Wait for 2 seconds
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Russia"
    Then Enter value for Address "Russia efiltower"
    Then Enter value for City "Helsinki"
    Then Select "Adygea" in "Region" dropdown
    Then Enter "767352" in "Postal Code" field after "Russia" supplier registration
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Smoke @RussiaLocalisation @Localisation @Supplier @CDCI
  Scenario: Add "Factoring Company Account" with valid data for Country "Russia"
    Then Enter "Russia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Click on the "Factoring Company Account" radio button
    Then Select "Russia" in "Country/Region" dropdown
    Then Enter "Russia BOA" in "Bank Account Label" field
    Then Enter "Russia FCA" in "Account Holder Name" field
    Then Enter "Bank of Russia" in "Bank Name" field
    Then Enter "jorse" in "Bank Branch Name" field
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Helsinki" in "City" field
    Then Enter "123456" in "Postal Code" field
    Then Enter "jessie" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter input data in "Account Number" field
    And Wait for 2 seconds
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Select "Russian Rouble (RUB)" in "Currency" css dropdown
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter "TYS third party" in "Factoring Company Name" field
    #Then Select "Russia" in "Country/Region" under "Factoring Company Address" section
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
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Regression @RussiaLocalisation @Localisation @Supplier
  Scenario: Verify supplier registration for "Russia" supplier maildrop registration with tooltips, labels, error validations
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
    Then Select "Russia" in "Supplier Country of Registration" dropdown
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
    #####Label
    Then Show "Country/Region of Registration" Label
    Then Show "Business Name" Label
    Then Show "Legal Business Name" Label
    Then Show "Website" Label
    ##### Field visbility
    # Then Show "Country/Region of Registration" Label
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
    ####Label
    Then Show "Address Line 1" Label after "Russia" supplier registration
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
    And Verify "Address Line 2" tooltip of "Continue Street name, House/ Building or block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "District" tooltip of "Name of the District at which it is located. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the City at which it is located. This is a mandatory field." in add bank account page
    And Verify "Region" tooltip of "Select the appropriate region from the dropdown. This is an optional field." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your company which is usually 6 digits. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box Postal Code of your company which is usually 6 digits. This field is optional. " in add bank account page
    ###########################
    ####Required fields
    Then Click "Next" button
    Then Show error message "Required" under "Address Line 1" field Value
    Then Show error message "Required" under "City" field Value
    Then Show error message "Required" under "Postal Code" field
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Region" field Value
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    ###Input Type Validation
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
    Then Enter "12345" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "12345" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter 99 digit alpha numeric data in "Address Line 1" field
    Then Enter 99 digit alpha numeric data in "Address Line 2" field
    Then Enter "1234567" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "123456"
    Then Enter "123456789012" in "PO Box" field
    Then Verify data entered in "PO Box" field is "123456789012"
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "123456"
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "Belsh" in "City" field
    Then Enter "Belshward" in "District" field
    Then Select "Adygea" in "Region" dropdown
    Then Click "Next" button
    Then Show "Add UNSPSC Codes" label
    Then Logout from the system

  @Smoke @RussiaLocalisation @Localisation @Publish @Supplier @CDCI
  Scenario: Verify publishing Russia supplier
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
    Then Select "Russia" in "Supplier Country of Registration" dropdown
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Russia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Russia" supplier registration
    Then Enter "TestCity" in "City" field after "Russia" supplier registration
    Then Enter "767333" in "Postal Code" field after "Russia" supplier registration
    Then Select "Adygea" in "Region" dropdown
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
    Then Enter 13 digit numeric data in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter 10 digit numeric data in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Click "Upload OGRN Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    #Then Select "General Partnership" value from Business type dropdown
    #Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
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

  @Smoke @RussiaLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Russia supplier without questionnaires With Diversity, With Addlt info
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
    Then Select "Russia" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Russia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Russia" supplier registration
    Then Enter "TestCity" in "City" field after "Russia" supplier registration
    Then Enter "767333" in "Postal Code" field after "Russia" supplier registration
    Then Select "Adygea" in "Region" dropdown
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
    Then Enter 13 digit numeric data in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Enter 10 digit numeric data in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Click "Upload OGRN Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    #Then Select "General Partnership" value from Business type dropdown
    #Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
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

  @Smoke @RussiaLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Russia supplier with questionnaires With Diversity, With Addlt info
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
    Then Select "Russia" in "Supplier Country of Registration" dropdown
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
    #invite with questionare
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
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Russia" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Russia" supplier registration
    Then Enter "TestCity" in "City" field after "Russia" supplier registration
    Then Enter "767333" in "Postal Code" field after "Russia" supplier registration
    Then Select "Adygea" in "Region" dropdown
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
    Then Enter 13 digit numeric data in "Major State Registration Number(OGRN)" field under "Tax Details"
    Then Wait for 2 seconds
    Then Enter 10 digit numeric data in "Taxpayer Identification Number (TIN)" field under "Tax Details"
    Then Wait for 3 seconds
    Then Click "Upload OGRN Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Click "Upload Tax Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
    #Then Select "General Partnership" value from Business type dropdown
    #Then Select "Limited Liability Company" in "Business Type" dropdown under "Tax Details"
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
    Then Wait for 25 seconds
    Then Click on Find ID button
    Then Wait for 13 seconds
    #Then Click on Not a suitable match
    Then Click on Find ID button
    Then Click on Not a suitable match
    Then Wait for 3 seconds
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
        Then Wait for 10 seconds
        Then Click on the publish button
    Then Wait for 15 seconds
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
    Then Wait for 15 seconds
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
