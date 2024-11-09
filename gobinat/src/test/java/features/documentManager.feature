Feature: Document Manager

  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Connected Suppliers" tab

  @Smoke @Supplier @DocumentManager
  Scenario: Verify Documents uploaded in the basic information page and financialtab, labels and update/replace and download the documents
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Ghana" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    #Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait for 10 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9876543210" in "Phone Number" field
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
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "1234567" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 15 seconds
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Enter "C" followed by "" and 10 alphanumeric characters in "Tax Registration Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "TAX Registration"
    Then Click "Confirm" button 2
    Then Select "Sole Proprietorship" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter value "9876543210" in Phone Number field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click "Find ID" button
    Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter registred email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Documents Button
    Then Select "taxprofile" filter
    Then Verify Source is "TaxProfile"
    Then Click on supplier Actions menu
    Then Click "Download" button
    #Then Verify the file download as "samplePDF.pdf"
    Then Select update or replace Document for "TAX Registration"
    Then Click "Replace Tax Registration Document" button
    Then Upload "PNG" under "Replace Document"
    Then Wait for 5 seconds
    Then add label as "newSample"
    Then Click "Confirm" button 2
    Then Wait for 5 seconds
    Then Click "Save and Continue" button 2
    Then Wait for 5 seconds
    Then Click on Review and publish nav link
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Click on Documents Button
    Then Verify Document label is "newSample"
    Then Logout from the system

  @Smoke @DocumentManagerQuestionnare @DocumentManager @Supplier 
  Scenario: Upload and Verify Documents uploaded in the Bank Account
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Ghana" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    #Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Wait for 15 seconds
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9876543210" in "Phone Number" field
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
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "1234567" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 15 seconds
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Enter "C" followed by "" and 10 alphanumeric characters in "Tax Registration Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "TAX Registration"
    Then Click "Confirm" button 2
    Then Select "Sole Proprietorship" in "Business Type" dropdown under "Tax Details"
    #Then Scroll to view "Corporate Contact Details" field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    #Then Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter value "9876543210" in Phone Number field
    #Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter Company Email address on Corporate Contact Details
    #Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 20 seconds
    Then Click on Find ID button
    #Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Wait for 10 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Wait for 5 seconds
    Then Click on Not a suitable match
     Then Wait for 15 seconds
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    #Then Click on Add a Bank account buutton on bank accoun information
    Then Select "Australia" in "Country/Region" dropdown
    Then Enter "Australia BOA" in "Bank Account Label" field
    Then Enter "Bank of Australia" in "Bank Name" field
    Then Enter "Australia TYS" in "Account Holder Name" field
    Then Select "Australian Dollar (AUD)" in "Currency" css dropdown
    #Then Select the country curreny from currency dropdown
    #Then Enter "123456" in "Bank Key" field under "Bank Account Information"
     And Enter value for Bank Key filed
    Then Enter value for Bank Account Number "1234567891234567"
    #Then Enter "143543643743232" in "Account Number" field under "Bank Account Information"
    Then Wait for 10 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    #Then Select "Bank statement" in "Evidence Type" dropdown
    #Then Select the  "Bank statement" from Evidence Type dropdown
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "Bank Statement"
    Then Click "Confirm" button
    Then Enter "Sydney" in "Bank Branch Name" field
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Victoria" in "State or Territory" dropdown
    Then Enter "2756" in "Postal Code" field
    Then Enter "Lekha" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Wait for 10 seconds
    Then Click on Save button on Add Company Account Modal
    Then Click on Not now button
    #Then Click on "Ok" button
    #Then Click on "OK" on Alert
    Then Show Company Account card with "Australia TYS"
    Then Click "Document Manager" tab
    Then Select "bank" filter
    Then Change row per page to fifty
    Then Verify Document label is "Bank Statement"
    Then Click "Bank Account" tab
    #Then Click On dots button
    #Then Click "Delete" button
    Then Click on the Delete button
    Then Click on Delete button on Update Bank Account Modal
    Then Wait for 2 seconds
    Then Click "Your Profile" tab
    Then Logout from the system

  @Smoke @DocumentManagerQuestionnare @DocumentManager @Supplier 
  Scenario: Upload and Verify Documents uploaded in the Questionnaries
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    Then Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Ghana" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Select the "Docmanager" in Dropdown
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on the Send Invite button on Invite Supplier window
    Then Wait for 10 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9876543210" in "Phone Number" field
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
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "1234567" in "Postal Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "user" in "Last Name" field
    Then Enter Email on Invite a user registration modal "user"
    Then Enter Confirmation Email on Invite a user registration modal "user"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 15 seconds
    Then Switch to the parent window
    Then Click "Basic Information" tab
    Then click on the calandar icon
    Then select date "1" from the date
    Then Select fiscalmonth
    Then Enter the Description on the Basic information page
    Then Enter "C" followed by "" and 10 alphanumeric characters in "Tax Registration Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then add label as "TAX Registration"
    Then Click "Confirm" button 2
    Then Select "Sole Proprietorship" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter value "9876543210" in Phone Number field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter Company Email address on Corporate Contact Details
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on Find ID button
    #Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Wait for 10 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Wait for 5 seconds
    Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on the next step button
    Then Click on "Add Other" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Wait for 5 seconds
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Click "Save Contact" button
    Then Wait for 3 seconds
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter "DOS" in "Job Title" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "First Name Last Name - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on the Save and Continue button
    Then Wait for 10 seconds
    Then Click on Review and publish profile button in the review and Publish tab
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on Questionnaires Nav link
    #Upload Documents For Conflict Minerals
    Then Click on Begin Questionnaire button for "Conflict Minerals"
    #answering questionnaires-Conflict Minerals
    Then click on radio button for question "Will your Company provide hardware materials, hardware parts, or hardware products?" is "YES"
    Then click on radio button for question "Does your company provide materials that contain tin, tantalum, tungsten or gold (3TG)?" is "YES"
    Then click on radio button for question "Do you have a CMRT report or scorecard?" is "YES"
    #Then Enter Date of Expiration for question "Do you have a CMRT report or scorecard?"
    Then Click "Attach Document" button for "Do you have a CMRT report"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Conflict Minerals Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Does your company provide materials that contain Cobalt?" is "NO"
    Then click on radio button for question "Do you have a CRT report or scorecard. " is "YES"
    #Then Enter Date of Expiration for question "Do you have a CRT report or scorecard. "
    Then Click "Attach Document" button for "Do you have a CRT report or scorecard. "
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Conflict Minerals Doc2"
    Then Click "Confirm" button
    #publish-Conflict Minerals
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Conflict Minerals IBM
    Then Click on Begin Questionnaire button for "Conflict Minerals - IBM"
    Then click on radio button for question "Will your Company provide" is "YES"
    Then click on radio button for question "IBM requires that your Company provide a Conflict Minerals Reporting Template (CMRT) twice a year" is "YES"
    Then Click "Attach Document" button for "IBM requires that your Company provide a Conflict Minerals Reporting Template (CMRT) twice a year"
    Then Upload "PDF" under "Upload Document"
    Then add label as "Conflict Minerals IBM Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "your direct and or upstream included conflict minerals" is "YES"
    Then click on radio button for question "Does your company have a conflict mineral contact?" is "NO"
    #Then click on NO for Does your company have a conflict mineral contact question
    Then click on radio button for question "Are there any issues or concerns that your company may have regarding compliance to IBM Conflict Minerals" is "NO"
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Liability Insurance
    Then Click on Begin Questionnaire button for "Liability Insurance"
    Then click on radio button for question "Do you carry liability insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "YES"
    Then Verify visibility of question 2 is "Select the currency in which you will declare your liability coverages"
    Then Verify visibility of subtext is "Identify your current limits of liability"
    Then Select "Albanian Lek (ALK)" for question 2
    Then Verify visibility of question 3 is "Type of Insurance Coverage (Select all that apply)"
    Then Verify visibility of subtext is "Select the  relevant Liability Insurance policy Type(s) applicable for your organization"
    Then Select "General Liability" from search and select drop down
    Then Verify visibility of question 4 is "General liability - please select coverage amount"
    Then Verify visibility of subtext is "Identify your current limits of liability"
    Then Select "≥ 1M and < 2M" for question 4
    Then Verify visibility of question 5 is "Please state the General Liability provider"
    #Then Verify visibility of subtext is "Identify your current limits of liability"
    #Then Select "100k - 200k" for question 5
    Then Enter answer for question 5 as "answer"
    Then Verify visibility of question 6 is "Please attach the Certificate of Insurance document for your organization"
    Then Click "Attach Document" button
    #Then Click "Attach Document" button for "Please attach the Certificate of Insurance document for your organization"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Liability Insurance Doc1"
    Then Click "Confirm" button
    Then Verify visibility of question 7 is "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?"
    Then click on radio button for question "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?" is "YES"
    Then Verify visibility of subtext is "Please attach the document and select the expiration date."
    Then Click "Attach Document" button for "Do you have any Insurance documents other than the documents covered as part of the Certificate of Insurance for your organization?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Liability Insurance Doc2"
    Then Click "Confirm" button
    ####publish-Liability Insurance
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Then click on radio button for question "Do you have an insurance liability or workers compensation" is "YES"
    #Then click on radio button for question "Do you carry a Cyber Security Insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "YES"
    #Then click on radio button for question "Do you carry a Employee Liability Insurance and are willing to disclose the current maximum liability amounts covered by your policy?" is "YES"
    #answering questionnaires-Liability Insurance
    #Then Enter Date of Expiration for question "Do you have an insurance liability or workers compensation"
    #Then Click "Attach Document" button for "Do you have an insurance liability or workers compensation"
    #Then Upload "PDF" under "Upload Document"
    #Then Click "Confirm" button
    #Then Enter answer for question 8 as "answer"
    #Then Enter answer for question 9 as "answer"
    #Then Enter answer for question 11 as "answer"
    #Then Enter answer for question 12 as "answer"
    #publish-Liability Insurance
    #Then click on Publish Questionnaire Button
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    #Ethics and Compliance
    Then Click on Begin Questionnaire button for "Ethics and Compliance"
    Then click on radio button for question "Within the past five (5) years:  Has your company or any related entity" is "YES"
    Then Enter answer for question 1 as "answer"
    Then click on radio button for question "Have your company or any employee of your company, any related entities" is "YES"
    Then Enter answer for question 3 as "answer"
    Then click on radio button for question "Does your company have a written code of conduct" is "YES"
    #Then Enter answer for question 4 as "answer"
    Then Click "Attach Document" button for "Please provide any documents or links to access code of conduct practices for your employees, representatives and suppliers of your company"
    #Then Click "Attach Document" button for "Please provide any documents or links to access code of conduct practices for your employees"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Ethics and Compliance"
    Then Click "Confirm" button
    Then click on radio button for question "Does your company conduct ethics training of employees and representatives of your company" is "YES"
    #Then click on radio button for question "Are there measures in your company that encourage employees to comply with applicable laws and internal guidelines?" is "YES"
    #publish-Ethics and Compliance
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Switch to the active window
    #Then click on Publish Button
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #  #Sustainability (Social, Environmental, Health & Safety)
    #Then Click on Begin Questionnaire button for "Sustainability (Social, Environmental, Health & Safety)"
    Then Click on Begin Questionnaire button for "Sustainability (Social & Environmental)"
    Then click on radio button for question "Is your company a member of the Responsible Business Alliance?" is "YES"
    Then click on radio button for question "Does your company participate in the United Nations Global Compact?" is "NO"
    Then click on radio button for question "Is your company B Corp certified?" is "NO"
    Then click on radio button for question "Has your company been assessed by EcoVadis?" is "NO"
    Then click on radio button for question "Do you have another rating or certification related to Sustainability?" is "NO"
    Then click on radio button for question "Does your organization operate a labor Management System that is certified against SA 8000?" is "YES"
    #Then Enter Date of Expiration for question "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then Click "Attach Document" button for "Does your organization operate a labor Management System that is certified against SA 8000?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Sustainability Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Do you have an alternate certification other than SA 8000?" is "NO"
    Then Enter answer for question 8 as "Answer"
    Then click on radio button for question "Does your organization operate a social responsibility system that is certified against ISO 26001?" is "YES"
    #Then Enter Date of Expiration for question "Does your organization operate a social responsibility system that is certified against ISO 26001?"
    Then Click "Attach Document" button for "Does your organization operate a social responsibility system that is certified against ISO 26001?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Sustainability Doc2"
    Then Click "Confirm" button
    Then click on radio button for question "Do you have an alternate certification other than ISO 26001?" is "NO"
    Then Enter answer for question 11 as "Answer"
    Then click on radio button for question "Does your organization have ISO22301 - Business Continuity Management System Certification?" is "YES"
    Then Click "Attach Document" button for "Does your organization have ISO22301 - Business Continuity Management System Certification?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Sustainability Doc3"
    Then Click "Confirm" button
    #Then click on radio button for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?" is "YES"
    #Then Enter Date of Expiration for question "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?"
    #Then Click "Attach Document" button for "Does your organization operate a structured H&S Management System that is certified against OHSAS 18001, ISO 45001 or equivalent?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Sustainability Doc4"
    #Then Click "Confirm" button
    #Then click on radio button for question "Is there a function / appointed person responsible for Health & Safety Management Issues?" is "NO"
    #Then click on radio button for question "Provide details of H&S performance against the following performance indicators" is "QUESTION_SUSTAINABILITY_HEALTH_AND_SAFETY_PERFORMANCE_OPTION_NA"
    Then click on radio button for question "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?" is "YES"
    #Then Enter Date of Expiration for question "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?"
    Then Click "Attach Document" button for "Does your organization operate an Environmental Management System that is certified against ISO 14001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Sustainability Doc5"
    Then Click "Confirm" button
    Then click on radio button for question "Do you have an environmental policy?" is "NO"
    Then click on radio button for question "Has your organisation been prosecuted for environmental violations?" is "NO"
    Then click on radio button for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?" is "YES"
    #Then Enter Date of Expiration for question "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then Click "Attach Document" button for "Does your organization operate an Energy Management System that is certified against ISO 50001 or equivalent?"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Sustainability Doc6"
    Then Click "Confirm" button
    #Then click on radio button for question "Do you purchase" is "YES"
    #Then click on radio button for question "Do you purchase renewable electricity?" is "NO"
    #Then Scroll Down the page
    #Then click on radio button for question "Do you currently purchase 100% renewable electricity?" is "NO"
    Then click on NO radio button for question Do you currently purchase 100% renewable electricity?
    Then Wait 10 seconds
    #Then click on radio button for question "If you do not purchase 100% renewable electricity today, do you have a target to get to 100%?" is "NO"
    #Then click on NO radio button for question If you do not purchase 100% renewable electricity today, do you have a target to get to?
    Then click on NO radio button for If you do not purchase hundred percent renewable electricity today
    #Then click on radio button for question "Do you have plans to source 100% renewable electricity?" is "NO"
    Then click on NO radio button for question Do you have plans to source 100% renewable electricity?
    #Then click on radio button for question "Do you have any plans to do so?" is "YES"
    #Then click on radio button for question "Do you have plans to source" is "NO"
    #Then Enter answer for question 24 as "answer"
    Then click on radio button for question "Did your company report on the CDP carbon and / or water initiative last year?" is "NO"
    Then click on radio button for question "Do you have a carbon reduction target?" is "NO"
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    Then click on Publish Questionnaire Button
    Then Switch to the active window
    Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    # #Human Rights
    Then Click on Begin Questionnaire button for "Human Rights and Modern Slavery"
    Then click on radio button for question "Does your Company have a human rights and/or anti-slavery policy or other express commitment to identify" is "YES"
    Then Enter answer for question 2 as "answer"
    Then Click "Attach Document" button for "If you answered"
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Human Rights Doc1"
    Then Click "Confirm" button
    #Then click on checkbox for question "Prison workers" is "2"
    #Then click on checkbox for question "None" is "2"
    Then click on checkbox for question Displaced workers
    #Then Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #Then Click "Confirm" button
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Then Enter answer for question 4 as "answer"
    #Then Click "Attach Document" button for "any of the employee or contractor categories in Question above, please provide sufficient details for Buyer to evaluate your response."
    #Then Upload "PDF" under "Upload Document"
    #Then add label as "Human Rights Doc2"
    #Then Click "Confirm" button
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Switch to the active window
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    # #Germany Tax Registration
    #Then Click on Begin Questionnaire button for "Germany Tax Registration"
    #Then click on checkbox for question "What are the taxes you are subjected to?" is "2"
    #Then click on radio button for question "Do you have a VAT Number (UST-ID NR or Umsatzsteuer-Identifikationsnummer)?" is "YES"
    #Then Enter answer for question 3 as "12345689101"
    #Then Click "Attach Document" button for "Please provide your VAT Number (UST-ID NR or Umsatzsteuer Identifikationsnummer)"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Germany Tax Registration Doc"
    #Then Click "Confirm" button
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Switch to the active window
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    # # MSME Certification (India)
    #Then Click on Begin Questionnaire button for "MSME Certification (India)"
    #Then click on radio button for question "Is your business a Micro, Small and Medium Enterprise (MSME)?" is "YES"
    #Then click on radio button for question "Do you have a Micro, Small and Medium Enterprise (MSME) Certificate available?" is "YES"
    #Then Enter unique twelve digit number "123456789012"
    #Then Click "Attach Document" button for "Please provide your twelve digit Unique Identification Number provided by the Ministry of Micro, Small and Medium Enterprises, Government of India"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "MSME Certification (India)Doc"
    #Then Click "Confirm" button
    #Then Scroll Down the page
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Switch to the active window
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    ## Quality Management
    Then Click on Begin Questionnaire button for "Quality Management"
    Then click on radio button for question "Does your company have Quality Management System with processes to actively manage projects, risks, measure and control quality of deliverables and services, continuously improve?" is "YES"
    Then Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?
    #Then click on radio button for question "Do you maintain Quality certifications e.g. ISO 9000, ISO 9001, IATF 16949, GMP, HAACP, CMMI, SPICE, Other?" is "YES"
    #Then click on radio button for question "Do you maintain ISO 9000 certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain ISO 9000 certification?"
    #Then Click "Attach Document" button for "Do you maintain ISO 9000 certification?"
    #Then Click "Attach Document" button for "Attach your SPICE certificate and enter expiration date."
    Then Click Attach Document button for Attach your SPICE certificate and enter expiration date.
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Quality Management Doc1"
    Then Click "Confirm" button
    Then click on radio button for question "Does the Return Material Authorization (RMA) rate, or field failure, or customer return rate meet your internal targets for each of the past 3 years?" is "YES"
    Then Enter answer for question 4 as "answer"
    Then click on Publish Questionnaire Button
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    #Then click on radio button for question "Do you maintain ISO 9001 certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain ISO 9001 certification?"
    #Then Click "Attach Document" button for "Do you maintain ISO 9001 certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc2"
    #Then Click "Confirm" button
    #Then click on radio button for question "Do you maintain IATF 16949 certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain IATF 16949 certification?"
    #Then Click "Attach Document" button for "Do you maintain IATF 16949 certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc3"
    #Then Click "Confirm" button
    #Then click on radio button for question "Do you maintain GMP certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain GMP certification?"
    #Then Click "Attach Document" button for "Do you maintain GMP certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc4"
    #Then Click "Confirm" button
    #Then click on radio button for question "Do you maintain HAACP certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain HAACP certification?"
    #Then Click "Attach Document" button for "Do you maintain HAACP certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc5"
    #Then Click "Confirm" button
    #Then click on radio button for question "Do you maintain CMMI certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain CMMI certification?"
    #Then Click "Attach Document" button for "Do you maintain CMMI certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc6"
    #Then Click "Confirm" button
    #Then click on radio button for question "Do you maintain SPICE certification?" is "YES"
    #Then Enter Date of Expiration for question "Do you maintain SPICE certification?"
    #Then Click "Attach Document" button for "Do you maintain SPICE certification?"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc7"
    #Then Click "Confirm" button
    #Then click on radio button for question "If you have selected Other, please state the certification in the comment section" is "YES"
    #Then Enter Date of Expiration for question "If you have selected Other, please state the certification in the comment section"
    #Then Click "Attach Document" button for "If you have selected Other, please state the certification in the comment section"
    #Then Upload "PDF" under "Upload Document"
    #Then Enter Date of Expiry
    #Then add label as "Quality Management Doc8"
    #Then Click "Confirm" button
    #Then click on radio button for question "Does the Return Material Authorization (RMA) rate, or field failure, or customer return rate meet your internal targets for each of the past 3 years?" is "YES"
    #Then Click on Publish Questionnaire button on questionaire acceptance page
    #Then Switch to the active window
    #Then click on Publish Button
    #Then Show Toast message "Questionnaire Published"
    #Financial Health
    Then Click on Begin Questionnaire button for "Financial Health"
    Then click on radio button for question "Are you willing to share your high level financial information with your connected Buyers?" is "YES"
    And Scroll Down the page
    Then select currency for question2:In what currency are your Financials reported?
    Then select attach documents from  Would you like to enter figures or attach documents?
    Then Select which types of Financial documents you would like to attach. Select one or more categories and attach documents for the last three fiscal years.
    Then Click "Attach Document" button for "Attach up to 5 Annual Report documents. Please ensure the Fiscal year is part of your filename for easy identification."
    Then Upload "PDF" under "Upload Document"
    Then Enter Date of Expiry
    Then add label as "Financial Health Doc1"
    Then Click "Confirm" button
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    
    ##Company Operations
    
    Then Click on Begin Questionnaire button for "Company Operations"
    #Then Enter value at text area for Question
    Then Enter answer for question 1 as "answer"
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then click on radio button for question "Does your company have Research and Development facilities or offices?" is "NO"
    #Then Click "No" for Question "6"
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    
    ##Anti-Bribery, Anti-Corruption
    
    Then Click on Begin Questionnaire button for "Anti-Bribery, Anti-Corruption"
    Then click on radio button for question "Does your company have an anti-bribery/anti-corruption policy and procedures?" is "YES"
    Then click on radio button for question "Does your anti-bribery policy" is "YES"
    Then click on radio button for question "Does your company review" is "YES"
    Then click on radio button for question "Do you train your employees" is "YES"
    Then click on radio button for question "Does your business have a code" is "YES"
    Then click on radio button for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been debarred from competing for World Bank or similar contracts?" is "NO"
    Then click on radio button for question "Has your business or its affiliates, principal officers, directors, employees, subcontractors or shareholders ever been investigated or charged with violations of any anti-corruption laws?" is "NO"
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    
    ##GDPR - General Data Protection Regulation
    
    Then Click on Begin Questionnaire button for "GDPR - General Data Protection Regulation"
    Then click on radio button for question "Will your Company be collecting, using, processing, storing" is "NO"
    Then click on radio button for question "Is the collection of your customer’s personal data limited to what is necessary for the purpose of processing?" is "NO"
    Then click on radio button for question "Do you have a mechanism in place enabling data breach identification and reporting of occurrence?" is "NO"
    Then click on radio button for question "Have you suffered a reportable data breach in the last 3 years?" is "NO"
    Then click on radio button for question "Has your organisation been prosecuted for Security or Data Breaches?" is "NO"
    Then click on radio button for question "Has any data protection regulator carried out any audit, investigation or enforcement action, or threatened to do so, in the last 3 years?" is "NO"
    #Then Enter answer for question 2 as "answer"
    #Then Enter answer for question 3 as "answer"
    #Then click on radio button for question "Please confirm whether you maintain any IT security standards certifications (e.g. ISO 27001 or Cyber Essentials)?" is "NO"
    #Then Enter answer for question 5 as "answer"
    #Then Select "Confidential" from drop down
    #Then click on radio button for question "Has a Data Protection Impact Assessment" is "YES"
    #Then click on radio button for question "Are you aware of all your obligations under GDPR?" is "YES"
    #Then click on radio button for question "Have you a mechanism in place" is "YES"
    #Then click on radio button for question "Is the collection of your customer’s personal data" is "YES"
    #Then click on radio button for question "Does your team have systems, procedures and training to comply with individuals Right to Erasure?" is "YES"
    #Then click on radio button for question "Are your systems able to completely erase customer data?" is "YES"
    #Then click on radio button for question "Does your team have systems, procedures and training to comply with individuals Right to Rectification?" is "YES"
    #Then click on radio button for question "Are your staff trained to identify" is "YES"
    #Then click on radio button for question "Do your systems allow for one customer’s data" is "YES"
    #Then click on radio button for question "Does your company use any contractors or vendor suppliers?" is "YES"
    #Then click on radio button for question "Has your organisation been prosecuted for Security or Data Breaches?" is "NO"
    #Then click on radio button for question "Has any data protection regulator carried out any audit, investigation or enforcement action, or threatened to do so, in the last 3 years?" is "NO"
    #Then click on radio button for question "Have you reviewed your usage and contracts" is "YES"
    #Then Enter answer for question 19 as "answer"
    #Then click on radio button for question "Is any customer data transferred to" is "YES"
    #Then click on radio button for question "As part of your procurement process" is "YES"
    #Then click on radio button for question "Do you want to attach any available document on your GDPR policy?" is "YES"
    #Then Click "Attach Document" button for "Do you want to attach any available document on your GDPR policy?"
    #Then Upload "PDF" under "Upload Document"
    #Then add label as "GDPR Doc"
    #Then Click "Confirm" button
    Then click on Publish Questionnaire Button
    Then click on Publish Button
    Then Show Toast message "Questionnaire Published"
    Then Switch to the parent window
    #Then Click on Document Manager Nav link
    Then Click on Documents Button
    Then Select "questionnaire" filter
    #Then Select "TaxProfile" filter
    #Then Scroll down to the end of the page
    Then Change row per page to fifty
    Then Verify Document label is "Conflict Minerals Doc1"
    Then Verify Document label is "Conflict Minerals Doc2"
    Then Verify Document label is "Conflict Minerals IBM Doc1"
    Then Verify Document label is "Liability Insurance Doc1"
    Then Verify Document label is "Liability Insurance Doc2"
    Then Verify Document label is "Ethics and Compliance"
    Then Verify Document label is "Sustainability Doc1"
    Then Verify Document label is "Sustainability Doc2"
    Then Verify Document label is "Sustainability Doc3"
    #Then Verify Document label is "Sustainability Doc4"
    Then Verify Document label is "Sustainability Doc5"
    Then Verify Document label is "Sustainability Doc6"
    #Then Verify Document label is "Germany Tax Registration Doc"
    #Then Verify Document label is "MSME Certification (India)Doc"
    Then Verify Document label is "Quality Management Doc1"
    #Then Verify Document label is "Quality Management Doc2"
    #Then Verify Document label is "Quality Management Doc3"
    #Then Verify Document label is "Quality Management Doc4"
    #Then Verify Document label is "Quality Management Doc5"
    #Then Verify Document label is "Quality Management Doc6"
    #Then Verify Document label is "Quality Management Doc7"
    #Then Verify Document label is "Quality Management Doc8"
    #Then Verify Document label is "Financial Health Doc1"
    #Then Verify Document label is "TAX Registration"
    Then Click "Your Profile" tab
    Then Logout from the system
