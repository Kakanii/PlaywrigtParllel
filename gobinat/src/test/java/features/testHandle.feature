Feature: Test Handle

  @TestHandle
  Scenario: test Handle 1
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system

  @TestHandle
  Scenario: test Handle 2
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system

  @TestHandle
  Scenario: test Handle 3
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system

  @TestHandle
  Scenario: Verify publishing Finland supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Finland" Supplier Company name on Invite Supplier window
    Then Enter "Finland" Supplier Contact email address on Invite Supplier modal
    Then Enter "Finland" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Finland" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Finland" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Finland" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "Helsinki" in "City" field
    Then Select "Central Finland" in "Region" dropdown
    Then Enter "12345" in "Postal Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click on Basic Information on Dashboard page "true"
    #Then Enter Date Established on Basic information page
    #Then Enter the Description on the Basic information page
    ##Business Type is a required field. Hence, this will logout and close on failure.
    #Then Select "Sole Proprietorship" in "Business Type" dropdown under "Tax Details"
    #Then Enter "FI" followed by "" and 8 numbers in "VAT Identification Number" field under "Tax Details"
    #Then Click "Upload VAT Registration Document" button
    #Then Upload "VAT Registration Document" in "PDF" format
    #Then Upload "PDF" under "Upload Document"
    #Then Click "Confirm" button
    #Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    #Then Enter the Company Website in Website field
    #Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    #Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Finland" in "Country/Region" dropdown
    Then Enter "Helsinki" in "City" field
    Then Select "Central Finland" in "Region" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "12345" in "Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    #Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Euro (EUR)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
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
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Finland" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "Finland" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system
    
    @TestHandle
  Scenario: Verify publishing Greece supplier
    Given Start the application
    When Click on Sign In button
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button
    Then Switch to the new window
    Then Enter "Greece" Supplier Company name on Invite Supplier window
    Then Enter "Greece" Supplier Contact email address on Invite Supplier modal
    Then Enter "Greece" Supplier Confirm Contact email address on Invite Supplier modal
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on Next button on Invite Supplier Confirmation window
    Then Click on Send Invite button on Invite Supplier Confirmation window
    Then Show toast message displayed on invite supplier "true"
    Then Logout from the system
    Then Verify Email received in "Greece" supplier Inbox with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on the email with subject "SUPPLIER INVITATION: Follow-up from IBM’s introduction to Trust Your Supplier"
    Then Click on Join Now Link in the "Greece" supplier Email
    Then Switch to "new TYS" tab
    Then Switch to the active window
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Select "Greece" in "Country/Region" dropdown
    Then Enter "Ausi Mansion" in "Address Line 1" field
    Then Enter "King" in "District" field
    ##City is a required field. Hence, test will fail
    #Then Enter "Helsinki" in "City" field
    Then Select "Aegina" in "Province" dropdown
    Then Enter "12345" in "Postal Code" field
    Then Enter phone number "9876543210" in "Corporate Phone Number" field
    Then Click TYS Terms & Conditions checkbox
    Then Click Buyer Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    Then Click on back to inbox link
    Then Click on the email with subject "Trust Your Supplier Verification Code"
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Sign Up" button
    Then Click "Begin" button
    Then Click "Continue" button
    Then Click "Continue" button
    Then Click "Get Started" button
    Then Click on Basic Information on Dashboard page "true"
    Then Enter Date Established on Basic information page
    Then Enter the Description on the Basic information page
    Then Select "General Partnership" in "Business Type" dropdown under "Tax Details"
    Then Enter "EL" followed by "" and 9 numbers in "VAT Identification Number" field under "Tax Details"
    Then Click "Upload VAT Registration Document" button
    #Then Upload "VAT Registration Document" in "PDF" format
    Then Upload "PDF" under "Upload Document"
    Then Click "Confirm" button
    Then Enter timestamp in "Company Email" field "supplier@mailinator.com"
    Then Enter the Company Website in Website field
    Then Enter the value "900" at Number of Full Time Employees on the Basic information page
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Save and Continue" button 3
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Click on Add a New Contact button on Contacts
    Then Switch to the active window
    Then Enter data in Fist Name field "UAT"
    Then Enter data in Last Name field "Testing"
    Then Enter data in Job Title field "Automation"
    Then Enter data in Primary Phone field "3325453457"
    Then Enter data in Email field "test@contact.com"
    Then Select Add a New Location from the dropdown "Add a New Location"
    Then Select Address Type from the dropdown "Branch"
    Then Select "Greece" in "Country/Region" dropdown
    Then Enter "King" in "District" field
    Then Enter "Helsinki" in "City" field
    Then Select "Aegina" in "Province" dropdown
    Then Enter "Ausi info tech" in "Address Line 1" field
    Then Enter "12345" in "Postal Code" field
    Then Click on Save Contact button on Add a New Contact Modal
    Then Click on "Next Step" button
    Then Click on the Assign button to assign the CEO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the CFO
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on the Assign button to assign the DOS
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation" on the Assign a Contact to Management Team modal
    Then Select the "1992" year from the drop down
    Then Click on Save button on the Assign a Contact to Management Team modal
    Then Switch to the parent window
    Then Click on "Next Step" button
    Then Click on the Add Ownership at Ownership tab
    Then Select the option Individual from the drop down
    Then Switch to the active window
    Then Select the option "UAT Testing - Automation , 1992" for Ownership on the Add a new Individual modal
    Then Enter the value "9" percentage at the Ownership Percentage
    Then Click on the save new individual owner button on the modal
    Then Click on "Next Step" button
    Then Click on "Next Step" button
    Then Select "Euro (EUR)" in "Select your Currency" dropdown
    Then Click "Save and Continue" button 1
    Then Click on "Review and Publish Profile" button
    Then Switch to the active window
    Then Click on the publish button
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
    Then Click on "Suppliers" Down arrow on Dashboard
    Then Click on My Suppliers Tab
    Then Click on User dropdown on My Suppliers page
    Then Enter "Greece" Supplier email address in "Invitee Email" field
    Then Click on Apply button in User dropdown
    Then Verify "Greece" supplier status "Profile Complete"
    Then Switch to the parent window
    Then Logout from the system

  @TestHandle
  Scenario: test Handle 4
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system

  @TestHandle
  Scenario: test Handle 5
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system

  @TestHandle
  Scenario: test Handle 6
    Given Start the application
    When Click on Sign In button
    Then Click on Terms of Use link on Login page
    Then Switch to new Tab
    Then Fail test
    Then Logout from the system
