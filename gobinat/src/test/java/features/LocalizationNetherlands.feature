Feature: Netherlands Localisation

  #NetherlandsLocalisation
Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @NetherlandsLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify invite a Supplier whose tax country is Netherlands with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
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

  @Smoke @NetherlandsLocalisation @Localisation @QuickSanity 
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
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
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
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
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
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
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


@Smoke @Supplier @BankAccount @QuickSanity @NetherlandsLocalisation 
  Scenario: Add basic info labels and tooltips, error validation, documents upload
    Then Enter "NetherlandsSupplier" email in Email Address 
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login  
    Then Wait for 10 seconds        
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
 ###tax country visibility
    Then Verify Tax Country "Netherlands" is Pre populated with country
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
    Then Show "Certificate of Incorporation" label under "Tax Details"
    Then Show "VAT Registration Number" label under "Tax Details"
    Then Show "VAT Registration Document" label under "Tax Details"
     Then Show "EU VAT Registration Number" label under "Tax Details"
     Then Show "EU VAT Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "VAT Registration Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
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
    ###input field status
    Then Verify "Business Name" input text field is enabled in "Basic Information"
    Then Verify "Legal Business Name" input text field is enabled in "Basic Information"
    Then Verify "Tax Country/Region" input text field is enabled in "Basic Information"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "Phone Number" input text field is enabled in Corporate Contact Details
    Then Verify "Fax Number" input text field is enabled in Corporate Contact Details
    Then Verify "Company Email" input text field is enabled in "Corporate Contact Details"
    Then Verify "Number of Full-Time Employees" input text field is enabled in "Additional Information"
    Then Verify "Number of Temporary and Contracted Employees" input text field is enabled in "Additional Information"
    #Radio button status
    Then Verify "YES" radio button "1" is not selected by default under "Diversity"
    Then Verify "NO" radio button "2" is selected by default under "Diversity"
    Then Verify "YES" radio button "3" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "NO" radio button "4" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
     ### Upload button visibility
    Then Show "Certificate of Incorporation" button in basic information
    Then Show "Tax Registration Document" button in basic information
    Then Show "VAT Registration Document" button in basic information
    Then Show "EU VAT Registration Document" button in basic information
    ##Save Draft and Save and continue button visibility
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Verify Upload "Certificate of Incorporation" button clickable in basic information
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    Then Verify Upload "VAT Registration Document" button clickable in basic information
    Then Verify Upload "EU VAT Registration Document" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    ###tooltips
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in "Basic Information"
    Then Show "Date Established" tooltip " The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in DD/MM/YYYY format and mandatory. " in "Basic Information"
    Then Show "Tax Country/Region" tooltip " The country/region your company pays tax to. This was set during registration. " in "Basic Information"
    Then Show "Description" tooltip " A brief description of your Company. " in "Basic Information"
    Then Show "Company Registration Number" tooltip "Company registration number, also known as the KvK nummer, is issued by the Dutch Commercial Register of Netherlands Chamber of Commerce. It is an 8-digit number. Eg: 12345678. This is an optional field." under "Tax Details"
    Then Show "Certificate of Incorporation" tooltip "Attach your Company registration document, also known as the KvK certificate, as issued by the Dutch Commercial Register of Netherlands Chamber of Commerce. This is an optional field." under "Tax Details"
    Then Show "Tax Identification Number" tooltip "Tax Identification Number, also known as RSIN, issued by the Dutch Chamber of Commerce in the format 859723689." under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's Certificate of Tax Registration in the below mentioned formats." under "Tax Details"
    Then Show "VAT Registration Number" tooltip "VAT registration Number as issued by the Dutch Tax and Customs Administration in the format NL000099998B57. This is an optional field." under "Tax Details"
    Then Show "VAT Registration Document" tooltip "Attach your company's Certificate of VAT Registration in the below mentioned formats. This is an optional field." under "Tax Details"
    Then Show "Business Type" tooltip "The appropriate Business Type of your company." under "Tax Details"
    Then Show "D-U-N-S Number" tooltip "The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank." under "Tax Details"
    Then Show "Phone Number" tooltip " The official corporate level contact number or a toll-free general information number of your company. " in "Corporate Contact Details"
    Then Show "Fax Number" tooltip " The official corporate level fax number of your company. " in "Corporate Contact Details"
    Then Show "Company Email" tooltip " The official email address of the point of contact from your Company. " in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" tooltip " The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company. " in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" tooltip " Number of part time or contracted employees of your company. " in "Additional Information"
    Then Show "UNSPSC" tooltip " The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code) " in "Basic Information"
    Then Show "NAICS" tooltip " The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes. " in "Basic Information"
    ###Required Fields
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "Association" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Branch office" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Cooperative" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Foundation" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "General Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Government Entity" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Non-Profit Organization" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Private Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Public Limited Liability Corporation" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "Netherlands" flag in "Phone Number" field "nl"
    Then Verify "Netherlands" flag in "Fax Number" field "nl"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+31 323 213123555"
    #Then Verify phone number "Phone Number" is entered in accepted format "+355 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+31 323 2131235"
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
    Then Enter "123456789" in "Company Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "Company Registration Number" field under "Tax Details"
    Then Verify data entered in "Company Registration Number" field is "12345678" under "Tax Details"
    Then Enter "1A2b3C4D5E6F7" in "Company Registration Number" field under "Tax Details"
    Then Verify data entered in "Company Registration Number" field is "1234567" under "Tax Details"
    Then Show error message "Invalid Company Registration Number" under "Company Registration Number" field under "Tax Details"
    ## Company Registration Number - Input type
    Then Enter "abcd" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    ## Tax Identification Number - Input range
    Then Enter "1A2B3CD4E5F6G7H8" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "12345678" under "Tax Details"
    Then Show error message "Invalid Tax Identification Number" under "Tax Identification Number" field under "Tax Details"
    Then Enter "1234567890" in "Tax Identification Number" field under "Tax Details"
    Then Verify data entered in "Tax Identification Number" field is "123456789" under "Tax Details"
    Then Verify no error message is displayed under "Tax Identification Number" field under "Tax Details"
    ## Tax Identification Number - Input type
    Then Enter "abcd" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    # VAT Registration Number - Input range
    Then Enter "NL" followed by "" and 9 numbers and end with "B12" in "VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "VAT Registration Number" field under "Tax Details"
    Then Enter "NL1234567890" in "VAT Registration Number" field under "Tax Details"
    Then Verify data entered in "VAT Registration Number" field is "NL123456789" under "Tax Details"
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
    Then Enter "NL" followed by "" and 9 numbers and end with "B12" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify no error message is displayed under "EU VAT Registration Number" field under "Tax Details"
    Then Enter "NL1234567890" in "EU VAT Registration Number" field under "Tax Details"
    Then Verify data entered in "EU VAT Registration Number" field is "NL123456789" under "Tax Details"
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
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
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
    ##Document uploads
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation" "samplePDF.pdf"
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "PNG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation" "samplePNG.png"
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "JPG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation" "sampleJPG.jpg"
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "JPEG" under "Replace Document"
    Then Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation" "sampleJPEG.jpeg"
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "XLSX" under "Replace Document"
    Then Click on the Confirm button.
    ###Then Show Toast message "Invalid file type"
    Then Click "Upload Certificate of Incorporation" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Click "Upload Certificate of Incorporation" button
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
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Click "Upload EU VAT Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
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
    Then Click "Upload VAT Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Click "Upload VAT Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
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
    Then Click "Upload Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "pdf" file "samplePDF5MB+" under "Replace Document"
    Then Click on cancel button.
    Then Click "Your Profile" tab
    Then Logout from the system
            
             
  @Smoke @NetherlandsLocalisation @Supplier @QuickSanity
  Scenario: Verify As a Buyer, able to view labels, tooltips, error validations in Management page
    #Open buyer page
    Then Enter "NetherlandsSuppliersta" email in Email Address 
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Management" tab
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "Netherlands" is listed in "Country/Region" dropdown
    Then Select "Netherlands" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "Province" Label
    Then Show "Province" Dropdown
    Then Show "Postal Code" Label
    Then Show "Postal Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    #Tooltip
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    Then Show "Year of Birth" tooltip "The year this person was born, as it appears on official government documents, such as a passport. This is a required field. "
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip " The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip " The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip " The official email address of this person. This is a required field."
    Then Show "Select Location" tooltip " The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip " Address Type is the category of address. This is a required field."
    Then Show "D-U-N-S Number" tooltip " DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank. "
    # Flag
    Then Verify "Netherlands" flag in "Primary Phone" field "nl"
    Then Verify "Netherlands" flag in "Secondary Phone" field "nl"
    #Phone Number
    Then Enter "rama" in "First Name" field
    Then Enter "lla" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "ramasupplier@mailinator.com"
    Then Enter phone number "3232131235" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+31 323 2131235"
    Then Enter phone number "3232131222" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+31 323 2131222"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1" in "PO Box Postal Code" field
    Then Show error message like "Must be a valid PO Box Postal Code." under "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    #Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234" in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "1234" in "PO Box Postal Code" field
    Then Close the modal
    
    Then Logout from the system
    
   @Regression @NetherlandsLocalisation @Localisation @Supplier 
  Scenario: Verify tooltip, error validation, maildrop registration link and verify the supplier registration process for Netherlands country from maildrop, Onboard the supplier without questionnaire
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
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
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
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
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
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
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
   # Then Click on the YES for First question
    #Then Wait for 3 seconds
    #Then Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #Then Enter "01/02/2021" in Expiry Date field
    #Then add label as "VATDOCUMENT"
    #Then Click on the Confirm button.
    #Then Wait for 3 seconds
    #Then Click on the Submit
    #Then Click on the Submit button for submitting questionaire
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #Then Switch to the parent window
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
    #Then Wait for 5 seconds
    #Then Approve the Approval
   # Then Enter the Notes under the Notes Box
   # Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
   Then Click on the "Buyer Internal assessment" under Approval Source
   #Then Click on the "D&B - Supplier Risk Assessment" under Approval Source 
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
         
              
      @Smoke @NetherlandsLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Netherlands and with questionnaire
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
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
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
    #verify inviter supplier with status
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    Then Wait for 3 seconds
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
    Then Wait for 3 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 5 seconds
    #Then Click on button "Publish" for questionare
    Then Click on button Publish for questionare
    Then Wait for 30 seconds
    Then Logout from the system
    #Onboard process
    Then Enter data in Email Address field
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
    ###Pre Invite Assessment
   # Then Refresh the current webpage
    #Then Wait for 5 seconds
    #Then Click on the Action Center
    #Then Scroll the page
    #Then Wait for 5 seconds
   # Then Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
   # Then Click on the YES for First question
   # Then Wait for 3 seconds
    #Then Click "Attach Document" button
   # Then Upload "PDF" under "Upload Document"
   # Then Enter "01/02/2021" in Expiry Date field
   # Then add label as "VATDOCUMENT"
    #Then Click on the Confirm button.
    #Then Wait for 3 seconds
    #Then Click on the Submit
    #Then Click on the Submit button for submitting questionaire
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
    Then Select text "Netherlands" under "IBM Country & ISO Code" for Custom Fields
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

  @Smoke @NetherlandsLocalisation @Localisation @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Publish a Supplier whose Tax Country is Netherlands with out questionnaire and with Additional Information
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
    Then Select "Netherlands" in "Supplier Country of Registration" dropdown
    Then Enter Contact First Name on Invite Supplier window "rama"
    Then Enter Contact Last Name on Invite Supplier window "canada"
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
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
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
    Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
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
    Then Wait for 5 seconds
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Scroll the page
    Then Wait for 10 seconds
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
    Then Wait for 8 seconds   
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 15 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "Netherlands" is listed in "Country/Region" dropdown
    Then Select "Netherlands" in "Country/Region" dropdown
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "4234242423423" in "Primary Phone" field
    Then Enter phone number "4234242423423" in "Secondary Phone" field
    
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "123434534535" in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    #Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "Postal Code" field
    #Then Show error message "Required" for "Municipality" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "1234" in "Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@#$%" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "@#$%" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "1234" in "PO Box Postal Code" field
    Then Close the modal
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
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Logout from the system

  @Smoke @NetherlandsLocalisation @Supplier @BankAccount @QuickSanity
  Scenario: Add Company Account with valid data for Country Netherlands for existing supplier
    Then Enter "netherland" email in Email Address field for Italy
    #Then Enter "NetherlandsSuppliersta1" email in Email Address 
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Netherlands" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Netherlands"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Netherlandsn"
   # Then Enter text in IBAN field
    #Then Enter value for Bank Routing Number "23222634795651"
    And Wait for 2 seconds
    Then Enter value of Bank Account Number "12343224334"
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Netherlands"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City " Tirana"
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
    Then Wait for 3 seconds
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    #deleting incomplete data
    Then Enter "netherland" email in Email Address field for Italy
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

  @Smoke @NetherlandsLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Add Factory Company Account with valid data for Country Netherlands for existing supplier
    Then Enter "netherland" email in Email Address field for Italy
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    Then Click on the "Factoring Company Account" radio button
    Then Select "Netherlands" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Netherlands"
    Then Select "Euro" in "Currency" css dropdown
    Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Netherlandsn"
    #Then Enter value for Bank Routing Number "23634795651"
    And Wait for 2 seconds
    Then Enter value of Bank Account Number "12343224334"
    #Then Enter value for Bank Account Number "1234567891234567"
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Netherlands"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City " Tirana"
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Select "Netherlands" in "Country/Region" dropdown under Factoring Company Address
    Then Wait for 3 seconds
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Tirana" in "City" field under "Factoring Company Address" section
    Then Wait for 9 seconds
    Then Enter "7673 AB" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Flevoland" in "Province" dropdown
    Then Wait for 3 seconds
    
    Then Enter "TYS third party" in "Factoring Company Name" field
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Enter "lo0987765" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "Po87654332" in "PO Box" field under "Factoring Company Address" section
    #Then Enter "U28765433" in "PO Box Postal Code" field under "Factoring Company Address" section
    Then Enter "lukthi" in "Factoring Company Contact Name" field
    Then Enter "49765432103" in "Factoring Company Contact Number" contact field
    Then Select "Flevoland" in the "factoringCompanyState" dropdown
    Then Enter "A1A 3S3" symbol in "factoringCompanyPostalCode" field
    #And Click on the save in Address verification
     Then Click "Save" button 6
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    #deleting incomplete data
    Then Enter "netherland" email in Email Address field for Italy
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

