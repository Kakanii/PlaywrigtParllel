Feature: Notification Preferences

  Background: Login as Belgium supplier
    Given Open the login page
    When Wait 10 seconds
    Then Close the hotjar window

   @NotificationPreferences @Buyer
  Scenario: Verify if Buyer is able to view NotificationPreferences label with all headers
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Verify the visibility of "Notifications Preferences" section
    Then Click "Notifications Preferences" tab
    Then Show title on Notifications Preferences page "Notifications Preferences"
    Then Verify the buyer is able to view the Notification preferences content as "The Notifications preferences screen allows you to configure notifications for all the available categories and map them to a specific role. To do so, click on the select drop down and choose a role present besides each of the Notification category."
    Then Verify the buyer is able to view the "Save Notifications Preferences" disabled button
    Then Verify the buyer is able to view the "categorieslabel" label name as "Categories" table header
    Then Verify the buyer is able to view the "selectroellabel" label name as "Select Role" table header
    Then Logout from the system

  @Regression @NotificationPreferences @Buyer
  Scenario: Verify if Buyer is able to view NotificationPreferences label with all headers
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    Then Verify the visibility of "Invite Process" section
    Then Verify the visibility of "Questionnaires and Profile" section
    Then Verify the visibility of "Approval Requests" section
    Then Verify the visibility of "User Management" section
    Then Verify the visibility of "Document Manager" section
    Then Verify the visibility of "Third Party App Management" section
    Then Verify the visibility of "Third Party App Monitoring" section
    Then Verify the visibility of "Third Party Approval Requests" section
    Then Verify the visibility of "Banking" section
    Then Verify the visibility of "Supplier Lifecycle" section
    Then Logout from the system

  @Smoke @NotificationPreferences @Buyer 
  Scenario: Verify if Buyer is able to select the roles for categories on  NotificationPreferences
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    When Select the "Invite Process" Category in dropdown on Notifictaion preferences 2
    Then Verify the buyer is able to select the "EDI Manager" roles for "Invite Process" category on  NotificationPreferences
    Then Logout from the system

  @Smoke @NotificationPreferences @Buyer
  Scenario: Verify if Buyer is able to select and unselct the roles for categories on  NotificationPreferences
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    #When Click on "Invite Process" dropdown arrow
    When Select the "Invite Process" Category in dropdown on Notifictaion preferences 2
    Then Verify the buyer is able to select the "EDI Manager" roles for "Invite Process" category on  NotificationPreferences
    Then Click on "Save Notifications Preferences" button on notification
    When UnSelect the "EDI Manager" Category in dropdown on Notifictaion preferences
    Then Click on "Save Notifications Preferences" button on notification
    Then Logout from the system

  @Smoke @NotificationPreferences @Buyer @TYSFunctionality
  Scenario: Verify login in to EDI Manager and check the Invite Process Category related nofification
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    #When Click on "Invite Process" dropdown arrow
    When Select the "Invite Process" Category in dropdown on Notifictaion preferences 2
    Then Verify the buyer is able to select the "EDI Manager" roles for "Invite Process" category on  NotificationPreferences
    Then Wait for 3 seconds
    Then Click on "Save Notifications Preferences" button on notification
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    Then Select "Brazil" in "Supplier Country of Registration" dropdown
    Then Enter Contact Email Address on Invite Supplier window
    Then Enter Confirm Contact Email Address on Invite Supplier window
    Then Enter Contact First Name on Invite Supplier window
    Then Enter Contact Last Name on Invite Supplier window
    Then Click on Next button on Invite Supplier window
    Then Click on the Skip
    Then Wait for 1 seconds
    Then Click on the Skip
    Then Wait for 1 seconds
    Then Click on the Skip
    #invite without questionare
    Then Click on the Click here on Questionnaire page
    Then Click on Assign button on Assign Questionnaires window
    Then Click on the Confirm on Confirmation Needed
    Then Click on Next button on Assign Questionnaires window
    Then Wait for 1 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 1 seconds
    #verify inviter supplier with status
    Then Logout from the system
    #Then Verify received an email in supplier Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 2 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Argentina" supplier Email from maildrop
    Then Wait for 2 seconds
    Then Switch to "new TYS" tab
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
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Brazil" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Brazil" supplier registration
    Then Enter "TestAddress3" in "Address Line 3" field after "Brazil" supplier registration
    Then Enter "TestCity" in "City" field after "Brazil" supplier registration
    Then Enter "23232-321" in "Postal Code" field after "Brazil" supplier registration
    Then Select "Acre" in "State" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 5 seconds
    Then Click "Skip" button
    Then Wait for 5 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Logout from the system
    Then Enter "EDI_managerrole" buyer email in Email Address
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    Then verify the "Invite Process" category option is visible
    Then verify the "Category" filter "Invite Process" are not visible
    Then verify the "Category" filter "Questionnaires and Profile" are not visible
    Then verify the "Category" filter "Approval Requests" are not visible
    Then verify the "Category" filter "User Management" are not visible
    Then verify the "Category" filter "User Management" are not visible
    #Then verify the "Questionnaires and Profile" category are not visible
    # Then verify the "Approval Requests" category are not visible
    Then Close Apply Filters
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    When UnSelect the "EDI Manager" Category in dropdown on Notifictaion preferences
    Then Wait for 3 seconds
    Then Click on "Save Notifications Preferences" button on notification
    Then Logout from the system
    
   @NotificationPreferences @Buyer @TYSFunctionality 
  Scenario: Verify login in to EDI Manager and check the Approval Requests Category related nofification
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    #When Click on "Invite Process" dropdown arrow
    When Select the "Approval Requests" Category in dropdown on Notifictaion preferences 4
    Then Verify the buyer is able to select the "EDI Manager" roles for "Approval Requests" AandN category on  NotificationPreferences
    #Then Verify the buyer is able to select the "EDI Manager" roles for "Approval Requests" category on  NotificationPreferences
    Then Wait for 3 seconds
    Then Scroll the page
    Then Click on "Save Notifications Preferences" button on notification
    Then Wait for 3 seconds
    Then Click on My Suppliers Tab
    Then Click on Invite Supplier button on Connected Suppliers
    Then Switch to the new window
    When Click on the Supplier Company Name text box
    Then Enter Supplier Company Name on Invite Supplier modal
    And Click on the enter
    Then Click on the IgnoreAndProceed button
    #select USA from the dropdown
    Then Select "Colombia" in "Supplier Country of Registration" dropdown
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
    #with questionare
    Then Click on the Click here on Questionnaire page
    Then Wait 5 seconds
    Then Click on the Clear All Link on Assign Questionnaires window
    Then Wait 5 seconds
    Then Select the "Automation" in Dropdown
    Then Wait 10 seconds
    #Then Click "Questionnaire Name" tab on modal
    Then Click on Assign button on Assign Questionnaires window
    Then Wait 5 seconds
    Then Click on the Confirm on Confirmation Needed
    Then Wait 5 seconds
    Then Click on Next button on Assign Questionnaires window
    Then Wait 2 seconds
    Then Click on Send Invite button on Invite a New User Modal
    Then Wait for 3 seconds
    Then Click on the Search by supplier name and press Enter
    Then verify the status as "Pending Invites"
    Then Wait for 3 seconds
    Then Wait for 3 seconds
    Then Logout from the system
    Then Verify received an email in supplier maildrop Inbox with subject "IBM is inviting you to join Trust Your Supplier"
    Then Wait for 5 seconds
    #maildrop
    Then Click on the email with subject "Trust Your Supplier" from maildrop
    Then Click on Join Now Link in the "Mauritius" supplier Email from maildrop
    Then Wait for 3 seconds
    Then Switch to "new TYS" tab
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field
    Then Click TYS Terms & Conditions checkbox
    Then Click Continue button in supplier registration page
    Then Enter Job title on User Account page
    Then Enter phone number "9490491531" in "Phone Number" field
    Then Enter new password in Password field
    Then Enter same password in Confirm Password field
    Then Click on Confirm Password tooltip icon
    Then Click on Confirm Password tooltip icon
    Then Click "Continue" button
    Then Switch to "Mailinator" tab
    #maildrop
    Then Click on refresh button
    Then Show Email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Click on the email with subject "Trust Your Supplier Verification Code" from maildrop
    Then Verify "VERIFICATION NUMBER: " from the email and copy the verification code from maildrop
    Then Switch to "new TYS" tab
    Then Enter verification code in TYS registration tab
    Then Click "Submit" button
    Then Wait for 10 seconds
    Then Enter "TestAddress1" in "Address Line 1" field after "Netherlands" supplier registration
    Then Enter "TestAddress2" in "Address Line 2" field after "Netherlands" supplier registration
    Then Enter "TestCity" in "City" field after "Netherlands" supplier registration
    Then Enter "76732222" in "Postal Code" field after "Netherlands" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
    Then Click "Next" button
    Then Wait for 3 seconds
    Then Select the UNSPSC codes on the Basic information page
    Then Click "Next" button
    Then Wait for 5 seconds
    Then Enter "secondary" in "First Name" field
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Enter Job title on secondary invite
    Then Enter phone number "9490491534" in "Phone Number" field
    Then Click "Invite" button
    Then Wait for 5 seconds
    Then Click accept IBM registration checkbox
    Then Click "Finish" button
    Then Wait for 15 seconds
    Then Click "Skip" button
    Then Wait for 10 seconds
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on My Suppliers Tab
    Then Click on the Search by supplier name and press Enter
    And Wait for 5 seconds
    Then Scroll the page
    Then Wait for 3 seconds
    #Action center
    Then Click on the Action Center
    Then Scroll the page
    Then Wait for 10 seconds
    #Approve request
    Then Click on NewApprovalRequest Option
    Then Switch to the active window
    #Ar notes
    Then Enter the Notes under the decline buyer Notes Box
    #Then Enter ApprovalRequest description in text area "testdata"
    #Then Select "Administrator" in "Assigned Role" css dropdown
    Then Click on role "Administrator" on Approvalrequest
    Then Click on "Create" button on notification
    #Then Click on Create button
    #Then Click on the "Manual" under Approval Sourc  
    And Logout from the system
		Then Enter "EDI_managerrole" buyer email in Email Address
		Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Click on "Filter by" button on "Notifications"
    Then Click on "Category" filter
    Then verify the "Approval Requests" category option is visible
    Then verify the "Category" filter "Invite Process" are not visible
    Then verify the "Category" filter "Questionnaires and Profile" are not visible
    Then verify the "Category" filter "Banking" are not visible
    Then verify the "Category" filter "User Management" are not visible
    Then verify the "Category" filter "Document Manager" are not visible
     Then Close Apply Filters
    Then Logout from the system
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    When UnSelect the "EDI Manager" Category in dropdown on Notifictaion preferences
    Then Wait for 3 seconds
    Then Click on "Save Notifications Preferences" button on notification
    Then Logout from the system
    
    
  @NotificationPreferences @Buyer
  Scenario: Verify login in to EDI Manager and check the Bank link and unlink notification on notification screen
    Then Enter data in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Wait for 3 seconds
    And Click "Admin Actions" tab
    Then Click "Notifications Preferences" tab
    #When Click on "Invite Process" dropdown arrow
    When Select the "Approval Requests" Category in dropdown on Notifictaion preferences 10
    Then Verify the buyer is able to select the "EDI Manager" roles for "Approval Requests" bank category on  NotificationPreferences
    #Then Verify the buyer is able to select the "EDI Manager" roles for "Approval Requests" category on  NotificationPreferences
    Then Wait for 3 seconds
    Then Scroll the page
    Then Click on "Save Notifications Preferences" button on notification
    Then Wait for 3 seconds
    Then Logout from the system
    Then Enter "columbia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Nokia Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    When Click on "Add a Bank Account" button
    And Wait for 2 seconds
    Then Select "Colombia" in "Country/Region" dropdown
    Then Enter value for Bank Name "Bank of Italy"
    Then Select "Colombian Peso" in "Currency" css dropdown
    #Then Enter "Testing" in Bank Desciption
    Then Enter value for Account Holder Name "Colombianholder"
    And Wait for 2 seconds
    Then Enter input data in "Account Number" field
    Then Enter input data in "Bank Key" field
    And Wait for 1 seconds
    Then Enter input data in "SWIFT Code" field
    And Wait for 1 seconds
    Then Enter input data in "Control Key" field
    And Wait for 2 seconds
    Then Select "Bank statement" in "Account Evidence" dropdown
    Then Click "Upload" button
    Then Upload "PDF" document under Upload Document
    Then Click "Confirm" button
    Then Enter value for Bank Branch Name "Bank of Colombia"
    Then Enter value for Address "Paris efiltower"
    Then Enter value for City " Tirana"
    Then Enter "767352" in "Postal Code" field after "Colombia" supplier registration
    Then Select "Amazonas" in "Department/Region" dropdown
    Then Enter value for Bank Contact Name "bankingcontact"
    Then Enter value for Bank Contact Number "9886543210"
    # Then Wait for 3 seconds
    Then Click "Save" button 6
    Then Wait for 3 seconds
    Then Wait 5 seconds
    Then Click on link this Account button
    Then Wait 5 seconds
    Then Logout from the system
    Then Enter "EDI_managerrole" buyer email in Email Address
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Columbia" Supplier "columbia12supplierautomation has linked their bank account" in document manager notifications
    And Logout from the system
    #deleting incomplete data
    Then Enter "columbia12" email in Email Address field for Italy
    Then Click on Continue button on Login page
    Then Enter data in Password field
    And Click on Sign In button on Login
    Then Click "Bank Account" tab
    Then Click on unlink account
    Then Wait for 3 seconds
    Then Click on the Delete button
    Then Wait 5 seconds
    Then Click on confirm button
    And Logout from the system
    #unlink notification
    Then Enter "EDI_managerrole" buyer email in Email Address
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click "Notifications" tab
    Then Show the "Brazil" Supplier "columbia12supplierautomation has unlinked their bank account" in document manager notifications
    And Logout from the system
    