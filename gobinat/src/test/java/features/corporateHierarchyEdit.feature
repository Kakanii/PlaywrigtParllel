Feature: Corporate page
#CH

  Background: Login as a supplier
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window

@Smoke  @CH @Supplier @accepted @CHedit
  Scenario: Verify Subsidary Corporate Hierarchy status when Invitation is accepted
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown 
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Verify Corporate Hierarchy Status "Accepted"
    Then Logout from the system

@Smoke  @CH @Supplier @accepted @CHedit
  Scenario: Verify Parent Corporate Hierarchy status when Invitation is accepted
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Parent radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Verify Corporate Hierarchy Status "Accepted"
    Then Logout from the system



@Smoke  @CH @Supplier @accepted @CHedit
  Scenario: Verify Domestic Ultimate Corporate Hierarchy status when Invitation is accepted
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Domestic Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown 
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Verify Corporate Hierarchy Status "Accepted"
    Then Logout from the system


@Smoke  @CH @Supplier @accepted @CHedit
  Scenario: Verify Global Ultimate Corporate Hierarchy status when Invitation is accepted
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Global Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Verify Corporate Hierarchy Status "Accepted"
     Then Logout from the system

@Smoke  @CH @Supplier @CHDeclined @CHedit
  Scenario: Verify Corporate Hierarchy Subsidary status when Invitation is Declined
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Click on Declined
    Then Switch to the new opened tab
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Wait for 10 seconds
    Then verify the CH status as "Declined"
    Then Logout from the system
    
@Smoke  @CH @Supplier @CHDeclined @CHedit
  Scenario: Verify Corporate Hierarchy status when Invitation is Declined
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Parent radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Click on Declined
    Then Switch to the new opened tab
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Wait for 10 seconds
    Then verify the CH status as "Declined"
    Then Logout from the system
    

    @Smoke  @CH @Supplier @CHDeclined @CHedit
  Scenario: Verify Corporate Hierarchy DomesticUlitmate status when Invitation is Declined
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Domestic Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Click on Declined
    Then Switch to the new opened tab
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Wait for 10 seconds
    Then verify the CH status as "Declined"
    Then Logout from the system


@Smoke  @CH @Supplier @CHDeclined @CHedit
  Scenario: Verify Corporate Hierarchy Global status when Invitation is Declined
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Global Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Click on Declined
    Then Switch to the new opened tab
    Then Switch to the active window
    Then Enter reason for return
    Then Click "Submit" button
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter supplier email in Email Address field "mau25@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Wait for 10 seconds
    Then verify the CH status as "Declined"
    Then Logout from the system

@Smoke  @CH @Supplier @CHedit
  Scenario: Verify Edit Corporate Hierarchy functionality
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Incomplete"
    Then Click on Elipsis on the company name
    Then Select "Edit"
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Invited"
    Then Logout from the system


@Smoke  @CH @Supplier @CHedit
  Scenario: Verify Edit Parent Corporate Hierarchy functionality
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Parent radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Incomplete"
    Then Click on Elipsis on the company name
    Then Select "Edit"
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Invited"
    Then Logout from the system


@Smoke  @CH @Supplier @CHedit
  Scenario: Verify Edit Domestic Ultimate Corporate Hierarchy functionality
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Domestic Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Incomplete"
    Then Click on Elipsis on the company name
    Then Select "Edit"
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Invited"
    Then Logout from the system


@Smoke  @CH @Supplier @CHedit
  Scenario: Verify Edit Global Ultimate Corporate Hierarchy functionality
  Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field "Password1"
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Global Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Incomplete"
    Then Click on Elipsis on the company name
    Then Select "Edit"
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Verify Corporate Hierarchy Status "Invited"
    Then Logout from the system

@Smoke  @CH @Supplier @removed @CHedit
  Scenario: Verify Subsidary Corporate Hierarchy status Removed
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Subsidary radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown 
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter same supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Remove from Corporate Hierarchy" button
    Then Click Delete button
    Then Logout from the system

@Smoke  @CH @Supplier @removed @CHedit
  Scenario: Verify Parent Corporate Hierarchy status Removed
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Parent radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter same supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Remove from Corporate Hierarchy" button
    Then Click Delete button
    Then Logout from the system



@Smoke  @CH @Supplier @removed @CHedit
  Scenario: Verify Domestic Ultimate Corporate Hierarchy status Removed
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Domestic Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown 
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter same supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Remove from Corporate Hierarchy" button
    Then Click Delete button
    Then Logout from the system


@Smoke  @CH @Supplier @removed @CHedit
  Scenario: Verify Global Ultimate Corporate Hierarchy status Removed
    Then Enter supplier email in Email Address field "radar@mailinator.com"
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click on Add to Corporate Hierarchy button
    Then Click Global Ultimate radio button
    Then Enter Company Name in the Company Name field
    Then Select "United States of America" from Tax Country drop down
    Then Enter Email Address in the Contacts email address field
    Then Enter Email Address in the Confirm email address field
    Then Enter First name in Contacts First name field
    Then Enter Last name in Contacts Last name field
    Then Click Save button
    Then Logout from the system
    Then Verify email received in inbox with subject "Invitation from Trust Your Supplier"
    Then Click on the email with subject "Invitation from Trust Your Supplier"
    Then Click on Join Now Link
    Then Switch to "new TYS" tab
    Then Select "United States of America" in "Country/Region of Registration" dropdown
    Then Enter timestamp in "Legal Business Name" field "Legal Business"
    Then Enter the Company Website in Website field as "ITPC"
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
    Then Enter "usr" in "Last Name" field
    Then Enter Email on Invite a user registration modal "usr"
    Then Enter Confirmation Email on Invite a user registration modal "usr"
    Then Click "Invite" button
    Then Wait for 3 seconds
    Then Scroll to view "First Name" field
    Then Scroll the page
    Then Enter "Director" in "First Name" field
    Then Enter "sales" in "Last Name" field
    Then Enter "DOS" in "Job Title" field
    Then Enter Email on Invite a user registration modal "director"
    Then Enter phone number "9876543210" in "Phone Number" field
    Then Select Add a New Location from the dropdown
    #Then Click same as above checkbox
    Then Scroll Down the page
    Then Click "Finish" button
    Then Wait for 10 seconds
    Then Switch to the active window
    Then Click on Do it later button
    Then Switch to the parent window
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Accept Relationship" button
    Then Logout from the system
    Then Close CH tab
    Given Start the application
    When Click on Sign In button
    Then Close the hotjar window
    Then Enter same supplier email in Email Address field
    Then Click on Continue button on Login page
    Then Enter data in Password field
    Then Click on Sign In button on Login
    Then Click on Corporate Hierarchy on Profile page
    Then Click expand Elipsis
    Then Click "Remove from Corporate Hierarchy" button
    Then Click Delete button
    Then Logout from the system
