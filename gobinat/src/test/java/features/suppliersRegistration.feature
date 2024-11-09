Feature: Supplier Registration

  #SupplierRegistration
  Background: Login as a Buyer
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login

  @Smoke @SupplierRegistration @Supplier @Sanity
  Scenario: Verify Supplier Registration
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Create new role "Internal Buyer Automation" role and tag as RMR "Yes"
    Then Wait for 3 seconds
    Then Click on Users tab in Manage users page
    Then Wait for 5 seconds
    Then Click on Invite a New User button on Manage Users page
    Then Create "Pending" User has "Internal Buyer Automation" role and "All Suppliers" team
    Then Wait for 5 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    Then Save name of new supplier
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Wait for 3 seconds
    Then Select "United States of America" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Save value of "Contact's Email ID" field
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Enter "355 4563458" value on "Contact Number (Optional)" field
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 3 seconds
    Then Click on Update contacts icon on "Internal Buyer Automation" role
    Then Update contacts of "Internal Buyer Automation" role
    Then Click on "Save" button on "Update Contacts"
    Then Wait for 5 seconds
    Then Click on checkbox on "Internal Buyer Automation" role
    Then Click on Next button
    Then Wait for 3 seconds
    Then Click on the Skip
    Then Click on the Click here on Questionnaire page
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Verify toast message "invited successfully. Click here to see your invited suppliers." successfully is shown
    Then Logout from the system
    Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Click on the email with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 3 seconds
    Then Click on Join Now Link in the CR invitation Email
    Then Switch to the active window
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
    Then Select "Alabama" in "State" dropdown
    Then Enter "124234354" in "Zip Code" field
    Then Click "Next" button
    Then Select the UNSPSC codes
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Click on Do it later button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
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
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Wait for 3 seconds
    #Then Search the supplier name in discover searchbox
    Then Show the supplier in discover searchbox
    Then Wait for 3 seconds
    Then Click on the supplier in connected searchbox
    Then Wait for 5 seconds
    Then Click on the Action Center
    Then Wait for 5 seconds
    Then Verify new role copy from "Internal Buyer Automation" role shows on "Relationship Manager Roles" on Action center
    Then Click on Update contacts icon on "Internal Buyer Automation"  role on Action center
    Then Show role copy from "Internal Buyer Automation" role
    Then Show the contact of "Internal Buyer Automation" role
    Then Click on Cancel button
    Then Wait for 5 seconds
    Then Click "Admin Actions" tab
    Then Click "Manage Users" tab
    Then Wait for 5 seconds
    Then Delete "Pending" User has "Internal Buyer Automation" role
    Then Wait for 5 seconds
    Then Click on Edit Permissions tab
    Then Delete new role copy from "Internal Buyer Automation"
    Then Wait for 2 seconds
    Then Verify toast message "Deleted User role" successfully is shown
    Then Logout from the system
