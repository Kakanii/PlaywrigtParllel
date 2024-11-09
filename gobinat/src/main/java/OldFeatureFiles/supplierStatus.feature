Feature: Supplier Status page

  #MySuppliers
  # @Supplierstatus MySuppliersearch
  Background: Login as supplier
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  # Pending Invites
  @Smoke @CDCI @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Pending Invite
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Select "Puerto Rico" in "Supplier Country of Registration" dropdown
    Then Enter "PuertoRico" Supplier Company name on Invite Supplier window
    Then Enter "PuertoRico" Supplier Contact email address on Invite Supplier modal
    Then Enter "PuertoRico" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on yes radiobutton
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Click on User dropdown on My Suppliers page
    Then Enter "PuertoRico" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Pending Invites"
    Then Logout from the system

  # Accepted Invite
  @Smoke @CDCI @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Accepted Invite
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter "US" Supplier Company name on Invite Supplier window
    Then Enter "US" Supplier Contact email address on Invite Supplier modal
    Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on "Next" button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Logout from the system
    Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "US" supplier Email
    #Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Select "Alabama" in "State" dropdown
    Then Enter value "123456789" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Scroll to view "First Name" field
    Then Enter "secondary" in "First Name" field
    Then Enter "admin" in "Last Name" field
    Then Enter Email on Invite a user registration modal "admin"
    Then Enter Confirmation Email on Invite a user registration modal "admin"
    Then Click "Invite" button
    Then Wait for 3 seconds
    #Then Scroll to view "First Name" field
    # Then Enter "Director" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "director"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "US" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Accepted"
    Then Logout from the system
    Then Login with the "US" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Accepted Invite" buyer
    Then Logout from the system

  #ReadyForReview
  @Smoke @CDCI @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as ReadyForReview
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Argentina" Supplier Company name on Invite Supplier window
    Then Select "Argentina" in "Supplier Country of Registration" dropdown
    Then Enter "Argentina" Supplier Contact email address on Invite Supplier modal
    Then Enter "Argentina" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Click "No" radio button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify Email received in "Argentina" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "Argentina" supplier Email
    Then Switch to the active window
    ###Then Select "Argentina" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code"
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "AL1" in "Address Line 1" field after "Argentina" supplier registration
    Then Enter "Sydney" in "City" field
    Then Select "Buenos Aires" in "Region" dropdown
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
    #Then Enter "Dir" in "First Name" field
    #Then Enter "sales" in "Last Name" field
    #Then Enter "DOS" in "Job Title" field
    #Then Enter Email on Invite a user registration modal "director"
    #Then Enter phone number "9876543210" in "Phone Number" field
    #Then Select "Domestic Headquarters - AL1" in "Locations" dropdown
    #Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 11 digit numeric data in "CUIT/Tax Number" field under "Tax Details"
    Then Enter 20 digit alpha numeric data in "Company Registration Number" field under "Tax Details"
    Then Click "Upload VAT Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 2
    Then Click "Upload Certification of Incorporation" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 2
    Then Select "Corporation" in "Business Type" dropdown under "Tax Details"
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 15 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - AL1" in "Locations" dropdown
    Then Click "Save Contact" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on "Next" button
    #Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    
    Then Logout from the system
    Then Close TYS tab
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Argentina" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Switch to the parent window
    Then Logout from the system
    Then Wait for 5 seconds
    Then Login with the "Argentina" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Awaiting Review" buyer
    Then Logout from the system

  #Returned to Supplier
  @Smoke @CDCI @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Returned to Supplier
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "Brazil" Supplier Company name on Invite Supplier window
    Then Select "Brazil" in "Supplier Country of Registration" dropdown
    Then Enter "Brazil" Supplier Contact email address on Invite Supplier modal
    Then Enter "Brazil" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on "Next" button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Brazil" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "Brazil" supplier Email
    Then Switch to the active window
    ###Then Select "Brazil" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code"
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Implicitly wait for 120 seconds
    Then Login again with new "Austria" supplier if session timed out
    Then Wait for 10 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "12345678" in "Postal Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "Dir"
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    #Then Switch to the active window
    ##Then Click on Do it later button
    Then Switch to the parent window
    
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 14 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 2
    Then Select "Consortium" in "Business Type" dropdown under "Tax Details"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on "Next" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    #Then Click on "Review and Publish Profile" button
    #Then Wait for 5 seconds
    #Then Switch to the active window
    #Then Click on the publish button
    #Then Switch to the parent window
    #Then Wait for 10 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #Then Switch to the parent window
    #Supplier should publish the questionnaire
    Then Wait for 5 seconds
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Wait for 5 seconds
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    ###Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Wait for 10 seconds
    Then Select Country for Company Operations Second question
    Then Enter value at text area for Question
    Then Click on Yes for Company Operations Third question
    Then Click "Yes" for Question "3"
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    ###Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Wait for 5 seconds
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click "Review & Publish" tab
    Then Click on "Review and Publish Profile" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Brazil" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    #Then Click on Actions button on reading panel
    #Then Select "Return to Supplier" from Actions options
    Then Click on "Return to Supplier" button on panel
    Then Switch to the active window
    Then Enter notes on the return to supplier modal
    Then upload the file at the Attach a file button on the return to supplier modal
    Then Enter a Reason for Return on the return to supplier modal
    Then Click on "Confirm Return to Supplier" primary button on the modal
    Then Wait for 3 seconds
    #Then Show Toast message "International Business Machines Corporation has updated "
    Then Switch to the parent window
    # Then Click on Close icon on the reading panel
    # Then Switch to the active window
    # Then Scroll the page
    # Then Click on the Clear the Filter
    # Then Switch to the parent window
    # Verify status return to supplier
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    #Then Click on the Clear the Filter
    Then Click on User dropdown on My Suppliers page
    Then Enter "Brazil" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "Brazil" supplier status "Supplier Action Required"
    Then Logout from the system
    Then Login with the "Brazil" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Returned For Action" buyer
    Then Logout from the system
    Then Close TYS tab
    Then Switch to "Mailinator" tab

  #Profile Complete
  @Smoke @CDCI @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Profile Complete
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "Brazil" Supplier Company name on Invite Supplier window
    Then Select "Brazil" in "Supplier Country of Registration" dropdown
    Then Enter "Brazil" Supplier Contact email address on Invite Supplier modal
    Then Enter "Brazil" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on "Next" button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Brazil" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "Brazil" supplier Email
    Then Switch to the active window
    ###Then Select "Brazil" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code"
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Implicitly wait for 120 seconds
    Then Login again with new "Austria" supplier if session timed out
    Then Wait for 10 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "12345678" in "Postal Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "Dir"
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 14 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 2
    Then Select "Consortium" in "Business Type" dropdown under "Tax Details"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on "Next" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Switch to the parent window
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    
    Then Logout from the system
    Then Close TYS tab
    Then Switch to "Mailinator" tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Brazil" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    Then Login with the "Brazil" supplier created
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Buyers Nav link
    Then verify the status as "Pending Questionnaires" buyer
    Then Logout from the system

  #Onboarded
  ##@Smoke @CDCI @Onboard @SupplierStatus @Sanity
  Scenario: As a Buyer, I should able to send an invite to the supplier and Verify the status as Onboarded
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on "Invite Supplier" button
    Then Switch to the new window
    Then Enter "Brazil" Supplier Company name on Invite Supplier window
    Then Select "Brazil" in "Supplier Country of Registration" dropdown
    Then Enter "Brazil" Supplier Contact email address on Invite Supplier modal
    Then Enter "Brazil" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click "Yes" radio button
    Then Deselect all QGs from the Questinnaire Group
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on "Next" button
    Then Click on "Next" button
    Then Click on Send Invite button on Invite Supplier Confirmation window
    #Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Brazil" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "Brazil" supplier Email
    Then Switch to the active window
    ###Then Select "Brazil" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Show Email with subject "Trust Your Supplier Verification Code"
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Implicitly wait for 120 seconds
    Then Login again with new "Austria" supplier if session timed out
    Then Wait for 10 seconds
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Sydney" in "City" field
    Then Enter "12345678" in "Postal Code" field
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
    # Then Enter "Dir" in "First Name" field
    # Then Enter "sales" in "Last Name" field
    # Then Enter "DOS" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "Dir"
    # Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 20 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    
    Then Click "Basic Information" tab
    Then Enter "1/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Enter 14 digit numeric data in "Tax Identification Number" field under "Tax Details"
    Then Click "Upload Tax Registration Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 2
    Then Select "Consortium" in "Business Type" dropdown under "Tax Details"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 3
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click on the next step button
    Then Click on "Next Step" button
    Then Click on "Add a New Contact" button
    Then Enter "Dir" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Enter timestamp in "Email ID" field "supplier@mailinator.com"
    Then Select "Domestic Headquarters - Ausi Mansion" in "Locations" dropdown
    Then Click "Save Contact" button
    Then Wait for 5 seconds
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "CFO or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Dir sales - DOS" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Dir sales - DOS , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click No radio button for CorpRelations
    Then Click on "Next" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    #Then Click on "Review and Publish Profile" button
    #Then Switch to the active window
    #Then Click on the publish button
    #Then Switch to the parent window
    #Then Wait for 10 seconds
    #Then Switch to the active window
    #Then Click on Do it later button
    #Then Switch to the parent window
    #Supplier should publish the questionnaire
    Then Wait for 5 seconds
    Then Click "Questionnaires" tab
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Trade Compliance" Questionnaires
    Then Wait for 5 seconds
    Then Click on Yes for trade Compliance First question
    Then Click on No for trade Compliance Second question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    ###Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Company Operations" Questionnaires
    Then Wait for 10 seconds
    Then Enter value at text area for Question
    Then Select Country for Company Operations Second question
    Then Click on Yes for Company Operations Third question
    Then Click "Yes" for Question "3"
    Then Click on No for Company Operations Fourth question
    Then Click on No for Company Operations Fivth question
    Then Click "No" for Question "6"
    Then Switch to the active window
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Click on the publish button for publishing
    ###Then Close toast message
    Then Switch to the parent window
    Then Wait for 5 seconds
    Then Click on "Begin Questionnaire" buton at the "Import Export Compliance - IBM" Questionnaires
    Then Wait for 5 seconds
    Then Select the Yes answer Radio button at Import Export Compliance Question
    Then Click on Publish Questionnaire button on questionaire acceptance page
    Then Switch to the active window
    Then Click on the publish button for publishing
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Click "Review & Publish" tab
    Then Click on "Review and Publish Profile" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the parent window
    Then Wait for 10 seconds
    
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Brazil" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Ready for Review"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    Then Show Toast message "Cannot onboard Supplier as all Checklist not yet answered."
    ###IDD
    Then Wait for 5 seconds
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "PIF Indicator" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Submit" button 2
    ###Then Click on Submit button on my supplier
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "DPL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "USL Search" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Switch to the active window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "RBA/EICC Contract" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Attach Document" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "S&EMS Record created" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Buyer Internal assessment" Internal Due Diligence Questionnaires
    Then Click on No for First question
    Then Enter value at text area for Question
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Action Center" Tab on panel
    Then Scroll the page
    Then Wait for 5 seconds
    Then Click on "Begin" button at the "Export/Import Compliance" Internal Due Diligence Questionnaires
    Then Click "No" for Question "1"
    Then Click "No" for Question "2"
    Then Click "No" for Question "3"
    Then Scroll the page
    Then Click "Submit" button 2
    Then Switch to the active window
    Then Click on the Submit button for submitting questionaire
    Then Switch to the parent window
    Then Click on "Onboard Supplier" button on panel
    Then Switch to the active window
    Then Enter notes in the onboard supplier modal
    Then Upload the file for Attach a file on onboarding supplier
    Then Click "Onboard" button
    #Then Show Toast message "Cannot onboard Supplier as there are either Pending or Rejected Approval Requests"
    ###Approve request
    #Then Wait for 3 seconds
    #Then Click on "Action Center" Tab on panel
    #Then Click on ALL tab under the Approval Requests
    #Then Approve all the Request under the Approval Requests section
    #Then Click on "Onboard Supplier" button on panel
    #Then Switch to the active window
    #Then Enter notes in the onboard supplier modal
    #Then Upload the file for Attach a file on onboarding supplier
    #Then Click "Onboard" button
    Then Wait for 5 seconds
    Then Verify if the status is "Onboarded" on the supplier
    Then Switch to the parent window
    Then Logout from the system
    Then Close TYS tab
    Then Switch to "Mailinator" tab

  #  @Smoke @CDCI @Supplierstatus
  #   Scenario: As a Buyer, I should able to Decline  the supplier and Verify the status as Declined Invite
  #     Then Enter data in Email Address field
  #     Then Click on Continue button on Login page
  #     Then Enter data in Password field
  #     Then Click on Sign In button on Login
  #     Then Click on "Suppliers" Down arrow on Dashboard
  #     Then Click on My Suppliers Tab
  #     Then Click on Invite Supplier button
  #     Then Switch to the new window
  #     Then Enter "US" Supplier Company name on Invite Supplier window
  #     Then Enter "US" Supplier Contact email address on Invite Supplier modal
  #     Then Enter "US" Supplier Confirm Contact email address on Invite Supplier modal
  #     Then Enter Contact First Name on Invite Supplier window
  #     Then Enter Contact Last Name on Invite Supplier window
  #     Then Click on Next button on Invite Supplier window
  #     Then Deselect all QGs from the Questinnaire Group
  #     Then Select the "Automation" group from the Questinnaire Group drop down
  #     Then Click on Next button on Invite Supplier Confirmation window
  #     Then Click on Send Invite button on Invite Supplier Confirmation window
  #     Then Logout from the system
  #     Then Verify Email received in "US" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
  #     Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
  #     Then Click on Join Now Link in the "US" supplier Email
  #     #Then Switch to "new TYS" tab
  #     Then Switch to the active window
  #     Then Click on Declined
  #     Then Switch to "new TYS" tab
  #     Then Switch to the active window
  #     Then Enter reason for return
  #     Then Click "Submit" button
  #     Then Wait for 3 seconds
  #     Then Close TYS tab
  #     Given Start the application
  #     When Click on Sign In button
  #     Then Close the hotjar window
  #     Then Enter data in Email Address field
  #     Then Click on Continue button on Login page
  #     Then Enter data in Password field
  #     Then Click on Sign In button on Login
  #     Then Click on "Suppliers" Down arrow on Dashboard
  #     Then Click on My Suppliers Tab
  #     Then Click on User dropdown on My Suppliers page
  #     Then Enter "US" Supplier email address in "Invitee Email" field
  #     Then Click on Apply button in User dropdown
  #     Then verify the status as "Declined Invite"
  #     Then Switch to the parent window
  #     Then Logout from the system
  #     Then Login with the "US" supplier created
  #     Then Click on Continue button on Login page
  #     Then Enter data in Password field
  #     Then Click on Sign In button on Login
  #     Then Click on My Buyers Nav link
  #     Then verify the status as "Declined Invite" buyer
  #     Then Logout from the system

  # Action center and profile tabs  components based on supplier status
  # Accepted Invite
  @Smoke @CDCI @SupplierStatus
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Accepted Invite" supplier status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Accepted Invites radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Accepted"
    Then Click on first record of the Search
    Then Click "View Supplier" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then Show "Liaisons" component on the reading panel
    Then Click on "Liaisons" collapse icon
    Then Show "Corporate Relationship" component on the reading panel
    Then Click on "Corporate Relationship" collapse icon
    Then Show "Questionnaires" component on the reading panel
    Then Show "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Questionnaires" collapse icon
    Then Show "Bank Accounts" component on the reading panel
    Then Click on "Bank Accounts" collapse icon
    Then Show "Supplier Questionnaire Group" component on the reading panel
    Then Click on "Supplier Questionnaire Group" collapse icon
    # Action Center
    Then Wait for 3 seconds
    Then Click on "Action Center" Tab on reading panel
    Then Show "Relationship History" component on the reading panel
    Then Click on "Relationship History" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Buyer System Details" component on the reading panel
    Then Click on "Buyer System Details" collapse icon
    Then Show "Notes" component on the reading panel
    Then Show "Add Note" button in the "Notes" component
    Then Click on "Notes" collapse icon
    #Then Show "Assigned B2B Configurations" component on the reading panel
    #Then Click on "Assigned B2B Configurations" collapse icon
    #Then Show "B2B Configurations" component on the reading panel
    #Then Show "Create B2B Configuration" button in the "B2B Configurations" component
    #Then Click on "B2B Configurations" collapse icon
    Then Logout from the system

  # ReadyForReview
  @Smoke @CDCI @SupplierStatus
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Ready for Review" supplier status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Ready For Review radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Ready for Review"
    Then Click on first record of the Search
    Then Click "View Supplier" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then Show "Overview" component on the reading panel
    Then Click on "Overview" collapse icon
    Then Show "Liaisons" component on the reading panel
    Then Click on "Liaisons" collapse icon
    Then Show "Contacts" component on the reading panel
    Then Click on "Contacts" collapse icon
    Then Show "Locations" component on the reading panel
    Then Click on "Locations" collapse icon
    Then Show "Ownership" component on the reading panel
    Then Click on "Ownership" collapse icon
    Then Show "Financial" component on the reading panel
    Then Click on "Financial" collapse icon
    #Then Show "Corporate Relationsip" component on the reading panel
    #Then Click on "Corporate Relationsip" collapse icon
    Then Show "Questionnaires" component on the reading panel
    Then Show "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Questionnaires" collapse icon
    Then Show "Documents" component on the reading panel
    Then Click on "Documents" collapse icon
    Then Show "Bank Accounts" component on the reading panel
    Then Click on "Bank Accounts" collapse icon
    Then Show "Supplier Questionnaire Group" component on the reading panel
    Then Click on "Supplier Questionnaire Group" collapse icon
    # # Installed Apps
    # Then Scroll the page
    # Then Click on "Installed Apps" Tab on reading panel
    # Then Show "Marketplace" component on the reading panel
    # Action Center
    Then Scroll the page
    Then Click on "Action Center" Tab on panel
    Then Show "Approval Requests" component on the reading panel
    Then Show "New Approval Request" button in the "Approval Requests" component
    #Then Click on "B2B Configurations" collapse icon
    Then Show "Relationship History" component on the reading panel
    Then Click on "Relationship History" collapse icon
    Then Show "Checklist Questionnaires" component on the reading panel
    Then Click on "Checklist Questionnaires" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Buyer System Details" component on the reading panel
    Then Click on "Buyer System Details" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Notes" component on the reading panel
    Then Show "Add Note" button in the "Notes" component
    Then Click on "Notes" collapse icon
    #Then Show "Assigned B2B Configurations" component on the reading panel
    #Then Click on "Assigned B2B Configurations" collapse icon
    #Then Show "B2B Configurations" component on the reading panel
    #Then Show "Create B2B Configuration" button in the "B2B Configurations" component
    #Then Click on "B2B Configurations" collapse icon
    Then Logout from the system

  #Returned to Supplier
  @Smoke @CDCI @SupplierStatus
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Returned to Supplier" supplier status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Returned to Supplier radio button
    Then Click on Apply button in Status dropdown
    #Then Show selected Supplier in search results "Returned to Supplier"
    Then Click on first record of the Search
    Then Click "View Supplier" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then Show "Overview" component on the reading panel
    Then Click on "Overview" collapse icon
    Then Show "Liaisons" component on the reading panel
    Then Click on "Liaisons" collapse icon
    Then Show "Contacts" component on the reading panel
    Then Click on "Contacts" collapse icon
    Then Show "Locations" component on the reading panel
    Then Click on "Locations" collapse icon
    Then Show "Ownership" component on the reading panel
    Then Click on "Ownership" collapse icon
    Then Show "Financial" component on the reading panel
    Then Click on "Financial" collapse icon
    #Then Show "Corporate Relationship" component on the reading panel
    #Then Click on "Corporate Relationship" collapse icon
    Then Show "Questionnaires" component on the reading panel
    Then Show "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Click on "Questionnaires" collapse icon
    Then Show "Documents" component on the reading panel
    Then Click on "Documents" collapse icon
    Then Show "Bank Accounts" component on the reading panel
    Then Click on "Bank Accounts" collapse icon
    Then Show "Supplier Questionnaire Group" component on the reading panel
    Then Click on "Supplier Questionnaire Group" collapse icon
    # # Installed Apps
    # Then Scroll the page
    # Then Click on "Installed Apps" Tab on reading panel
    # Then Show "Marketplace" component on the reading panel
    # Action Center
    Then Scroll the page
    Then Click on "Action Center" Tab on reading panel
    Then Wait for 3 seconds
    Then Show "Approval Requests" component on the reading panel
    Then Show "New Approval Request" button in the "Approval Requests" component
    Then Click on "Approval Requests" collapse icon
    Then Show "Relationship History" component on the reading panel
    Then Click on "Relationship History" collapse icon
    Then Show "Checklist Questionnaires" component on the reading panel
    Then Click on "Checklist Questionnaires" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Buyer System Details" component on the reading panel
    Then Click on "Buyer System Details" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Notes" component on the reading panel
    Then Show "Add Note" button in the "Notes" component
    Then Click on "Notes" collapse icon
    #Then Show "Assigned B2B Configurations" component on the reading panel
    #Then Click on "Assigned B2B Configurations" collapse icon
    #Then Show "B2B Configurations" component on the reading panel
    #Then Show "Create B2B Configuration" button in the "B2B Configurations" component
    #Then Click on "B2B Configurations" collapse icon
    Then Logout from the system

  #Onboarded
  @Smoke @CDCI @SupplierStatus @TYSFunctionality
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Onboarded" supplier status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Onboarded radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Onboarded"
    Then Click on first record of the Search
    Then Click "View Supplier" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then Show "Overview" component on the reading panel
    Then Click on "Overview" collapse icon
    Then Show "Liaisons" component on the reading panel
    Then Click on "Liaisons" collapse icon
    Then Show "Contacts" component on the reading panel
    Then Click on "Contacts" collapse icon
    Then Show "Locations" component on the reading panel
    Then Click on "Locations" collapse icon
    Then Show "Ownership" component on the reading panel
    Then Click on "Ownership" collapse icon
    Then Show "Financial" component on the reading panel
    Then Click on "Financial" collapse icon
    Then Show "Corporate Relationship" component on the reading panel
    Then Click on "Corporate Relationship" collapse icon
    Then Show "Questionnaires" component on the reading panel
    Then Show "Manage / Assign Questionnaires" Link in the "Questionnaires" component
    Then Show "Download All" button in the "Questionnaires" component
    Then Click on "Questionnaires" collapse icon
    Then Show "Documents" component on the reading panel
    Then Click on "Documents" collapse icon
    Then Show "Bank Accounts" component on the reading panel
    Then Click on "Bank Accounts" collapse icon
    Then Show "Supplier Questionnaire Group" component on the reading panel
    Then Click on "Supplier Questionnaire Group" collapse icon
    # # Installed Apps
    # Then Scroll the page
    # Then Click on "Installed Apps" Tab on reading panel
    # Then Wait for 3 seconds
    # Then Show "Marketplace" component on the reading panel
    # Action Center
    Then Scroll the page
    Then Click on "Action Center" Tab on panel
    Then Wait for 3 seconds
    Then Show "Approval Requests" component on the reading panel
    Then Click on "Approval Requests" collapse icon
    Then Show "Relationship History" component on the reading panel
    Then Click on "Relationship History" collapse icon
    Then Show "Checklist Questionnaires" component on the reading panel
    Then Show "Download All" button in the "Checklist Questionnaires" component
    Then Click on "Checklist Questionnaires" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Buyer System Details" component on the reading panel
    Then Click on "Buyer System Details" collapse icon
    Then Show "Custom Fields" component on the reading panel
    Then Click on "Custom Fields" collapse icon
    Then Show "Notes" component on the reading panel
    Then Show "Add Note" button in the "Notes" component
    Then Click on "Notes" collapse icon
    #Then Show "Assigned B2B Configurations" component on the reading panel
    #Then Click on "Assigned B2B Configurations" collapse icon
    #Then Show "B2B Configurations" component on the reading panel
    #Then Show "Create B2B Configuration" button in the "B2B Configurations" component
    #Then Click on "B2B Configurations" collapse icon
    Then Logout from the system

  #Decline Invite #hasissue
  @Smoke @CDCI @SupplierStatus
  Scenario: As a Buyer, I should able to view Action center and profile tabs  components for "Decline Invite" supplier status
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Status dropdown on My Suppliers page
    Then Click on Declined radio button
    Then Click on Apply button in Status dropdown
    Then Show selected Supplier in search results "Declined Invite"
    Then Click on first record of the Search
    Then Click "View Supplier" button
    # Profile tab
    Then Click on "Profile" Tab on reading panel
    Then Show "Reason for Decline" component on the reading panel
    Then Click on "Reason for Decline" collapse icon
    Then Show "Liaisons" component on the reading panel
    # Remove this button
    #Then Show "Invite New Liaison" button in the "Liaisons" component
    Then Click on "Liaisons" collapse icon
    #Then Show "Corporate Relationship" component on the reading panel
    #Then Click on "Corporate Relationship" collapse icon
    # # Installed Apps
    # Then Scroll the page
    # Then Click on "Installed Apps" Tab on reading panel
    # Then Show "Marketplace" component on the reading panel
    # Action Center
    Then Scroll the page
    Then Click on "Action Center" Tab on reading panel
    Then Show "Relationship History" component on the reading panel
    Then Click on "Relationship History" collapse icon
    Then Show "Notes" component on the reading panel
    Then Show "Add Note" button in the "Notes" component
    Then Click on "Notes" collapse icon
    Then Logout from the system