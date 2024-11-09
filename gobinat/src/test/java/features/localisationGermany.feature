Feature: Germany Localisation

  #GermanLocalisation
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Regression @GermanyLocalisation @Localisation @Supplier
  Scenario: Verify invite a Supplier whose tax country is Germany with out questionnaire and verify invited supplier listed in contacted suppliers with pending invites status
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
    #select Germany from the dropdown
    Then Select "Germany" in "Supplier Country of Registration" dropdown
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

  @Regression @GermanyLocalisation @Localisation @Supplier
  Scenario: Verify maildrop registration link and verify the supplier registration process for Germany from maildrop
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
    #select Germany from the dropdown
    Then Select "Germany" in "Supplier Country of Registration" dropdown
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
    Then Show "City" Tooltip description "The name of the city, as mentioned in your Company's commercial registration certificate." in "Supplier Regitration"
    Then Show Postal Code Tooltip description "The Postal Code of your Company, as mentioned in your Company's commercial registration certificate. This field is mandatory."
    Then Show "PO Box" field Tooltip description "The Post Office Box of your company which is usually 0 to 12 alphanumeric characters. This field is optional." in "Supplier Regitration"
    Then Show PO Box Postal Code Tooltip description "PO Box Postal Code"
    Then Enter "TestAddress1" in "Address Line 1" field after "Germany" supplier registration
    Then Enter "TestCity" in "City" field after "Germany" supplier registration
    Then Enter "76543" in "Postal Code" field after "Germany" supplier registration
    Then Enter "74546443" in "PO Box" field after "Germany" supplier registration
    Then Enter "09856" in "PO Box Postal Code" field after "Germany" supplier registration
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
    
    
    @Smoke @GermanyLocalisation @Localisation @Supplier @QuickSanity 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Germany and with questionnaire
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
     #select Germany from the dropdown
    Then Select "Germany" in "Supplier Country of Registration" dropdown
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
    Then Verify received an email in supplier maildrop Inbox with subject "IBM B2B Commerce for Procurement"
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Germany" supplier registration
    #Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Germany" supplier registration
    Then Enter "76543" in "Postal Code" field after "Germany" supplier registration
    Then Enter "74546443" in "PO Box" field after "Germany" supplier registration
    Then Enter "09856" in "PO Box Postal Code" field after "Germany" supplier registration
    When Click "Next" button
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
    Then Wait for 5 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Commercial Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Wait for 5 seconds
    Then Click "Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    #Then Show attached document "VAT Registration Document" "samplePDF.pdf"
    Then Enter random VAT number "DE" in "VAT Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    Then Enter random Commercial registration number in "Commercial Registration Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    And Enter number "1435346645645645" in "Fax Number" in corporation details
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
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on Find ID button
    When Click on Not a suitable match
    Then Wait for 3 seconds
    When Click on at "Next Step" button
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 3 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
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
    When Wait 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    When Wait 5 seconds
    And Logout from the system
    Then Wait for 3 seconds
    #Verify status from buyers side
    Then Enter data in Email Address field
    When Click on Continue button on Login page
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
    And Select text "EMEA" under "IBM Region" for Custom Fields
    And Select text "BENELUX" under "IBM Market" for Custom Fields
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    And Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    When Click on "Save Changes" button under Custom Fields
    And Verify toast message "The custom field values are successfully saved." successfully is shown
    Then Wait for 5 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    When Click on the "USL Search" under Approval Source
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Navigate back to supplier
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
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

  @Regression @GermanyLocalisation @Localisation @Supplier 
  Scenario: Verify Bank Account page for Germany supplier
    Then Enter Germany supplier email in Email Address
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Verify "Germany" is listed in "Country/Region" dropdown
    Then Select "Germany" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "City" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "IBAN" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Select "Germany" in "Country/Region" dropdown
    Then Show "Address Line 1" input text field
    Then Show "City" input text field
    Then Show "Postal Code" input text field
    Then Show "PO Box" input text field
    Then Show "PO Box Postal Code" input text field
    Then Show text field "Bank Key" under "Bank Account Information"
    Then Show text field "SWIFT Code" under "Bank Account Information"
    Then Show text field "IBAN" under "Bank Account Information"
    Then Show text field "Account Number" under "Bank Account Information"
    Then Verify "Address Line 1" input text field enabled
    Then Verify "City" input text field enabled
    #Then Verify "County" dropdown enabled
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
    Then Enter phone number "4976543210" in "Bank Contact Number" field
    Then Enter "Germany BOA" in "Bank Account Label" field
    Then Enter "Germany CA" in "Account Holder Name" field
    Then Enter "Bank of Germany" in "Bank Name" field
    Then Enter "Berlin" in "Bank Branch Name" field
    Then Select "Germany" in "Country/Region" dropdown
    #Then Select Yes in "Intermediary Bank Account"
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Berlin" in "City" field
    Then Enter "54676" in "Postal Code" field
    Then Enter "123456789012" in "PO Box" field
    Then Enter "54676" in "PO Box Postal Code" field
    Then Enter "lukthi" in "Bank Contact Name" field
    Then Enter "lukthi@G.com" in "Bank Contact Email Address" field
    Then Enter phone number "4976543210" in "Bank Contact Number" field
    Then Enter "56756456" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Enter "12345678901" in "SWIFT Code" field under "Bank Account Information" for Bank Details
    Then Enter "DE89370400440532013000" in "IBAN" field under "Bank Account Information" for Bank Details
    Then Enter "Testing" in Bank Desciption
    Then Select "Euro" in "Currency" css dropdown
    Then Wait for 5 seconds
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
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
    Then Show Company Account card with "Germany CA"
    Then Click "Delete Bank Account" button for "Germany CA" add bank card
    Then Click "Delete" button 1
    Then Switch to the parent window
    Then Logout from the system

  @Smoke @GermanyLocalisation @Localisation @Supplier @CDCI @GermanyBank
  Scenario: Add "Factoring Company Account" with valid data for Country "Germany"
    Then Enter "germany" supplier email in Email Address
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Click on the "Factoring Company Account" radio button
    Then Verify "Germany" is listed in "Country/Region" dropdown
    Then Select "Germany" in "Country/Region" dropdown
    Then Show "Address Line 1" Label
    Then Show "City" Label
    Then Show "Postal Code" Label
    Then Show "PO Box" Label
    Then Show "PO Box Postal Code" Label
    Then Show label "Bank Key" under "Bank Account Information"
    Then Show label "Account Number" under "Bank Account Information"
    Then Show label "SWIFT Code" under "Bank Account Information"
    Then Show label "IBAN" under "Bank Account Information"
    Then Show label "Currency" under "Bank Account Information"
    Then Select "Germany" in "Country/Region" dropdown
    Then Show "Address Line 1" input text field
    Then Show "City" input text field
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
    Then Enter phone number "4976543210" in "Bank Contact Number" field
    Then Enter "Germany BOA" in "Bank Account Label" field
    Then Enter "Germany CA" in "Account Holder Name" field
    Then Enter "Bank of Germany" in "Bank Name" field
    Then Enter "Berlin" in "Bank Branch Name" field
    Then Select "Germany" in "Country/Region" dropdown
    Then Select Yes in "Intermediary Bank Account"
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Berlin" in "City" field
    Then Enter "P045678" in "Postal Code" field
    Then Enter "P098765" in "PO Box" field
    Then Enter "A0987765" in "PO Box Postal Code" field
    Then Enter "lukthi" in "Bank Contact Name" field
    Then Enter "lukthi@G.com" in "Bank Contact Email Address" field
    Then Enter phone number "4976543210" in "Bank Contact Number" field
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Enter "12345678901" in "SWIFT Code" field under "Bank Account Information" for Bank Details
    Then Enter "DE89370400440532013000" in "IBAN" field under "Bank Account Information" for Bank Details
    Then Enter "Testing" in Bank Desciption
    Then Select "Euro" in "Currency" css dropdown
    Then Wait for 5 seconds
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Scroll the page
    Then Enter "TYS third party" in "Factoring Company Name" field
    #Then Select "Germany" in "Country/Region" under "Factoring Company Address" section
    Then Enter "Street 1" in "Address Line 1" field under "Factoring Company Address" section
    Then Enter "Nice City" in "City" field under "Factoring Company Address" section
    Then Enter "lo0987765" in "Postal Code" field under "Factoring Company Address" section
    Then Enter "Po87654332" in "PO Box" field under "Factoring Company Address" section
    Then Enter "U28765433" in "PO Box Postal Code" field under "Factoring Company Address" section
    Then Enter "lukthi" in "Factoring Company Contact Name" field
    Then Enter "49765432103" in "Factoring Company Contact Number" contact field
    #Then Enter "Factoring@Ex.com" in "Factoring Company Email Address" Email field
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Wait for 5 seconds
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Enter "43543455" in "Account Number" field under "Bank Account Information" for Bank Details
    Then Scroll the page
    Then Click "Save" button 4
    Then Click on Not now button
    Then Wait for 10 seconds
    Then Show Company Account card with "Germany CA"
    Then Click "Delete Bank Account" button for "Germany CA" add bank card
    Then Click "Delete" button 1
    Then Switch to the parent window
    Then Logout from the system

  @Regression @GermanyLocalisation @Localisation @Supplier 
  Scenario: Verify As a Buyer, I should be able to Onboard a Supplier whose Tax Country is Germany and with questionnaire and Without VAT Registration
  Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
     #select Germany from the dropdown
    Then Select "Germany" in "Supplier Country of Registration" dropdown
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
    Then Enter "TestAddress1" in "Address Line 1" field after "Germany" supplier registration
    #Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Germany" supplier registration
    Then Enter "76543" in "Postal Code" field after "Germany" supplier registration
    Then Enter "74546443" in "PO Box" field after "Germany" supplier registration
    Then Enter "09856" in "PO Box Postal Code" field after "Germany" supplier registration
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
    #Basic information
    Then Click "Basic Information" tab
    Then Wait for 10 seconds
    Then Verify Tax Country "Germany" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    Then Show date calander in "Date Established" label
    #enter text
    Then Scroll the page
    Then Select "General Partnership" value from Business type dropdown
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter phone number "9876543210" in "Fax Number" field
    Then Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter "testUAT" text in the discription text box
    Then Wait for 5 seconds
    #Then Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    Then Enter "testUAT123" text in Native Language Legal Name field
    Then Enter "testUAT456" Native Language Business Name
    ###Document upload
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Commercial Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Wait for 5 seconds
    Then Click "Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    #Then Show attached document "VAT Registration Document" "samplePDF.pdf"
    Then Enter random VAT number "DE" in "VAT Number" field under "Tax Details"
    Then Enter random Tax Identification Number in "Tax Identification Number" field under "Tax Details"
    Then Enter random Commercial registration number in "Commercial Registration Number" field under "Tax Details"
    Then Select "General Partnership" value from Business type dropdown
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
    Then Click on at "Next Step" button
    Then Wait for 15 seconds
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
    Then Click on Corporation Relations button
    Then Click on Corporaion NO radio button
    Then Wait for 10 seconds
    Then Click on the Save and Continue button
    Then Wait for 20 seconds
    Then Click on Review and publish profile button in the review and Publish tab
    Then Click on the publish button
    Then Wait for 40 seconds
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
    Then Wait for 30 seconds
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
    Then Wait for 30 seconds
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
    Then Wait for 30 seconds
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
    Then Wait for 30 seconds
    Then Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Wait for 30 seconds
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
    Then Wait for 30 seconds
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
    Then Wait for 30 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 20 seconds
    Then Click on the Action Center
    Then Scroll the page
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
    Then Wait for 30 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    #custom fields before Onboard
    Then Wait for 30 seconds
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
    Then Select text "Facility Site Services (FSS)" under "Supplier Category (Commodity Family)" for Custom Fields
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
    Then Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 30 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    Then Click on the Buyer Internal assessment under Approval Source page
    Then Wait for 5 seconds
    Then Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 30 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on the "Anti-Bribery, Anti-Corruption" under Approval Source
    #Then Wait for 5 seconds
    #Then Approve the Approval
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    Then Click on the "DPL Search" under Approval Source
    Then Wait for 5 seconds
    Then Approve the Approval
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 30 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    #Then Click on "D&B - Supplier Risk Assessment - D&B" in Approval Source "1"
    #Then Wait for 5 seconds
    #Then Approve the Approval
    #Then Enter the Notes under the Notes Box
    #Then Click Approve button
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system