@Regression @NetherlandsLocalisation @Localisation @Supplier 
  Scenario: Verify Bank Account page for Netherlands supplier
    Then Enter "NetherlandsSuppliersta1" email in Email Address 
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    Then Verify "Canada" is listed in "Country/Region" dropdown
    Then Select "Canada" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 2" Label
    Then Show "City" Label
    Then Show "Province" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    #Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Show "City" input text field
    Then Show "Bank Key" input text field
    Then Show "SWIFT Code" input text field
    Then Show "Currency" css dropdown
    Then Show "Account Number" input text field
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" input text field
    Then Show "City" input text field
    Then Show "Province" Dropdown
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    #Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Select "Canada" in "Country/Region" dropdown
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Province" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    #Then Verify "Bank Key" input text field enabled
    Then Verify "Account Number" input text field enabled
    Then Verify "SWIFT Code" input text field enabled
    Then Verify "Currency" css dropdown enabled
    
    @Regression @Supplier @BankAccount @NetherlandsLocalisation 
  Scenario: Verify all the "Tooltips" in Bank account Company account page.
    Then Enter "NetherlandsSuppliersta1" email in Email Address 
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    #Then Enter data in Password field
    Then Enter data in Nokia Password field
    When Click on Sign In button on Login
    And Click on Bank Account Nav link
    When Click on "Add a Bank Account" button
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select "Netherlands" in "Country/Region" dropdown
    And Verify "Bank Account Label" tooltip of "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip of "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Bank Name" tooltip of "The name of the bank where your account is held." in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account number of the Bank account which is usually 9 or 10 digits." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided" in add bank account page
    And Verify "Account Evidence" tooltip of "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "Province" tooltip of "Name of the Province at which it is located." in add bank account page
    And Verify "Postal Code" tooltip of "Postal Code, which is usually 7 alphanumeric characters (4 numbers + space + 2 letters) Eg: 1012 BA. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box's Postal Code, which is usually 7 alphanumeric characters (4 numbers + space + 2 letters)." in add bank account page
    Then Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    And Logout from the system
    # deleting
    Then Enter "NetherlandsSuppliersta1" email in Email Address 
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    # Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system

  @Regression @Supplier @BankAccount @NetherlandsLocalisation 
  Scenario: Verify all the "Tooltips" in Bank account factoring account page.
    Then Enter "NetherlandsSuppliersta1" email in Email Address 
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    #Then Enter data in Password field
    Then Enter data in Nokia Password field
    When Click on Sign In button on Login
    And Click on Bank Account Nav link
    When Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    And Verify "Bank Account Label" tooltip of "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip of "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Bank Name" tooltip of "The name of the factoring company's bank where the account is held" in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account number of the Bank account which is usually 9 or 10 digits." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters.It is preferred that both IBAN and SWIFT Code are provided." in add bank account page
    And Verify "Account Evidence" tooltip of "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip of "The branch name, or location, of your factoring company's bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number. Max Length: 100 characters. This is an optional field." in add bank account page
    And Verify "Province" tooltip of "Name of the Province at which it is located." in add bank account page
    And Verify "Postal Code" tooltip of "Postal Code, which is usually 7 alphanumeric characters (4 numbers + space + 2 letters) Eg: 1012 BA. This field is mandatory." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box's Postal Code, which is usually 7 alphanumeric characters (4 numbers + space + 2 letters)." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    And Verify "Factoring Company Name" tooltip of "The name of the factoring company aka third party financial company." in add bank account page
    And Verify "VAT Number" tooltip of "Enter the Value Added Tax Id Number of your factoring company." in add bank account page
    Then Verify "Factoring Company Contact Name" tooltip of "The full name of your contact at the factoring company." in add bank account page
    Then Verify "Factoring Company Contact Number" tooltip of "The phone number of your contact at the factoring company." in add bank account page
    Then Verify "Factoring Company Email Address" tooltip of "The email address of your contact at the factoring company" in add bank account page
    #Then Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Logout from the system
    # deleting
    Then Enter "NetherlandsSuppliersta1" email in Email Address 
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    # Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    #Then Click on back page arrow
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system