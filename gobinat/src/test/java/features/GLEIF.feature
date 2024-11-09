Feature: GLEIF
#InviteSupplier

 Background: Login as Facebook supplier
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

  @Smoke @GLEIF  @Onboard @Supplier
  Scenario: Verify GLEIF details 
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "TATA METALIKS LTD" Supplier Company name on Invite GLEIF Supplier window
    Then Select "India" in "Supplier Country of Registration" dropdown
    Then Enter "tata" Supplier Contact email address on Invite GLEIF Supplier modal
    Then Enter "tata" Supplier Confirm Contact email address on Invite GLEIF Supplier modal
    Then Enter Contact First Name on Invite Supplier window "TATA METALIKS"
    Then Enter Contact Last Name on Invite Supplier window "TATA METALIKS"
    Then Click on Next button on Invite Supplier window
    Then Deselect all QGs from the Questinnaire Group
    Then Wait for 5 seconds
    Then Select the "Automation" group from the Questinnaire Group drop down
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Wait for 5 seconds
    Then Logout from the system
    Then Verify Email received in "tata" supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on Join Now Link in the "tata" supplier Email
    Then Switch to the active window
    Then Select "India" in "Country/Region of Registration" dropdown
    Then Enter  "Legal Business Name" field in the "TATA METALIKS LTD"
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
    Then Enter "TATA CENTRE, 10TH FLOOR 43" in "Address Line 1" field
    Then Enter "KOLKATA" in "City" field
    Then Select "West Bengal" in "State" dropdown
    Then Enter "700071" in "PIN Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    # Then Enter "Account" in "First Name" field
    # Then Enter "Manager" in "Last Name" field
    # Then Enter "AM" in "Job Title" field
    # Then Enter Email on Invite a user registration modal "AM"
    # Then Enter phone number "9876543210" in "Phone Number" field
    # Then Select "Domestic Headquarters - TATA CENTRE, 10TH FLOOR 4..." in "Locations" dropdown
    # Then Click "Next" button
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter "01/02/2021" in Date Established field
    Then Enter the Description on the Basic information page
    Then Select "Branch Office" in "Business Type" dropdown under "Tax Details"
    Then Click "Upload GST Registration Certificate" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 1
    Then Click "Upload PAN Card" button
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button 1
    Then Enter value at Goods and Services Taxpayer Identification Number \\(GSTIN) on Basic information page
    Then Enter "U" followed by "" and 20 numbers in "Corporate Identification Number (CIN)" field under "Tax Details"
    Then Enter Permanent Account Number input field
    Then Click No radio button for "Are you publicly traded on a stock exchange?"
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Click "Save and Continue" button 1
    Then Wait for 10 seconds
    Then Wait for 50 seconds until "External Identifiers" is "visible"
    Then Click "Find ID" button
    Then Switch to the new window
    Then Wait for 20 seconds
    Then Click on select button
    Then Wait for 3 seconds
    Then Click "Confirm" button
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
  Then Wait for 3 seconds 
  Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "Account Manager - AM" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Enter phone number "9876543210" in "Primary Phone" field
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "Account Manager - AM" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ##############
    Then Click on the "Assign" button under "DOS or Equivalent"
    Then Select the option "Account Manager - AM" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on "Save" button
    Then Wait for 5 seconds
    Then Switch to the parent window
    ###############
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "Account Manager - AM , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on "Save" button
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click "Save and Continue" button 1
    Then Close toast message
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click "Your Profile" tab
    Then Logout from the system
    Then Close TYS tab
    # Login as the buyer and user--> invite email -->  search  for the supplier and
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Suppliers" tab
    Then Click "Connected Suppliers" tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "tata" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then verify the status as "Profile Complete"
    Then Click on the Supplier record in the supplier page
    Then Click "View Supplier" button
    Then Wait for 3 seconds
    Then Click "GLEIF" button
    #Then Verify the Legal Business Name as "TATA STEEL LIMITED"
    Then Logout from the system
    Given Start the application
    When Click on Sign In button
    Then Enter same "tata" email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Your Profile" tab
    Then Click "Basic Information" tab
    Then Enter timestamp in "Business Name" field "Business"
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Click "Save and Continue" button 1
    Then Wait for 10 seconds
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
    Then Wait for 10 seconds
    Then Click "Your Profile" tab
    Then Logout from the system

    