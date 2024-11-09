Feature: Kuwait Localisation

   #KuwaitLocalisation
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @KuwaitLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify invite a Supplier whose tax country is Kuwait with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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

  @Smoke @KuwaitLocalisation @Localisation @QuickSanity
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
    #select USA from the dropdown
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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
    #Verify mailinator Email
    #Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Ireland" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Kuwait" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Kuwait" supplier registration
    Then Enter "TestCity" in "City" field after "Kuwait" supplier registration
    Then Enter "767374" in "Postal Code" field after "Kuwait" supplier registration
    Then Select "Safat" in "Governorate" dropdown
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

  @Smoke @KuwaitLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Kuwait and with out questionnaire
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
    #select Kuwait from teh dropdown
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Kuwait" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Kuwait" supplier registration
    Then Enter "TestCity" in "City" field after "Kuwait" supplier registration
    Then Enter "767374" in "Postal Code" field after "Kuwait" supplier registration
    Then Select "Safat" in "Governorate" dropdown
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
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Kuwait" is Pre populated with country
    ###Labels
    Then Show "Business Name" label in "Basic information page"
    Then Show "Legal Business Name" label in at "Basic information page"
    Then Show "Native Language Business Name" label in at "Basic information page"
    Then Show "Native Language Legal Name" label in at "Basic information page"
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
    Then Show "Tax Identification Number" label under "Tax Details"
    Then Show "Tax Registration Document" label under "Tax Details"
    Then Show "Business Type" label under "Tax Details"
    Then Show "D-U-N-S Number" label under "Tax Details"
    ###input field visibility
    Then Show "Business Name" input text field in "Basic Information"
    Then Show "Legal Business Name" input text field in "Basic Information"
    Then Show "Native Language Business Name" input text field in "Basic Information"
    Then Show "Native Language Legal Name" input text field in "Basic Information"
    Then Show "Company Registration Number" input text field under "Tax Details"
    Then Show "Tax Identification Number" input text field under "Tax Details"
    Then Show "Business Type" dropdown under "Tax Details"
    #Then Show "Date Established" input text field in "Basic Information"
    Then Show "Tax Country/Region" input text field in "Basic Information"
    Then Show "Starting month of the fiscal year" input text field in Corporate Contact Details section
    #Then Show "Description" input text field in "Basic Information"
    Then Show "D-U-N-S Number" input text field under "Tax Details"
    Then Verify "Phone Number" input text field is enabled in Corporate Contact Details
    Then Verify "Fax Number" input text field is enabled in Corporate Contact Details
    #Then Show "Phone Number" input text field in Corporate Contact Details section
    #Then Scroll to view "Fax Number" field
    #Then Show "Fax Number" input text field in Corporate Contact Details
    #Then Show "Fax Number" input text field in "Corporate Contact Details"
    Then Show "Company Email" input text field in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" input text field in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" input text field in "Additional Information"
    #Radio buttons visibility
    Then Show "YES" radio button "1" is displyed under "Diversity"
    Then Show "NO" radio button "2" is displyed under "Diversity"
    #Then Show "YES" radio button "3" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "NO" radio button "4" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "YES" radio button "5" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Show "NO" radio button "6" is displyed under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Show "YES" radio button "3" is displyed under "Additional Information"
    Then Show "NO" radio button "4" is displyed under "Additional Information"
    ###input field status
    Then Verify "Business Name" input text field is enabled in "Basic Information"
    Then Verify "Legal Business Name" input text field is enabled in "Basic Information"
    Then Verify "Native Language Business Name" input text field is enabled in "Basic Information"
    Then Verify "Native Language Legal Name" input text field is enabled in "Basic Information"
    #Then Verify "Date Established" input text field is enabled in "Basic Information"
    Then Verify "Tax Country/Region" input text field is enabled in "Basic Information"
    #Then Verify "Starting month of the fiscal year" dropdown enabled under "Basic Information"
    #Then Verify "Description" input text field enabled under "Basic Information"
    Then Verify "Company Registration Number" input text field enabled under "Tax Details"
    Then Verify "Tax Identification Number" input text field enabled under "Tax Details"
    #Then Verify "VAT Registration Number" input text field enabled under "Tax Details"
    Then Verify "Business Type" dropdown enabled under "Tax Details"
    Then Verify "D-U-N-S Number" input text field enabled under "Tax Details"
    #Then Verify "Phone Number" input text field is enabled in "Corporate Contact Details"
    Then Verify "Phone Number" input text field is enabled in Corporate Contact Details
    #Then Verify "Fax Number" input text field is enabled in "Corporate Contact Details"
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
    #Then Verify "YES" radio button "3" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "NO" radio button "4" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "YES" radio button "5" is not selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    #Then Verify "NO" radio button "6" is selected by default under "Small Business and Disadvantaged Zone Business(Optional)"
    Then Verify "YES" radio button "3" is not selected by default under "Additional Information"
    Then Verify "NO" radio button "4" is not selected by default under "Additional Information"
    ### Upload button visibility
    Then Show "Company Registration Document" button in basic information
    Then Show "Tax Registration Document" button in basic information
    Then Show "Save Draft" button at bottom "right side" in basic information page
    Then Show "Save and Continue" button at bottom "right side" in basic information page
    ### Upload button status
    Then Verify Upload "Company Registration Document" button clickable in basic information
    Then Verify Upload "Tax Registration Document" button clickable in basic information
    #Then Verify Upload "VAT Registration Document" button clickable in basic information
    ##Website checkbox
    Then Verify website checkbox is visible at "Corporate Contact Details" section
    And Scroll Down until "700" dimension on the page
    Then Wait for 3 seconds
    ###tooltips
    Then Show "Business Name" tooltip "Name under which the company carries on its business. Also known as DBA, Doing Business As." in "Basic Information"
    Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    Then Show "Native Language Business Name" tooltip " Name under which the company carries on its business in the company's native language. Also known as DBA, Doing Business As. This is an optional field. " in "Basic Information"
    Then Show "Legal Business Name" tooltip "Legal Name must be the full legal name of your company as it appears on your Government registration documents." in at "Basic Information"
    Then Show "Date Established" tooltip " The exact date of establishment of your Company as it appears on your Company's commercial registration certificate. It must be in DD/MM/YYYY format and mandatory. " in "Basic Information"
    Then Show "Tax Country/Region" tooltip " The country/region your company pays tax to. This was set during registration. " in "Basic Information"
    Then Show "Description" tooltip " A brief description of your Company. " in "Basic Information"
    Then Show "Company Registration Number" tooltip " Company Registration Number issued by the Kuwait Chamber of Commerce and Industry which is usually 6 digit characters. This is an optional field. " under "Tax Details"
    Then Show "Company Registration Document" tooltip " Attach your Company’s Registration Document issued by the Kuwait Chamber of Commerce and Industry in the below mentioned formats. This is a optional attachment. " under "Tax Details"
    Then Show "Tax Identification Number" tooltip " Tax Identification Number issued by the Tax liability & Planning Department (Ministry of Finance) in Kuwait which is usually minimum 4 to maximum 20 alphanumeric characters. This is a mandatory field. " under "Tax Details"
    Then Show "Tax Registration Document" tooltip " Attach your company's Certificate of Tax Registration issued by the Tax liability & Planning Department (Ministry of Finance) in Kuwait in the below mentioned formats. This is a mandatory attachment.  " under "Tax Details"
    #Then Show "VAT Registration Number" tooltip " VAT Registration Number, also known as NIP is issued by the  Tax office and in the following format 1234567890. This is an optional field. " under "Tax Details"
    #Then Show "VAT Registration Document" tooltip " Attach your VAT Registration Document issued by the  Tax office in the below mentioned formats. This is an optional attachment. " under "Tax Details"
    Then Show "Business Type" tooltip " Select the appropriate Business Type of your company. This is a mandatory field. " under "Tax Details"
    Then Show "D-U-N-S Number" tooltip " The DUNS number is a nine-digit number, issued by D&B, assigned to each business location in the D&B database, having a unique, separate, and distinct operation for the purpose of identifying them. The DUNS number is random, and the digits have no apparent significance. If you do not have a DUNS number, leave it blank. " under "Tax Details"
    #And Scroll Up until dimension on the page
    Then Show "Phone Number" tooltip " The official corporate level contact number or a toll-free general information number of your company. " in "Corporate Contact Details"
    Then Show "Fax Number" tooltip " The official corporate level fax number of your company. " in "Corporate Contact Details"
    Then Show "Company Email" tooltip " The official email address of the point of contact from your Company. " in "Corporate Contact Details"
    #Then Show "Website" tooltip "Please enter the URL of your company’s website." in "Corporate Contact Details"
    Then Show "Number of Full-Time Employees" tooltip " The exact number of full-time employees of your Company. Full time employees are esentially those who are under your Company's pay roll and receives the benefits of the Company. " in "Additional Information"
    Then Show "Number of Temporary and Contracted Employees" tooltip " Number of part time or contracted employees of your company. " in "Additional Information"
    Then Show "UNSPSC" tooltip " The UNSPSC (United Nations Standard Products and Services Code) is a global classification code set of products and services.  It is a four level hierarchy coded as an 8 digit number.  Please add the UNSPSC codes relevant to your business (minimum 1 code) " in "Basic Information"
    Then Show "NAICS" tooltip " The NAICS (North American Industry Classification System) code is used by business and governments to classify and measure economic activity in the United States, Canada and Mexico. It is essentially a 6-digit code, where the first two digits designate the largest business sector, the third digit designates the sub-sector, the fourth digit designate the industry group, fifth digit designates particular industries and the last digit designates national industries. Please click on the text box to select the correct NAICS code from the below category. The system allows you to select multiple NAICS codes. " in "Basic Information"
    ###Required Fields
    Then Enter number "323213123555" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Description" at field
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Business types
    Then Verify "Holding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Limited Partnership Company" value from Business type dropdown
    Then Verify "Particular Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Shareholding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Holding Companies" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    #Then Scroll to view "Phone Number" field
    #Then Verify "Kuwait" flag in Phone Number field
    #And Verify "Kuwait" flag in Fax Number field
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+965 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+965 3232131235"
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
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    Then Wait for 3 seconds
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####Company Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Tax Identification Number - Input range
     Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Wait for 3 seconds
    ############When Enter Tax Identification Number for Kuwait  under Tax Details
    #Then Enter "P" followed by "L" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    #Then Enter "CHY1234568" in "TAX Reference Number" field under "Tax Details"
    #Then Verify data entered in "TAX Reference Number" field is "CHY123456" under "Tax Details"
    Then Enter random Tax Identification Number in "Company Registration Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    #Then Enter random EU VAT number "PL" in "EU VAT Registration Number"
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
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 20 seconds
    #Then Click on Not a suitable match
    #Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 20 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Show "First Name" Label
    Then Show "First Name" input text field
    Then Show "Last Name" Label
    Then Show "Last Name" input text field
    Then Show "Middle Name" Label
    Then Show "Middle Name" input text field
    Then Show "Native Language First Name" Label
    Then Show "Native Language First Name" input text field
    Then Show "Native Language Middle Name" Label
    Then Show "Native Language Middle Name" input text field
    Then Show "Native Language Last Name" Label
    Then Show "Native Language Last Name" input text field
    Then Show "Year of Birth" Label
    Then Show "Year of Birth" input text field
    Then Show "Job Title" Label
    Then Show "Job Title" input text field
    Then Show "Email ID" Label
    Then Show "Email ID" input text field
    Then Show "Alternate Email" Label
    Then Show "Alternate Email" input text field
    Then Show "Select Location" Label
    Then Show "Select Location" input text field
    Then Verify "Branch" is listed in "Address Type" dropdown
    Then Select "Branch" in "Address Type" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Verify "Kuwait" is listed in "Country/Region" dropdown
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "Governorate" Label
    Then Show "Governorate" Dropdown
    Then Show "Postal Code" Label
    Then Show "Postal Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "D-U-N-S Number" Label
    Then Show "D-U-N-S Number" input text field
    #Tooltip
    Then Show "First Name" tooltip " The First Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters. "
    Then Wait for 2 seconds
    #Then Show "Middle Name" tooltip " The Middle Name of the contact person, as it appears on official government documents, such as a passport. This is an optional field. Max length: 35 characters. "
    #Then Show "Last Name" tooltip " The Last Name of the contact person, as it appears on official government documents, such as a passport. This is a required field. Max length: 35 characters. "
    #Then Wait for 2 seconds
    Then Show "Native Language First Name" tooltip "  The First Name of the contact person in their native language, as it appears on official government documents. This is an optional field. Max length: 35 characters. "
    #Then Show "Native Language Middle Name" tooltip " The Middle Name of the contact person in their native language, as it appears on official government documents. This is an optional field. Max length: 35 characters. "
    #Then Show "Native Language Last Name" tooltip "  The Last Name of the contact person in their native language, as it appears on official government documents. This is an optional field.  Max length: 35 characters. "
    Then Show "Year of Birth" tooltip " The year this person was born, as it appears on official government documents, such as a passport. This is a required field. "
    Then Show "Job Title" tooltip " The job title of this person. This is a required field. "
    Then Show "Primary Phone" tooltip " The primary phone number of this contact. This is a required field. "
    Then Show "Secondary Phone" tooltip " The secondary phone number of this contact. This is optional. "
    Then Show "Email ID" tooltip " The official email address of this person. This is a required field. "
    #Then Show "Alternate Email" tooltip " Secondary email address of this person. This is optional. "
    Then Show "Select Location" tooltip " The location at which this person works officially. This is an optional field. "
    Then Show "Address Type" tooltip " Address Type is the category of address. This is a required field. "
    #Then Show "Country/Region" tooltip "Select the appropriate country from the dropdown. This is a mandatory field."
    #Then Show "Address Line 1" tooltip "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field."
    #Then Show "Address Line 2" tooltip "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field."
    #Then Show "City" tooltip "Name of the city at which it is located. This is a mandatory field."
    #Then Show "Governorate" tooltip "Select the appropriate governorate from the dropdown. This is an optional field."
    #Then Show "Postal Code" tooltip "The Postalcode of your company which usually of 5 digits. This is a mandatory field."
    #Then Show "PO Box" tooltip "The Post Office Box of your company which is usually 5 to 12 alphanumeric characters. This field is an optional field."
    #Then Show "PO Box Postal Code" tooltip "The PO Box Postal Code of your company which is usually of 5 digits. This is an optional field."
    Then Show "D-U-N-S Number" tooltip " DUNS number is a Dun & Bradstreet issued number that identifies your company or location. Please identify your primary corporate DUNS number in this field. If you do not have a DUNS number, you can leave it blank. "
    
    #Input Field
    Then Verify "First Name" input text field enabled
    Then Verify "Last Name" input text field enabled
    Then Verify "Middle Name" input text field enabled
    Then Verify "Native Language First Name" input text field enabled
    Then Verify "Native Language Middle Name" input text field enabled
    Then Verify "Native Language Last Name" input text field enabled
    Then Verify "Year of Birth" dropdown enabled
    Then Verify "Job Title" input text field enabled
    #Then Verify "Primary Phone" input text field enabled
    #Then Verify "Secondary Phone" input text field enabled
    Then Verify "Email ID" input text field enabled
    Then Verify "Alternate Email" input text field enabled
    Then Verify "Select Location" dropdown enabled
    Then Verify "Address Type" dropdown enabled
    Then Verify "Country/Region" dropdown enabled
    Then Verify "Address Line 1" input text field enabled
    Then Verify "Address Line 2" input text field enabled
    Then Verify "City" input text field enabled
    Then Verify "Governorate" dropdown enabled
    Then Verify "Postal Code" input text field enabled
    Then Verify "PO Box" input text field enabled
    Then Verify "PO Box Postal Code" input text field enabled
    Then Verify "D-U-N-S Number" input text field enabled
    # Flag
    #Then Verify "Kuwait" flag in Primary Phone field
    #And Verify "Kuwait" flag in Secondary Phone field
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "First Name" field
    Then Show error message "Required" for "Last Name" field
    Then Show error message "Required" for "Year of Birth" field
    Then Show error message "Required" for "Job Title" field
    Then Show error message "Required" for "Primary Phone" field
    Then Show error message "Required" for "Email ID" field
    
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Select the "1992" year from the drop down
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "423424242342" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+965 423424242342"
    Then Enter phone number "423424242342" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+965 423424242342"
    Then Click on "Save Contact" button
    
    
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "1" in "Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Enter "1" in "PO Box Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "State/Region" field
    Then Show error message "Required" for "Postal Code" field
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
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Enter "1234567" in "Postal Code" field
    Then Enter "Kuwait" in "City" field
    Then Select "Safat" in "Governorate" dropdown
    Then Click on "Save Contact" button
    Then Switch to the parent window
    #Then Close the modal
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
    Then click on Go to details button
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
    Then Select text "Kuwait" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    Then Scroll to view "USL Search" field
    #approvals
    Then Click on the USL Search under Approval Source
    #Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the Buyer Internal assessment under Approval Source page
    #Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 30 seconds
    Then verify the status as "Ready To Onboard"
    Then Wait for 30 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 15 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

  @Smoke @KuwaitLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Kuwait  and with questionnaire
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
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Kuwait" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Kuwait" supplier registration
    Then Enter "TestCity" in "City" field after "Kuwait" supplier registration
    Then Enter "767374" in "Postal Code" field after "Kuwait" supplier registration
    Then Select "Safat" in "Governorate" dropdown
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
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Kuwait" is Pre populated with country
    ###Required Fields
    Then Enter number "323213123555" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Description" at field
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Business types
    Then Verify "Holding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Limited Partnership Company" value from Business type dropdown
    Then Verify "Particular Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Shareholding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Holding Companies" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    #Then Verify "Kuwait" flag in Phone Number field
    #And Verify "Kuwait" flag in Fax Number field
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+965 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+965 3232131235"
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
    #Then Wait for 3 seconds
    #Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    #Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    #Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    #Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    #Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
     #####Company Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Tax Identification Number - Input range
    Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Wait for 3 seconds
    ############When Enter Tax Identification Number for Kuwait  under Tax Details
   #Then Enter "P" followed by "L" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    #Then Enter "CHY1234568" in "TAX Reference Number" field under "Tax Details"
    #Then Verify data entered in "TAX Reference Number" field is "CHY123456" under "Tax Details"
    Then Enter random Tax Identification Number in "Company Registration Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    #Then Enter random EU VAT number "PL" in "EU VAT Registration Number"
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
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    Then Show "First Name" Label
    Then Show "First Name" input text field
    Then Show "Last Name" Label
    Then Show "Last Name" input text field
    Then Show "Middle Name" Label
    Then Show "Middle Name" input text field
    Then Show "Native Language First Name" Label
    Then Show "Native Language First Name" input text field
    Then Show "Native Language Middle Name" Label
    Then Show "Native Language Middle Name" input text field
    Then Show "Native Language Last Name" Label
    Then Show "Native Language Last Name" input text field
    Then Show "Year of Birth" Label
    Then Show "Year of Birth" input text field
    Then Show "Job Title" Label
    Then Show "Job Title" input text field
    Then Show "Email ID" Label
    Then Show "Email ID" input text field
    Then Show "Alternate Email" Label
    Then Show "Alternate Email" input text field
    Then Show "Select Location" Label
    Then Show "Select Location" input text field
    Then Verify "Branch" is listed in "Address Type" dropdown
    Then Select "Branch" in "Address Type" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    Then Verify "Kuwait" is listed in "Country/Region" dropdown
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Show "City" Label
    Then Show "City" input text field
    Then Show "Address Line 1" Label
    Then Show "Address Line 1" input text field
    Then Show "Address Line 2" Label
    Then Show "Address Line 2" input text field
    Then Show "Governorate" Label
    Then Show "Governorate" Dropdown
    Then Show "Postal Code" Label
    Then Show "Postal Code" input text field
    Then Show "PO Box" Label
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" Label
    Then Show "PO Box Postal Code" input text field
    Then Show "D-U-N-S Number" Label
    Then Show "D-U-N-S Number" input text field
    ###Required Error
    Then Click on "Save Contact" button
    Then Show error message "Required" for "First Name" field
    Then Show error message "Required" for "Last Name" field
    Then Show error message "Required" for "Year of Birth" field
    Then Show error message "Required" for "Job Title" field
    Then Show error message "Required" for "Primary Phone" field
    Then Show error message "Required" for "Email ID" field
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Select the "1992" year from the drop down
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "423424242342" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+965 423424242342"
    Then Enter phone number "423424242343" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+965 423424242343"
    Then Click on "Save Contact" button
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "1" in "Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Enter "1" in "PO Box Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "State/Region" field
    Then Show error message "Required" for "Postal Code" field
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
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Enter "1234567" in "Postal Code" field
    Then Enter "Kuwait" in "City" field
    Then Select "Safat" in "Governorate" dropdown
    Then Click on "Save Contact" button
    Then Switch to the parent window
    #Then Close the modal
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
    Then Wait for 3 seconds
    Then Click on button "Publish Questionnaire" for questionare
    Then Wait for 5 seconds
    #Then Click on button "Publish" for questionare
    Then Click on button Publish for questionare
    Then Wait for 40 seconds
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
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
    Then click on Go to details button
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
    #Then Wait for 3 seconds
    #Then Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #Then Enter "01/02/2021" in Expiry Date field
    #Then add label as "VATDOCUMENT"
    #Then Click on the Confirm button.
    #Then Wait for 3 seconds
    #Then Click on the Submit
    #Then Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
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
    Then Select text "Kuwait" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    Then Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    Then Scroll to view "USL Search" field
    #approvals
    #Then Click on the USL Search under Approval Source
    Then Click on the "USL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the Buyer Internal assessment under Approval Source page
    #Then Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the Anti-Bribery Anti-Corruption Approval Source page
    #Then Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 30 seconds
    Then verify the status as "Ready To Onboard"
    Then Wait for 30 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 15 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system

  @Smoke @KuwaitLocalisation @Localisation @QuickSanity
  Scenario: Verify As a Buyer, I should be able to Publish a Supplier whose Tax Country is Kuwait with out questionnaire and with Diversity
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
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Kuwait" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Kuwait" supplier registration
    Then Enter "TestCity" in "City" field after "Kuwait" supplier registration
    Then Enter "767374" in "Postal Code" field after "Kuwait" supplier registration
    Then Select "Safat" in "Governorate" dropdown
    #Then Select "Finiq" in "Municipality" dropdown
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
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Kuwait" is Pre populated with country
    #Diversity field
    Then Click on the radio button "YES" for "1" in Diversity
    Then Show "YES" radio button "3" is displyed under "Are you a Diversity Supplier?"
    Then Show "NO" radio button "4" is displyed under "Are you a Diversity Supplier?"
    Then Click on the radio button "YES" for "3" in Diversity
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
    ###Required Fields
    Then Enter number "323213123555" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Description" at field
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Business types
    Then Verify "Holding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Limited Partnership Company" value from Business type dropdown
    Then Verify "Particular Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Shareholding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Holding Companies" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    #Then Verify "Kuwait" flag in Phone Number field
    #And Verify "Kuwait" flag in Fax Number field
    #Then Verify "Austria" flag in "Phone Number" field "us"
    #Then Verify "Austria" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+965 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+965 3232131235"
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
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    Then Wait for 3 seconds
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    #####Company Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Tax Identification Number - Input range
     Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Wait for 3 seconds
    ############When Enter Tax Identification Number for   under Tax Details
    #Then Enter "P" followed by "L" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    #Then Enter "CHY1234568" in "TAX Reference Number" field under "Tax Details"
    #Then Verify data entered in "TAX Reference Number" field is "CHY123456" under "Tax Details"
    Then Enter random Tax Identification Number in "Company Registration Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    #Then Enter random EU VAT number "PL" in "EU VAT Registration Number"
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
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 1 seconds
    #Then Click on Not a suitable match
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    #Then Verify "Kuwait" is listed in "Country/Region" dropdown
    #Then Select "Kuwait" in "Country/Region" dropdown
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Select the "1992" year from the drop down
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "423424242342" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+965 423424242342"
    Then Enter phone number "423424242342" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+965 423424242342"
    Then Verify "Branch" is listed in "Address Type" dropdown
    Then Select "Branch" in "Address Type" dropdown
    Then Verify "Kuwait" is listed in "Country/Region" dropdown
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "1" in "Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Enter "1" in "PO Box Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "State/Region" field
    Then Show error message "Required" for "Postal Code" field
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
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Enter "1234567" in "Postal Code" field
    Then Enter "Kuwait" in "City" field
    Then Select "Safat" in "Governorate" dropdown
    Then Click on "Save Contact" button
    Then Switch to the parent window
    #Then Close the modal
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

  @Smoke @KuwaitLocalisation @Localisation @QuickSanity
  Scenario: Verify As a Buyer, I should be able to Publish a Supplier whose Tax Country is Kuwait with out questionnaire and with Additional Information
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
    Then Select "Kuwait" in "Supplier Country of Registration" dropdown
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Kuwait" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Kuwait" supplier registration
    Then Enter "TestCity" in "City" field after "Kuwait" supplier registration
    Then Enter "767374" in "Postal Code" field after "Kuwait" supplier registration
    Then Select "Safat" in "Governorate" dropdown
    #Then Select "Finiq" in "Municipality" dropdown
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
    Then Wait for 15 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #basic information tab
    #Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    ###tax country visibility
    Then Verify Tax Country "Kuwait" is Pre populated with country
    #Then Upload "PDF" file "Upload file" for Diversity category
    ###Required Fields
    Then Enter number "323213123555" in "Phone Number" in corporation details
    Then Click on Save button in Basic Info Page
    Then Wait for 10 seconds
    Then Show "Required" under "Date Established" at field
    Then Show "Required" under "Starting month of the fiscal year" field in Basic information
    Then Show "Required" under "Description" at field
    Then Show error message "Required" under "Tax Identification Number" field under "Tax Details"
    Then Show error message "Required" under "Tax Registration Document" field under "Tax Details"
    Then Show error message "Required" under "Business Type" field under "Tax Details"
    #Then Show "Required" under "Phone Number" at field
    Then Show "Required" under "Company Email" at field
    Then Show error "Required" in "Are you publicly traded on a stock exchange?" at field
    Then Show "Required" under "Number of Full-Time Employees" at field
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###Business types
    Then Verify "Holding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Joint Stock Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Limited Liability Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Limited Partnership Company" value from Business type dropdown
    Then Verify "Particular Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Partnership Company" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Shareholding Companies" is listed in "Business Type" dropdown under "Tax Details"
    Then Verify "Other" is listed in "Business Type" dropdown under "Tax Details"
    Then Select "Holding Companies" value from Business type dropdown
    #Date calandar
    Then Show date calander in "Date Established" label
    ####Flag
    #Then Verify "Kuwait" flag in Phone Number field
    #And Verify "Kuwait" flag in Fax Number field
    #Then Verify "Albania" flag in "Phone Number" field "us"
    #Then Verify "Albania" flag in "Fax Number" field "us"
    ###Phone number format
    Then Enter phone number "323213123555" in "Phone Number" field
    Then Verify phone number "Phone Number" is entered in accepted format "+965 323213123555"
    Then Enter phone number "3232131235" in "Fax Number" field
    Then Verify phone number "Fax Number" is entered in accepted format "+965 3232131235"
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
    Then Enter "abcd" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Enter "@#$%&" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    Then Enter "      " in "D-U-N-S Number" field under "Tax Details"
    Then Verify no data is entered in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
    ###D-U-N-S Number Input range
    Then Wait for 3 seconds
    Then Enter "1234" in "D-U-N-S Number" field under "Tax Details"
    Then Show error message "Invalid D-U-N-S Number" under "D-U-N-S Number" field under "Tax Details"
    Then Enter "12345678901" in "D-U-N-S Number" field under "Tax Details"
    Then Verify data entered in "D-U-N-S Number" field is "123456789" under "Tax Details"
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Verify no error message is displayed under "D-U-N-S Number" field under "Tax Details"
     #####Company Registration Number - Input type
    Then Enter "@#$%&" in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    Then Enter "      " in "Company Registration Number" field under "Tax Details"
    Then Verify no data is entered in "Company Registration Number" field under "Tax Details"
    #####Tax Identification Number - Input range
     Then Enter "@#$%&" in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Enter "      " in "Tax Identification Number" field under "Tax Details"
    Then Verify no data is entered in "Tax Identification Number" field under "Tax Details"
    Then Wait for 3 seconds
   ############When Enter Tax Identification Number for Kuwait  under Tax Details
    #Then Enter "P" followed by "L" and 10 numbers in "EU VAT Registration Number" field under "Tax Details"
    #Then Enter "CHY1234568" in "TAX Reference Number" field under "Tax Details"
    #Then Verify data entered in "TAX Reference Number" field is "CHY123456" under "Tax Details"
    Then Enter random Tax Identification Number in "Company Registration Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    #Then Enter random EU VAT number "PL" in "EU VAT Registration Number"
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
    Then Close toast message
    Then Upload "PDF" under "Replace Document"
    Then Click on the Confirm button.
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
    #Entering input values
    #Then Enter number "3434434444444" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "8" in additional information
    #Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button on Basic Information
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    #Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 20 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 20 seconds
    Then Click on Add Other button in Management page
    Then Select "Add a New Location" in "Select Location" dropdown
    ###Required Error
       Then Click on "Save Contact" button
    Then Show error message "Required" for "First Name" field
    Then Show error message "Required" for "Last Name" field
    Then Show error message "Required" for "Year of Birth" field
    Then Show error message "Required" for "Job Title" field
    Then Show error message "Required" for "Primary Phone" field
    Then Show error message "Required" for "Email ID" field
    #Phone Number
    Then Enter "John" in "First Name" field
    Then Enter "Wick" in "Last Name" field
    Then Click "Year of Birth" checkbox
    Then Select the "1992" year from the drop down
    Then Enter "QA" in "Job Title" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Enter phone number "423424242342" in "Primary Phone" field
    Then Verify phone number "Primary Phone" is entered in accepted format "+965 423424242342"
    Then Enter phone number "423424242342" in "Secondary Phone" field
    Then Verify phone number "Secondary Phone" is entered in accepted format "+965 423424242342"
    Then Verify "Branch" is listed in "Address Type" dropdown
    Then Select "Branch" in "Address Type" dropdown
    Then Verify "Kuwait" is listed in "Country/Region" dropdown
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Show "Country/Region" Label
    Then Show "Country/Region" Dropdown
    ### Error Validation
    ###Address 1
    Then Enter 150 digit alpha numeric data in "Address Line 1" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 1" field
    Then Enter 79 digit alpha numeric data in "Address Line 1" field
    ###Address 2
    Then Enter 150 digit alpha numeric data in "Address Line 2" field
    Then Click on "Save Contact" button
    Then Show error message like "Maximum length exceeded" under "Address Line 2" field
    Then Enter 79 digit alpha numeric data in "Address Line 2" field
    #### Zip code
    Then Enter "12345" in "Postal Code" field
    Then Verify data entered in "Postal Code" field is "12345"
    Then Enter "1" in "Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid Postal Code" under "Postal Code" field
    Then Enter "@@@@" in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    Then Enter "    " in "Postal Code" field
    Then Verify no data is entered in "Postal Code" field
    ###PO Box
    Then Enter "123456789012" in "PO Box" field
    ###PO Box Zip Code
    Then Enter "12345" in "PO Box Postal Code" field
    Then Verify data entered in "PO Box Postal Code" field is "12345"
    Then Enter "1" in "PO Box Postal Code" field
    Then Click on "Save Contact" button
    Then Show error message like "Must be a valid PO Box Postal Code" under "PO Box Postal Code" field
    Then Enter "abcd" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "@@@@" in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Enter "    " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    ##Input Type validation
    Then Enter "     " in "City" field
    Then Enter "       " in "Address Line 1" field
    Then Enter "       " in "Postal Code" field
    Then Enter "     " in "PO Box Postal Code" field
    Then Verify no data is entered in "PO Box Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Show error message "Required" for "Address Line 1" field
    Then Show error message "Required" for "City" field
    #Then Show error message "Required" for "State/Region" field
    Then Show error message "Required" for "Postal Code" field
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
    Then Enter "1234567" in "PO Box Postal Code" field
    Then Enter "1234567" in "Postal Code" field
    Then Enter "Kuwait" in "City" field
    Then Select "Safat" in "Governorate" dropdown
    Then Click on "Save Contact" button
    Then Switch to the parent window
    #Then Close the modal
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

  @Smoke @KuwaitLocalisation @Supplier @BankAccount @QuickSanity 
  Scenario: Add Company Account with valid data for Country Kuwait for existing supplier
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Enter "Kuwaiti Bank" in "Bank Account Label" field
    Then Enter value for Bank Name "Bank of Kuwait"
    #Then Select "Kuwaiti Dinar (KWD)" in "Currency" css dropdown
    Then Select "Australian Dollar (AUD)" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Kuwait"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567123456"
    And Wait for 2 seconds
    #And Enter value for Bank Key filed
    #And Enter value for Bank Key "36434535"
    #Then Enter "123456" in "Bank Key" field under "Bank Account Information"
    And Enter value for Bank Swift Code "FDGFDHQK"
    And Enter value for IBAN "KW4636353745865838373712345678"
    #Then Enter value for Control Key filed
    #Then Enter "32" in "Control Key" field under "Bank Account Information"
    #Then Enter "BE12345678901234" in "IBAN" field under "Bank Account Information"
    Then Enter "Testing" in Bank Desciption
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Kuwait"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City " Tirana"
    Then Select "Safat" in "Governorate" dropdown
    #Then Select "Finiq" in "Municipality" dropdown
    #Then Enter value for Postal Code "27560"
    Then Enter "123456" in "Postal Code" field
    Then Enter "123456" in "PO Box" field
    Then Enter "123456" in "PO Box Postal Code" field
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
    Then Wait for 3 seconds
    Then Click on Not now button
    Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait 5 seconds
    #Then Click on the Confirm on Confirmation Needed
    Then Click on the Confirm in Preferred
    #Then Switch to the active window
    #Then Click on confirm button
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system

  @Smoke @KuwaitLocalisation @Localisation @Supplier @QuickSanity
  Scenario: Add Factory Company Account with valid data for Country Kuwait for existing supplier
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Wait for 5 seconds
    Then Click on the "Factoring Company Account" radio button
    Then Select "Kuwait" in "Country/Region" dropdown
    Then Enter "Kuwaiti Bank" in "Bank Account Label" field
    Then Enter value for Bank Name "Bank of Kuwait"
    Then Select "Kuwaiti Dinar (KWD)" in "Currency" css dropdown
    Then Enter value for Account Holder Name "Kuwait"
    And Wait for 2 seconds
    Then Enter value for Bank Account Number "1234567891234567123456"
    And Wait for 2 seconds
    #Then Enter "S1122R" in "Bank Key" field under "Bank Account Information"
    #And Enter value for Bank Key filed
    #When Enter the IBAN evidence for Albania
    And Enter value for Bank Swift Code "FDGFDHQK"
    And Enter value for IBAN "KW4636353745865838373712345678"
    #Then Enter value for Control Key filed
    Then Enter "Testing" in Bank Desciption
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Kuwait"
    Then Enter value for Address "Rruga Frosina Plaku"
    Then Enter value for City "Tirana"
    Then Select "Safat" in "Governorate" dropdown
    Then Enter "123456" in "Postal Code" field
    Then Enter "123456" in "PO Box" field
    Then Enter "123456" in "PO Box Postal Code" field
    #Then Select "Somogy" in "Region" dropdown section
    #Then Select "Finiq" in "Municipality" dropdown
    #Then Enter "1234" in "Postal Code" field
    #Then Enter value for Postal Code "27560"
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Enter "IT People Corp" in "Factoring Company Name" field under "Factoring Company Info" section
    Then Select "Kuwait" in "Country/Region" dropdown under Factoring Company Address
    Then Wait for 3 seconds
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Tirana" in "City" field under "Factoring Company Address" section
    Then Wait for 5 seconds
    #Then Select "Victoria" in "State or Territory" under "Factoring Company Address" section
    #Then Select "Johor" in "State/Region" dropdown
    Then Select "Safat" in "Governorate" dropdown section
    Then Enter "456768" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "456768" in "PO Box" field under "Factoring Company Address" section
    Then Enter "456768" in "PO Box Postal Code" field under "Factoring Company Address" section
    #Then Select "Finiq" in "Municipality" dropdown
    Then Wait for 3 seconds
    Then Click "Save" button 6
    #And Click on the save in Address verification
    Then Wait for 3 seconds
    Then Click on Not now button
    #Then Wait for 3 seconds
    Then Select the Body the Bank Account
    And Click on the Preferred Bank check box
    Then Wait 5 seconds
    Then Click on the Confirm in Preferred
    Then Wait 5 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    #Then Click "Cancel" button 3
    Then Logout from the system
    
     @Regression @KuwaitLocalisation @Supplier @BankAccount @QuickSanity
  Scenario: Verify all the Tooltips in Bank account Company account page.
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Kuwait" in "Country/Region" dropdown
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    Then Select "Kuwait" in "Country/Region" dropdown
    And Verify "Bank Account Label" tooltip of "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip of "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Verify "Bank Name" tooltip of "The name of the bank where your account is held." in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account number of the Bank account which is usually 22 digits but can be variable. Please indicate with leading zero if less than 22 digits. This is a mandatory field." in add bank account page
    #And Verify "Bank Key" tooltip of "Bank Account Code (Identifier) associated with the bank which is usually 8 digits. This is the 5th to 12th digits of IBAN number and the field is mandatory." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters. This is an optional field." in add bank account page
    And Verify "IBAN" tooltip of "International Bank Account Number associated with the bank which is usually 30 alphanumeric. Example KW81CBKU0000000000001234560101. This is an optional field." in add bank account page
    And Verify "Account Evidence" tooltip of "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip of "The branch name, or location, of this bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    #And Verify "Address Line 3" tooltip of "Any additional address information can be provided here, else leave it blank" in add bank account page
    And Verify "City" tooltip of "Name of the city at which it is located. This is a mandatory field." in add bank account page
    And Verify "Governorate" tooltip of "Select the appropriate governorate from the dropdown. This is an optional field." in add bank account page
    And Verify "Postal Code" tooltip of "The Postalcode of your company which usually of 5 digits. This is a mandatory field." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 5 to 12 alphanumeric characters. This field is an optional field." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box Postal Code of your company which is usually of 5 digits. This is an optional field." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    And Verify "Payment Terms" tooltip of "Ex: Net 10, Net 30, PIA, EOM, etc..." in add bank account page
    And Verify "Purchase Order Email Address" tooltip of "The email address of an employee to whom the POs need to be sent." in add bank account page
    And Logout from the system

  @Regression @KuwaitLocalisation @Supplier @BankAccount @QuickSanity
  Scenario: Verify all the Tooltips in Factoring Company Bank Account
    When Enter Nokia Supplier Email in Email Address field
    #When Enter Supplier Email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    #Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Click on the "Factoring Company Account" radio button
    Then Select "Kuwait" in "Country/Region" dropdown
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account page
    And Verify "Bank Account Label" tooltip of "Bank Account Label is the nickname of this account. For eg: Business Checking Account, Business Savings Account etc." in add bank account page
    And Verify "Intermediary Bank Account" tooltip of "Select ‘Yes’ if your bank account is an intermediary account, else select ‘No’. Select ‘Not Applicable’ if this field is not applicable for your account details." in add bank account page
    And Wait for 2 seconds
    And Verify "Bank Name" tooltip of "The name of the factoring company's bank where the account is held" in add bank account page
    And Verify "Currency" tooltip of "The currency type used in this bank account." in add bank account page
    And Verify "Account Holder Name" tooltip of "The name on which your account has been opened. Max Length: 100 characters. This field is mandatory." in add bank account page
    And Verify "Account Number" tooltip of "Account number of the Bank account which is usually 22 digits but can be variable. Please indicate with leading zero if less than 22 digits. This is a mandatory field." in add bank account page
    #And Verify "Bank Routing Number" tooltip of "The routing number of the Bank which is usually of 9 digits. They are sometimes called as routing transit numbers, ABA routing numbers, or RTNs." in add bank account page
    #And Verify "Bank Key" tooltip of "Bank Account Code (Identifier) associated with the bank which is usually 8 digits. This is the 5th to 12th digits of IBAN number and the field is mandatory." in add bank account page
    And Verify "SWIFT Code" tooltip of "Swift code of the Bank which is usually 8 or 11 alphanumeric characters. This is an optional field." in add bank account page
    And Verify "IBAN" tooltip of "International Bank Account Number associated with the bank which is usually 30 alphanumeric. Example KW81CBKU0000000000001234560101. This is an optional field." in add bank account page
    And Verify "Account Evidence" tooltip of "Please select a type of evidence you wish to attach" in add bank account page
    And Verify "Bank Branch Name" tooltip of "The branch name, or location, of your factoring company's bank." in add bank account page
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account page
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account page
    #And Verify "Address Line 3" tooltip of "Any additional address information can be provided here, else leave it blank" in add bank account page
    #And Verify "District" tooltip of "Name of the district at which it is located. This is an optional field." in add bank account page
    And Verify "City" tooltip of "Name of the city at which it is located. This is a mandatory field." in add bank account page
    And Verify "Governorate" tooltip of "Select the appropriate governorate from the dropdown. This is an optional field." in add bank account page
    And Verify "Postal Code" tooltip of "The Postalcode of your company which usually of 5 digits. This is a mandatory field." in add bank account page
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 5 to 12 alphanumeric characters. This field is an optional field." in add bank account page
    Then Verify "PO Box Postal Code" tooltip of "The PO Box Postal Code of your company which is usually of 5 digits. This is an optional field." in add bank account page
    And Verify "Bank Contact Name" tooltip of "The full name of the contact at the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Email Address" tooltip of "The email address of the contact from the bank in which this account is held." in add bank account page
    And Verify "Bank Contact Number" tooltip of "The phone number of the contact from the bank in which this account is held." in add bank account page
    And Scroll Down until "1400" dimension on the page
    And Verify "Factoring Company Name" tooltip of "The name of the factoring company aka third party financial company." in add bank account page
    And Verify "VAT Number" tooltip of "Enter the Value Added Tax Id Number of your factoring company." in add bank account page
    ###Factoring Company Address
    #Then Select "" in "Country/Region" dropdown
    Then Select "Kuwait" in "Country/Region" dropdown under Factoring Company Address
    And Verify "Country/Region" tooltip of "Select the appropriate country from the dropdown. This is a mandatory field." in add bank account Factoring Company Address section
    And Verify "Address Line 1" tooltip of "Street name, House/ Building or block number. Max Length: 100 characters. This is a mandatory field." in add bank account Factoring Company Address section
    And Verify "Address Line 2" tooltip of "Continue Street name, House/Building, Neighbourhood or Block number if longer than 100 characters. This is an optional field." in add bank account Factoring Company Address section
    #And Verify "District" tooltip of "Name of the district at which it is located. This is an optional field." in add bank account Factoring Company Address section
    And Verify "City" tooltip of "Name of the city at which it is located. This is a mandatory field." in add bank account Factoring Company Address section
    And Verify "Governorate" tooltip of "Select the appropriate governorate from the dropdown. This is an optional field." in add bank account Factoring Company Address section
    And Verify "Postal Code" tooltip of "The Postalcode of your company which usually of 5 digits. This is a mandatory field." in add bank account Factoring Company Address section
    And Verify "PO Box" tooltip of "The Post Office Box of your company which is usually 5 to 12 alphanumeric characters. This field is an optional field." in add bank account Factoring Company Address section
    And Verify "PO Box Postal Code" tooltip of "The PO Box Postal Code of your company which is usually of 5 digits. This is an optional field." in add bank account Factoring Company Address section
    ##Factoring Company Contact
    Then Verify "Factoring Company Contact Name" tooltip of "The full name of your contact at the factoring company." in add bank account page
    Then Verify "Factoring Company Contact Number" tooltip of "The phone number of your contact at the factoring company." in add bank account page
    Then Verify "Factoring Company Email Address" tooltip of "The email address of your contact at the factoring company" in add bank account page
    ##Ordering Information
    And Verify "Payment Terms" tooltip of "Ex: Net 10, Net 30, PIA, EOM, etc..." in add bank account page
    And Wait for 2 seconds
    And Logout from the system
 