Feature: Italy Localisation

  #ItalyLocalisation
  Background: Start the application
    Given Open the login page
    Then Close the hotjar window

  @Regression @ItalyLocalisation @Localisation @Supplier
  Scenario: Verify invite a Supplier whose tax country is Italy with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    Then Select "Italy" in "Supplier Country of Registration" dropdown
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

  @Smoke @ItalyLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify supplier registration for "Italy" supplier
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
    #select Canda from the dropdown
    Then Select "Italy" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "Italy"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
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
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
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
    ####Label
    Then Show "Address Line 1" Label after "Italy" supplier registration
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "Province" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    ####Field Visibility
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "Province" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    ####Field Status
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Province" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    ####Tooltips
    #Then Enter data in Email Address field "sq1gpp9dspvtltd@maildrop.cc"
    #Then Enter data in Email Address field "RuunKdMaapvtltd@maildrop.cc"
    #When Enter Supplier Email in Email Address field
    #Then Click on Continue button on Login page
    #Then Enter data in Password field
    #Then Click on Sign In button on Login
    Then Show "Country/Region of Registration" field Tooltip description "The country/region in which the Supplier company is registered. This is a mandatory field." in "Supplier Regitration"
    Then Show "Address Line 1" field Tooltip description "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in "Supplier Regitration"
    Then Show "Address Line 2" field Tooltip description "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in "Supplier Regitration"
    Then Show "City" field Tooltip description "Name of the City at which it is located." in "Supplier Regitration"
    Then Show "Province" field Tooltip description "Name of the Province at which it is located." in "Supplier Regitration"
    Then Show "Postal Code" field Tooltip description "The Postal Code of your company which is usually 5 digits. Example : 00120 This field is mandatory." in "Supplier Regitration"
    Then Show "PO Box" field Tooltip description "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in "Supplier Regitration"
    Then Show "PO Box Postal Code" field Tooltip description "The PO BOX Postal Code of your company which is usually 5 digits. This field is Optional." in "Supplier Regitration"
    ###########################
    ####Required fields
    Then Click "Next" button
    Then Show error message "Required" under "Address Line 1" field Value
    Then Show error message "Required" under "City" field Value
    Then Show error message "Required" under "Postal Code" field
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Province" field Value
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
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "123456" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "123456789012" in "PO Box" field
    Then Verify data entered in "PO Box" field is "123456789012"
    Then Enter "123456" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "Belsh" in "City" field
    Then Click "Next" button
    Then Show "Add UNSPSC Codes" label
    Then Logout from the system

  @Regression @ItalyLocalisation @Localisation @Supplier
  Scenario: Verify Tax Details in Basic information page for "Italy" supplier
    Then Enter "italyinvite" email in Email Address field for Italy
    #Then Enter data in Email Address field "RuunKdMaapvtltd@maildrop.cc"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    ### Tax Country
    Then Wait for 10 seconds
    Then Verify Tax Country "Italy" is Pre populated with country
    #Then Enter "01/01/2020" in Date Established field
    Then Click "Save Draft" button 3
    Then Wait for 10 seconds
    #### Tax field Labels visibility
    #Then Verify 10 fields are present under "Tax Details" in "Basic Information"
    Then Show "Company Registration Number" label under "Tax Details"
    Then Show "Tax Identification Number" label under "Tax Details"
    Then Show "VAT Registration Number" label under "Tax Details"
    Then Show "EU VAT Registration Number" label under "Tax Details"
    Then Show "Company Registration Document" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "VAT Registration Document" label under "Tax Details"
    Then Show "EU VAT Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ####### Tax details input field visibility
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "VAT Registration Number" input text field under "Tax Details"
    Then Show "EU VAT Registration Number" input text field under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    ####### Tax details input field status
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "EU VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    ### Upload documents button visibility
    Then Show "Company Registration Document" button in basic information
    Then Show "Tax Registration Document" button in basic information
    Then Show "VAT Registration Document" button in basic information
    Then Show "EU VAT Registration Document" button in basic information
    ### Upload documents button status
    Then Verify Upload "Company Registration Document" button clickable in basic information
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    Then Verify Upload "VAT Registration Document" button clickable in basic information
    Then Verify Upload "EU VAT Registration Document" button clickable in basic information
    #### Tooltips
    Then Show "Business Type" tooltip "The appropriate Business Type of your company." under "Tax Details"
    Then Show "Company Registration Number" tooltip "Company registration number which is Numero REA as issued by the Italian Business Register. It is  8 or 9 or 10 alphanumeric characters. Eg: BA-332113 or AA-34567 or AA-3456789. This is an optional field." under "Tax Details"
    Then Show "Tax Identification Number" tooltip "Tax Identification Number, also known as Codice Fiscale, as issued by the Italian Revenue Agency Office in the format 12345678901." under "Tax Details"
    Then Show "VAT Registration Number" tooltip "VAT registration Number as issued by the Italian Revenue Agency in the format IT12345678901. This is an optional field." under "Tax Details"
    Then Show "EU VAT Registration Number" tooltip "EU VAT registration Number as issued by the Italian Revenue Agency in the format IT12345678901. This is an optional field." under "Tax Details"
    Then Show "Company Registration Document" tooltip "Attach your Company’s registration report issued by the Italian Business Register in the below mentioned formats. This is an optional field." under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration in the below mentioned formats." under "Tax Details"
    Then Show "VAT Registration Document" tooltip "Attach your company's Certificate of VAT Registration in the below mentioned formats. This is an optional field." under "Tax Details"
    Then Show "EU VAT Registration Document" tooltip "Attach your company's Certificate of EU VAT Registration in the below mentioned formats. This is an optional field." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    ###Business types
    Then Verify "Branch of foreign corporation" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "General Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership Limited by Shares" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify count of options is 10 in "Business Type" dropdown under "Tax Details"
    ###Flag
    Then Verify "Italy" flag in "Phone Number" field "it"
    Then Verify "Italy" flag in "Fax Number" field "it"
    ###Phone Number format
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+39 98 76543210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+39 98 76543210"
    ### Required fields validation
    Then Click "Save and Continue" button 3
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Certificate of Incorporation" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ##Error validation
    ## Company Registration Number - Input range
    Then Enter "123456789" in "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    #Then Verify data entered in "Company Registration Number" field is "12345678" under "Tax Details"
    Then Enter "1A2b3C" in "Company Registration Number" field under "Tax Details"
    #Then Verify data entered in "Company Registration Number" field is "1234567" under "Tax Details"
    Then Show error message "Invalid Company Registration Number" under "Company Registration Number" field under "Tax Details"
    ## Company Registration Number - Input type
    Then Enter "1234" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    ## Tax Identification Number - Input range
    Then Enter "1A2B3CD4E5F6G7H8" in "Tax Identification Number" field under "Tax Details"
    #Then Verify data entered in "Tax Identification Number" field is "12345678" under "Tax Details"
    Then Wait for 8 seconds
    Then Show error message "Invalid Tax Identification Number" under "Tax Identification Number" field under "Tax Details"
    #Then Show error message "Invalid Tax Identification Number" under "Tax Identification Number" field under "Tax Details"
    Then Enter "12345678901" in "Tax Identification Number" field under "Tax Details"
    #Then Verify data entered in "Tax Identification Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    ## Tax Identification Number - Input type
    Then Enter "abcd" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    # VAT Registration Number - Input range
    Then Enter "IT" followed by "" and 9 numbers and end with "B12" in "VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Number" field under "Tax Details"
    Then Enter "IT1234567890" in "VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "VAT Registration Number" field is "NL123456789" under "Tax Details"
    Then Show error message "Invalid VAT Registration Number" under "VAT Registration Number" field under "Tax Details"
    Then Enter "MJ12345678901" in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    Then Enter "123456" in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    # VAT Registration Number - Input type
    Then Enter "@#$%&" in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "VAT Registration Number" field under "Tax Details"
    # EU VAT Registration Number - Input range
    Then Enter "IT" followed by "" and 9 numbers and end with "B12" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    Then Enter "IT1234567890" in "EU VAT Registration Number" field under "Tax Details"
    #Then Verify data entered in "EU VAT Registration Number" field is "NL123456789" under "Tax Details"
    Then Show error message "Invalid EU VAT Registration Number" under "EU VAT Registration Number" field under "Tax Details"
    Then Enter "MJ12345678901" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "123456" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    # EU VAT Registration Number - Input type
    Then Enter "@#$%&" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    Then Enter "      " in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no data is entered in "EU VAT Registration Number" field under "Tax Details"
    # D-U-N-S Number - Input range
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    # D-U-N-S Number - Input type
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #Document uploads
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Company Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Company Registration Document" "samplePDF.pdf"
    Then Click "Upload Company Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Company Registration Document" "samplePNG.png"
    Then Click "Upload Company Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Company Registration Document" "sampleJPG.jpg"
    Then Click "Upload Company Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Company Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload Company Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Company Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload Company Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on the Confirm button.
    #Then Show Toast message "File exceeds maximum size of 5MB"
    #Then Close toast message
    #Then Click on cancel button.
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
    #Then Show Toast message "File exceeds maximum size of 5MB"
    #Then Close toast message
    #Then Click on cancel button.
    Then Click on the Confirm button.
    Then Click "Upload VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePDF.pdf"
    Then Click "Upload VAT Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "samplePNG.png"
    Then Click "Upload VAT Registration Document" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "sampleJPG.jpg"
    Then Click "Upload VAT Registration Document" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "VAT Registration Document" "sampleJPEG.jpeg"
    Then Click "Upload VAT Registration Document" button
    Then Upload "XLSX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload VAT Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Show Toast message "Invalid file type"
    Then Click "Upload VAT Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    #Then Show Toast message "File exceeds maximum size of 5MB"
    #Then Close toast message
    Then Click on the Confirm button.
    #Then Click on cancel button.
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
    Then Click on the Confirm button.

  #Then Show Toast message "File exceeds maximum size of 5MB"
  #Then Close toast message
  # Then Click on cancel button.
  @Regression @ItalyLocalisation @Localisation @Supplier
  Scenario: Verify Bank Account page for Italy supplier
    #Then Enter data in Email Address field "RuunKdMaapvtltd@maildrop.cc"
    Then Enter "italyinvite" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    #Then Click "Company Account" radio button
    Then Verify "Italy" is listed in "Country/Region" dropdown
    Then Select "Italy" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "Province" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Show label "IBAN" under "Bank Account Information"
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "Province" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Show text field "Control Key" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show text field "IBAN" under "Bank Account Information"
    Then Show "Currency" css dropdown
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Province" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "Bank Key" input text field enabled under "Bank Account Information"
    Then Verify "Account Number" input text field enabled under "Bank Account Information"
    Then Verify "SWIFT Code" input text field enabled under "Bank Account Information"
    Then Verify "Control Key" input text field enabled under "Bank Account Information"
    Then Verify "IBAN" input text field enabled under "Bank Account Information"
    Then Verify "Currency" css dropdown enabled
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    And Verify "Bank Account Label" tooltip of "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip of "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Bank Name" tooltip of "The name of the bank where your account is held." in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account number of your Bank account, which is usually the last 12 digits of IBAN. In very rare cases, it can be less (4 to 11 digits) if IBAN is not available. This is a mandatory field." in add bank account page
    And Verify "Bank Key" tooltip of "Bank Code associated with your bank which is usually 10 alphanumeric characters." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "IBAN" tooltip of "International Bank Account Number associated with the bank which is usually 27 alphanumeric characters.Example:IT60X0542811101000000123456.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "Account Evidence" tooltip of "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    Then Verify "City" tooltip of "Name of the City at which it is located." in add bank account page
    And Verify "Province" tooltip of "Name of the Province at which it is located." in add bank account page
    And Verify "Postal Code" tooltip of "The Postal Code of your company which is usually 5 digits. Example : 00120 This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO BOX Postal Code of your company which is usually 5 digits. This field is Optional." in add bank account page
    Then Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    ###Flag
    Then Verify "Italy" flag in "Bank Contact Number" field "it"
    ###Phone Number format
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Verify phone number "Bank Contact Number" is entered in accepted format "+39 98 76543210"
    ##Required Fields
    Then Click "Save" button 6
    Then Switch to the active window
    Then Verify no error message is displayed under "Country/Region" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Account Label" field under "Bank Account Information" section
    Then Show error message "Required" under "Bank Name" field under "Bank Account Information" section
    Then Wait 5 seconds
    Then Click "Save" button 6
    Then Wait 5 seconds
    Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Show error message "Required" under "Bank Branch Name" field under "Bank Address" section
    Then Show error message "Required" under "Address Line 1" field under "Bank Address" section
    Then Show error message "Required" under "City" field under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    Then Show error message "Required" under "Postal Code" field
    Then Show error message "Required" under Currency field under "Bank Account Information"
    Then Verify no error message is displayed under "Province" field under "Bank Address" section
    Then Verify no error message is displayed under "Address Line 2" field under "Bank Address" section
    Then Verify no error message is displayed under "PO Box" field under "Bank Address" section
    Then Verify no error message is displayed under "PO Box Postal Code" field under "Bank Address" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Bank Account Label" field under "Bank Account Information" section
    Then Verify no error message is displayed under "Intermediary Bank Account" field under "Bank Account Information" section
    Then Verify no error message is displayed under "SWIFT Code" field under "Bank Account Information"
    Then Verify no error message is displayed under "IBAN" field under "Bank Account Information"
    ###Error Validation
    Then Enter 101 digit alpha numeric data in "Address Line 1" field
    Then Enter 101 digit alpha numeric data in "Address Line 2" field
    Then Enter "123" in "Postal Code" field
    Then Enter "1234567890123" in "PO Box" field
    Then Enter "123" in "PO Box Postal Code" field
    Then Click "Save" button 6
    Then Show error message "Maximum length exceeded" under "Address Line 1" field Value
    Then Show error message "Maximum length exceeded" under "Address Line 2" field Value
    Then Show error message "Must be a valid Postal Code." under "Postal Code" field
    Then Show error message "Must be a valid PO BOX" under "PO Box" field Value
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    Then Enter "123456" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "123456789012" in "PO Box" field
    Then Verify data entered in "PO Box" field is "123456789012"
    Then Enter "123456" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Verify no error message is displayed under "Address Line 1" field Value
    Then Verify no error message is displayed under "Address Line 2" field Value
    Then Verify no error message is displayed under "Postal Code" field
    Then Verify no error message is displayed under "PO Box" field Value
    Then Verify no error message is displayed under "PO Box Postal Code" field
    Then Enter "    " data in "Account Number" field
    Then Verify no data is entered in "Account Number" field "Bank Account Information"
    Then Enter "@#$%" data in "Account Number" field
    Then Verify no data is entered in "Account Number" field "Bank Account Information"
    Then Enter "123" data in "Account Number" field
    Then Show error msg "Invalid Account Number" under "Account Number" field under BankAccountInformation
    Then Enter "    " data in "Bank Key" field
    Then Verify no data is entered in "Bank Key" field "Bank Account Information"
    Then Enter "@#$%" data in "Bank Key" field
    Then Verify no data is entered in "Bank Key" field "Bank Account Information"
    Then Enter "123456789" data in "Bank Key" field
    Then Show error msg "Invalid Bank Key" under "Bank Key" field under BankAccountInformation
    Then Enter "    " data in "SWIFT Code" field
    Then Verify no data is entered in "SWIFT Code" field "Bank Account Information"
    Then Enter "@#$%" data in "SWIFT Code" field
    Then Verify no data is entered in "SWIFT Code" field "Bank Account Information"
    Then Enter "123456789" data in "SWIFT Code" field
    Then Show error msg "Invalid SWIFT Code" under "SWIFT Code" field under BankAccountInformation
    Then Enter "    " data in "IBAN" field
    Then Verify no data is entered in "IBAN" field "Bank Account Information"
    Then Enter "%@#%" data in "IBAN" field
    Then Verify no data is entered in "IBAN" field "Bank Account Information"
    #Then Enter "IT" followed by "" and 14 numbers in "IBAN" field under "Bank Account Information"
    #Then Show error msg "Invalid IBAN" under "IBAN" field under BankAccountInformation
    Then Enter "IT123456789012345" data in "IBAN" field
    Then Show error msg "Invalid IBAN" under "IBAN" field under BankAccountInformation
    #Then Verify data entered in "IBAN" field is "IT123456789012345" under "Bank Account Information"
    Then Clear "Address Line 1" field
    Then Clear "Address Line 2" field
    Then Clear "City" field
    Then Clear "Postal Code" field
    Then Clear "PO Box" field
    Then Clear "PO Box Postal Code" field
    Then Clear "Bank Key" the field under "Bank Account Information"
    Then Clear "Account Number" the field under "Bank Account Information"
    Then Clear "Control Key" the field under "Bank Account Information"
    Then Clear "SWIFT Code" the field under "Bank Account Information"
    Then Clear "IBAN" the field under "Bank Account Information"
    Then Scroll the page
    And Logout from the system

  @Regression @ItalyLocalisation @Localisation @Supplier
  Scenario: Add "Company Account" with valid data for Country "Italy"
    Then Enter "italyinvite" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Italy" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Italy"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "italyholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    #Then Enter value for Bank Account Number "1234567891234567"
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    #Then Enter value for Bank Account Number "1234567891234567"
    #Then Enter "1w2232322323232323" data in "Bank Key" field
    Then Enter "1eee2332" data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Italy"
    Then Enter value for Address "Paris efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Florence" in "Province" dropdown
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
    Then Enter "italyinvite" email in Email Address field for Italy
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

  @Smoke @ItalyLocalisation @Localisation @Publish @Supplier @CDCI
  Scenario: Verify bank details for newly publishing Italy supplier
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
    #select Italy from thE dropdown
    Then Select "Italy" in "Supplier Country of Registration" dropdown
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
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
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
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
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
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    Then Enter 11 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Branch of foreign corporation" in "Business Type" dropdown under "Tax Details"
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
    Then Wait for 5 seconds
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Italy" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Italy"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "italyholder"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567"
    Then Enter "1w2232322323232323" data in "Bank Key" field
    Then Enter "1eee2332" data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Italy"
    Then Enter value for Address "Paris efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Florence" in "Province" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Wait 5 seconds
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

  @Smoke @ItalyLocalisation @Localisation @Supplier @CDCI
  Scenario: Add "Factoring Company Account" with valid data for Country "Italy"
    Then Enter "italyinvite" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    And Wait for 2 seconds
    Then Select "Italy" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Italy"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "italyholder"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567"
    Then Enter "1w2232322323232323" data in "Bank Key" field
    Then Enter "1eee2332" data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Italy"
    Then Enter value for Address "Paris efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Florence" in "Province" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    Then Enter "TYS third party" in "Factoring Company Name" field
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Enter "lo0987765" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "Po87654332" in "PO Box" field under "Factoring Company Address" section
    Then Enter "U28765433" in "PO Box Postal Code" field under "Factoring Company Address" section
    Then Enter "lukthi" in "Factoring Company Contact Name" field
    Then Enter "49765432103" in "Factoring Company Contact Number" contact field
    Then Select "Florence" in the "factoringCompanyState" dropdown
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
    Then Enter "italyinvite1" email in Email Address field
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

  @Smoke @ItalyLocalisation @Localisation @Publish @Supplier @CDCI
  Scenario: Verify publishing Italy supplier
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
    #select Italy from teh dropdown
    Then Select "Italy" in "Supplier Country of Registration" dropdown
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
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
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
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 11 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Branch of foreign corporation" in "Business Type" dropdown under "Tax Details"
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

  @Smoke @ItalyLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Italy supplier
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
    #select Italy from the dropdown
    Then Select "Italy" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
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
    Then Wait for 10 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds   
    Then Switch to "new TYS" tab
    Then Wait for 3 seconds   
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
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
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
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
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Click "Skip" button
    #Then Click "Your Profile" tab
    Then Wait for 5 seconds
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then Wait for 5 seconds
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 11 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Branch of foreign corporation" in "Business Type" dropdown under "Tax Details"
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
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on at "Next Step" button
    #add management
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    Then Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal  
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    #answer questionare
    Then Click on Questionnaires Nav link
    Then Click on button "Begin Questionnaire" for questionare
    Then click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    Then click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    Then click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    Then click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    Then click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    Then click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    Then click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    Then Click on button "Publish Questionnaire" for questionare
    Then Click on button Publish for questionare
    Then Wait for 10 seconds
    Then Logout from the system
    #onboard
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    #Then Click on first record1 of the Search
    Then Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    Then Click on the Action Center
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
    #### PIF Indicator
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on the NO for First question in PIF Indicator
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    ###USL Search
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
    ###S&EMS Record created
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
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
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    ###Export/Import Compliance
    #Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
   # Then Click "No" for the First Question
   # And Scroll Down until "400" dimension on the page
   # Then Click "No" for the Second Question
   # And Scroll Down until "800" dimension on the page
   # Then Click "No" for the Third Question
    # Then Click on the NO for First question
   # Then Click on Submit button on Export Import Compliance
    #Then Click on the Submit button in DPL Search
   # And Click Submit button in DPL Search
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
   # Then Wait for 15 seconds
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
    Then Select value "Global Logistics (GLP)" from "supplierCategory"
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 5 seconds
    #approvals
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
    Then Wait for 10 seconds      
    Then Click on the "Buyer Internal assessment" under Approval Source
    #When Click on "Buyer Internal assessment" in Approval Source "1"
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    ##DPL Search
    Then Click on the "DPL Search" under Approval Source
    #Then Click on "DPL Search" in Approval Source "1"
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    And Logout from the system

  @Smoke @ItalyLocalisation @Localisation @Onboard @Supplier @CDCI
  Scenario: Verify Onboard Italy supplier without questionnaires
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
    #select Italy from teh dropdown
    Then Select "Italy" in "Supplier Country of Registration" dropdown
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
    Then Click on the Clear All Link on Assign Questionnaires window
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
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Enter "AL1" in "Address Line 1" field after "Italy" supplier registration
    Then Enter "Sydney" in "City" field
    Then Enter "12345" in "Postal Code" field
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
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "1/02/2021" in Date Established field
    #Then Enter the Description on the Basic information page
    Then Enter 11 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Select "Branch of foreign corporation" in "Business Type" dropdown under "Tax Details"
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
    #Then Click on first record1 of the Search
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
    #Then Refresh the current webpage
    #Then Wait for 5 seconds
    #Then Click on the Action Center
    #Then Scroll the page
    #Then Wait for 5 seconds
    #Then Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #Then Click on the YES for First question
   # Then Wait for 3 seconds
    #Then Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #Then Enter "01/02/2021" in Expiry Date field
    #Then add label as "VATDOCUMENT"
    #Then Click on the Confirm button.
   # Then Wait for 3 seconds
    #Then Click on the Submit
    #Then Click on the Submit button for submitting questionaire
    #Then Wait for 3 seconds
    #Then Switch to the active window
   # Then Switch to the parent window
    #Then Wait for 10 seconds
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
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the "DPL Search" under Approval Source
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
