Feature: Downlaod Questionnairs

  #DownloadQuesionnairs
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    
@Smoke @DownloadQuesionnairs @Buyer @TYSFunctionality @SanitySuiteCheck @SanityCheck
 Scenario: I am able to download questionnaires on Supplier wider screen
  When Enter Redhat buyer in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Wait for 8 seconds
    And Click on Go to my suppliers on Dashboard page "true"
    Then Wait for 3 seconds
    And Enter "AntiBriberyInc" Supplier in Search field
    And Wait for 8 seconds
    Then User can able to see Supplier name in search results
    Then Wait for 5 seconds
    When User click on the Supplier name in search results
    And Wait for 5 seconds
    When Click on Go to details button on Supplier Synopsis view page
    And Wait for 5 seconds
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1990" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    When Download AntiBribery and AntiCorruption Question on Supplier Wider screen
    And Wait for 10 seconds    
    Then Logout from the system   

  @Smoke @DownloadQuesionnairs @Buyer @TYSFunctionality
  Scenario: Verify Download All button funclitionality in Buyer account
    When Enter EmailAdress in Email Address field "autobuyer@maildrop.cc"
    #When Click on Continue button on Login page
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
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    #Then Show "Diversity" questionnaire in supplier profile
    Then Show "Automation" QG in supplier profile
    Then Wait for 3 seconds
    
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    
    Then Wait for 5 seconds
    #Verify mailinator Email
		#Then Click on the email with subject "Trust Your Supplier"
    #Then Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
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
    #Then Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #Then Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
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
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
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
    Then Wait for 25 seconds
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
    Then Select "Privately Owned" value from Business type dropdown
    
    Then Scroll to view "Legal Business Name" field
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Enter phone number "14353466456210" in "Phone Number" field
    Then Scroll to the top of the page
    Then click on the calandar icon
    Then select date "1" from the date
    Then Verify "June" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    #Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    Then click on the radio button "No" in additional information
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    Then Click "Save and Continue" button 3
     Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
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
    #answer questionare
    
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    Then Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    #Then Enter the Notes under notes for buyer Notes Box at "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    #Then Enter the Notes under notes for buyer Notes Box at "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    #Then Enter the Notes under notes for buyer Notes Box at "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    #Then Enter the Notes under notes for buyer Notes Box at "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    #Then Enter the Notes under notes for buyer Notes Box at "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    #When click on "No" for question "Does your company have an AML Policy covering Anti-Money Laundering, Financial Crime and Fraud" in question "8"
    #Then Enter the Notes under notes for buyer Notes Box at "6"
    Then Wait for 10 seconds
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
    Then Close TYS tab
    Given Open the login page
    When Wait 10 seconds
    Then Enter data in Email Address field
    #Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    #Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on the first supplier on Connected Supplier
    And Click "Go to details" button
    Then User can see the title under Profile on Supplier Wider screen
    And Wait for 2 seconds
    And Scroll Down until "1980" dimension on the page
    Then User can see Questionnaires label on Supplier Wider screen
    When Download AntiBribery and AntiCorruption Questionnaire on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Wait for 10 seconds
    And Download Questionnaires on Supplier Wider screen
    And Wait for 10 seconds
    And Switch to the active window
    And Click on Download down arrow on Supplier Wider screen
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Wait for 2 seconds
    Then Logout from the system

  @Smoke @DownloadQuesionnairs @Supplier @TYSFunctionality
  Scenario: Verify Download All button funclitionality in Supplier account
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    And Click on My Suppliers Tab
    And Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    And Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
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
    And Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    And Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    And Enter "TestCity" in "City" field after "Albania" supplier registration
    And Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    And Select "Alabama" in "State" dropdown
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
    Then Wait for 5 seconds
    When Click "Basic Information" tab
    And click on the calandar icon
    Then Wait for 5 seconds
    Then select date "3" from the date
    And Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    And Enter " testUAT" text in the discription text box
    And Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    And Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    And Select "Privately Owned" value from Business type dropdown
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
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Click on Find ID button
    #Then Click on Not a suitable match
    Then Wait for 15 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    Then Click on Find ID button
    Then Wait for 10 seconds
    #Then Click on Not a suitable match
    Then Click on at "Next Step" button
    Then Wait for 10 seconds
    Then Click on Assign "1" button
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
    When Wait 10 seconds
    Then Switch to the parent window
    Then Click "Your Profile" tab
    And Wait for 5 seconds
    Then Click on Questionnaires Nav link
    Then Wait for 5 seconds
    When Click on Published tab
    When Download AntiBribery and AntiCorruption Questionnaire on Supplier profile
    And Wait for 10 seconds
    And Switch to the active window
    And Click "Download All" button
    And Download Questionnaires on Supplier Wider screen
    And Click Back button
    And Wait for 10 seconds
    And Switch to the active window
    And Wait for 2 seconds
    And Download Questionnaires with Response on Supplier Wider screen
    And Click Back button
    And Click "Download All" button
    And Wait for 2 seconds
    Then Logout from the system