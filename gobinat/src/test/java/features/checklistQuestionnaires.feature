Feature: Checklist Questionnaries

  #Checklist Questionnaries
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @Buyer @ChecklistQuestionnaries @TYSFunctionality
  Scenario: Publish the Checklist Questionnaries buyer side
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
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
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
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
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
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
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
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "United States of America" is Pre populated with country
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
    Then Show "Employer Identification Number (EIN)" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    #Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Employer Identification Number (EIN)" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    #Then Show "D-U-N-S Number" input text field under "Tax Details"
    Then Show "Phone Number" input text field in Corporate Contact Details section
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
    Then Show "YES" radio button "5" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Show "NO" radio button "6" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Show "YES" radio button "7" is displyed under "Additional Information"
    Then Show "NO" radio button "8" is displyed under "Additional Information"
    ###input field status
    Then Verify "Business Name" input text field is enabled in "Basic Information"
    Then Verify "Legal Business Name" input text field is enabled in "Basic Information"
    Then Verify "Tax Country/Region" input text field is enabled in "Basic Information"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    #Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    Then Verify "Employer Identification Number (EIN)" input text field enabled under "Tax Details"
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
    Then Verify "YES" radio button "5" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "NO" radio button "6" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "YES" radio button "7" is not selected by default under "Additional Information"
    Then Verify "NO" radio button "8" is not selected by default under "Additional Information"
    ### Upload button visibility
    Then Show "Tax Registration Document" button in basic information
    ##Save Draft and Save and continue button visibility
    #Then Show "Save Draft" button at top "right side" in basic information page
    #Then Show "Save and Continue" button at top "right side" in basic information page
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    ###tooltips
    Then Show "Employer Identification Number (EIN)" tooltip "The Employer Identification Number (EIN) is a unique identification number issued by the government to conduct business within your country. The expected format is XX-XXXXXXX (Only numbers)" under "Tax Details"
    Then Show "Tax Registration Document" tooltip "Attach your company's tax registration document (W9) in the below mentioned formats" under "Tax Details"
    Then Show "Business Type" tooltip "The appropriate business type of your company." under "Tax Details"
    #Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank." under "Tax Details"
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    #Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    Then Show "Date Established" tooltip "The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in MM/DD/YYYY format and mandatory." in "Basic Information"
    Then Show "Tax Country/Region" tooltip "The country/region your company pays tax to. This was set during registration." in "Basic Information"
    Then Show "Description" tooltip "A brief description of your Company." in "Basic Information"
    Then Show "Phone Number" tooltip "The official corporate level contact number or a toll-free general information number of your company." in "Corporate Contact Details"
    Then Show "Fax Number" tooltip "The official corporate level fax number of your company." in "Corporate Contact Details"
    Then Show "Company Email" tooltip "The official email address of the point of contact from your Company." in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" tooltip "The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company." in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" tooltip "Number of part time or contracted employees of your company." in "Additional Information"
    Then Show "UNSPSC" tooltip "The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code)" in "Basic Information"
    Then Show "NAICS" tooltip "The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes." in "Basic Information"
    ###Required Fields
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Description" at field
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Show error message "Required" under "Employer Identification Number (EIN)" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    ###Business types
    Then Verify "Corporation" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Privately Owned" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Sole Proprietorship" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Privately Owned" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    Then Verify "United States of America" flag in "Phone Number" field "us"
    Then Verify "United States of America" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+1 (987) 654-3210"
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+1 (987) 654-3210"
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
    #Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    #Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    #Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input type
    Then Enter "abcd" in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Verify no data is entered in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter "@#$%&" in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Verify no data is entered in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter "      " in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Verify no data is entered in "Employer Identification Number (EIN)" field under "Tax Details"
    #####Employer Identification Number (EIN) - Input range
    Then Enter "1A2B3C4d5e6f7g8" in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Verify data entered in "Employer Identification Number (EIN)" field is "12-345678" under "Tax Details"
    #Then Show error message "Invalid Employer Identification Number (EIN)" under "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    #Then Verify data entered in "Employer Identification Number (EIN)" field is "4654645645345" under "Tax Details"
    #Then Verify no error message is displayed under "Employer Identification Number (EIN)" field under "Tax Details"
    ###Document uploads
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
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "DOCX" under "Replace Document"
    Then Show Toast message "Invalid file type"
    Then Click on the Confirm button.
    Then Click "Upload Tax Registration Document" button
    Then Upload "pdf" file "samplePDF20MB" under "Replace Document"
    Then Show Toast message "File exceeds maximum size of 10MB"
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    #Entering input values
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
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
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Verify "United States of America" is listed in "Country/Region" dropdown
    Then Select "United States of America" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "State" Label
    Then Show "State" Dropdown
    Then Show "Zip Code" Label
    Then Show "Zip Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Zip Code" Label
    Then Show "PO Box Zip Code" input text field
    #Tooltip
    Then Show "First Name" tooltip "The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    #Then Show "Middle Name" tooltip "The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field. Max length: 35 characters."
    #Then Show "Last Name" tooltip "The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters."
    Then Wait for 2 seconds
    Then Show "Year of Birth" tooltip "The year this person was born, as it appears on official government documents, such as a passport. This is a required field."
    Then Show "Job Title" tooltip "The job title of this person. This is a required field."
    Then Show "Primary Phone" tooltip "The primary phone number of this contact. This is a required field."
    Then Show "Secondary Phone" tooltip "The secondary phone number of this contact. This is optional."
    Then Show "Email ID" tooltip "The official email address of this person. This is a required field."
    #Then Show "Alternate Email" tooltip "Secondary email address of this person. This is optional."
    Then Show "Select Location" tooltip "The location at which this person works officially. This is an optional field."
    Then Show "Address Type" tooltip "Address Type is the category of address. This is a required field."
    #Then Show "D-U-N-S Number" tooltip "DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank."
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field." in add contact modal
    #Input Field
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "State" dropdown enabled
    Then Verify "Zip Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Zip Code" input text field enabled
    # Flag
    Then Verify "USA" flag in "Primary Phone" field "us"
    Then Verify "USA" flag in "Secondary Phone" field "us"
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+1 (987) 654-3210"
    Then Enter phone number "1234567890" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+1 (123) 456-7890"
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "Address Type" field
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "State" field
    Then Show error message "Required" for "Zip Code" field
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "1234567890" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6789"
    Then Enter "1234" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "12345678" in "Zip Code" field
    Then Show error message like "Must be a valid Zip Code." under "Zip Code" field
    Then Enter "@@@@" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "    " in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Verify data entered in "Zip Code" field is "12345-6"
    ###PO Box
    Then Enter "1234567890123" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "1234567890" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6789"
    Then Enter "1234" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "12345678" in "PO Box Zip Code" field
    Then Show error message like "Must be a valid PO Box Zip Code." under "PO Box Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@@@@" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "    " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
    Then Verify data entered in "PO Box Zip Code" field is "12345-6"
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Zip Code" field
    Then Enter "     " in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    Then Show error message "Required" for "Zip Code" field
    Then Show error message "Required" for "State" field
    Then Enter "123456787" in "PO Box" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    Then Enter "abcd" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "123456" in "Zip Code" field
    Then Enter "abcd" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "@#$%" in "Zip Code" field
    Then Verify no data is entered in "Zip Code" field
    Then Enter "@#$%" in "PO Box Zip Code" field
    Then Verify no data is entered in "PO Box Zip Code" field
    Then Enter "123456" in "PO Box Zip Code" field
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
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
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
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    And Wait for 3 seconds
    #### PIF Indicator
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    And Click on the NO for First question in PIF Indicator
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    And Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
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
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Buyer Internal assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    And Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    ###Pre Invite Assessment
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    #When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #Then Wait for 3 seconds
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #Then Wait for 3 seconds
    #And Click on the Submit
    #And Click on the Submit button for submitting questionaire
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    #And Wait for 3 seconds
    #And Switch to the active window
    And Switch to the parent window
    And Wait for 10 seconds
    #custom fields before Onboard
    And Wait for 3 seconds
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
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    #buyer internal
    Then Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 3 seconds
    Then Logout from the system
