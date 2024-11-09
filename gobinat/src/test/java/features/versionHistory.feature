Feature: Version History

  #Version History
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Are you publicly traded on a stock exchange?
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "Yes" for "9" in Diversity
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    And Wait for 5 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Are you publicly traded on a stock exchange?" is displaying in Version History tab at "1"
    And Verify field name "Stock Exchange" is displaying in Version History tab at "4"
    And Verify field name "Stock Exchange Symbol" is displaying in Version History tab at "7"
    #Verify Onboarded values
    And Verify Onboadred value for "Are you publicly traded on a stock exchange?" field is "No" at "2"
    And Verify Onboadred value for "Stock Exchange" field is "-" at "5"
    And Verify Onboadred value for "Stock Exchange Symbol" field is "-" at "8"
    #Verify Republished values
    And Verify Republished value for "Are you publicly traded on a stock exchange?" field is "Yes" at "3"
    And Verify Republished value for "Stock Exchange" field is "Amman Financial Market" at "6"
    And Verify Republished value for "Stock Exchange Symbol" field is "$" at "9"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Date Established
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "5" from the date
    And Wait for 5 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Date Established" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Date Established" field is "July 1, 2023" at "2"
    #Verify Republished values
    And Verify Republished value for "Date Established" field is "July 5, 2023" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Business Type
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #enter text
    And Scroll the page
    And Select "Private Limited Company" value from Business type dropdown
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Business Type" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Business Type" field is "Sole Trader" at "2"
    #Verify Republished values
    And Verify Republished value for "Business Type" field is "Private Limited Company" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Corporate Contact Details
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #enter text
    And Scroll the page
    Then Wait for 3 seconds
    And Enter phone number "9876543423" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543423"
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Phone Number" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Phone Number" field is "+44 - 9876 543210" at "2"
    #Verify Republished values
    #And Verify Republished value for "Phone Number" field is "+44 - 9876 543423" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer @TYSFunctionality @SanityCheck
  Scenario: Verify As a Buyer, I should be able to view Version History for Tax Details
    When Enter data in Email Address field
    #Then Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    And Wait for 5 seconds
    Then select date "5" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is a mandatory field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    Then Click on Not a suitable match
    And Wait for 3 seconds
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 35 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
     #Onboard process
    When Enter data in Email Address field
    #Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    ##When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    ##And Click on the NO for First question
    ##When Click "Attach Document" button
    ##Then Upload "PDF" under "Upload Document"
    ##And Enter "01/02/2021" in Expiry Date field
    ##And add label as "VATDOCUMENT"
    ##When Click on the Confirm button.
    ##And Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##Then Switch to the active window
    ##And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    #And Wait for 3 seconds
    ###S&EMS Record created
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
    ##When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    ##And Click on the YES for First question
    ##Then Enter the "Sample" for Second question in RBA/EICC Contract
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##And Switch to the active window
    ##And Switch to the parent window
    ###Export/Import Compliance
    #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Click "No" for the Third Question
    # When Click on the NO for First question
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
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
    #Then Wait for 10 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    #When Click on the "USL Search" under Approval Source
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Buyer Internal assessment
    #When Click on "Buyer Internal assessment" in Approval Source "1"
    #When Click on the Approve button
    #Then Enter the Notes
    #And Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    ##DPL Search
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "EcoVadis IQ - Ecovadis" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Rule Without criteria
    And Refresh the current webpage
    ##Then Click on "Rule without criteria" in Approval Source "1"
    ##Then Wait for 5 seconds
    ##Then Click on the Approve button
    ##Then Enter the Notes
    ##Then Enter the Notes under the Notes Box
    ##Then Click on the Approve button on approval
    ##Then Wait for 3 seconds
    ##Then Navigate back to supplier
    ##Then Wait for 10 seconds
    ##And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    Then Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    Then Logout from the system
    Then Wait for 5 seconds
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #enter text
    Then Enter reason "testreadUATtestUATt" under "Please provide reason why you do not have VAT?" text box for VAT
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    Then Wait for 5 seconds
    #Verify Version History
    When Enter data in Email Address field
      #Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    #And Click "Go to details" button
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Please provide reason why you do not have VAT?" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Please provide reason why you do not have VAT?" field is "testreadUATtestUAT" at "2"
    #Verify Republished values
    #And Verify Republished value for "Please provide reason why you do not have VAT?" field is "testreadUATtestUATt" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer @TYSFunctionality @SanityCheck
  Scenario: Verify As a Buyer, I should be able to view Version History for Business Name
    #UK onboard
    When Enter data in Email Address field
      #And Enter data in Email Address field
    And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    #Then Switch to the active window
    And Switch to "new TYS" tab
    #Verify Company page on registration
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    ##Basic Information Label verification
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    ### Required fields
    #Additional Information
    And Wait for 5 seconds
    When Click on the radio button "YES" for "9" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    And Wait for 5 seconds
    Then select date "5" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is a mandatory field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #Additional Information tooltip
    And Show "Stock Exchange" tooltip "The Stock Exchange where your Company is listed. This is a required field." in "Additional Information"
    And Show "Stock Exchange Symbol" tooltip "The stock symbol of your company, as it appears on your Company's commercial registration certificate." in "Additional Information"
    And Wait for 5 seconds
    #select dropdown
    And Scroll the page
    And Select "Amman Financial Market" from the dropdown "Search and Select a Stock Exchange..." for Stock Exchange
    And Wait for 5 seconds
    #Symbol
    And Enter "$" symbol in "stockSymbol" field
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    Then Click on Not a suitable match
    And Wait for 3 seconds
    And Wait for 10 seconds
    When Click on Find ID button
    #Then Wait for 3 seconds
    Then Click on Not a suitable match
    And Wait for 35 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
     #Onboard process
    When Enter data in Email Address field
      #Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    And Click "Go to details" button
    #Action center
    When Click on the Action Center
    ##When Click on "pending" button at the "DPL Search" Internal Due Diligence Questionnaires
    ##And Click on the NO for First question
    ##When Click "Attach Document" button
    ##Then Upload "PDF" under "Upload Document"
    ##And Enter "01/02/2021" in Expiry Date field
    ##And add label as "VATDOCUMENT"
    ##When Click on the Confirm button.
    ##And Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##Then Switch to the active window
    ##And Switch to the parent window
    #### PIF Indicator
    #And Refresh the current webpage
    #When Click on the Action Center
    #When Click on "pending" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    #And Click on the NO for First question in PIF Indicator
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    ###USL Search
    # And Refresh the current webpage
    #When Click on the Action Center
    #Then Scroll the page
    #When Click on "pending" button at the "USL Search" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #When Click on No for First question
    #And Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #Then Switch to the active window
    #And Switch to the parent window
    #And Wait for 3 seconds
    ###S&EMS Record created
    #Then Refresh the current webpage
    #And Wait for 5 seconds
    #When Click on the Action Center
    #Then Scroll the page
    #And Wait for 5 seconds
    #When Click on "pending" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    #And Click on the NO for First question
    #Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    #Then Wait for 3 seconds
    #When Click on the Submit button in SEMS Search
    #And Click Submit button in DPL Search
    #Then Wait for 3 seconds
    #And Switch to the active window
    #And Switch to the parent window
    ###Buyer Internal assessment
    #When Click on "pending" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    #And Click on the YES for First question
    #When Click "Attach Document" button
    #Then Upload "PDF" under "Upload Document"
    #And Enter "01/02/2021" in Expiry Date field
    #And add label as "VATDOCUMENT"
    #When Click on the Confirm button.
    #And Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
    ###RBA/EICC Contract
    ##When Click on "pending" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    ##And Click on the YES for First question
    ##Then Enter the "Sample" for Second question in RBA/EICC Contract
    ##When Click on the Submit button in DPL Search
    ##And Click Submit button in DPL Search
    ##And Switch to the active window
    ##And Switch to the parent window
    ###Export/Import Compliance
    #When Click on "pending" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    #And Click "No" for the First Question
    #And Click "No" for the Second Question
    #And Click "No" for the Third Question
    # When Click on the NO for First question
    #When Click on the Submit
    #And Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    #And Switch to the active window
    #And Switch to the parent window
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
    #Then Wait for 10 seconds
    #approvals
    #DSL Search
    #Then Click on "USL Search" in Approval Source "1"
    #When Click on the "USL Search" under Approval Source
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Buyer Internal assessment
    #When Click on "Buyer Internal assessment" in Approval Source "1"
    #When Click on the Approve button
    #Then Enter the Notes
    #And Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    ##DPL Search
    #Then Click on "DPL Search" in Approval Source "1"
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Navigate back to supplier
    #Then Wait for 10 seconds
    #Then Click on the "EcoVadis IQ - Ecovadis" under Approval Source
    #Then Wait for 5 seconds
    #Then Click on the Approve button
    #Then Enter the Notes under the Notes Box
    #Then Click "Approve" button 1
    #Then Wait for 3 seconds
    #Then Navigate back to supplier
    #Rule Without criteria
    And Refresh the current webpage
    ##Then Click on "Rule without criteria" in Approval Source "1"
    ##Then Wait for 5 seconds
    ##Then Click on the Approve button
    ##Then Enter the Notes
    ##Then Enter the Notes under the Notes Box
    ##Then Click on the Approve button on approval
    ##Then Wait for 3 seconds
    ##Then Navigate back to supplier
    ##Then Wait for 10 seconds
    ##And Refresh the current webpage
    Then verify the status as "Ready To Onboard"
    Then Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #enter text
    Then Enter input value "testBusiness" in "companyName" field
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    When Enter data in Email Address field
      #Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter for businessname
    And Wait for 3 seconds
    #And Click "Go to details" button
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 10 seconds
    Then Verify field name "Business Name" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Business Name" field is at "2"
    #Verify Republished values
    And Verify Republished business name value for "Business Name" field is "testBusiness" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Diversity
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
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #maildrop
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    And Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
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
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    And Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    And Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    #Basic info page
    When Click "Basic Information" tab
    When click on the calandar icon
    Then select date "1" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    #Diversity field
    Then Click on the radio button "YES" for "1" in Diversity
    Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then select "People with Disabilities" under "diversityCategories" for Diversity Category
    #Diversity sub cat
    Then Wait for 5 seconds
    Then select "Javits-Wagner-O-Day (People with Disabilities)" under "diversitySubCategories" for Diversity Category
    Then Wait for 5 seconds
    #select certifiers
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    And Select "Privately Owned" value from Business type dropdown
    And Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    And Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #When Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 10 seconds
    #When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    And Wait for 10 seconds
    And Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    And Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #Diversity field
    #Then Click on the radio button "YES" for "1" in Diversity
    #Then Click on the radio button "YES" for "3" in Diversity
    #Diversity category
    Then select "Women-Owned Business" under "diversityCategories" for Diversity Category
    #Diversity sub cat
    Then Wait for 5 seconds
    #Then select "Javits-Wagner-O-Day (People with Disabilities)" under "diversitySubCategories" for Diversity Category
    #Then Wait for 5 seconds
    #select certifiers
    Then Select "Self Certified" from "Select Certifiers" Diversity Category
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Diversity" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Diversity" field is "People with Disabilities" at "2"
    #Verify Republished values
    And Verify Republished value for "Diversity" field is "Women-Owned Business" at "3"
    Then Logout from the system

  @Smoke @versionhistory @Buyer @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to view Version History for Legal Name
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    When Click "Basic Information" tab
    #enter text
    And Enter legal business name "test" field "Legal Business Name"
    Then Wait for 3 seconds
    When Click "Save and Continue" button 3
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    #And Click "Go to details" button
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Legal Name" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for legal business name field is at "2"
    #Verify Republished values
    And Verify Republished legal business name field is "test" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Ownership
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    Then Click "Ownership" tab
    Then Wait for 3 seconds
    #enter text
    When Click on Ownership body
    Then Wait for 3 seconds
    And Enter the value "80" percentage at the Ownership Percentage
    And Click "Update Individual Owner" button
    Then Wait for 10 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    Then Verify field name "Ownership" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Ownership" field is "50" at "2"
    #Verify Republished values
    And Verify Republished value for "Ownership" field is "80" at "3"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to view Version History for Management Contacts
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    Then Click "Management" tab
    Then Wait for 3 seconds
    When Click on Ownership body
    Then Wait for 3 seconds
    And Click "Remove" button
    And Click on Accept alert
    Then Wait for 5 seconds
    When Click on Assign "1" button
    #enter text
    Then Enter "firstName" as "test" on management window
    Then Enter "lastName" as "UAT" on management window
    Then Select the "1992" year from the drop down
    Then Enter "title" as "CEO" on management window
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter "email" as "mahendrauat@maildrop.cc" on management window
    Then Wait for 5 seconds
    Then Click on "Save" button
    Then Wait for 5 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    #Verify Republished values
    And Verify Republished "Management Contacts" field is "test " as "First Name"
    And Verify Republished "Management Contacts" field is "UAT " as "Last Name"
    And Verify Republished "Management Contacts" field is "Chief Executive Officer (CEO) or Equivalent" as "CEO"
    And Verify "+44 - 9876 543210" label is displaying under "Primary Phone"
    And Verify "mahendrauat@maildrop.cc" label is displaying under "Management Contacts"
    And Wait for 3 seconds
    Then Logout from the system

  @Smoke @versionhistory @Buyer @TYSFunctionality
  Scenario: Verify As a Buyer, I should be able to view Version History for Locations
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 20 seconds
    When Click on Find ID button
    And Wait for 20 seconds
    When Click on Find ID button
    And Wait for 20 seconds
    When Click on at "Next Step" button
    And Wait for 20 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    Then Click "Contacts/Locations" tab
    Then Wait for 5 seconds
    And Click "Locations" button
    Then Wait for 2 seconds
    When Click on label button "Edit" under "Locations"
    Then Wait for 2 seconds
    #enter text
    And Enter "Test1" in "Address Line 1" field after "UK" supplier registration
    And Enter "Test2" in "Address Line 2" field after "UK" supplier registration
    When Click "Update Location" button
    Then Wait for 5 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    #Verify Republished values
    And Verify Republished "Locations" field is "Test1" as "Address Line1"
    And Verify Republished "Locations" field is "Test2" as "Address Line 2"
    And Wait for 3 seconds
    Then Logout from the system
    
    @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for UNSPSC
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    Then Click "Basic Information" tab
    Then Wait for 5 seconds
    And Click "Add UNSPSC Codes" button
    Then Wait for 5 seconds
    #enter text
    And Select the UNSPSC codes on the Basic information page for republish
    Then Wait for 5 seconds
    And Scroll the page
    Then Wait for 5 seconds
    When Click "Save and Continue" button 3
    Then Wait for 5 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    #Verify Republished values
    Then Verify field name "UNSPSC-Segment" is displaying in Version History tab at "1"
    And Verify field name "UNSPSC-Family" is displaying in Version History tab at "4"
    And Verify field name "UNSPSC-Class" is displaying in Version History tab at "7"
    And Verify field name "UNSPSC-Commodiy" is displaying in Version History tab at "10"
    #Verify Onboarded values
    And Verify Onboadred value for "UNSPSC-Segment" field is "No" at "2"
    And Verify Onboadred value for "UNSPSC-Family" field is "-" at "5"
    And Verify Onboadred value for "UNSPSC-Class" field is "-" at "8"
    And Verify Onboadred value for "UNSPSC-Commodiy" field is "-" at "11"
    #Verify Republished values
    And Verify Republished value for "UNSPSC-Segment" field is "Mineral and Textile and Inedible Plant and Animal Materials 11000000" at "3"
    And Verify Republished value for "UNSPSC-Family" field is "Minerals and ores and metals 11100000" at "6"
    And Verify Republished value for "UNSPSC-Class" field is "Minerals 11101500" at "9"
    And Verify Republished value for "UNSPSC-Commodiy" field is "Mica 11101501" at "12"
    And Wait for 3 seconds
    And Wait for 3 seconds
    Then Logout from the system
    
    @Smoke @versionhistory @Buyer
  Scenario: Verify As a Buyer, I should be able to view Version History for Banking Info
    #UK onboard
    And Enter data in Email Address field
    #And Click on Continue button on Login page
    And Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select UK from the dropdown
    Then Select "United Kingdom" in "Supplier Country of Registration" dropdown
    And Enter Contact Email Address on Invite Supplier window from maildrop
    And Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    And Enter Contact First Name on Invite Supplier window
    And Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    And Click on the Skip
    And Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    And Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    And Click on the Clear All Link on Assign Questionnaires window
    And Click on Assign button on Assign Questionnaires window
    And Click on the Confirm on Confirmation Needed
    And Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    And Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    And Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    And Wait for 3 seconds
    And Logout from the system
    And Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    And Wait for 5 seconds
    #Verify mailinator Email
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    And Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    And Switch to "new TYS" tab
    #Enter data
    And Enter timestamp in "Legal Business Name" field "Legal Business"
    And Enter the Company Website in Website field
    And Scroll the page
    And Wait for 5 seconds
    And Click TYS Terms & Conditions checkbox
    And Click Continue button in supplier registration page
    And Enter Job title on User Account page
    And Enter phone number "9490491531" in "Phone Number" field
    And Enter new password in Password field
    When Click on Password tooltip icon
    And Click on Password tooltip icon
    Then Enter same password in Confirm Password field
    When Click on Confirm Password tooltip icon
    And Click on Confirm Password tooltip icon
    And Click "Continue" button
    And Switch to "Mailinator" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    And Switch to "new TYS" tab
    And Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Select "Bute" in "County" dropdown
    And Enter "SW1A 1AA" in "Postal Code" field after "Albania" supplier registration
    And Enter "74546443" in "PO Box" field after "Albania" supplier registration
    And Enter "FK20 8SB" in "PO Box Postal Code" field after "Albania" supplier registration
    When Click "Next" button
    And Wait for 3 seconds
    And Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    And Enter "secondary" in "First Name" field
    And Enter "usr" in "Last Name" field
    And Enter Email on Invite a user registration modal "usr"
    And Enter Confirmation Email on Invite a user registration modal "usr"
    And Enter Job title on secondary invite
    And Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 15 seconds
    When Click "Skip" button
    Then Wait for 10 seconds
    And Switch to the active window
    When Click on Do it later button
    #Basic information
    Then Click "Basic Information" tab
    And Wait for 10 seconds
    And Verify Tax Country "United Kingdom" is Pre populated with country
    #Date calandar
    And Show date calander in "Date Established" label
    #enter text
    And Scroll the page
    And Select "Sole Trader" value from Business type dropdown
    And Enter phone number "9876543210" in "Phone Number" field
    And Verify phone number "Phone Number" is entered in accepted format "+44 - 9876 543210"
    And Enter phone number "9876543210" in "Fax Number" field
    And Verify phone number "Fax Number" is entered in accepted format "+44 - 9876 543210"
    #Additional Information
    And Wait for 5 seconds
    #Are you publicly traded on a stock exchange?
    When Click on the radio button "No" for "10" in Diversity
    #click on the calandar icon
    Then Scroll to the top of the page
    When click on the calandar icon
    Then select date "1" from the date
    ##Calander month dropdowns
    And Verify "May" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter "testUAT" text in the discription text box
    And Wait for 5 seconds
    #And Enter "34654645635" in "D-U-N-S Number" field under "Tax Details"
    ###Document upload
    And Scroll to view "Legal Business Name" field
    When Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Certificate of Incorporation. This is an optional field." "samplePDF.pdf"
    And Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "YES" for "1" in VAT registration
    Then Wait for 5 seconds
    When Click on the radio button "NO" for "2" in VAT registration
    Then Enter reason "testreadUATtestUAT" under "Please provide reason why you do not have VAT?" text box for VAT
    When Click "Upload EU VAT Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "EU VAT Registration Document" "samplePDF.pdf"
    And Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter random company registration number in "Company Registration Number" field under "Tax Details"
    #select dropdown
    And Scroll the page
    #Then Upload "PDF" file "Upload file" for Diversity category
    And Enter number "1435346645645645" in "Fax Number" in corporation details
    #Then Enter random EU VAT number "GB" in "EU VAT Registration Number" field under "Tax Details"
    And Enter company email "dsgse@test.com" in email field
    And Enter website "www.dsgsetest.com" in website field
    #Then click on the radio button "10" in additional information
    And Enter the value "5" at Number of Full Time Employees on the Basic information page
    And Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    And Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    And Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    #Then Click on Not a suitable match
    And Wait for 10 seconds
    When Click on Find ID button
    And Wait for 10 seconds
    #When Click on Find ID button
    #And Wait for 10 seconds
    When Click on at "Next Step" button
    And Wait for 10 seconds
    #add management
    #Then Click on Add Other button in Management page
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    And Select the "2002" year from the drop down
    When Click on Save button on the Assign a Contact to Management Team modal
    And Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    When Click on Save button on the Assign a Contact to Management Team modal
    Then Wait for 10 seconds
    When Click on "Next Step" button
    And Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    When Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    And Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    And Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    #Add Bank account
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter "UK BOA" in "Bank Account Label" field
    Then Enter "UK CA" in "Account Holder Name" field
    Then Enter "Bank of UK" in "Bank Name" field
    Then Enter "Vienna" in "Bank Branch Name" field
    Then Select "United Kingdom" in "Country/Region" dropdown
    Then Enter "1 COPLEY PKWY" in "Address Line 1" field
    Then Enter "Vienna" in "City" field
    Then Enter "Lekha" in "Bank Contact Name" field
    Then Enter phone number "9876543210" in "Bank Contact Number" field
    Then Enter "567564" in "Bank Key" field under "Bank Account Information" for Bank Details
    Then Enter "GB29NWBK60161331926819" in "IBAN" field under "Bank Account Information" for Bank Details
    Then Enter "Testing" in Bank Desciption
    Then Select "Euro" in "Currency" css dropdown
    Then Wait for 5 seconds
    Then Select "Bank statement" in "Evidence Type" dropdown in bank account
    Then Click "Upload" button
    Then Upload "PDF" under "Upload Document"
    #Then Upload "PDF" under "Upload Document" for Bank Account
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
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button
    Then Wait for 10 seconds
    And Logout from the system
    #Onboard process
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    And Click "Go to details" button
    And Scroll the page
    And Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    And Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
    And Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #Then Click "Submit" button 2
    #Then Click on Submit button on my supplier
    And Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    Then Switch to the active window
    #Then Click on the Submit button for submitting questionaire
    And Switch to the parent window
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
    And Wait for 3 seconds
    ###USL Search
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    #Then Click on No for First question
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
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    And Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #Then Click on No for First question
    And Wait for 3 seconds
    When Click on the Submit button in DPL Search
    And Click Submit button in DPL Search
    And Wait for 3 seconds
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
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
    And Wait for 3 seconds
    ###Export/Import Compliance
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    And Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    And Click "No" for the First Question
    And Click "No" for the Second Question
    And Click "No" for the Third Question
    # Then Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    And Click on the Submit button for submitting questionaire
    #Then Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    And Switch to the active window
    And Switch to the parent window
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
    And Wait for 10 seconds
    #approvals
    When Click on the "USL Search" under Approval Source
    And Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 10 seconds
    #Buyer Internal assessment
    When Click on "Buyer Internal assessment" in Approval Source "1"
    Then Wait for 5 seconds
    When Click on the Approve button
    Then Enter the Notes
    And Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    And Navigate back to supplier
    And Wait for 5 seconds
    ##DPL Search
    Then Click on "DPL Search" in Approval Source "1"
    Then Wait for 5 seconds
    Then Click on the Approve button
    Then Enter the Notes
    Then Enter the Notes under the Notes Box
    Then Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    ##D&B - Supplier Risk Assessment...
    #Then Click on "D&B - Supplier Risk Assessment..." in Approval Source "1"
    #Then Wait for 5 seconds
    #When Click on the Approve button
    #Then Enter the Notes
    #Then Enter the Notes under the Notes Box
    #When Click Approve button
    #Then Wait for 3 seconds
    #And Navigate back to supplier
    #And Wait for 5 seconds
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    And Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    And Verify the Status as Onboarded
    Then Logout from the system
    #login to supplier
    And Enter same supplier email in Email Address
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    #edit Basic info
    #Add Bank account
    Then Click "Bank Account" tab
    Then Click on "Add a Bank Account" button
    Then Enter "UK BOAA" in "Bank Account Label" field
    #Then Enter "UK CAA" in "Account Holder Name" field
    Then Click "Update" button
    Then Wait for 5 seconds
    When Click on Review & publish button
    And Click on Review and publish profile button in the review and Publish tab
    And Click on the publish button for lifecycle updates review
    Then Wait for 10 seconds
    Then Logout from the system
    #Verify Version History
    Then Enter data in Email Address field
    When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on the Search by supplier name and press Enter
    And Wait for 3 seconds
    And Click "Version History" button
    And Wait for 5 seconds
    #Verify Republished values
    #Verify Republished values
    Then Verify field name "Banking Info" is displaying in Version History tab at "1"
    #Verify Onboarded values
    And Verify Onboadred value for "Banking Info" field is "UK BOA" at "2"
    #Verify Republished values
    And Verify Republished value for "Banking Info" field is "UK BOAA" at "3"
    And Wait for 3 seconds
    Then Logout from the system
