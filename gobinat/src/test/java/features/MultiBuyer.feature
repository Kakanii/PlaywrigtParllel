Feature: Multi Buyer
  #MultiBuyer

  # Nokia and IBM Buyer usrstrators
  Background: Start the application
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window
    
    

	 @Smoke @Supplier @MultiBuyer @TYSFunctionality @SanityCheck
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
       #Then Verify "Automation" status is "Accepted Invite"
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Verify "Nokia" status is "Pending Invite"
    
    Then Switch to the parent window
    Then Logout from the system


	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with ready for review onward status with the other buyer (Registered email address)

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    ##When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    Then Logout from the system

	

	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer (Registered email address)

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director , 2002" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
	
	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Profile Complete onward status with the other buyer (Registered email address)

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #assign
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 5 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Pending Questionnaires"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Profile Complete"
    Then Wait for 3 seconds
    Then Logout from the system
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
   	#answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
		Then Logout from the system
	
	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with the both buyer Onboard onward status (Registered email address)

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
		
		#maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
   
    #Verify status from buyer side
    When Click on My Buyers Nav link
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Nokia Corporation" status is "Accepted Invite"
    Then Switch to the parent window
   	Then Logout from the system
		
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on Businessname
    Then Wait for 5 seconds
    When Click "Proceed with Selection" button
    #select USA from teh dropdown
    #Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #second buyer registration
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on Link "Connect Now" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
    
    
    #Verify status from buyer side
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    When Click on "Nokia Corporation" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    When Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Accepted Invite"
    
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    #Then Verify "Auto User" status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    Then Logout from the system
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
  	#on board process for Nokia
  	
  	Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "SIF (Nokia Supplier Pre-Qualification) Applicability Check" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
    
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    #Then Verify "Auto User" status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Onboarded"
    Then Switch to the parent window
    Then Wait for 5 seconds
		Then Logout from the system
	
	
		@Smoke @Supplier @MultiBuyer @TYSFunctionality @HotfixCheckkk
        Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer from Discovarable Supplier

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
    #When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 1 seconds
    #When Click "Cancel" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    #invite a same supplier from nokia buyer
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 10 seconds
    When Click on Discover tab
    Then Wait for 10 seconds
    When Click on "TYS Discover" tab for "TYS Discover"
    Then Wait for 10 seconds
    #Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    #When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    Then Wait for 5 seconds
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
	
		@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with ready for review onward status with the other buyer from discover supplier(Registered email address)
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer from discoverable supplier(Registered email address)

	Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
		#Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    @Smoke @Supplier @MultiBuyer
    Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer from discover supplier (Registered email address)
	
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
		#Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
  	@Smoke @Supplier @MultiBuyer
 		 Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Profile Complete onward status with the other buyer from discover supplier (Registered email address)
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #assign
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 5 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Pending Questionnaires"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Profile Complete"
    Then Wait for 3 seconds
    Then Logout from the system
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
   	#answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
		Then Logout from the system
    
    @Smoke @Supplier @MultiBuyer
    Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with the both buyer Onboard onward status from discover supplier (Registered email address)
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
		
		#maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
   
    #Verify status from buyer side
    When Click on My Buyers Nav link
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Nokia Corporation" status is "Accepted Invite"
    Then Switch to the parent window
   	Then Logout from the system
		
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click on close questionnare button on Discover Supplier window
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    When Click on link "CONNECT NOW" from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
    
    
    #Verify status from buyer side
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    When Click on "Nokia Corporation" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    When Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Accepted Invite"
    
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    #Then Verify "Auto User" status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    Then Logout from the system
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
  	#on board process for Nokia
  	
  	Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "SIF (Nokia Supplier Pre-Qualification) Applicability Check" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
    
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    #Then Verify "Auto User" status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Onboarded"
    Then Switch to the parent window
    Then Wait for 5 seconds
		Then Logout from the system
    
    
    @Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with pending invites status with the other buyer from Discovarable Supplier(UnRegistered email address)

    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop 
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    Then Logout from the system
    
    
    @Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with ready for review onward status with the other buyer from discover supplier(UnRegistered email address)
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
	@Smoke @Supplier @MultiBuyer
		Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer from discoverable supplier(UnRegistered email address)

	Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    
     Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
		#Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    @Smoke @Supplier @MultiBuyer
    Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Onboard onward status with the other buyer from discover supplier (UnRegistered email address)
	
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 5 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Wait for 3 seconds
    Then Logout from the system
	
		#Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
  	@Smoke @Supplier @MultiBuyer
 		 Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with Profile Complete onward status with the other buyer from discover supplier (UnRegistered email address)
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #with questionare
    When Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    When Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #assign
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
    Then Logout from the system
    
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
     
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    #Basic info page
    When Click "Basic Information" tab
    
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 5 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    Then Wait for 10 seconds
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Pending Questionnaires"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Verify status from buyers side
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    Then Wait for 3 seconds
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then verify the status as "Profile Complete"
    Then Wait for 3 seconds
    Then Logout from the system
    
    #login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
   	#answer questionare
    When Click on Questionnaires Nav link
    Then Wait for 5 seconds
    When Click on button "Begin Questionnaire" for questionare
    Then Wait for 5 seconds
    When click on "No" for question "Do you have a policy covering Diversity & Equal Opportunities" in question "1"
    When click on "No" for question "Does your company have any specific Diversity & Inclusion Commitments?" in question "2"
    When click on "No" for question "Does your company track progress against these Diversity & Inclusion goals/commitments?" in question "3"
    When click on "No" for question "Do you communicate and train all of your people and suppliers on these policies?" in question "4"
    When click on "No" for question "Does your company track and report the amount/proportion of spend with Diversity & Inclusion suppliers?" in question "5"
    When click on "No" for question "Does your company have any Diversity & Inclusion requirements for Tier 1 and 2 suppliers or subcontractors?" in question "6"
    When click on "No" for question "Are there any comments you wish to make about your Diversity policy and procedures" in question "7"
    When Click on button "Publish Questionnaire" for questionare
    Then Wait for 10 seconds
    When Click on button Publish for questionare
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    Then Logout from the system
    
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
		Then Logout from the system
    
    @Smoke @Supplier @MultiBuyer
    Scenario: As a Buyer, I should able to send an invite to the supplier which is exists in the network with the both buyer Onboard onward status from discover supplier (UnRegistered email address)
    
    Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    When Click on the enter
    When Click on the IgnoreAndProceed button
    #select USA from teh dropdown
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    #Then Enter Contact Email Address on Invite Supplier window
    #Then Enter Confirm Contact Email Address on Invite Supplier window
    #maildrop
    Then Enter Contact Email Address on Invite Supplier window from maildrop
    Then Enter Confirm Contact Email Address on Invite Supplier window from maildrop
    
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    When Click on Next button on Invite Supplier window
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    Then Wait for 3 seconds
    When Click on the Skip
    #invite without questionare
    When Click on the Click here on Questionnaire page
    When Click on the Clear All Link on Assign Questionnaires window
    When Click on Assign button on Assign Questionnaires window
    When Click on the Confirm on Confirmation Needed
    When Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    When Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Wait for 5 seconds
    #verify inviter supplier with status
    When Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Logout from the system
		#Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
		
		#maildrop
    When Click on the email with subject "IBM is inviting you to join Trust Your Supplier" from maildrop
    When Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    
    #Enter data
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    When Click TYS Terms & Conditions checkbox
    When Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    #maildrop
    When Click on refresh button
		Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    #When Click on back to inbox link
    #Then Show Email with subject "Trust Your Supplier Verification Code"
    #When Click on the email with subject "Trust Your Supplier Verification Code"
    #Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Albania" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Albania" supplier registration
    Then Enter "TestCity" in "City" field after "Albania" supplier registration
    Then Enter "767676767" in "Zip Code" field after "Albania" supplier registration
    Then Select "Alabama" in "State" dropdown
    When Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    When Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    When Click "Invite" button
    Then Wait for 5 seconds
    When Click accept IBM registration checkbox
    When Click "Finish" button
    Then Wait for 5 seconds
    When Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    When Click on Do it later button
    Then Wait for 5 seconds
   
    #Verify status from buyer side
    When Click on My Buyers Nav link
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Nokia Corporation" status is "Accepted Invite"
    Then Switch to the parent window
   	Then Logout from the system
		
    #invite a same supplier from nokia buyer
    
    Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    #When Click on My Suppliers Tab
   	When Click on Discover tab
    Then Switch to the new window
    When Click on the Search by Supplier Company Name text box
    When Enter same Supplier Company Name on Discover Supplier modal
    When Click on the enter
    Then Wait for 5 seconds
    When Click on supplier compnay name from discover modal
    Then Wait for 5 seconds
    When Click "Connect with this Supplier" button
    Then Wait for 3 seconds
    Then Enter Unregistered Email Address on Invite Supplier window from maildrop
    Then Enter Unregistered confirm Email Address on Invite Supplier window from maildrop
    Then Enter "First Name" in Contact "First Name" on Discover Supplier window
    Then Enter "Last Name" in Contact "Last Name" on Discover Supplier window
    
    When Click "Next" button
    Then Wait for 3 seconds
    When Click on close questionnare button on Discover Supplier window
    Then Wait for 3 seconds
    When Click "Next" button
    Then Wait for 3 seconds
    When Click "Connect with Supplier" button
    
    Then Wait for 3 seconds
    Then Logout from the system
    
    Then Verify received an un registered email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    #Then Verify received an email in supplier maildrop Inbox with subject "Nokia Corporation wants to connect with you on Trust Your Supplier"
    Then Wait for 5 seconds
    #Verify mailinator Email
		#When Click on the email with subject "Trust Your Supplier"
    #When Click on Join Now Link in the "Argentina" supplier Email
    #Then Wait for 3 seconds
    #Then Switch to the active window
    #maildrop
    When Click on the email with subject "Nokia Corporation wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on the email with subject "Nokia wants to connect with you on Trust Your Supplier" from maildrop
    #When Click on link "CONNECT NOW" from maildrop
    When Click on link REGISTER AND CONNECT NOW from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter password in Password field
    Then Enter password in Confirm Password field
    When Click TYS Terms & Conditions checkbox
    When Click "Continue" button
    Then Switch to "Maildrop" tab
    When Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    When Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop 
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    When Click "Submit" button
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Pending Invite"
    Then Switch to the parent window
    
    When Click on "Nokia Corporation" buyer button
    Then Wait for 5 seconds
    When Click "Actions" button
    Then Wait for 3 seconds
    When Click "Accept Invitation" button
    When Click accept buyer terms checkbox
    Then Wait for 2 seconds
    When Click "Next" button
    Then Enter the Notes under the accepth buyer Notes Box
    When Click on Accept button for buyer
    Then Verify toast message "You are now connected with Nokia Corporation. Please proceed to review any new questionnaires assigned by this new connection." successfully is shown
    #Verify status
    Then Wait for 3 seconds
    When Click on Close icon for buyer
    When Click on My Buyers Nav link
    Then Verify IBM status is "Accepted Invite"
    #Then Verify "Auto User" status is "Accepted Invite"
    Then Verify "Nokia Corporation" status is "Accepted Invite"
    
    Then Switch to the parent window
    
    
    #Basic info page
    When Click "Basic Information" tab
    Then Wait for 5 seconds
    When click on the calandar icon
    Then select date "1" from the date
    Then Verify "August" month is listed under "Starting month of the fiscal year" calandar dropdown
    Then Enter " testUAT" text in the discription text box
    Then Enter random EIN number in "Employer Identification Number (EIN)" field under "Tax Details"
    
    Then Scroll to view "Legal Business Name" field
    When Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    When Click on the Confirm button.
    Then Show attached document under "Tax Registration Document" "samplePDF.pdf"
    Then Select "Privately Owned" value from Business type dropdown
    Then Enter "123456789" in "D-U-N-S Number" field under "Tax Details"
    Then Enter number "1546457457547455" in "Phone Number" in corporation details
    #Then Scroll to the top of the page    
    Then Enter number "1435346645645645" in "Fax Number" in corporation details
    Then Enter company email "dsgse@test.com" in email field
    Then Enter website "www.dsgsetest.com" in website field
    #When Click on the radio button "No" in additional information
    When Click "No" radio under "Are you publicly traded on a stock exchange?"
    Then Enter the value "5" at Number of Full Time Employees on the Basic information page
    Then Enter the value "5" at Number of Temporary and Contracted Employees on the Basic information page
    Then Select "11111 - Soybean Farming T" from the "NAICS" dropdown
    When Click "Save and Continue" button 3
    Then Select "Corporation" value from Business type dropdown
    When Click "Save and Continue" button 3
    Then Wait for 15 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    Then Wait for 10 seconds
    When Click on Find ID button
    Then Wait for 3 seconds
    When Click on Not a suitable match
    When Click on at "Next Step" button
    Then Wait for 10 seconds
    When Click on Assign "1" button
    Then Select the option "First Name Last Name - Director" on the Assign a Contact to Management Team modal
    Then Select the "2002" year from the drop down
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
    When Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Wait for 10 seconds
    Then Select the option "First Name Last Name - Director" for Ownership on the Add a new Individual modal
    Then Enter the value "50" percentage at the Ownership Percentage
    When Click on the save new individual owner button on the modal
    Then Wait for 10 seconds
    When Click on Corporation Relations button
    When Click on Corporaion NO radio button
    When Click on the Save and Continue button
    When Click on Review and publish profile button in the review and Publish tab
    When Click on the publish button
    Then Wait for 10 seconds
    #Verify status
    When Click on My Buyers Nav link
    Then Verify IBM status is "Awaiting Review"
    #Then Verify "Auto User" status is "Awaiting Review"
    Then Verify "Nokia Corporation" status is "Awaiting Review"
    Then Switch to the parent window
    Then Logout from the system
    #Onboard process
		Then Enter data in Email Address field
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    #### PIF Indicator
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    When Click on the NO for First question in PIF Indicator
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###USL Search
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###S&EMS Record created
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    Then Enter the "Sample" for Second question in S&EMS Record created
    #When Click on No for First question
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Buyer Internal assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 3 seconds
    When Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    And Enter "01/02/2021" in Expiry Date field
    And add label as "VATDOCUMENT"
    When Click on the Confirm button.
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###RBA/EICC Contract
    And Refresh the current webpage
    And Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Enter the "Sample" for Second question in RBA/EICC Contract
    Then Wait for 3 seconds
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 3 seconds
    ###Export/Import Compliance
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    When Click "No" for the First Question
    When Click "No" for the Second Question
    When Click "No" for the Third Question
    # When Click on the NO for First question
    Then Wait for 5 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    ###Pre Invite Assessment
    Then Refresh the current webpage
    Then Wait for 5 seconds
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 5 seconds
    When Click on "Begin" button at the "Pre Invite Assessment" Internal Due Diligence Questionnaires
    When Click on the YES for First question
    Then Wait for 3 seconds
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    Then Wait for 3 seconds
    When Click on the Submit
    When Click on the Submit button for submitting questionaire
    #When Click on the Submit button in DPL Search
    #And Click Submit button in DPL Search
    Then Wait for 3 seconds
    Then Switch to the active window
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    #custom fields before Onboard
    
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 5 seconds
    
    #dropdowns
    Then Select value "Global Logistics (GLP)" from "supplierCategory" 
    Then Wait for 5 seconds
    Then Select text "Facility Site Services" under "Supplier Category (Commodity Family)" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "EMEA" under "IBM Region" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "BENELUX" under "IBM Market" for Custom Fields
    Then Wait for 3 seconds
    When Click radio button "No" under "Is this a PIF Supplier?" for Custom fields
    Then Select text "Albania" under "IBM Country & ISO Code" for Custom Fields
    Then Wait for 3 seconds
    Then Select text "Blocked Supplier" under "Additional Supplier Label" for Custom Fields
    
    When Click on "Save Changes" button under Custom Fields
    Then Wait for 10 seconds
    #approvals
    When Click on the USL Search under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    
    When Click on the "Buyer Internal assessment" under Approval Source
    Then Wait for 5 seconds
    When Click on the Approve button
    #Then Enter the Notes
    Then Enter the Notes under the Notes Box
    When Click Approve button
    Then Wait for 3 seconds
    Then Navigate back to supplier
    Then Wait for 10 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
  
  	#on board process for Nokia
  	
  	Then Enter data in Email Address field for nokia buyer
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login
    When Click on My Suppliers Tab
    When Click on the Search by supplier name and press Enter
    Then Wait for 3 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    When Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    When Click on "Begin" button at the "SIF (Nokia Supplier Pre-Qualification) Applicability Check" Internal Due Diligence Questionnaires
    When Click on the NO for First question
    #When Click on No for First question
    When Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Enter "01/02/2021" in Expiry Date field
    Then add label as "VATDOCUMENT"
    When Click on the Confirm button.
    #When Click "Submit" button 2
    #When Click on Submit button on my supplier
    When Click on the Submit button in DPL Search
    When Click Submit button in DPL Search
    Then Switch to the active window
    #When Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Wait for 3 seconds
    
    When Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    When Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify the Status as Onboarded
    Then Logout from the system
    
		#login to supplier
    Then Enter same supplier email in Email Address
    #When Click on Continue button on Login page
    Then Enter data in Password field
    When Click on Sign In button on Login 
    Then Wait for 5 seconds
     
    When Click on My Buyers Nav link
    Then Verify IBM status is "Onboarded"
    #Then Verify "Auto User" status is "Onboarded"
    Then Verify "Nokia Corporation" status is "Onboarded"
    Then Switch to the parent window
    Then Wait for 5 seconds
		Then Logout from the system
    